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
import func AWSSDKEventStreamsAuth.setupBidirectionalStreaming
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
import struct ClientRuntime.ContentLengthMiddleware
import struct ClientRuntime.ContentTypeMiddleware
@_spi(SmithyReadWrite) import struct ClientRuntime.DeserializeMiddleware
import struct ClientRuntime.EventStreamBodyMiddleware
import struct ClientRuntime.HeaderMiddleware
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

public class TranscribeStreamingClient: ClientRuntime.Client {
    public static let clientName = "TranscribeStreamingClient"
    public static let version = "1.0.39"
    let client: ClientRuntime.SdkHttpClient
    let config: TranscribeStreamingClient.TranscribeStreamingClientConfiguration
    let serviceName = "Transcribe Streaming"

    public required init(config: TranscribeStreamingClient.TranscribeStreamingClientConfiguration) {
        client = ClientRuntime.SdkHttpClient(engine: config.httpClientEngine, config: config.httpClientConfiguration)
        self.config = config
    }

    public convenience init(region: Swift.String) throws {
        let config = try TranscribeStreamingClient.TranscribeStreamingClientConfiguration(region: region)
        self.init(config: config)
    }

    public convenience required init() async throws {
        let config = try await TranscribeStreamingClient.TranscribeStreamingClientConfiguration()
        self.init(config: config)
    }
}

extension TranscribeStreamingClient {
    public class TranscribeStreamingClientConfiguration: AWSClientRuntime.AWSDefaultClientConfiguration & AWSClientRuntime.AWSRegionClientConfiguration & ClientRuntime.DefaultClientConfiguration & ClientRuntime.DefaultHttpClientConfiguration {
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
            self.logger = telemetryProvider.loggerProvider.getLogger(name: TranscribeStreamingClient.clientName)
        }

        public convenience init(useFIPS: Swift.Bool? = nil, useDualStack: Swift.Bool? = nil, appID: Swift.String? = nil, awsCredentialIdentityResolver: (any SmithyIdentity.AWSCredentialIdentityResolver)? = nil, awsRetryMode: AWSClientRuntime.AWSRetryMode? = nil, maxAttempts: Swift.Int? = nil, region: Swift.String? = nil, signingRegion: Swift.String? = nil, endpointResolver: EndpointResolver? = nil, telemetryProvider: ClientRuntime.TelemetryProvider? = nil, retryStrategyOptions: SmithyRetriesAPI.RetryStrategyOptions? = nil, clientLogMode: ClientRuntime.ClientLogMode? = nil, endpoint: Swift.String? = nil, idempotencyTokenGenerator: ClientRuntime.IdempotencyTokenGenerator? = nil, httpClientEngine: SmithyHTTPAPI.HTTPClient? = nil, httpClientConfiguration: ClientRuntime.HttpClientConfiguration? = nil, authSchemes: SmithyHTTPAuthAPI.AuthSchemes? = nil, authSchemeResolver: SmithyHTTPAuthAPI.AuthSchemeResolver? = nil, bearerTokenIdentityResolver: (any SmithyIdentity.BearerTokenIdentityResolver)? = nil, interceptorProviders: [ClientRuntime.InterceptorProvider]? = nil, httpInterceptorProviders: [ClientRuntime.HttpInterceptorProvider]? = nil) throws {
            self.init(useFIPS, useDualStack, try appID ?? AWSClientRuntime.AWSClientConfigDefaultsProvider.appID(), try awsCredentialIdentityResolver ?? AWSClientRuntime.AWSClientConfigDefaultsProvider.awsCredentialIdentityResolver(awsCredentialIdentityResolver), try awsRetryMode ?? AWSClientRuntime.AWSClientConfigDefaultsProvider.retryMode(), maxAttempts, region, signingRegion, try endpointResolver ?? DefaultEndpointResolver(), telemetryProvider ?? ClientRuntime.DefaultTelemetry.provider, try retryStrategyOptions ?? AWSClientConfigDefaultsProvider.retryStrategyOptions(awsRetryMode, maxAttempts), clientLogMode ?? AWSClientConfigDefaultsProvider.clientLogMode(), endpoint, idempotencyTokenGenerator ?? AWSClientConfigDefaultsProvider.idempotencyTokenGenerator(), httpClientEngine ?? AWSClientConfigDefaultsProvider.httpClientEngine(), httpClientConfiguration ?? AWSClientConfigDefaultsProvider.httpClientConfiguration(), authSchemes ?? [AWSSDKHTTPAuth.SigV4AuthScheme()], authSchemeResolver ?? DefaultTranscribeStreamingAuthSchemeResolver(), bearerTokenIdentityResolver ?? SmithyIdentity.StaticBearerTokenIdentityResolver(token: SmithyIdentity.BearerTokenIdentity(token: "")), interceptorProviders ?? [], httpInterceptorProviders ?? [])
        }

        public convenience init(useFIPS: Swift.Bool? = nil, useDualStack: Swift.Bool? = nil, appID: Swift.String? = nil, awsCredentialIdentityResolver: (any SmithyIdentity.AWSCredentialIdentityResolver)? = nil, awsRetryMode: AWSClientRuntime.AWSRetryMode? = nil, maxAttempts: Swift.Int? = nil, region: Swift.String? = nil, signingRegion: Swift.String? = nil, endpointResolver: EndpointResolver? = nil, telemetryProvider: ClientRuntime.TelemetryProvider? = nil, retryStrategyOptions: SmithyRetriesAPI.RetryStrategyOptions? = nil, clientLogMode: ClientRuntime.ClientLogMode? = nil, endpoint: Swift.String? = nil, idempotencyTokenGenerator: ClientRuntime.IdempotencyTokenGenerator? = nil, httpClientEngine: SmithyHTTPAPI.HTTPClient? = nil, httpClientConfiguration: ClientRuntime.HttpClientConfiguration? = nil, authSchemes: SmithyHTTPAuthAPI.AuthSchemes? = nil, authSchemeResolver: SmithyHTTPAuthAPI.AuthSchemeResolver? = nil, bearerTokenIdentityResolver: (any SmithyIdentity.BearerTokenIdentityResolver)? = nil, interceptorProviders: [ClientRuntime.InterceptorProvider]? = nil, httpInterceptorProviders: [ClientRuntime.HttpInterceptorProvider]? = nil) async throws {
            self.init(useFIPS, useDualStack, try appID ?? AWSClientRuntime.AWSClientConfigDefaultsProvider.appID(), try awsCredentialIdentityResolver ?? AWSClientRuntime.AWSClientConfigDefaultsProvider.awsCredentialIdentityResolver(awsCredentialIdentityResolver), try awsRetryMode ?? AWSClientRuntime.AWSClientConfigDefaultsProvider.retryMode(), maxAttempts, try await AWSClientRuntime.AWSClientConfigDefaultsProvider.region(region), try await AWSClientRuntime.AWSClientConfigDefaultsProvider.region(region), try endpointResolver ?? DefaultEndpointResolver(), telemetryProvider ?? ClientRuntime.DefaultTelemetry.provider, try retryStrategyOptions ?? AWSClientConfigDefaultsProvider.retryStrategyOptions(awsRetryMode, maxAttempts), clientLogMode ?? AWSClientConfigDefaultsProvider.clientLogMode(), endpoint, idempotencyTokenGenerator ?? AWSClientConfigDefaultsProvider.idempotencyTokenGenerator(), httpClientEngine ?? AWSClientConfigDefaultsProvider.httpClientEngine(), httpClientConfiguration ?? AWSClientConfigDefaultsProvider.httpClientConfiguration(), authSchemes ?? [AWSSDKHTTPAuth.SigV4AuthScheme()], authSchemeResolver ?? DefaultTranscribeStreamingAuthSchemeResolver(), bearerTokenIdentityResolver ?? SmithyIdentity.StaticBearerTokenIdentityResolver(token: SmithyIdentity.BearerTokenIdentity(token: "")), interceptorProviders ?? [], httpInterceptorProviders ?? [])
        }

        public convenience required init() async throws {
            try await self.init(useFIPS: nil, useDualStack: nil, appID: nil, awsCredentialIdentityResolver: nil, awsRetryMode: nil, maxAttempts: nil, region: nil, signingRegion: nil, endpointResolver: nil, telemetryProvider: nil, retryStrategyOptions: nil, clientLogMode: nil, endpoint: nil, idempotencyTokenGenerator: nil, httpClientEngine: nil, httpClientConfiguration: nil, authSchemes: nil, authSchemeResolver: nil, bearerTokenIdentityResolver: nil, interceptorProviders: nil, httpInterceptorProviders: nil)
        }

        public convenience init(region: String) throws {
            self.init(nil, nil, try AWSClientRuntime.AWSClientConfigDefaultsProvider.appID(), try AWSClientConfigDefaultsProvider.awsCredentialIdentityResolver(), try AWSClientRuntime.AWSClientConfigDefaultsProvider.retryMode(), nil, region, region, try DefaultEndpointResolver(), ClientRuntime.DefaultTelemetry.provider, try AWSClientConfigDefaultsProvider.retryStrategyOptions(), AWSClientConfigDefaultsProvider.clientLogMode(), nil, AWSClientConfigDefaultsProvider.idempotencyTokenGenerator(), AWSClientConfigDefaultsProvider.httpClientEngine(), AWSClientConfigDefaultsProvider.httpClientConfiguration(), [AWSSDKHTTPAuth.SigV4AuthScheme()], DefaultTranscribeStreamingAuthSchemeResolver(), SmithyIdentity.StaticBearerTokenIdentityResolver(token: SmithyIdentity.BearerTokenIdentity(token: "")), [], [])
        }

        public var partitionID: String? {
            return "\(TranscribeStreamingClient.clientName) - \(region ?? "")"
        }
        public func addInterceptorProvider(_ provider: ClientRuntime.InterceptorProvider) {
            self.interceptorProviders.append(provider)
        }

        public func addInterceptorProvider(_ provider: ClientRuntime.HttpInterceptorProvider) {
            self.httpInterceptorProviders.append(provider)
        }

    }

    public static func builder() -> ClientRuntime.ClientBuilder<TranscribeStreamingClient> {
        return ClientRuntime.ClientBuilder<TranscribeStreamingClient>(defaultPlugins: [
            ClientRuntime.DefaultClientPlugin(),
            AWSClientRuntime.DefaultAWSClientPlugin(clientName: self.clientName),
            DefaultAWSAuthSchemePlugin()
        ])
    }
}

extension TranscribeStreamingClient {
    /// Performs the `StartCallAnalyticsStreamTranscription` operation on the `Transcribe` service.
    ///
    /// Starts a bidirectional HTTP/2 or WebSocket stream where audio is streamed to Amazon Transcribe and the transcription results are streamed to your application. Use this operation for [Call Analytics](https://docs.aws.amazon.com/transcribe/latest/dg/call-analytics.html) transcriptions. The following parameters are required:
    ///
    /// * language-code
    ///
    /// * media-encoding
    ///
    /// * sample-rate
    ///
    ///
    /// For more information on streaming with Amazon Transcribe, see [Transcribing streaming audio](https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html).
    ///
    /// - Parameter StartCallAnalyticsStreamTranscriptionInput : [no documentation found]
    ///
    /// - Returns: `StartCallAnalyticsStreamTranscriptionOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : One or more arguments to the StartStreamTranscription, StartMedicalStreamTranscription, or StartCallAnalyticsStreamTranscription operation was not valid. For example, MediaEncoding or LanguageCode used unsupported values. Check the specified parameters and try your request again.
    /// - `ConflictException` : A new stream started with the same session ID. The current stream has been terminated.
    /// - `InternalFailureException` : A problem occurred while processing the audio. Amazon Transcribe terminated processing.
    /// - `LimitExceededException` : Your client has exceeded one of the Amazon Transcribe limits. This is typically the audio length limit. Break your audio stream into smaller chunks and try your request again.
    /// - `ServiceUnavailableException` : The service is currently unavailable. Try your request later.
    public func startCallAnalyticsStreamTranscription(input: StartCallAnalyticsStreamTranscriptionInput) async throws -> StartCallAnalyticsStreamTranscriptionOutput {
        let context = Smithy.ContextBuilder()
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "startCallAnalyticsStreamTranscription")
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
                      .withSigningName(value: "transcribe")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        AWSSDKEventStreamsAuth.setupBidirectionalStreaming(context: context)
        let builder = ClientRuntime.OrchestratorBuilder<StartCallAnalyticsStreamTranscriptionInput, StartCallAnalyticsStreamTranscriptionOutput, SmithyHTTPAPI.HTTPRequest, SmithyHTTPAPI.HTTPResponse>()
        config.interceptorProviders.forEach { provider in
            builder.interceptors.add(provider.create())
        }
        config.httpInterceptorProviders.forEach { provider in
            builder.interceptors.add(provider.create())
        }
        builder.interceptors.add(ClientRuntime.URLPathMiddleware<StartCallAnalyticsStreamTranscriptionInput, StartCallAnalyticsStreamTranscriptionOutput>(StartCallAnalyticsStreamTranscriptionInput.urlPathProvider(_:)))
        builder.interceptors.add(ClientRuntime.URLHostMiddleware<StartCallAnalyticsStreamTranscriptionInput, StartCallAnalyticsStreamTranscriptionOutput>())
        builder.serialize(ClientRuntime.HeaderMiddleware<StartCallAnalyticsStreamTranscriptionInput, StartCallAnalyticsStreamTranscriptionOutput>(StartCallAnalyticsStreamTranscriptionInput.headerProvider(_:)))
        builder.interceptors.add(ClientRuntime.ContentTypeMiddleware<StartCallAnalyticsStreamTranscriptionInput, StartCallAnalyticsStreamTranscriptionOutput>(contentType: "application/json"))
        builder.serialize(ClientRuntime.EventStreamBodyMiddleware<StartCallAnalyticsStreamTranscriptionInput, StartCallAnalyticsStreamTranscriptionOutput, TranscribeStreamingClientTypes.AudioStream>(keyPath: \.audioStream, defaultBody: "{}", marshalClosure: TranscribeStreamingClientTypes.AudioStream.marshal))
        builder.interceptors.add(ClientRuntime.ContentLengthMiddleware<StartCallAnalyticsStreamTranscriptionInput, StartCallAnalyticsStreamTranscriptionOutput>())
        builder.deserialize(ClientRuntime.DeserializeMiddleware<StartCallAnalyticsStreamTranscriptionOutput>(StartCallAnalyticsStreamTranscriptionOutput.httpOutput(from:), StartCallAnalyticsStreamTranscriptionOutputError.httpError(from:)))
        builder.interceptors.add(ClientRuntime.LoggerMiddleware<StartCallAnalyticsStreamTranscriptionInput, StartCallAnalyticsStreamTranscriptionOutput>(clientLogMode: config.clientLogMode))
        builder.retryStrategy(SmithyRetries.DefaultRetryStrategy(options: config.retryStrategyOptions))
        builder.retryErrorInfoProvider(AWSClientRuntime.AWSRetryErrorInfoProvider.errorInfo(for:))
        builder.applySigner(ClientRuntime.SignerMiddleware<StartCallAnalyticsStreamTranscriptionOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        builder.applyEndpoint(AWSClientRuntime.EndpointResolverMiddleware<StartCallAnalyticsStreamTranscriptionOutput, EndpointParams>(endpointResolverBlock: { [config] in try config.endpointResolver.resolve(params: $0) }, endpointParams: endpointParams))
        builder.interceptors.add(AWSClientRuntime.UserAgentMiddleware<StartCallAnalyticsStreamTranscriptionInput, StartCallAnalyticsStreamTranscriptionOutput>(serviceID: serviceName, version: TranscribeStreamingClient.version, config: config))
        builder.selectAuthScheme(ClientRuntime.AuthSchemeMiddleware<StartCallAnalyticsStreamTranscriptionOutput>())
        builder.interceptors.add(AWSClientRuntime.AmzSdkInvocationIdMiddleware<StartCallAnalyticsStreamTranscriptionInput, StartCallAnalyticsStreamTranscriptionOutput>())
        builder.interceptors.add(AWSClientRuntime.AmzSdkRequestMiddleware<StartCallAnalyticsStreamTranscriptionInput, StartCallAnalyticsStreamTranscriptionOutput>(maxRetries: config.retryStrategyOptions.maxRetriesBase))
        var metricsAttributes = Smithy.Attributes()
        metricsAttributes.set(key: ClientRuntime.OrchestratorMetricsAttributesKeys.service, value: "TranscribeStreaming")
        metricsAttributes.set(key: ClientRuntime.OrchestratorMetricsAttributesKeys.method, value: "StartCallAnalyticsStreamTranscription")
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

    /// Performs the `StartMedicalStreamTranscription` operation on the `Transcribe` service.
    ///
    /// Starts a bidirectional HTTP/2 or WebSocket stream where audio is streamed to Amazon Transcribe Medical and the transcription results are streamed to your application. The following parameters are required:
    ///
    /// * language-code
    ///
    /// * media-encoding
    ///
    /// * sample-rate
    ///
    ///
    /// For more information on streaming with Amazon Transcribe Medical, see [Transcribing streaming audio](https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html).
    ///
    /// - Parameter StartMedicalStreamTranscriptionInput : [no documentation found]
    ///
    /// - Returns: `StartMedicalStreamTranscriptionOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : One or more arguments to the StartStreamTranscription, StartMedicalStreamTranscription, or StartCallAnalyticsStreamTranscription operation was not valid. For example, MediaEncoding or LanguageCode used unsupported values. Check the specified parameters and try your request again.
    /// - `ConflictException` : A new stream started with the same session ID. The current stream has been terminated.
    /// - `InternalFailureException` : A problem occurred while processing the audio. Amazon Transcribe terminated processing.
    /// - `LimitExceededException` : Your client has exceeded one of the Amazon Transcribe limits. This is typically the audio length limit. Break your audio stream into smaller chunks and try your request again.
    /// - `ServiceUnavailableException` : The service is currently unavailable. Try your request later.
    public func startMedicalStreamTranscription(input: StartMedicalStreamTranscriptionInput) async throws -> StartMedicalStreamTranscriptionOutput {
        let context = Smithy.ContextBuilder()
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "startMedicalStreamTranscription")
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
                      .withSigningName(value: "transcribe")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        AWSSDKEventStreamsAuth.setupBidirectionalStreaming(context: context)
        let builder = ClientRuntime.OrchestratorBuilder<StartMedicalStreamTranscriptionInput, StartMedicalStreamTranscriptionOutput, SmithyHTTPAPI.HTTPRequest, SmithyHTTPAPI.HTTPResponse>()
        config.interceptorProviders.forEach { provider in
            builder.interceptors.add(provider.create())
        }
        config.httpInterceptorProviders.forEach { provider in
            builder.interceptors.add(provider.create())
        }
        builder.interceptors.add(ClientRuntime.URLPathMiddleware<StartMedicalStreamTranscriptionInput, StartMedicalStreamTranscriptionOutput>(StartMedicalStreamTranscriptionInput.urlPathProvider(_:)))
        builder.interceptors.add(ClientRuntime.URLHostMiddleware<StartMedicalStreamTranscriptionInput, StartMedicalStreamTranscriptionOutput>())
        builder.serialize(ClientRuntime.HeaderMiddleware<StartMedicalStreamTranscriptionInput, StartMedicalStreamTranscriptionOutput>(StartMedicalStreamTranscriptionInput.headerProvider(_:)))
        builder.interceptors.add(ClientRuntime.ContentTypeMiddleware<StartMedicalStreamTranscriptionInput, StartMedicalStreamTranscriptionOutput>(contentType: "application/json"))
        builder.serialize(ClientRuntime.EventStreamBodyMiddleware<StartMedicalStreamTranscriptionInput, StartMedicalStreamTranscriptionOutput, TranscribeStreamingClientTypes.AudioStream>(keyPath: \.audioStream, defaultBody: "{}", marshalClosure: TranscribeStreamingClientTypes.AudioStream.marshal))
        builder.interceptors.add(ClientRuntime.ContentLengthMiddleware<StartMedicalStreamTranscriptionInput, StartMedicalStreamTranscriptionOutput>())
        builder.deserialize(ClientRuntime.DeserializeMiddleware<StartMedicalStreamTranscriptionOutput>(StartMedicalStreamTranscriptionOutput.httpOutput(from:), StartMedicalStreamTranscriptionOutputError.httpError(from:)))
        builder.interceptors.add(ClientRuntime.LoggerMiddleware<StartMedicalStreamTranscriptionInput, StartMedicalStreamTranscriptionOutput>(clientLogMode: config.clientLogMode))
        builder.retryStrategy(SmithyRetries.DefaultRetryStrategy(options: config.retryStrategyOptions))
        builder.retryErrorInfoProvider(AWSClientRuntime.AWSRetryErrorInfoProvider.errorInfo(for:))
        builder.applySigner(ClientRuntime.SignerMiddleware<StartMedicalStreamTranscriptionOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        builder.applyEndpoint(AWSClientRuntime.EndpointResolverMiddleware<StartMedicalStreamTranscriptionOutput, EndpointParams>(endpointResolverBlock: { [config] in try config.endpointResolver.resolve(params: $0) }, endpointParams: endpointParams))
        builder.interceptors.add(AWSClientRuntime.UserAgentMiddleware<StartMedicalStreamTranscriptionInput, StartMedicalStreamTranscriptionOutput>(serviceID: serviceName, version: TranscribeStreamingClient.version, config: config))
        builder.selectAuthScheme(ClientRuntime.AuthSchemeMiddleware<StartMedicalStreamTranscriptionOutput>())
        builder.interceptors.add(AWSClientRuntime.AmzSdkInvocationIdMiddleware<StartMedicalStreamTranscriptionInput, StartMedicalStreamTranscriptionOutput>())
        builder.interceptors.add(AWSClientRuntime.AmzSdkRequestMiddleware<StartMedicalStreamTranscriptionInput, StartMedicalStreamTranscriptionOutput>(maxRetries: config.retryStrategyOptions.maxRetriesBase))
        var metricsAttributes = Smithy.Attributes()
        metricsAttributes.set(key: ClientRuntime.OrchestratorMetricsAttributesKeys.service, value: "TranscribeStreaming")
        metricsAttributes.set(key: ClientRuntime.OrchestratorMetricsAttributesKeys.method, value: "StartMedicalStreamTranscription")
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

    /// Performs the `StartStreamTranscription` operation on the `Transcribe` service.
    ///
    /// Starts a bidirectional HTTP/2 or WebSocket stream where audio is streamed to Amazon Transcribe and the transcription results are streamed to your application. The following parameters are required:
    ///
    /// * language-code or identify-language or identify-multiple-language
    ///
    /// * media-encoding
    ///
    /// * sample-rate
    ///
    ///
    /// For more information on streaming with Amazon Transcribe, see [Transcribing streaming audio](https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html).
    ///
    /// - Parameter StartStreamTranscriptionInput : [no documentation found]
    ///
    /// - Returns: `StartStreamTranscriptionOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : One or more arguments to the StartStreamTranscription, StartMedicalStreamTranscription, or StartCallAnalyticsStreamTranscription operation was not valid. For example, MediaEncoding or LanguageCode used unsupported values. Check the specified parameters and try your request again.
    /// - `ConflictException` : A new stream started with the same session ID. The current stream has been terminated.
    /// - `InternalFailureException` : A problem occurred while processing the audio. Amazon Transcribe terminated processing.
    /// - `LimitExceededException` : Your client has exceeded one of the Amazon Transcribe limits. This is typically the audio length limit. Break your audio stream into smaller chunks and try your request again.
    /// - `ServiceUnavailableException` : The service is currently unavailable. Try your request later.
    public func startStreamTranscription(input: StartStreamTranscriptionInput) async throws -> StartStreamTranscriptionOutput {
        let context = Smithy.ContextBuilder()
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "startStreamTranscription")
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
                      .withSigningName(value: "transcribe")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        AWSSDKEventStreamsAuth.setupBidirectionalStreaming(context: context)
        let builder = ClientRuntime.OrchestratorBuilder<StartStreamTranscriptionInput, StartStreamTranscriptionOutput, SmithyHTTPAPI.HTTPRequest, SmithyHTTPAPI.HTTPResponse>()
        config.interceptorProviders.forEach { provider in
            builder.interceptors.add(provider.create())
        }
        config.httpInterceptorProviders.forEach { provider in
            builder.interceptors.add(provider.create())
        }
        builder.interceptors.add(ClientRuntime.URLPathMiddleware<StartStreamTranscriptionInput, StartStreamTranscriptionOutput>(StartStreamTranscriptionInput.urlPathProvider(_:)))
        builder.interceptors.add(ClientRuntime.URLHostMiddleware<StartStreamTranscriptionInput, StartStreamTranscriptionOutput>())
        builder.serialize(ClientRuntime.HeaderMiddleware<StartStreamTranscriptionInput, StartStreamTranscriptionOutput>(StartStreamTranscriptionInput.headerProvider(_:)))
        builder.interceptors.add(ClientRuntime.ContentTypeMiddleware<StartStreamTranscriptionInput, StartStreamTranscriptionOutput>(contentType: "application/json"))
        builder.serialize(ClientRuntime.EventStreamBodyMiddleware<StartStreamTranscriptionInput, StartStreamTranscriptionOutput, TranscribeStreamingClientTypes.AudioStream>(keyPath: \.audioStream, defaultBody: "{}", marshalClosure: TranscribeStreamingClientTypes.AudioStream.marshal))
        builder.interceptors.add(ClientRuntime.ContentLengthMiddleware<StartStreamTranscriptionInput, StartStreamTranscriptionOutput>())
        builder.deserialize(ClientRuntime.DeserializeMiddleware<StartStreamTranscriptionOutput>(StartStreamTranscriptionOutput.httpOutput(from:), StartStreamTranscriptionOutputError.httpError(from:)))
        builder.interceptors.add(ClientRuntime.LoggerMiddleware<StartStreamTranscriptionInput, StartStreamTranscriptionOutput>(clientLogMode: config.clientLogMode))
        builder.retryStrategy(SmithyRetries.DefaultRetryStrategy(options: config.retryStrategyOptions))
        builder.retryErrorInfoProvider(AWSClientRuntime.AWSRetryErrorInfoProvider.errorInfo(for:))
        builder.applySigner(ClientRuntime.SignerMiddleware<StartStreamTranscriptionOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        builder.applyEndpoint(AWSClientRuntime.EndpointResolverMiddleware<StartStreamTranscriptionOutput, EndpointParams>(endpointResolverBlock: { [config] in try config.endpointResolver.resolve(params: $0) }, endpointParams: endpointParams))
        builder.interceptors.add(AWSClientRuntime.UserAgentMiddleware<StartStreamTranscriptionInput, StartStreamTranscriptionOutput>(serviceID: serviceName, version: TranscribeStreamingClient.version, config: config))
        builder.selectAuthScheme(ClientRuntime.AuthSchemeMiddleware<StartStreamTranscriptionOutput>())
        builder.interceptors.add(AWSClientRuntime.AmzSdkInvocationIdMiddleware<StartStreamTranscriptionInput, StartStreamTranscriptionOutput>())
        builder.interceptors.add(AWSClientRuntime.AmzSdkRequestMiddleware<StartStreamTranscriptionInput, StartStreamTranscriptionOutput>(maxRetries: config.retryStrategyOptions.maxRetriesBase))
        var metricsAttributes = Smithy.Attributes()
        metricsAttributes.set(key: ClientRuntime.OrchestratorMetricsAttributesKeys.service, value: "TranscribeStreaming")
        metricsAttributes.set(key: ClientRuntime.OrchestratorMetricsAttributesKeys.method, value: "StartStreamTranscription")
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
