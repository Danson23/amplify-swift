//
// Copyright 2018-2019 Amazon.com,
// Inc. or its affiliates. All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

/// Types conforming to PluginSelectorFactory are responsible for determining the correct plugin to use in cases where
/// more than one plugin is registered for a category. Selectors may use any method to determine the correct plugin to
/// fulfill a particular API call; for example, a PluginSelector for the Logging category may inspect logging event
/// names and route events beginning with `"UI_"` to one LoggingPlugin, and all other events to another plugin.
///
/// PluginSelectorFactories are only invoked if there is more than one plugin added for a category. In those cases, they
/// are invoked synchronously during every client-behavior API for that category, even for asynchronous methods. Thus,
/// authors should ensure their PluginSelector is lightweight, or API call performance will suffer.
///
/// A PluginSelectorFactory must be added to a category before the second plugin is added. Failure to do so will result
/// in a PluginError during `Category.add(plugin:)`. When the plugin selector is added, Amplify will immediately invoke
/// the plugin selector's `add(plugin:)` method with the currently registered plugin, if any. Subsequent calls to
/// `Category.add(plugin:)` will invoke the `add(plugin:)` as well, so that the PluginSelectorFactory will always be
/// aware of the current set of plugins added to the Category. Similarly, any calls to `Amplify.removePlugin(for:)` will
/// also invoke the PluginSelector's `removePlugin(for:)` method.
///
/// ## Lifecycle
///
/// The PluginSelectorFactory will be stored on the Category object, and retained until the Category is reset.
/// Calls to `Amplify.reset()` will release any PluginSelectorFactory added to the Amplify categories.
public protocol PluginSelectorFactory: CategoryTypeable {
    func makeSelector() -> PluginSelector
    func add(plugin: Plugin)
    func removePlugin(for key: PluginKey)
}

/// A plugin selector is an object that receives a client API call and synchronously populates the `selectedKey`
/// property with appropriate key.
///
/// ## PluginSelectors and the API call chain
///
/// Amplify invokes PluginSelectorFactory's `makeSelector` method for every client behavior API call to that Category
/// in the following order:
/// - Caller issues a call to an Amplify Category API (e.g., `Logging.record(event named:)`)
/// - Amplify detects that more than one plugin is registered on the Logging category
/// - Amplify invokes `makeSelector` on the PluginSelectorFactory added to the Logging category
/// - Amplify invokes the client API call on the PluginSelector
/// - Amplify inspects the PluginSelector's `selectedPluginKey` property and retrieves the key of the plugin to use for
///   the API call.
/// - Amplify explicitly releases the selector
/// - Amplify retrieves the plugin added for `key`.
///   - **NOTE**: If no plugin is added for `key`, Amplify will issue a `preconditionFailure`. This is different
///     from the `getPlugin(for:)` behavior, which throws if no plugin is found. The reason for this difference is that
///     the selector is intended to be transparently invoked as part of the API chain, without potentially changing the
///     API's signature by adding a `throws` clause
/// - Amplify invokes the client API call on the plugin
///
/// Because Amplify invokes the client API on the PluginSelector, conforming types must implement each client API method
/// of the Category.
public protocol PluginSelector {
    /// Selectors must have a no-argument initializer that is invoked when `makeSelector` is called
    init()

    /// This property will be inspected to find the key of the plugin to use for the current API call
    var selectedPluginKey: PluginKey? { get }
}
