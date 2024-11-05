//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(SmithyReadWrite) import ClientRuntime
import Foundation
import class SmithyHTTPAPI.HTTPResponse
@_spi(SmithyReadWrite) import class SmithyJSON.Reader
@_spi(SmithyReadWrite) import class SmithyJSON.Writer
import enum ClientRuntime.ErrorFault
import enum Smithy.ByteStream
import enum SmithyReadWrite.ReaderError
@_spi(SmithyTimestamps) import enum SmithyTimestamps.TimestampFormat
import protocol AWSClientRuntime.AWSServiceError
import protocol ClientRuntime.HTTPError
import protocol ClientRuntime.ModeledError
@_spi(SmithyReadWrite) import protocol SmithyReadWrite.SmithyReader
@_spi(SmithyReadWrite) import protocol SmithyReadWrite.SmithyWriter
@_spi(SmithyReadWrite) import struct AWSClientRuntime.RestJSONError
@_spi(UnknownAWSHTTPServiceError) import struct AWSClientRuntime.UnknownAWSHTTPServiceError
import struct Smithy.URIQueryItem
import struct SmithyHTTPAPI.Header
import struct SmithyHTTPAPI.Headers
@_spi(SmithyTimestamps) import struct SmithyTimestamps.TimestampFormatter

/// The specified container was not found for the specified account.
public struct ContainerNotFoundException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "ContainerNotFoundException" }
    public static var fault: ClientRuntime.ErrorFault { .client }
    public static var isRetryable: Swift.Bool { false }
    public static var isThrottling: Swift.Bool { false }
    public internal(set) var httpResponse = SmithyHTTPAPI.HTTPResponse()
    public internal(set) var message: Swift.String?
    public internal(set) var requestID: Swift.String?

    public init(
        message: Swift.String? = nil
    )
    {
        self.properties.message = message
    }
}

/// The service is temporarily unavailable.
public struct InternalServerError: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "InternalServerError" }
    public static var fault: ClientRuntime.ErrorFault { .server }
    public static var isRetryable: Swift.Bool { false }
    public static var isThrottling: Swift.Bool { false }
    public internal(set) var httpResponse = SmithyHTTPAPI.HTTPResponse()
    public internal(set) var message: Swift.String?
    public internal(set) var requestID: Swift.String?

    public init(
        message: Swift.String? = nil
    )
    {
        self.properties.message = message
    }
}

/// Could not perform an operation on an object that does not exist.
public struct ObjectNotFoundException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "ObjectNotFoundException" }
    public static var fault: ClientRuntime.ErrorFault { .client }
    public static var isRetryable: Swift.Bool { false }
    public static var isThrottling: Swift.Bool { false }
    public internal(set) var httpResponse = SmithyHTTPAPI.HTTPResponse()
    public internal(set) var message: Swift.String?
    public internal(set) var requestID: Swift.String?

    public init(
        message: Swift.String? = nil
    )
    {
        self.properties.message = message
    }
}

public struct DeleteObjectInput: Swift.Sendable {
    /// The path (including the file name) where the object is stored in the container. Format: //
    /// This member is required.
    public var path: Swift.String?

    public init(
        path: Swift.String? = nil
    )
    {
        self.path = path
    }
}

public struct DeleteObjectOutput: Swift.Sendable {

    public init() { }
}

public struct DescribeObjectInput: Swift.Sendable {
    /// The path (including the file name) where the object is stored in the container. Format: //
    /// This member is required.
    public var path: Swift.String?

    public init(
        path: Swift.String? = nil
    )
    {
        self.path = path
    }
}

public struct DescribeObjectOutput: Swift.Sendable {
    /// An optional CacheControl header that allows the caller to control the object's cache behavior. Headers can be passed in as specified in the HTTP at [https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9](https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9). Headers with a custom user-defined value are also accepted.
    public var cacheControl: Swift.String?
    /// The length of the object in bytes.
    public var contentLength: Swift.Int?
    /// The content type of the object.
    public var contentType: Swift.String?
    /// The ETag that represents a unique instance of the object.
    public var eTag: Swift.String?
    /// The date and time that the object was last modified.
    public var lastModified: Foundation.Date?

    public init(
        cacheControl: Swift.String? = nil,
        contentLength: Swift.Int? = nil,
        contentType: Swift.String? = nil,
        eTag: Swift.String? = nil,
        lastModified: Foundation.Date? = nil
    )
    {
        self.cacheControl = cacheControl
        self.contentLength = contentLength
        self.contentType = contentType
        self.eTag = eTag
        self.lastModified = lastModified
    }
}

/// The requested content range is not valid.
public struct RequestedRangeNotSatisfiableException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "RequestedRangeNotSatisfiableException" }
    public static var fault: ClientRuntime.ErrorFault { .client }
    public static var isRetryable: Swift.Bool { false }
    public static var isThrottling: Swift.Bool { false }
    public internal(set) var httpResponse = SmithyHTTPAPI.HTTPResponse()
    public internal(set) var message: Swift.String?
    public internal(set) var requestID: Swift.String?

    public init(
        message: Swift.String? = nil
    )
    {
        self.properties.message = message
    }
}

public struct GetObjectInput: Swift.Sendable {
    /// The path (including the file name) where the object is stored in the container. Format: // For example, to upload the file mlaw.avi to the folder path premium\canada in the container movies, enter the path premium/canada/mlaw.avi. Do not include the container name in this path. If the path includes any folders that don't exist yet, the service creates them. For example, suppose you have an existing premium/usa subfolder. If you specify premium/canada, the service creates a canada subfolder in the premium folder. You then have two subfolders, usa and canada, in the premium folder. There is no correlation between the path to the source and the path (folders) in the container in AWS Elemental MediaStore. For more information about folders and how they exist in a container, see the [AWS Elemental MediaStore User Guide](http://docs.aws.amazon.com/mediastore/latest/ug/). The file name is the name that is assigned to the file that you upload. The file can have the same name inside and outside of AWS Elemental MediaStore, or it can have the same name. The file name can include or omit an extension.
    /// This member is required.
    public var path: Swift.String?
    /// The range bytes of an object to retrieve. For more information about the Range header, see [http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.35](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.35). AWS Elemental MediaStore ignores this header for partially uploaded objects that have streaming upload availability.
    public var range: Swift.String?

    public init(
        path: Swift.String? = nil,
        range: Swift.String? = nil
    )
    {
        self.path = path
        self.range = range
    }
}

public struct GetObjectOutput: Swift.Sendable {
    /// The bytes of the object.
    public var body: Smithy.ByteStream?
    /// An optional CacheControl header that allows the caller to control the object's cache behavior. Headers can be passed in as specified in the HTTP spec at [https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9](https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9). Headers with a custom user-defined value are also accepted.
    public var cacheControl: Swift.String?
    /// The length of the object in bytes.
    public var contentLength: Swift.Int?
    /// The range of bytes to retrieve.
    public var contentRange: Swift.String?
    /// The content type of the object.
    public var contentType: Swift.String?
    /// The ETag that represents a unique instance of the object.
    public var eTag: Swift.String?
    /// The date and time that the object was last modified.
    public var lastModified: Foundation.Date?
    /// The HTML status code of the request. Status codes ranging from 200 to 299 indicate success. All other status codes indicate the type of error that occurred.
    /// This member is required.
    public var statusCode: Swift.Int

    public init(
        body: Smithy.ByteStream? = Smithy.ByteStream.data(Foundation.Data("".utf8)),
        cacheControl: Swift.String? = nil,
        contentLength: Swift.Int? = nil,
        contentRange: Swift.String? = nil,
        contentType: Swift.String? = nil,
        eTag: Swift.String? = nil,
        lastModified: Foundation.Date? = nil,
        statusCode: Swift.Int = 0
    )
    {
        self.body = body
        self.cacheControl = cacheControl
        self.contentLength = contentLength
        self.contentRange = contentRange
        self.contentType = contentType
        self.eTag = eTag
        self.lastModified = lastModified
        self.statusCode = statusCode
    }
}

extension MediaStoreDataClientTypes {

    public enum ItemType: Swift.Sendable, Swift.Equatable, Swift.RawRepresentable, Swift.CaseIterable, Swift.Hashable {
        case folder
        case object
        case sdkUnknown(Swift.String)

        public static var allCases: [ItemType] {
            return [
                .folder,
                .object
            ]
        }

        public init?(rawValue: Swift.String) {
            let value = Self.allCases.first(where: { $0.rawValue == rawValue })
            self = value ?? Self.sdkUnknown(rawValue)
        }

        public var rawValue: Swift.String {
            switch self {
            case .folder: return "FOLDER"
            case .object: return "OBJECT"
            case let .sdkUnknown(s): return s
            }
        }
    }
}

extension MediaStoreDataClientTypes {

    /// A metadata entry for a folder or object.
    public struct Item: Swift.Sendable {
        /// The length of the item in bytes.
        public var contentLength: Swift.Int?
        /// The content type of the item.
        public var contentType: Swift.String?
        /// The ETag that represents a unique instance of the item.
        public var eTag: Swift.String?
        /// The date and time that the item was last modified.
        public var lastModified: Foundation.Date?
        /// The name of the item.
        public var name: Swift.String?
        /// The item type (folder or object).
        public var type: MediaStoreDataClientTypes.ItemType?

        public init(
            contentLength: Swift.Int? = nil,
            contentType: Swift.String? = nil,
            eTag: Swift.String? = nil,
            lastModified: Foundation.Date? = nil,
            name: Swift.String? = nil,
            type: MediaStoreDataClientTypes.ItemType? = nil
        )
        {
            self.contentLength = contentLength
            self.contentType = contentType
            self.eTag = eTag
            self.lastModified = lastModified
            self.name = name
            self.type = type
        }
    }
}

public struct ListItemsInput: Swift.Sendable {
    /// The maximum number of results to return per API request. For example, you submit a ListItems request with MaxResults set at 500. Although 2,000 items match your request, the service returns no more than the first 500 items. (The service also returns a NextToken value that you can use to fetch the next batch of results.) The service might return fewer results than the MaxResults value. If MaxResults is not included in the request, the service defaults to pagination with a maximum of 1,000 results per page.
    public var maxResults: Swift.Int?
    /// The token that identifies which batch of results that you want to see. For example, you submit a ListItems request with MaxResults set at 500. The service returns the first batch of results (up to 500) and a NextToken value. To see the next batch of results, you can submit the ListItems request a second time and specify the NextToken value. Tokens expire after 15 minutes.
    public var nextToken: Swift.String?
    /// The path in the container from which to retrieve items. Format: //
    public var path: Swift.String?

    public init(
        maxResults: Swift.Int? = nil,
        nextToken: Swift.String? = nil,
        path: Swift.String? = nil
    )
    {
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.path = path
    }
}

public struct ListItemsOutput: Swift.Sendable {
    /// The metadata entries for the folders and objects at the requested path.
    public var items: [MediaStoreDataClientTypes.Item]?
    /// The token that can be used in a request to view the next set of results. For example, you submit a ListItems request that matches 2,000 items with MaxResults set at 500. The service returns the first batch of results (up to 500) and a NextToken value that can be used to fetch the next batch of results.
    public var nextToken: Swift.String?

    public init(
        items: [MediaStoreDataClientTypes.Item]? = nil,
        nextToken: Swift.String? = nil
    )
    {
        self.items = items
        self.nextToken = nextToken
    }
}

extension MediaStoreDataClientTypes {

    public enum StorageClass: Swift.Sendable, Swift.Equatable, Swift.RawRepresentable, Swift.CaseIterable, Swift.Hashable {
        case temporal
        case sdkUnknown(Swift.String)

        public static var allCases: [StorageClass] {
            return [
                .temporal
            ]
        }

        public init?(rawValue: Swift.String) {
            let value = Self.allCases.first(where: { $0.rawValue == rawValue })
            self = value ?? Self.sdkUnknown(rawValue)
        }

        public var rawValue: Swift.String {
            switch self {
            case .temporal: return "TEMPORAL"
            case let .sdkUnknown(s): return s
            }
        }
    }
}

extension MediaStoreDataClientTypes {

    public enum UploadAvailability: Swift.Sendable, Swift.Equatable, Swift.RawRepresentable, Swift.CaseIterable, Swift.Hashable {
        case standard
        case streaming
        case sdkUnknown(Swift.String)

        public static var allCases: [UploadAvailability] {
            return [
                .standard,
                .streaming
            ]
        }

        public init?(rawValue: Swift.String) {
            let value = Self.allCases.first(where: { $0.rawValue == rawValue })
            self = value ?? Self.sdkUnknown(rawValue)
        }

        public var rawValue: Swift.String {
            switch self {
            case .standard: return "STANDARD"
            case .streaming: return "STREAMING"
            case let .sdkUnknown(s): return s
            }
        }
    }
}

public struct PutObjectInput: Swift.Sendable {
    /// The bytes to be stored.
    /// This member is required.
    public var body: Smithy.ByteStream?
    /// An optional CacheControl header that allows the caller to control the object's cache behavior. Headers can be passed in as specified in the HTTP at [https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9](https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9). Headers with a custom user-defined value are also accepted.
    public var cacheControl: Swift.String?
    /// The content type of the object.
    public var contentType: Swift.String?
    /// The path (including the file name) where the object is stored in the container. Format: // For example, to upload the file mlaw.avi to the folder path premium\canada in the container movies, enter the path premium/canada/mlaw.avi. Do not include the container name in this path. If the path includes any folders that don't exist yet, the service creates them. For example, suppose you have an existing premium/usa subfolder. If you specify premium/canada, the service creates a canada subfolder in the premium folder. You then have two subfolders, usa and canada, in the premium folder. There is no correlation between the path to the source and the path (folders) in the container in AWS Elemental MediaStore. For more information about folders and how they exist in a container, see the [AWS Elemental MediaStore User Guide](http://docs.aws.amazon.com/mediastore/latest/ug/). The file name is the name that is assigned to the file that you upload. The file can have the same name inside and outside of AWS Elemental MediaStore, or it can have the same name. The file name can include or omit an extension.
    /// This member is required.
    public var path: Swift.String?
    /// Indicates the storage class of a Put request. Defaults to high-performance temporal storage class, and objects are persisted into durable storage shortly after being received.
    public var storageClass: MediaStoreDataClientTypes.StorageClass?
    /// Indicates the availability of an object while it is still uploading. If the value is set to streaming, the object is available for downloading after some initial buffering but before the object is uploaded completely. If the value is set to standard, the object is available for downloading only when it is uploaded completely. The default value for this header is standard. To use this header, you must also set the HTTP Transfer-Encoding header to chunked.
    public var uploadAvailability: MediaStoreDataClientTypes.UploadAvailability?

    public init(
        body: Smithy.ByteStream? = nil,
        cacheControl: Swift.String? = nil,
        contentType: Swift.String? = nil,
        path: Swift.String? = nil,
        storageClass: MediaStoreDataClientTypes.StorageClass? = nil,
        uploadAvailability: MediaStoreDataClientTypes.UploadAvailability? = nil
    )
    {
        self.body = body
        self.cacheControl = cacheControl
        self.contentType = contentType
        self.path = path
        self.storageClass = storageClass
        self.uploadAvailability = uploadAvailability
    }
}

public struct PutObjectOutput: Swift.Sendable {
    /// The SHA256 digest of the object that is persisted.
    public var contentSHA256: Swift.String?
    /// Unique identifier of the object in the container.
    public var eTag: Swift.String?
    /// The storage class where the object was persisted. The class should be “Temporal”.
    public var storageClass: MediaStoreDataClientTypes.StorageClass?

    public init(
        contentSHA256: Swift.String? = nil,
        eTag: Swift.String? = nil,
        storageClass: MediaStoreDataClientTypes.StorageClass? = nil
    )
    {
        self.contentSHA256 = contentSHA256
        self.eTag = eTag
        self.storageClass = storageClass
    }
}

extension DeleteObjectInput {

    static func urlPathProvider(_ value: DeleteObjectInput) -> Swift.String? {
        guard let path = value.path else {
            return nil
        }
        return "/\(path.urlPercentEncoding(encodeForwardSlash: false))"
    }
}

extension DescribeObjectInput {

    static func urlPathProvider(_ value: DescribeObjectInput) -> Swift.String? {
        guard let path = value.path else {
            return nil
        }
        return "/\(path.urlPercentEncoding(encodeForwardSlash: false))"
    }
}

extension GetObjectInput {

    static func urlPathProvider(_ value: GetObjectInput) -> Swift.String? {
        guard let path = value.path else {
            return nil
        }
        return "/\(path.urlPercentEncoding(encodeForwardSlash: false))"
    }
}

extension GetObjectInput {

    static func headerProvider(_ value: GetObjectInput) -> SmithyHTTPAPI.Headers {
        var items = SmithyHTTPAPI.Headers()
        if let range = value.range {
            items.add(SmithyHTTPAPI.Header(name: "Range", value: Swift.String(range)))
        }
        return items
    }
}

extension ListItemsInput {

    static func urlPathProvider(_ value: ListItemsInput) -> Swift.String? {
        return "/"
    }
}

extension ListItemsInput {

    static func queryItemProvider(_ value: ListItemsInput) throws -> [Smithy.URIQueryItem] {
        var items = [Smithy.URIQueryItem]()
        if let path = value.path {
            let pathQueryItem = Smithy.URIQueryItem(name: "Path".urlPercentEncoding(), value: Swift.String(path).urlPercentEncoding())
            items.append(pathQueryItem)
        }
        if let nextToken = value.nextToken {
            let nextTokenQueryItem = Smithy.URIQueryItem(name: "NextToken".urlPercentEncoding(), value: Swift.String(nextToken).urlPercentEncoding())
            items.append(nextTokenQueryItem)
        }
        if let maxResults = value.maxResults {
            let maxResultsQueryItem = Smithy.URIQueryItem(name: "MaxResults".urlPercentEncoding(), value: Swift.String(maxResults).urlPercentEncoding())
            items.append(maxResultsQueryItem)
        }
        return items
    }
}

extension PutObjectInput {

    static func urlPathProvider(_ value: PutObjectInput) -> Swift.String? {
        guard let path = value.path else {
            return nil
        }
        return "/\(path.urlPercentEncoding(encodeForwardSlash: false))"
    }
}

extension PutObjectInput {

    static func headerProvider(_ value: PutObjectInput) -> SmithyHTTPAPI.Headers {
        var items = SmithyHTTPAPI.Headers()
        if let cacheControl = value.cacheControl {
            items.add(SmithyHTTPAPI.Header(name: "Cache-Control", value: Swift.String(cacheControl)))
        }
        if let contentType = value.contentType {
            items.add(SmithyHTTPAPI.Header(name: "Content-Type", value: Swift.String(contentType)))
        }
        if let storageClass = value.storageClass {
            items.add(SmithyHTTPAPI.Header(name: "x-amz-storage-class", value: Swift.String(storageClass.rawValue)))
        }
        if let uploadAvailability = value.uploadAvailability {
            items.add(SmithyHTTPAPI.Header(name: "x-amz-upload-availability", value: Swift.String(uploadAvailability.rawValue)))
        }
        return items
    }
}

extension PutObjectInput {

    static func write(value: PutObjectInput?, to writer: SmithyJSON.Writer) throws {
        guard let value else { return }
        try writer["Body"].write(value.body)
    }
}

extension DeleteObjectOutput {

    static func httpOutput(from httpResponse: SmithyHTTPAPI.HTTPResponse) async throws -> DeleteObjectOutput {
        return DeleteObjectOutput()
    }
}

extension DescribeObjectOutput {

    static func httpOutput(from httpResponse: SmithyHTTPAPI.HTTPResponse) async throws -> DescribeObjectOutput {
        var value = DescribeObjectOutput()
        if let cacheControlHeaderValue = httpResponse.headers.value(for: "Cache-Control") {
            value.cacheControl = cacheControlHeaderValue
        }
        if let contentLengthHeaderValue = httpResponse.headers.value(for: "Content-Length") {
            value.contentLength = Swift.Int(contentLengthHeaderValue) ?? 0
        }
        if let contentTypeHeaderValue = httpResponse.headers.value(for: "Content-Type") {
            value.contentType = contentTypeHeaderValue
        }
        if let eTagHeaderValue = httpResponse.headers.value(for: "ETag") {
            value.eTag = eTagHeaderValue
        }
        if let lastModifiedHeaderValue = httpResponse.headers.value(for: "Last-Modified") {
            value.lastModified = SmithyTimestamps.TimestampFormatter(format: .httpDate).date(from: lastModifiedHeaderValue)
        }
        return value
    }
}

extension GetObjectOutput {

    static func httpOutput(from httpResponse: SmithyHTTPAPI.HTTPResponse) async throws -> GetObjectOutput {
        var value = GetObjectOutput()
        if let cacheControlHeaderValue = httpResponse.headers.value(for: "Cache-Control") {
            value.cacheControl = cacheControlHeaderValue
        }
        if let contentLengthHeaderValue = httpResponse.headers.value(for: "Content-Length") {
            value.contentLength = Swift.Int(contentLengthHeaderValue) ?? 0
        }
        if let contentRangeHeaderValue = httpResponse.headers.value(for: "Content-Range") {
            value.contentRange = contentRangeHeaderValue
        }
        if let contentTypeHeaderValue = httpResponse.headers.value(for: "Content-Type") {
            value.contentType = contentTypeHeaderValue
        }
        if let eTagHeaderValue = httpResponse.headers.value(for: "ETag") {
            value.eTag = eTagHeaderValue
        }
        if let lastModifiedHeaderValue = httpResponse.headers.value(for: "Last-Modified") {
            value.lastModified = SmithyTimestamps.TimestampFormatter(format: .httpDate).date(from: lastModifiedHeaderValue)
        }
        switch httpResponse.body {
        case .data(let data):
            value.body = .data(data)
        case .stream(let stream):
            value.body = .stream(stream)
        case .noStream:
            value.body = nil
        }
        value.statusCode = httpResponse.statusCode.rawValue
        return value
    }
}

extension ListItemsOutput {

    static func httpOutput(from httpResponse: SmithyHTTPAPI.HTTPResponse) async throws -> ListItemsOutput {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let reader = responseReader
        var value = ListItemsOutput()
        value.items = try reader["Items"].readListIfPresent(memberReadingClosure: MediaStoreDataClientTypes.Item.read(from:), memberNodeInfo: "member", isFlattened: false)
        value.nextToken = try reader["NextToken"].readIfPresent()
        return value
    }
}

extension PutObjectOutput {

    static func httpOutput(from httpResponse: SmithyHTTPAPI.HTTPResponse) async throws -> PutObjectOutput {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let reader = responseReader
        var value = PutObjectOutput()
        value.contentSHA256 = try reader["ContentSHA256"].readIfPresent()
        value.eTag = try reader["ETag"].readIfPresent()
        value.storageClass = try reader["StorageClass"].readIfPresent()
        return value
    }
}

enum DeleteObjectOutputError {

    static func httpError(from httpResponse: SmithyHTTPAPI.HTTPResponse) async throws -> Swift.Error {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let baseError = try AWSClientRuntime.RestJSONError(httpResponse: httpResponse, responseReader: responseReader, noErrorWrapping: false)
        if let error = baseError.customError() { return error }
        switch baseError.code {
            case "ContainerNotFoundException": return try ContainerNotFoundException.makeError(baseError: baseError)
            case "InternalServerError": return try InternalServerError.makeError(baseError: baseError)
            case "ObjectNotFoundException": return try ObjectNotFoundException.makeError(baseError: baseError)
            default: return try AWSClientRuntime.UnknownAWSHTTPServiceError.makeError(baseError: baseError)
        }
    }
}

enum DescribeObjectOutputError {

    static func httpError(from httpResponse: SmithyHTTPAPI.HTTPResponse) async throws -> Swift.Error {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let baseError = try AWSClientRuntime.RestJSONError(httpResponse: httpResponse, responseReader: responseReader, noErrorWrapping: false)
        if let error = baseError.customError() { return error }
        switch baseError.code {
            case "ContainerNotFoundException": return try ContainerNotFoundException.makeError(baseError: baseError)
            case "InternalServerError": return try InternalServerError.makeError(baseError: baseError)
            case "ObjectNotFoundException": return try ObjectNotFoundException.makeError(baseError: baseError)
            default: return try AWSClientRuntime.UnknownAWSHTTPServiceError.makeError(baseError: baseError)
        }
    }
}

enum GetObjectOutputError {

    static func httpError(from httpResponse: SmithyHTTPAPI.HTTPResponse) async throws -> Swift.Error {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let baseError = try AWSClientRuntime.RestJSONError(httpResponse: httpResponse, responseReader: responseReader, noErrorWrapping: false)
        if let error = baseError.customError() { return error }
        switch baseError.code {
            case "ContainerNotFoundException": return try ContainerNotFoundException.makeError(baseError: baseError)
            case "InternalServerError": return try InternalServerError.makeError(baseError: baseError)
            case "ObjectNotFoundException": return try ObjectNotFoundException.makeError(baseError: baseError)
            case "RequestedRangeNotSatisfiableException": return try RequestedRangeNotSatisfiableException.makeError(baseError: baseError)
            default: return try AWSClientRuntime.UnknownAWSHTTPServiceError.makeError(baseError: baseError)
        }
    }
}

enum ListItemsOutputError {

    static func httpError(from httpResponse: SmithyHTTPAPI.HTTPResponse) async throws -> Swift.Error {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let baseError = try AWSClientRuntime.RestJSONError(httpResponse: httpResponse, responseReader: responseReader, noErrorWrapping: false)
        if let error = baseError.customError() { return error }
        switch baseError.code {
            case "ContainerNotFoundException": return try ContainerNotFoundException.makeError(baseError: baseError)
            case "InternalServerError": return try InternalServerError.makeError(baseError: baseError)
            default: return try AWSClientRuntime.UnknownAWSHTTPServiceError.makeError(baseError: baseError)
        }
    }
}

enum PutObjectOutputError {

    static func httpError(from httpResponse: SmithyHTTPAPI.HTTPResponse) async throws -> Swift.Error {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let baseError = try AWSClientRuntime.RestJSONError(httpResponse: httpResponse, responseReader: responseReader, noErrorWrapping: false)
        if let error = baseError.customError() { return error }
        switch baseError.code {
            case "ContainerNotFoundException": return try ContainerNotFoundException.makeError(baseError: baseError)
            case "InternalServerError": return try InternalServerError.makeError(baseError: baseError)
            default: return try AWSClientRuntime.UnknownAWSHTTPServiceError.makeError(baseError: baseError)
        }
    }
}

extension InternalServerError {

    static func makeError(baseError: AWSClientRuntime.RestJSONError) throws -> InternalServerError {
        let reader = baseError.errorBodyReader
        var value = InternalServerError()
        value.properties.message = try reader["Message"].readIfPresent()
        value.httpResponse = baseError.httpResponse
        value.requestID = baseError.requestID
        value.message = baseError.message
        return value
    }
}

extension ObjectNotFoundException {

    static func makeError(baseError: AWSClientRuntime.RestJSONError) throws -> ObjectNotFoundException {
        let reader = baseError.errorBodyReader
        var value = ObjectNotFoundException()
        value.properties.message = try reader["Message"].readIfPresent()
        value.httpResponse = baseError.httpResponse
        value.requestID = baseError.requestID
        value.message = baseError.message
        return value
    }
}

extension ContainerNotFoundException {

    static func makeError(baseError: AWSClientRuntime.RestJSONError) throws -> ContainerNotFoundException {
        let reader = baseError.errorBodyReader
        var value = ContainerNotFoundException()
        value.properties.message = try reader["Message"].readIfPresent()
        value.httpResponse = baseError.httpResponse
        value.requestID = baseError.requestID
        value.message = baseError.message
        return value
    }
}

extension RequestedRangeNotSatisfiableException {

    static func makeError(baseError: AWSClientRuntime.RestJSONError) throws -> RequestedRangeNotSatisfiableException {
        let reader = baseError.errorBodyReader
        var value = RequestedRangeNotSatisfiableException()
        value.properties.message = try reader["Message"].readIfPresent()
        value.httpResponse = baseError.httpResponse
        value.requestID = baseError.requestID
        value.message = baseError.message
        return value
    }
}

extension MediaStoreDataClientTypes.Item {

    static func read(from reader: SmithyJSON.Reader) throws -> MediaStoreDataClientTypes.Item {
        guard reader.hasContent else { throw SmithyReadWrite.ReaderError.requiredValueNotPresent }
        var value = MediaStoreDataClientTypes.Item()
        value.name = try reader["Name"].readIfPresent()
        value.type = try reader["Type"].readIfPresent()
        value.eTag = try reader["ETag"].readIfPresent()
        value.lastModified = try reader["LastModified"].readTimestampIfPresent(format: SmithyTimestamps.TimestampFormat.epochSeconds)
        value.contentType = try reader["ContentType"].readIfPresent()
        value.contentLength = try reader["ContentLength"].readIfPresent()
        return value
    }
}

public enum MediaStoreDataClientTypes {}
