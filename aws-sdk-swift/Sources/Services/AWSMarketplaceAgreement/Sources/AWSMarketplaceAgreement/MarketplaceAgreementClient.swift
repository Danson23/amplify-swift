//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

// Code generated by smithy-swift-codegen. DO NOT EDIT!

import Foundation
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
@_spi(SmithyReadWrite) import class SmithyJSON.Writer
import enum AWSClientRuntime.AWSRetryErrorInfoProvider
import enum AWSClientRuntime.AWSRetryMode
import enum ClientRuntime.ClientLogMode
import enum ClientRuntime.DefaultTelemetry
import enum ClientRuntime.OrchestratorMetricsAttributesKeys
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
@_spi(SmithyReadWrite) import protocol SmithyReadWrite.SmithyWriter
import struct AWSClientRuntime.AmzSdkInvocationIdMiddleware
import struct AWSClientRuntime.EndpointResolverMiddleware
import struct AWSClientRuntime.UserAgentMiddleware
import struct AWSClientRuntime.XAmzTargetMiddleware
import struct AWSSDKHTTPAuth.SigV4AuthScheme
import struct ClientRuntime.AuthSchemeMiddleware
@_spi(SmithyReadWrite) import struct ClientRuntime.BodyMiddleware
import struct ClientRuntime.ContentLengthMiddleware
import struct ClientRuntime.ContentTypeMiddleware
@_spi(SmithyReadWrite) import struct ClientRuntime.DeserializeMiddleware
import struct ClientRuntime.LoggerMiddleware
import struct ClientRuntime.SignerMiddleware
import struct ClientRuntime.URLHostMiddleware
import struct ClientRuntime.URLPathMiddleware
import struct Smithy.Attributes
import struct SmithyIdentity.BearerTokenIdentity
import struct SmithyIdentity.StaticBearerTokenIdentityResolver
import struct SmithyRetries.DefaultRetryStrategy
import struct SmithyRetriesAPI.RetryStrategyOptions
import typealias SmithyHTTPAuthAPI.AuthSchemes

public class MarketplaceAgreementClient: ClientRuntime.Client {
    public static let clientName = "MarketplaceAgreementClient"
    public static let version = "1.0.39"
    let client: ClientRuntime.SdkHttpClient
    let config: MarketplaceAgreementClient.MarketplaceAgreementClientConfiguration
    let serviceName = "Marketplace Agreement"

    public required init(config: MarketplaceAgreementClient.MarketplaceAgreementClientConfiguration) {
        client = ClientRuntime.SdkHttpClient(engine: config.httpClientEngine, config: config.httpClientConfiguration)
        self.config = config
    }

    public convenience init(region: Swift.String) throws {
        let config = try MarketplaceAgreementClient.MarketplaceAgreementClientConfiguration(region: region)
        self.init(config: config)
    }

    public convenience required init() async throws {
        let config = try await MarketplaceAgreementClient.MarketplaceAgreementClientConfiguration()
        self.init(config: config)
    }
}

extension MarketplaceAgreementClient {
    public class MarketplaceAgreementClientConfiguration: AWSClientRuntime.AWSDefaultClientConfiguration & AWSClientRuntime.AWSRegionClientConfiguration & ClientRuntime.DefaultClientConfiguration & ClientRuntime.DefaultHttpClientConfiguration {
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
            self.logger = telemetryProvider.loggerProvider.getLogger(name: MarketplaceAgreementClient.clientName)
        }

        public convenience init(useFIPS: Swift.Bool? = nil, useDualStack: Swift.Bool? = nil, appID: Swift.String? = nil, awsCredentialIdentityResolver: (any SmithyIdentity.AWSCredentialIdentityResolver)? = nil, awsRetryMode: AWSClientRuntime.AWSRetryMode? = nil, maxAttempts: Swift.Int? = nil, region: Swift.String? = nil, signingRegion: Swift.String? = nil, endpointResolver: EndpointResolver? = nil, telemetryProvider: ClientRuntime.TelemetryProvider? = nil, retryStrategyOptions: SmithyRetriesAPI.RetryStrategyOptions? = nil, clientLogMode: ClientRuntime.ClientLogMode? = nil, endpoint: Swift.String? = nil, idempotencyTokenGenerator: ClientRuntime.IdempotencyTokenGenerator? = nil, httpClientEngine: SmithyHTTPAPI.HTTPClient? = nil, httpClientConfiguration: ClientRuntime.HttpClientConfiguration? = nil, authSchemes: SmithyHTTPAuthAPI.AuthSchemes? = nil, authSchemeResolver: SmithyHTTPAuthAPI.AuthSchemeResolver? = nil, bearerTokenIdentityResolver: (any SmithyIdentity.BearerTokenIdentityResolver)? = nil, interceptorProviders: [ClientRuntime.InterceptorProvider]? = nil, httpInterceptorProviders: [ClientRuntime.HttpInterceptorProvider]? = nil) throws {
            self.init(useFIPS, useDualStack, try appID ?? AWSClientRuntime.AWSClientConfigDefaultsProvider.appID(), try awsCredentialIdentityResolver ?? AWSClientRuntime.AWSClientConfigDefaultsProvider.awsCredentialIdentityResolver(awsCredentialIdentityResolver), try awsRetryMode ?? AWSClientRuntime.AWSClientConfigDefaultsProvider.retryMode(), maxAttempts, region, signingRegion, try endpointResolver ?? DefaultEndpointResolver(), telemetryProvider ?? ClientRuntime.DefaultTelemetry.provider, try retryStrategyOptions ?? AWSClientConfigDefaultsProvider.retryStrategyOptions(awsRetryMode, maxAttempts), clientLogMode ?? AWSClientConfigDefaultsProvider.clientLogMode(), endpoint, idempotencyTokenGenerator ?? AWSClientConfigDefaultsProvider.idempotencyTokenGenerator(), httpClientEngine ?? AWSClientConfigDefaultsProvider.httpClientEngine(), httpClientConfiguration ?? AWSClientConfigDefaultsProvider.httpClientConfiguration(), authSchemes ?? [AWSSDKHTTPAuth.SigV4AuthScheme()], authSchemeResolver ?? DefaultMarketplaceAgreementAuthSchemeResolver(), bearerTokenIdentityResolver ?? SmithyIdentity.StaticBearerTokenIdentityResolver(token: SmithyIdentity.BearerTokenIdentity(token: "")), interceptorProviders ?? [], httpInterceptorProviders ?? [])
        }

        public convenience init(useFIPS: Swift.Bool? = nil, useDualStack: Swift.Bool? = nil, appID: Swift.String? = nil, awsCredentialIdentityResolver: (any SmithyIdentity.AWSCredentialIdentityResolver)? = nil, awsRetryMode: AWSClientRuntime.AWSRetryMode? = nil, maxAttempts: Swift.Int? = nil, region: Swift.String? = nil, signingRegion: Swift.String? = nil, endpointResolver: EndpointResolver? = nil, telemetryProvider: ClientRuntime.TelemetryProvider? = nil, retryStrategyOptions: SmithyRetriesAPI.RetryStrategyOptions? = nil, clientLogMode: ClientRuntime.ClientLogMode? = nil, endpoint: Swift.String? = nil, idempotencyTokenGenerator: ClientRuntime.IdempotencyTokenGenerator? = nil, httpClientEngine: SmithyHTTPAPI.HTTPClient? = nil, httpClientConfiguration: ClientRuntime.HttpClientConfiguration? = nil, authSchemes: SmithyHTTPAuthAPI.AuthSchemes? = nil, authSchemeResolver: SmithyHTTPAuthAPI.AuthSchemeResolver? = nil, bearerTokenIdentityResolver: (any SmithyIdentity.BearerTokenIdentityResolver)? = nil, interceptorProviders: [ClientRuntime.InterceptorProvider]? = nil, httpInterceptorProviders: [ClientRuntime.HttpInterceptorProvider]? = nil) async throws {
            self.init(useFIPS, useDualStack, try appID ?? AWSClientRuntime.AWSClientConfigDefaultsProvider.appID(), try awsCredentialIdentityResolver ?? AWSClientRuntime.AWSClientConfigDefaultsProvider.awsCredentialIdentityResolver(awsCredentialIdentityResolver), try awsRetryMode ?? AWSClientRuntime.AWSClientConfigDefaultsProvider.retryMode(), maxAttempts, try await AWSClientRuntime.AWSClientConfigDefaultsProvider.region(region), try await AWSClientRuntime.AWSClientConfigDefaultsProvider.region(region), try endpointResolver ?? DefaultEndpointResolver(), telemetryProvider ?? ClientRuntime.DefaultTelemetry.provider, try retryStrategyOptions ?? AWSClientConfigDefaultsProvider.retryStrategyOptions(awsRetryMode, maxAttempts), clientLogMode ?? AWSClientConfigDefaultsProvider.clientLogMode(), endpoint, idempotencyTokenGenerator ?? AWSClientConfigDefaultsProvider.idempotencyTokenGenerator(), httpClientEngine ?? AWSClientConfigDefaultsProvider.httpClientEngine(), httpClientConfiguration ?? AWSClientConfigDefaultsProvider.httpClientConfiguration(), authSchemes ?? [AWSSDKHTTPAuth.SigV4AuthScheme()], authSchemeResolver ?? DefaultMarketplaceAgreementAuthSchemeResolver(), bearerTokenIdentityResolver ?? SmithyIdentity.StaticBearerTokenIdentityResolver(token: SmithyIdentity.BearerTokenIdentity(token: "")), interceptorProviders ?? [], httpInterceptorProviders ?? [])
        }

        public convenience required init() async throws {
            try await self.init(useFIPS: nil, useDualStack: nil, appID: nil, awsCredentialIdentityResolver: nil, awsRetryMode: nil, maxAttempts: nil, region: nil, signingRegion: nil, endpointResolver: nil, telemetryProvider: nil, retryStrategyOptions: nil, clientLogMode: nil, endpoint: nil, idempotencyTokenGenerator: nil, httpClientEngine: nil, httpClientConfiguration: nil, authSchemes: nil, authSchemeResolver: nil, bearerTokenIdentityResolver: nil, interceptorProviders: nil, httpInterceptorProviders: nil)
        }

        public convenience init(region: String) throws {
            self.init(nil, nil, try AWSClientRuntime.AWSClientConfigDefaultsProvider.appID(), try AWSClientConfigDefaultsProvider.awsCredentialIdentityResolver(), try AWSClientRuntime.AWSClientConfigDefaultsProvider.retryMode(), nil, region, region, try DefaultEndpointResolver(), ClientRuntime.DefaultTelemetry.provider, try AWSClientConfigDefaultsProvider.retryStrategyOptions(), AWSClientConfigDefaultsProvider.clientLogMode(), nil, AWSClientConfigDefaultsProvider.idempotencyTokenGenerator(), AWSClientConfigDefaultsProvider.httpClientEngine(), AWSClientConfigDefaultsProvider.httpClientConfiguration(), [AWSSDKHTTPAuth.SigV4AuthScheme()], DefaultMarketplaceAgreementAuthSchemeResolver(), SmithyIdentity.StaticBearerTokenIdentityResolver(token: SmithyIdentity.BearerTokenIdentity(token: "")), [], [])
        }

        public var partitionID: String? {
            return "\(MarketplaceAgreementClient.clientName) - \(region ?? "")"
        }
        public func addInterceptorProvider(_ provider: ClientRuntime.InterceptorProvider) {
            self.interceptorProviders.append(provider)
        }

        public func addInterceptorProvider(_ provider: ClientRuntime.HttpInterceptorProvider) {
            self.httpInterceptorProviders.append(provider)
        }

    }

    public static func builder() -> ClientRuntime.ClientBuilder<MarketplaceAgreementClient> {
        return ClientRuntime.ClientBuilder<MarketplaceAgreementClient>(defaultPlugins: [
            ClientRuntime.DefaultClientPlugin(),
            AWSClientRuntime.DefaultAWSClientPlugin(clientName: self.clientName),
            DefaultAWSAuthSchemePlugin()
        ])
    }
}

extension MarketplaceAgreementClient {
    /// Performs the `DescribeAgreement` operation on the `AWSMPCommerceService_v20200301` service.
    ///
    /// Provides details about an agreement, such as the proposer, acceptor, start date, and end date.
    ///
    /// - Parameter DescribeAgreementInput : [no documentation found]
    ///
    /// - Returns: `DescribeAgreementOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : User does not have sufficient access to perform this action.
    /// - `InternalServerException` : Unexpected error during processing of request.
    /// - `ResourceNotFoundException` : Request references a resource which does not exist.
    /// - `ThrottlingException` : Request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by the service.
    public func describeAgreement(input: DescribeAgreementInput) async throws -> DescribeAgreementOutput {
        let context = Smithy.ContextBuilder()
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "describeAgreement")
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
                      .withSigningName(value: "aws-marketplace")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        let builder = ClientRuntime.OrchestratorBuilder<DescribeAgreementInput, DescribeAgreementOutput, SmithyHTTPAPI.HTTPRequest, SmithyHTTPAPI.HTTPResponse>()
        config.interceptorProviders.forEach { provider in
            builder.interceptors.add(provider.create())
        }
        config.httpInterceptorProviders.forEach { provider in
            builder.interceptors.add(provider.create())
        }
        builder.interceptors.add(ClientRuntime.URLPathMiddleware<DescribeAgreementInput, DescribeAgreementOutput>(DescribeAgreementInput.urlPathProvider(_:)))
        builder.interceptors.add(ClientRuntime.URLHostMiddleware<DescribeAgreementInput, DescribeAgreementOutput>())
        builder.interceptors.add(ClientRuntime.ContentLengthMiddleware<DescribeAgreementInput, DescribeAgreementOutput>())
        builder.deserialize(ClientRuntime.DeserializeMiddleware<DescribeAgreementOutput>(DescribeAgreementOutput.httpOutput(from:), DescribeAgreementOutputError.httpError(from:)))
        builder.interceptors.add(ClientRuntime.LoggerMiddleware<DescribeAgreementInput, DescribeAgreementOutput>(clientLogMode: config.clientLogMode))
        builder.retryStrategy(SmithyRetries.DefaultRetryStrategy(options: config.retryStrategyOptions))
        builder.retryErrorInfoProvider(AWSClientRuntime.AWSRetryErrorInfoProvider.errorInfo(for:))
        builder.applySigner(ClientRuntime.SignerMiddleware<DescribeAgreementOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        builder.applyEndpoint(AWSClientRuntime.EndpointResolverMiddleware<DescribeAgreementOutput, EndpointParams>(endpointResolverBlock: { [config] in try config.endpointResolver.resolve(params: $0) }, endpointParams: endpointParams))
        builder.interceptors.add(AWSClientRuntime.UserAgentMiddleware<DescribeAgreementInput, DescribeAgreementOutput>(serviceID: serviceName, version: MarketplaceAgreementClient.version, config: config))
        builder.interceptors.add(AWSClientRuntime.XAmzTargetMiddleware<DescribeAgreementInput, DescribeAgreementOutput>(xAmzTarget: "AWSMPCommerceService_v20200301.DescribeAgreement"))
        builder.serialize(ClientRuntime.BodyMiddleware<DescribeAgreementInput, DescribeAgreementOutput, SmithyJSON.Writer>(rootNodeInfo: "", inputWritingClosure: DescribeAgreementInput.write(value:to:)))
        builder.interceptors.add(ClientRuntime.ContentTypeMiddleware<DescribeAgreementInput, DescribeAgreementOutput>(contentType: "application/x-amz-json-1.0"))
        builder.selectAuthScheme(ClientRuntime.AuthSchemeMiddleware<DescribeAgreementOutput>())
        builder.interceptors.add(AWSClientRuntime.AmzSdkInvocationIdMiddleware<DescribeAgreementInput, DescribeAgreementOutput>())
        builder.interceptors.add(AWSClientRuntime.AmzSdkRequestMiddleware<DescribeAgreementInput, DescribeAgreementOutput>(maxRetries: config.retryStrategyOptions.maxRetriesBase))
        var metricsAttributes = Smithy.Attributes()
        metricsAttributes.set(key: ClientRuntime.OrchestratorMetricsAttributesKeys.service, value: "MarketplaceAgreement")
        metricsAttributes.set(key: ClientRuntime.OrchestratorMetricsAttributesKeys.method, value: "DescribeAgreement")
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

    /// Performs the `GetAgreementTerms` operation on the `AWSMPCommerceService_v20200301` service.
    ///
    /// Obtains details about the terms in an agreement that you participated in as proposer or acceptor. The details include:
    ///
    /// * TermType – The type of term, such as LegalTerm, RenewalTerm, or ConfigurableUpfrontPricingTerm.
    ///
    /// * TermID – The ID of the particular term, which is common between offer and agreement.
    ///
    /// * TermPayload – The key information contained in the term, such as the EULA for LegalTerm or pricing and dimensions for various pricing terms, such as ConfigurableUpfrontPricingTerm or UsageBasedPricingTerm.
    ///
    ///
    ///
    ///
    /// * Configuration – The buyer/acceptor's selection at the time of agreement creation, such as the number of units purchased for a dimension or setting the EnableAutoRenew flag.
    ///
    /// - Parameter GetAgreementTermsInput : [no documentation found]
    ///
    /// - Returns: `GetAgreementTermsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : User does not have sufficient access to perform this action.
    /// - `InternalServerException` : Unexpected error during processing of request.
    /// - `ResourceNotFoundException` : Request references a resource which does not exist.
    /// - `ThrottlingException` : Request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by the service.
    public func getAgreementTerms(input: GetAgreementTermsInput) async throws -> GetAgreementTermsOutput {
        let context = Smithy.ContextBuilder()
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "getAgreementTerms")
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
                      .withSigningName(value: "aws-marketplace")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        let builder = ClientRuntime.OrchestratorBuilder<GetAgreementTermsInput, GetAgreementTermsOutput, SmithyHTTPAPI.HTTPRequest, SmithyHTTPAPI.HTTPResponse>()
        config.interceptorProviders.forEach { provider in
            builder.interceptors.add(provider.create())
        }
        config.httpInterceptorProviders.forEach { provider in
            builder.interceptors.add(provider.create())
        }
        builder.interceptors.add(ClientRuntime.URLPathMiddleware<GetAgreementTermsInput, GetAgreementTermsOutput>(GetAgreementTermsInput.urlPathProvider(_:)))
        builder.interceptors.add(ClientRuntime.URLHostMiddleware<GetAgreementTermsInput, GetAgreementTermsOutput>())
        builder.interceptors.add(ClientRuntime.ContentLengthMiddleware<GetAgreementTermsInput, GetAgreementTermsOutput>())
        builder.deserialize(ClientRuntime.DeserializeMiddleware<GetAgreementTermsOutput>(GetAgreementTermsOutput.httpOutput(from:), GetAgreementTermsOutputError.httpError(from:)))
        builder.interceptors.add(ClientRuntime.LoggerMiddleware<GetAgreementTermsInput, GetAgreementTermsOutput>(clientLogMode: config.clientLogMode))
        builder.retryStrategy(SmithyRetries.DefaultRetryStrategy(options: config.retryStrategyOptions))
        builder.retryErrorInfoProvider(AWSClientRuntime.AWSRetryErrorInfoProvider.errorInfo(for:))
        builder.applySigner(ClientRuntime.SignerMiddleware<GetAgreementTermsOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        builder.applyEndpoint(AWSClientRuntime.EndpointResolverMiddleware<GetAgreementTermsOutput, EndpointParams>(endpointResolverBlock: { [config] in try config.endpointResolver.resolve(params: $0) }, endpointParams: endpointParams))
        builder.interceptors.add(AWSClientRuntime.UserAgentMiddleware<GetAgreementTermsInput, GetAgreementTermsOutput>(serviceID: serviceName, version: MarketplaceAgreementClient.version, config: config))
        builder.interceptors.add(AWSClientRuntime.XAmzTargetMiddleware<GetAgreementTermsInput, GetAgreementTermsOutput>(xAmzTarget: "AWSMPCommerceService_v20200301.GetAgreementTerms"))
        builder.serialize(ClientRuntime.BodyMiddleware<GetAgreementTermsInput, GetAgreementTermsOutput, SmithyJSON.Writer>(rootNodeInfo: "", inputWritingClosure: GetAgreementTermsInput.write(value:to:)))
        builder.interceptors.add(ClientRuntime.ContentTypeMiddleware<GetAgreementTermsInput, GetAgreementTermsOutput>(contentType: "application/x-amz-json-1.0"))
        builder.selectAuthScheme(ClientRuntime.AuthSchemeMiddleware<GetAgreementTermsOutput>())
        builder.interceptors.add(AWSClientRuntime.AmzSdkInvocationIdMiddleware<GetAgreementTermsInput, GetAgreementTermsOutput>())
        builder.interceptors.add(AWSClientRuntime.AmzSdkRequestMiddleware<GetAgreementTermsInput, GetAgreementTermsOutput>(maxRetries: config.retryStrategyOptions.maxRetriesBase))
        var metricsAttributes = Smithy.Attributes()
        metricsAttributes.set(key: ClientRuntime.OrchestratorMetricsAttributesKeys.service, value: "MarketplaceAgreement")
        metricsAttributes.set(key: ClientRuntime.OrchestratorMetricsAttributesKeys.method, value: "GetAgreementTerms")
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

    /// Performs the `SearchAgreements` operation on the `AWSMPCommerceService_v20200301` service.
    ///
    /// Searches across all agreements that a proposer or an acceptor has in AWS Marketplace. The search returns a list of agreements with basic agreement information. The following filter combinations are supported:
    ///
    /// * PartyType as Proposer + AgreementType + ResourceIdentifier
    ///
    /// * PartyType as Proposer + AgreementType + OfferId
    ///
    /// * PartyType as Proposer + AgreementType + AcceptorAccountId
    ///
    /// * PartyType as Proposer + AgreementType + Status
    ///
    /// * PartyType as Proposer + AgreementType + ResourceIdentifier + Status
    ///
    /// * PartyType as Proposer + AgreementType + OfferId + Status
    ///
    /// * PartyType as Proposer + AgreementType + AcceptorAccountId + Status
    ///
    /// * PartyType as Proposer + AgreementType + ResourceType + Status
    ///
    /// * PartyType as Proposer + AgreementType + AcceptorAccountId + ResourceType + Status
    ///
    /// * PartyType as Proposer + AgreementType + AcceptorAccountId + OfferId
    ///
    /// * PartyType as Proposer + AgreementType + AcceptorAccountId + OfferId + Status
    ///
    /// * PartyType as Proposer + AgreementType + AcceptorAccountId + ResourceIdentifier
    ///
    /// * PartyType as Proposer + AgreementType + AcceptorAccountId + ResourceIdentifier + Status
    ///
    /// * PartyType as Proposer + AgreementType + AcceptorAccountId + ResourceType
    ///
    /// - Parameter SearchAgreementsInput : [no documentation found]
    ///
    /// - Returns: `SearchAgreementsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : User does not have sufficient access to perform this action.
    /// - `InternalServerException` : Unexpected error during processing of request.
    /// - `ThrottlingException` : Request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by the service.
    public func searchAgreements(input: SearchAgreementsInput) async throws -> SearchAgreementsOutput {
        let context = Smithy.ContextBuilder()
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "searchAgreements")
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
                      .withSigningName(value: "aws-marketplace")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        let builder = ClientRuntime.OrchestratorBuilder<SearchAgreementsInput, SearchAgreementsOutput, SmithyHTTPAPI.HTTPRequest, SmithyHTTPAPI.HTTPResponse>()
        config.interceptorProviders.forEach { provider in
            builder.interceptors.add(provider.create())
        }
        config.httpInterceptorProviders.forEach { provider in
            builder.interceptors.add(provider.create())
        }
        builder.interceptors.add(ClientRuntime.URLPathMiddleware<SearchAgreementsInput, SearchAgreementsOutput>(SearchAgreementsInput.urlPathProvider(_:)))
        builder.interceptors.add(ClientRuntime.URLHostMiddleware<SearchAgreementsInput, SearchAgreementsOutput>())
        builder.interceptors.add(ClientRuntime.ContentLengthMiddleware<SearchAgreementsInput, SearchAgreementsOutput>())
        builder.deserialize(ClientRuntime.DeserializeMiddleware<SearchAgreementsOutput>(SearchAgreementsOutput.httpOutput(from:), SearchAgreementsOutputError.httpError(from:)))
        builder.interceptors.add(ClientRuntime.LoggerMiddleware<SearchAgreementsInput, SearchAgreementsOutput>(clientLogMode: config.clientLogMode))
        builder.retryStrategy(SmithyRetries.DefaultRetryStrategy(options: config.retryStrategyOptions))
        builder.retryErrorInfoProvider(AWSClientRuntime.AWSRetryErrorInfoProvider.errorInfo(for:))
        builder.applySigner(ClientRuntime.SignerMiddleware<SearchAgreementsOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        builder.applyEndpoint(AWSClientRuntime.EndpointResolverMiddleware<SearchAgreementsOutput, EndpointParams>(endpointResolverBlock: { [config] in try config.endpointResolver.resolve(params: $0) }, endpointParams: endpointParams))
        builder.interceptors.add(AWSClientRuntime.UserAgentMiddleware<SearchAgreementsInput, SearchAgreementsOutput>(serviceID: serviceName, version: MarketplaceAgreementClient.version, config: config))
        builder.interceptors.add(AWSClientRuntime.XAmzTargetMiddleware<SearchAgreementsInput, SearchAgreementsOutput>(xAmzTarget: "AWSMPCommerceService_v20200301.SearchAgreements"))
        builder.serialize(ClientRuntime.BodyMiddleware<SearchAgreementsInput, SearchAgreementsOutput, SmithyJSON.Writer>(rootNodeInfo: "", inputWritingClosure: SearchAgreementsInput.write(value:to:)))
        builder.interceptors.add(ClientRuntime.ContentTypeMiddleware<SearchAgreementsInput, SearchAgreementsOutput>(contentType: "application/x-amz-json-1.0"))
        builder.selectAuthScheme(ClientRuntime.AuthSchemeMiddleware<SearchAgreementsOutput>())
        builder.interceptors.add(AWSClientRuntime.AmzSdkInvocationIdMiddleware<SearchAgreementsInput, SearchAgreementsOutput>())
        builder.interceptors.add(AWSClientRuntime.AmzSdkRequestMiddleware<SearchAgreementsInput, SearchAgreementsOutput>(maxRetries: config.retryStrategyOptions.maxRetriesBase))
        var metricsAttributes = Smithy.Attributes()
        metricsAttributes.set(key: ClientRuntime.OrchestratorMetricsAttributesKeys.service, value: "MarketplaceAgreement")
        metricsAttributes.set(key: ClientRuntime.OrchestratorMetricsAttributesKeys.method, value: "SearchAgreements")
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
