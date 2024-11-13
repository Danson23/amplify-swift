//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

// Code generated by smithy-swift-codegen. DO NOT EDIT!

import class AWSClientRuntime.AWSClientConfigDefaultsProvider
import class AWSClientRuntime.AmzSdkRequestMiddleware
import class AWSClientRuntime.DefaultAWSClientPlugin
import class ClientRuntime.ClientBuilder
import class ClientRuntime.DefaultClientPlugin
import class ClientRuntime.HttpClientConfiguration
import class ClientRuntime.OrchestratorBuilder
import class ClientRuntime.OrchestratorTelemetry
import class ClientRuntime.SdkHttpClient
import class Smithy.ContextBuilder
import class SmithyHTTPAPI.HTTPRequest
import class SmithyHTTPAPI.HTTPResponse
import enum AWSClientRuntime.AWSRetryErrorInfoProvider
import enum AWSClientRuntime.AWSRetryMode
import enum ClientRuntime.ClientLogMode
import enum ClientRuntime.DefaultTelemetry
import enum ClientRuntime.OrchestratorMetricsAttributesKeys
import enum Smithy.ByteStream
@_spi(SmithyReadWrite) import enum SmithyReadWrite.WritingClosures
import protocol AWSClientRuntime.AWSDefaultClientConfiguration
import protocol AWSClientRuntime.AWSRegionClientConfiguration
import protocol ClientRuntime.Client
import protocol ClientRuntime.DefaultClientConfiguration
import protocol ClientRuntime.DefaultHttpClientConfiguration
import protocol ClientRuntime.HttpInterceptorProvider
import protocol ClientRuntime.IdempotencyTokenGenerator
import protocol ClientRuntime.InterceptorProvider
import protocol ClientRuntime.TelemetryProvider
import protocol Smithy.LogAgent
import protocol SmithyHTTPAPI.HTTPClient
import protocol SmithyHTTPAuthAPI.AuthSchemeResolver
import protocol SmithyIdentity.AWSCredentialIdentityResolver
import protocol SmithyIdentity.BearerTokenIdentityResolver
import struct AWSClientRuntime.AmzSdkInvocationIdMiddleware
import struct AWSClientRuntime.EndpointResolverMiddleware
import struct AWSClientRuntime.UserAgentMiddleware
import struct AWSSDKHTTPAuth.SigV4AuthScheme
import struct ClientRuntime.AuthSchemeMiddleware
import struct ClientRuntime.BlobStreamBodyMiddleware
import struct ClientRuntime.ContentLengthMiddleware
import struct ClientRuntime.ContentTypeMiddleware
@_spi(SmithyReadWrite) import struct ClientRuntime.DeserializeMiddleware
import struct ClientRuntime.HeaderMiddleware
import struct ClientRuntime.LoggerMiddleware
import struct ClientRuntime.QueryItemMiddleware
import struct ClientRuntime.SignerMiddleware
import struct ClientRuntime.URLHostMiddleware
import struct ClientRuntime.URLPathMiddleware
import struct Smithy.Attributes
import struct SmithyIdentity.BearerTokenIdentity
import struct SmithyIdentity.StaticBearerTokenIdentityResolver
import struct SmithyRetries.DefaultRetryStrategy
import struct SmithyRetriesAPI.RetryStrategyOptions
import typealias SmithyHTTPAuthAPI.AuthSchemes

public class CloudSearchDomainClient: ClientRuntime.Client {
    public static let clientName = "CloudSearchDomainClient"
    public static let version = "1.0.39"
    let client: ClientRuntime.SdkHttpClient
    let config: CloudSearchDomainClient.CloudSearchDomainClientConfiguration
    let serviceName = "CloudSearch Domain"

    public required init(config: CloudSearchDomainClient.CloudSearchDomainClientConfiguration) {
        client = ClientRuntime.SdkHttpClient(engine: config.httpClientEngine, config: config.httpClientConfiguration)
        self.config = config
    }

    public convenience init(region: Swift.String) throws {
        let config = try CloudSearchDomainClient.CloudSearchDomainClientConfiguration(region: region)
        self.init(config: config)
    }

    public convenience required init() async throws {
        let config = try await CloudSearchDomainClient.CloudSearchDomainClientConfiguration()
        self.init(config: config)
    }
}

extension CloudSearchDomainClient {
    public class CloudSearchDomainClientConfiguration: AWSClientRuntime.AWSDefaultClientConfiguration & AWSClientRuntime.AWSRegionClientConfiguration & ClientRuntime.DefaultClientConfiguration & ClientRuntime.DefaultHttpClientConfiguration {
        public var useFIPS: Swift.Bool?

        public var useDualStack: Swift.Bool?

        public var appID: Swift.String?

        public var awsCredentialIdentityResolver: any SmithyIdentity.AWSCredentialIdentityResolver

        public var awsRetryMode: AWSClientRuntime.AWSRetryMode

        public var maxAttempts: Swift.Int?

        public var region: Swift.String?

        public var signingRegion: Swift.String?

        public var endpointResolver: EndpointResolver

        public var telemetryProvider: ClientRuntime.TelemetryProvider

        public var retryStrategyOptions: SmithyRetriesAPI.RetryStrategyOptions

        public var clientLogMode: ClientRuntime.ClientLogMode

        public var endpoint: Swift.String?

        public var idempotencyTokenGenerator: ClientRuntime.IdempotencyTokenGenerator

        public var httpClientEngine: SmithyHTTPAPI.HTTPClient

        public var httpClientConfiguration: ClientRuntime.HttpClientConfiguration

        public var authSchemes: SmithyHTTPAuthAPI.AuthSchemes?

        public var authSchemeResolver: SmithyHTTPAuthAPI.AuthSchemeResolver

        public var bearerTokenIdentityResolver: any SmithyIdentity.BearerTokenIdentityResolver

        public private(set) var interceptorProviders: [ClientRuntime.InterceptorProvider]

        public private(set) var httpInterceptorProviders: [ClientRuntime.HttpInterceptorProvider]

        internal let logger: Smithy.LogAgent

        private init(_ useFIPS: Swift.Bool?, _ useDualStack: Swift.Bool?, _ appID: Swift.String?, _ awsCredentialIdentityResolver: any SmithyIdentity.AWSCredentialIdentityResolver, _ awsRetryMode: AWSClientRuntime.AWSRetryMode, _ maxAttempts: Swift.Int?, _ region: Swift.String?, _ signingRegion: Swift.String?, _ endpointResolver: EndpointResolver, _ telemetryProvider: ClientRuntime.TelemetryProvider, _ retryStrategyOptions: SmithyRetriesAPI.RetryStrategyOptions, _ clientLogMode: ClientRuntime.ClientLogMode, _ endpoint: Swift.String?, _ idempotencyTokenGenerator: ClientRuntime.IdempotencyTokenGenerator, _ httpClientEngine: SmithyHTTPAPI.HTTPClient, _ httpClientConfiguration: ClientRuntime.HttpClientConfiguration, _ authSchemes: SmithyHTTPAuthAPI.AuthSchemes?, _ authSchemeResolver: SmithyHTTPAuthAPI.AuthSchemeResolver, _ bearerTokenIdentityResolver: any SmithyIdentity.BearerTokenIdentityResolver, _ interceptorProviders: [ClientRuntime.InterceptorProvider], _ httpInterceptorProviders: [ClientRuntime.HttpInterceptorProvider]) {
            self.useFIPS = useFIPS
            self.useDualStack = useDualStack
            self.appID = appID
            self.awsCredentialIdentityResolver = awsCredentialIdentityResolver
            self.awsRetryMode = awsRetryMode
            self.maxAttempts = maxAttempts
            self.region = region
            self.signingRegion = signingRegion
            self.endpointResolver = endpointResolver
            self.telemetryProvider = telemetryProvider
            self.retryStrategyOptions = retryStrategyOptions
            self.clientLogMode = clientLogMode
            self.endpoint = endpoint
            self.idempotencyTokenGenerator = idempotencyTokenGenerator
            self.httpClientEngine = httpClientEngine
            self.httpClientConfiguration = httpClientConfiguration
            self.authSchemes = authSchemes
            self.authSchemeResolver = authSchemeResolver
            self.bearerTokenIdentityResolver = bearerTokenIdentityResolver
            self.interceptorProviders = interceptorProviders
            self.httpInterceptorProviders = httpInterceptorProviders
            self.logger = telemetryProvider.loggerProvider.getLogger(name: CloudSearchDomainClient.clientName)
        }

        public convenience init(useFIPS: Swift.Bool? = nil, useDualStack: Swift.Bool? = nil, appID: Swift.String? = nil, awsCredentialIdentityResolver: (any SmithyIdentity.AWSCredentialIdentityResolver)? = nil, awsRetryMode: AWSClientRuntime.AWSRetryMode? = nil, maxAttempts: Swift.Int? = nil, region: Swift.String? = nil, signingRegion: Swift.String? = nil, endpointResolver: EndpointResolver? = nil, telemetryProvider: ClientRuntime.TelemetryProvider? = nil, retryStrategyOptions: SmithyRetriesAPI.RetryStrategyOptions? = nil, clientLogMode: ClientRuntime.ClientLogMode? = nil, endpoint: Swift.String? = nil, idempotencyTokenGenerator: ClientRuntime.IdempotencyTokenGenerator? = nil, httpClientEngine: SmithyHTTPAPI.HTTPClient? = nil, httpClientConfiguration: ClientRuntime.HttpClientConfiguration? = nil, authSchemes: SmithyHTTPAuthAPI.AuthSchemes? = nil, authSchemeResolver: SmithyHTTPAuthAPI.AuthSchemeResolver? = nil, bearerTokenIdentityResolver: (any SmithyIdentity.BearerTokenIdentityResolver)? = nil, interceptorProviders: [ClientRuntime.InterceptorProvider]? = nil, httpInterceptorProviders: [ClientRuntime.HttpInterceptorProvider]? = nil) throws {
            self.init(useFIPS, useDualStack, try appID ?? AWSClientRuntime.AWSClientConfigDefaultsProvider.appID(), try awsCredentialIdentityResolver ?? AWSClientRuntime.AWSClientConfigDefaultsProvider.awsCredentialIdentityResolver(awsCredentialIdentityResolver), try awsRetryMode ?? AWSClientRuntime.AWSClientConfigDefaultsProvider.retryMode(), maxAttempts, region, signingRegion, try endpointResolver ?? DefaultEndpointResolver(), telemetryProvider ?? ClientRuntime.DefaultTelemetry.provider, try retryStrategyOptions ?? AWSClientConfigDefaultsProvider.retryStrategyOptions(awsRetryMode, maxAttempts), clientLogMode ?? AWSClientConfigDefaultsProvider.clientLogMode(), endpoint, idempotencyTokenGenerator ?? AWSClientConfigDefaultsProvider.idempotencyTokenGenerator(), httpClientEngine ?? AWSClientConfigDefaultsProvider.httpClientEngine(), httpClientConfiguration ?? AWSClientConfigDefaultsProvider.httpClientConfiguration(), authSchemes ?? [AWSSDKHTTPAuth.SigV4AuthScheme()], authSchemeResolver ?? DefaultCloudSearchDomainAuthSchemeResolver(), bearerTokenIdentityResolver ?? SmithyIdentity.StaticBearerTokenIdentityResolver(token: SmithyIdentity.BearerTokenIdentity(token: "")), interceptorProviders ?? [], httpInterceptorProviders ?? [])
        }

        public convenience init(useFIPS: Swift.Bool? = nil, useDualStack: Swift.Bool? = nil, appID: Swift.String? = nil, awsCredentialIdentityResolver: (any SmithyIdentity.AWSCredentialIdentityResolver)? = nil, awsRetryMode: AWSClientRuntime.AWSRetryMode? = nil, maxAttempts: Swift.Int? = nil, region: Swift.String? = nil, signingRegion: Swift.String? = nil, endpointResolver: EndpointResolver? = nil, telemetryProvider: ClientRuntime.TelemetryProvider? = nil, retryStrategyOptions: SmithyRetriesAPI.RetryStrategyOptions? = nil, clientLogMode: ClientRuntime.ClientLogMode? = nil, endpoint: Swift.String? = nil, idempotencyTokenGenerator: ClientRuntime.IdempotencyTokenGenerator? = nil, httpClientEngine: SmithyHTTPAPI.HTTPClient? = nil, httpClientConfiguration: ClientRuntime.HttpClientConfiguration? = nil, authSchemes: SmithyHTTPAuthAPI.AuthSchemes? = nil, authSchemeResolver: SmithyHTTPAuthAPI.AuthSchemeResolver? = nil, bearerTokenIdentityResolver: (any SmithyIdentity.BearerTokenIdentityResolver)? = nil, interceptorProviders: [ClientRuntime.InterceptorProvider]? = nil, httpInterceptorProviders: [ClientRuntime.HttpInterceptorProvider]? = nil) async throws {
            self.init(useFIPS, useDualStack, try appID ?? AWSClientRuntime.AWSClientConfigDefaultsProvider.appID(), try awsCredentialIdentityResolver ?? AWSClientRuntime.AWSClientConfigDefaultsProvider.awsCredentialIdentityResolver(awsCredentialIdentityResolver), try awsRetryMode ?? AWSClientRuntime.AWSClientConfigDefaultsProvider.retryMode(), maxAttempts, try await AWSClientRuntime.AWSClientConfigDefaultsProvider.region(region), try await AWSClientRuntime.AWSClientConfigDefaultsProvider.region(region), try endpointResolver ?? DefaultEndpointResolver(), telemetryProvider ?? ClientRuntime.DefaultTelemetry.provider, try retryStrategyOptions ?? AWSClientConfigDefaultsProvider.retryStrategyOptions(awsRetryMode, maxAttempts), clientLogMode ?? AWSClientConfigDefaultsProvider.clientLogMode(), endpoint, idempotencyTokenGenerator ?? AWSClientConfigDefaultsProvider.idempotencyTokenGenerator(), httpClientEngine ?? AWSClientConfigDefaultsProvider.httpClientEngine(), httpClientConfiguration ?? AWSClientConfigDefaultsProvider.httpClientConfiguration(), authSchemes ?? [AWSSDKHTTPAuth.SigV4AuthScheme()], authSchemeResolver ?? DefaultCloudSearchDomainAuthSchemeResolver(), bearerTokenIdentityResolver ?? SmithyIdentity.StaticBearerTokenIdentityResolver(token: SmithyIdentity.BearerTokenIdentity(token: "")), interceptorProviders ?? [], httpInterceptorProviders ?? [])
        }

        public convenience required init() async throws {
            try await self.init(useFIPS: nil, useDualStack: nil, appID: nil, awsCredentialIdentityResolver: nil, awsRetryMode: nil, maxAttempts: nil, region: nil, signingRegion: nil, endpointResolver: nil, telemetryProvider: nil, retryStrategyOptions: nil, clientLogMode: nil, endpoint: nil, idempotencyTokenGenerator: nil, httpClientEngine: nil, httpClientConfiguration: nil, authSchemes: nil, authSchemeResolver: nil, bearerTokenIdentityResolver: nil, interceptorProviders: nil, httpInterceptorProviders: nil)
        }

        public convenience init(region: String) throws {
            self.init(nil, nil, try AWSClientRuntime.AWSClientConfigDefaultsProvider.appID(), try AWSClientConfigDefaultsProvider.awsCredentialIdentityResolver(), try AWSClientRuntime.AWSClientConfigDefaultsProvider.retryMode(), nil, region, region, try DefaultEndpointResolver(), ClientRuntime.DefaultTelemetry.provider, try AWSClientConfigDefaultsProvider.retryStrategyOptions(), AWSClientConfigDefaultsProvider.clientLogMode(), nil, AWSClientConfigDefaultsProvider.idempotencyTokenGenerator(), AWSClientConfigDefaultsProvider.httpClientEngine(), AWSClientConfigDefaultsProvider.httpClientConfiguration(), [AWSSDKHTTPAuth.SigV4AuthScheme()], DefaultCloudSearchDomainAuthSchemeResolver(), SmithyIdentity.StaticBearerTokenIdentityResolver(token: SmithyIdentity.BearerTokenIdentity(token: "")), [], [])
        }

        public var partitionID: String? {
            return "\(CloudSearchDomainClient.clientName) - \(region ?? "")"
        }
        public func addInterceptorProvider(_ provider: ClientRuntime.InterceptorProvider) {
            self.interceptorProviders.append(provider)
        }

        public func addInterceptorProvider(_ provider: ClientRuntime.HttpInterceptorProvider) {
            self.httpInterceptorProviders.append(provider)
        }

    }

    public static func builder() -> ClientRuntime.ClientBuilder<CloudSearchDomainClient> {
        return ClientRuntime.ClientBuilder<CloudSearchDomainClient>(defaultPlugins: [
            ClientRuntime.DefaultClientPlugin(),
            AWSClientRuntime.DefaultAWSClientPlugin(clientName: self.clientName),
            DefaultAWSAuthSchemePlugin()
        ])
    }
}

extension CloudSearchDomainClient {
    /// Performs the `Search` operation on the `AmazonCloudSearch2013` service.
    ///
    /// Retrieves a list of documents that match the specified search criteria. How you specify the search criteria depends on which query parser you use. Amazon CloudSearch supports four query parsers:
    ///
    /// * simple: search all text and text-array fields for the specified string. Search for phrases, individual terms, and prefixes.
    ///
    /// * structured: search specific fields, construct compound queries using Boolean operators, and use advanced features such as term boosting and proximity searching.
    ///
    /// * lucene: specify search criteria using the Apache Lucene query parser syntax.
    ///
    /// * dismax: specify search criteria using the simplified subset of the Apache Lucene query parser syntax defined by the DisMax query parser.
    ///
    ///
    /// For more information, see [Searching Your Data](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/searching.html) in the Amazon CloudSearch Developer Guide. The endpoint for submitting Search requests is domain-specific. You submit search requests to a domain's search endpoint. To get the search endpoint for your domain, use the Amazon CloudSearch configuration service DescribeDomains action. A domain's endpoints are also displayed on the domain dashboard in the Amazon CloudSearch console.
    ///
    /// - Parameter SearchInput : Container for the parameters to the Search request.
    ///
    /// - Returns: `SearchOutput` : The result of a Search request. Contains the documents that match the specified search criteria and any requested fields, highlights, and facet information.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `SearchException` : Information about any problems encountered while processing a search request.
    public func search(input: SearchInput) async throws -> SearchOutput {
        let context = Smithy.ContextBuilder()
                      .withMethod(value: .get)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "search")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withAuthSchemes(value: config.authSchemes ?? [])
                      .withAuthSchemeResolver(value: config.authSchemeResolver)
                      .withUnsignedPayloadTrait(value: false)
                      .withSocketTimeout(value: config.httpClientConfiguration.socketTimeout)
                      .withIdentityResolver(value: config.bearerTokenIdentityResolver, schemeID: "smithy.api#httpBearerAuth")
                      .withIdentityResolver(value: config.awsCredentialIdentityResolver, schemeID: "aws.auth#sigv4")
                      .withIdentityResolver(value: config.awsCredentialIdentityResolver, schemeID: "aws.auth#sigv4a")
                      .withRegion(value: config.region)
                      .withSigningName(value: "cloudsearch")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        let builder = ClientRuntime.OrchestratorBuilder<SearchInput, SearchOutput, SmithyHTTPAPI.HTTPRequest, SmithyHTTPAPI.HTTPResponse>()
        config.interceptorProviders.forEach { provider in
            builder.interceptors.add(provider.create())
        }
        config.httpInterceptorProviders.forEach { provider in
            builder.interceptors.add(provider.create())
        }
        builder.interceptors.add(ClientRuntime.URLPathMiddleware<SearchInput, SearchOutput>(SearchInput.urlPathProvider(_:)))
        builder.interceptors.add(ClientRuntime.URLHostMiddleware<SearchInput, SearchOutput>())
        builder.serialize(ClientRuntime.QueryItemMiddleware<SearchInput, SearchOutput>(SearchInput.queryItemProvider(_:)))
        builder.deserialize(ClientRuntime.DeserializeMiddleware<SearchOutput>(SearchOutput.httpOutput(from:), SearchOutputError.httpError(from:)))
        builder.interceptors.add(ClientRuntime.LoggerMiddleware<SearchInput, SearchOutput>(clientLogMode: config.clientLogMode))
        builder.retryStrategy(SmithyRetries.DefaultRetryStrategy(options: config.retryStrategyOptions))
        builder.retryErrorInfoProvider(AWSClientRuntime.AWSRetryErrorInfoProvider.errorInfo(for:))
        builder.applySigner(ClientRuntime.SignerMiddleware<SearchOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        builder.applyEndpoint(AWSClientRuntime.EndpointResolverMiddleware<SearchOutput, EndpointParams>(endpointResolverBlock: { [config] in try config.endpointResolver.resolve(params: $0) }, endpointParams: endpointParams))
        builder.interceptors.add(AWSClientRuntime.UserAgentMiddleware<SearchInput, SearchOutput>(serviceID: serviceName, version: CloudSearchDomainClient.version, config: config))
        builder.selectAuthScheme(ClientRuntime.AuthSchemeMiddleware<SearchOutput>())
        builder.interceptors.add(AWSClientRuntime.AmzSdkInvocationIdMiddleware<SearchInput, SearchOutput>())
        builder.interceptors.add(AWSClientRuntime.AmzSdkRequestMiddleware<SearchInput, SearchOutput>(maxRetries: config.retryStrategyOptions.maxRetriesBase))
        var metricsAttributes = Smithy.Attributes()
        metricsAttributes.set(key: ClientRuntime.OrchestratorMetricsAttributesKeys.service, value: "CloudSearchDomain")
        metricsAttributes.set(key: ClientRuntime.OrchestratorMetricsAttributesKeys.method, value: "Search")
        let op = builder.attributes(context)
            .telemetry(ClientRuntime.OrchestratorTelemetry(
                telemetryProvider: config.telemetryProvider,
                metricsAttributes: metricsAttributes,
                meterScope: serviceName,
                tracerScope: serviceName
            ))
            .executeRequest(client)
            .build()
        return try await op.execute(input: input)
    }

    /// Performs the `Suggest` operation on the `AmazonCloudSearch2013` service.
    ///
    /// Retrieves autocomplete suggestions for a partial query string. You can use suggestions enable you to display likely matches before users finish typing. In Amazon CloudSearch, suggestions are based on the contents of a particular text field. When you request suggestions, Amazon CloudSearch finds all of the documents whose values in the suggester field start with the specified query string. The beginning of the field must match the query string to be considered a match. For more information about configuring suggesters and retrieving suggestions, see [Getting Suggestions](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html) in the Amazon CloudSearch Developer Guide. The endpoint for submitting Suggest requests is domain-specific. You submit suggest requests to a domain's search endpoint. To get the search endpoint for your domain, use the Amazon CloudSearch configuration service DescribeDomains action. A domain's endpoints are also displayed on the domain dashboard in the Amazon CloudSearch console.
    ///
    /// - Parameter SuggestInput : Container for the parameters to the Suggest request.
    ///
    /// - Returns: `SuggestOutput` : Contains the response to a Suggest request.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `SearchException` : Information about any problems encountered while processing a search request.
    public func suggest(input: SuggestInput) async throws -> SuggestOutput {
        let context = Smithy.ContextBuilder()
                      .withMethod(value: .get)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "suggest")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withAuthSchemes(value: config.authSchemes ?? [])
                      .withAuthSchemeResolver(value: config.authSchemeResolver)
                      .withUnsignedPayloadTrait(value: false)
                      .withSocketTimeout(value: config.httpClientConfiguration.socketTimeout)
                      .withIdentityResolver(value: config.bearerTokenIdentityResolver, schemeID: "smithy.api#httpBearerAuth")
                      .withIdentityResolver(value: config.awsCredentialIdentityResolver, schemeID: "aws.auth#sigv4")
                      .withIdentityResolver(value: config.awsCredentialIdentityResolver, schemeID: "aws.auth#sigv4a")
                      .withRegion(value: config.region)
                      .withSigningName(value: "cloudsearch")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        let builder = ClientRuntime.OrchestratorBuilder<SuggestInput, SuggestOutput, SmithyHTTPAPI.HTTPRequest, SmithyHTTPAPI.HTTPResponse>()
        config.interceptorProviders.forEach { provider in
            builder.interceptors.add(provider.create())
        }
        config.httpInterceptorProviders.forEach { provider in
            builder.interceptors.add(provider.create())
        }
        builder.interceptors.add(ClientRuntime.URLPathMiddleware<SuggestInput, SuggestOutput>(SuggestInput.urlPathProvider(_:)))
        builder.interceptors.add(ClientRuntime.URLHostMiddleware<SuggestInput, SuggestOutput>())
        builder.serialize(ClientRuntime.QueryItemMiddleware<SuggestInput, SuggestOutput>(SuggestInput.queryItemProvider(_:)))
        builder.deserialize(ClientRuntime.DeserializeMiddleware<SuggestOutput>(SuggestOutput.httpOutput(from:), SuggestOutputError.httpError(from:)))
        builder.interceptors.add(ClientRuntime.LoggerMiddleware<SuggestInput, SuggestOutput>(clientLogMode: config.clientLogMode))
        builder.retryStrategy(SmithyRetries.DefaultRetryStrategy(options: config.retryStrategyOptions))
        builder.retryErrorInfoProvider(AWSClientRuntime.AWSRetryErrorInfoProvider.errorInfo(for:))
        builder.applySigner(ClientRuntime.SignerMiddleware<SuggestOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        builder.applyEndpoint(AWSClientRuntime.EndpointResolverMiddleware<SuggestOutput, EndpointParams>(endpointResolverBlock: { [config] in try config.endpointResolver.resolve(params: $0) }, endpointParams: endpointParams))
        builder.interceptors.add(AWSClientRuntime.UserAgentMiddleware<SuggestInput, SuggestOutput>(serviceID: serviceName, version: CloudSearchDomainClient.version, config: config))
        builder.selectAuthScheme(ClientRuntime.AuthSchemeMiddleware<SuggestOutput>())
        builder.interceptors.add(AWSClientRuntime.AmzSdkInvocationIdMiddleware<SuggestInput, SuggestOutput>())
        builder.interceptors.add(AWSClientRuntime.AmzSdkRequestMiddleware<SuggestInput, SuggestOutput>(maxRetries: config.retryStrategyOptions.maxRetriesBase))
        var metricsAttributes = Smithy.Attributes()
        metricsAttributes.set(key: ClientRuntime.OrchestratorMetricsAttributesKeys.service, value: "CloudSearchDomain")
        metricsAttributes.set(key: ClientRuntime.OrchestratorMetricsAttributesKeys.method, value: "Suggest")
        let op = builder.attributes(context)
            .telemetry(ClientRuntime.OrchestratorTelemetry(
                telemetryProvider: config.telemetryProvider,
                metricsAttributes: metricsAttributes,
                meterScope: serviceName,
                tracerScope: serviceName
            ))
            .executeRequest(client)
            .build()
        return try await op.execute(input: input)
    }

    /// Performs the `UploadDocuments` operation on the `AmazonCloudSearch2013` service.
    ///
    /// Posts a batch of documents to a search domain for indexing. A document batch is a collection of add and delete operations that represent the documents you want to add, update, or delete from your domain. Batches can be described in either JSON or XML. Each item that you want Amazon CloudSearch to return as a search result (such as a product) is represented as a document. Every document has a unique ID and one or more fields that contain the data that you want to search and return in results. Individual documents cannot contain more than 1 MB of data. The entire batch cannot exceed 5 MB. To get the best possible upload performance, group add and delete operations in batches that are close the 5 MB limit. Submitting a large volume of single-document batches can overload a domain's document service. The endpoint for submitting UploadDocuments requests is domain-specific. To get the document endpoint for your domain, use the Amazon CloudSearch configuration service DescribeDomains action. A domain's endpoints are also displayed on the domain dashboard in the Amazon CloudSearch console. For more information about formatting your data for Amazon CloudSearch, see [Preparing Your Data](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/preparing-data.html) in the Amazon CloudSearch Developer Guide. For more information about uploading data for indexing, see [Uploading Data](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/uploading-data.html) in the Amazon CloudSearch Developer Guide.
    ///
    /// - Parameter UploadDocumentsInput : Container for the parameters to the UploadDocuments request.
    ///
    /// - Returns: `UploadDocumentsOutput` : Contains the response to an UploadDocuments request.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `DocumentServiceException` : Information about any problems encountered while processing an upload request.
    public func uploadDocuments(input: UploadDocumentsInput) async throws -> UploadDocumentsOutput {
        let context = Smithy.ContextBuilder()
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "uploadDocuments")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withAuthSchemes(value: config.authSchemes ?? [])
                      .withAuthSchemeResolver(value: config.authSchemeResolver)
                      .withUnsignedPayloadTrait(value: false)
                      .withSocketTimeout(value: config.httpClientConfiguration.socketTimeout)
                      .withIdentityResolver(value: config.bearerTokenIdentityResolver, schemeID: "smithy.api#httpBearerAuth")
                      .withIdentityResolver(value: config.awsCredentialIdentityResolver, schemeID: "aws.auth#sigv4")
                      .withIdentityResolver(value: config.awsCredentialIdentityResolver, schemeID: "aws.auth#sigv4a")
                      .withRegion(value: config.region)
                      .withSigningName(value: "cloudsearch")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        let builder = ClientRuntime.OrchestratorBuilder<UploadDocumentsInput, UploadDocumentsOutput, SmithyHTTPAPI.HTTPRequest, SmithyHTTPAPI.HTTPResponse>()
        config.interceptorProviders.forEach { provider in
            builder.interceptors.add(provider.create())
        }
        config.httpInterceptorProviders.forEach { provider in
            builder.interceptors.add(provider.create())
        }
        builder.interceptors.add(ClientRuntime.URLPathMiddleware<UploadDocumentsInput, UploadDocumentsOutput>(UploadDocumentsInput.urlPathProvider(_:)))
        builder.interceptors.add(ClientRuntime.URLHostMiddleware<UploadDocumentsInput, UploadDocumentsOutput>())
        builder.serialize(ClientRuntime.HeaderMiddleware<UploadDocumentsInput, UploadDocumentsOutput>(UploadDocumentsInput.headerProvider(_:)))
        builder.serialize(ClientRuntime.QueryItemMiddleware<UploadDocumentsInput, UploadDocumentsOutput>(UploadDocumentsInput.queryItemProvider(_:)))
        builder.interceptors.add(ClientRuntime.ContentTypeMiddleware<UploadDocumentsInput, UploadDocumentsOutput>(contentType: "application/octet-stream"))
        builder.serialize(ClientRuntime.BlobStreamBodyMiddleware<UploadDocumentsInput, UploadDocumentsOutput>(keyPath: \.documents))
        builder.interceptors.add(ClientRuntime.ContentLengthMiddleware<UploadDocumentsInput, UploadDocumentsOutput>())
        builder.deserialize(ClientRuntime.DeserializeMiddleware<UploadDocumentsOutput>(UploadDocumentsOutput.httpOutput(from:), UploadDocumentsOutputError.httpError(from:)))
        builder.interceptors.add(ClientRuntime.LoggerMiddleware<UploadDocumentsInput, UploadDocumentsOutput>(clientLogMode: config.clientLogMode))
        builder.retryStrategy(SmithyRetries.DefaultRetryStrategy(options: config.retryStrategyOptions))
        builder.retryErrorInfoProvider(AWSClientRuntime.AWSRetryErrorInfoProvider.errorInfo(for:))
        builder.applySigner(ClientRuntime.SignerMiddleware<UploadDocumentsOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        builder.applyEndpoint(AWSClientRuntime.EndpointResolverMiddleware<UploadDocumentsOutput, EndpointParams>(endpointResolverBlock: { [config] in try config.endpointResolver.resolve(params: $0) }, endpointParams: endpointParams))
        builder.interceptors.add(AWSClientRuntime.UserAgentMiddleware<UploadDocumentsInput, UploadDocumentsOutput>(serviceID: serviceName, version: CloudSearchDomainClient.version, config: config))
        builder.selectAuthScheme(ClientRuntime.AuthSchemeMiddleware<UploadDocumentsOutput>())
        builder.interceptors.add(AWSClientRuntime.AmzSdkInvocationIdMiddleware<UploadDocumentsInput, UploadDocumentsOutput>())
        builder.interceptors.add(AWSClientRuntime.AmzSdkRequestMiddleware<UploadDocumentsInput, UploadDocumentsOutput>(maxRetries: config.retryStrategyOptions.maxRetriesBase))
        var metricsAttributes = Smithy.Attributes()
        metricsAttributes.set(key: ClientRuntime.OrchestratorMetricsAttributesKeys.service, value: "CloudSearchDomain")
        metricsAttributes.set(key: ClientRuntime.OrchestratorMetricsAttributesKeys.method, value: "UploadDocuments")
        let op = builder.attributes(context)
            .telemetry(ClientRuntime.OrchestratorTelemetry(
                telemetryProvider: config.telemetryProvider,
                metricsAttributes: metricsAttributes,
                meterScope: serviceName,
                tracerScope: serviceName
            ))
            .executeRequest(client)
            .build()
        return try await op.execute(input: input)
    }

}
