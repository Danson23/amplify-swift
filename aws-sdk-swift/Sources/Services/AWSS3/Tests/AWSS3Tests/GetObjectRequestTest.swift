//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

// Code generated by smithy-swift-codegen. DO NOT EDIT!

@testable import AWSS3
import ClientRuntime
import Foundation
import Smithy
import SmithyTestUtil
import XCTest
import func SmithyTestUtil.dummyIdentityResolver


class GetObjectRequestTest: HttpRequestTestBase {
    /// S3 clients should not remove dot segments from request paths.
    func testProtocol_S3PreservesLeadingDotSegmentInUriLabel() async throws {
        let expected = buildExpectedHttpRequest(
            method: .get,
            path: "/../key.txt",
            body: nil,
            host: "s3.us-west-2.amazonaws.com",
            resolvedHost: "mybucket.s3.us-west-2.amazonaws.com"
        )

        let config = try await S3Client.Config(
            awsCredentialIdentityResolver: try SmithyTestUtil.dummyIdentityResolver(),
            region: "us-west-2",
            signingRegion: "us-west-2",
            idempotencyTokenGenerator: ProtocolTestIdempotencyTokenGenerator(),
            httpClientEngine: ProtocolTestClient()
        )
        let client = S3Client(config: config)

        let input = GetObjectInput(
            bucket: "mybucket",
            key: "../key.txt"
        )
        do {
            _ = try await client.getObject(input: input)
        } catch TestCheckError.actual(let actual) {
            try await self.assertEqual(expected, actual)
        }
    }
    /// S3 clients should not remove dot segments from request paths.
    func testProtocol_S3PreservesEmbeddedDotSegmentInUriLabel() async throws {
        let expected = buildExpectedHttpRequest(
            method: .get,
            path: "/foo/../key.txt",
            body: nil,
            host: "s3.us-west-2.amazonaws.com",
            resolvedHost: "mybucket.s3.us-west-2.amazonaws.com"
        )

        let config = try await S3Client.Config(
            awsCredentialIdentityResolver: try SmithyTestUtil.dummyIdentityResolver(),
            region: "us-west-2",
            signingRegion: "us-west-2",
            idempotencyTokenGenerator: ProtocolTestIdempotencyTokenGenerator(),
            httpClientEngine: ProtocolTestClient()
        )
        let client = S3Client(config: config)

        let input = GetObjectInput(
            bucket: "mybucket",
            key: "foo/../key.txt"
        )
        do {
            _ = try await client.getObject(input: input)
        } catch TestCheckError.actual(let actual) {
            try await self.assertEqual(expected, actual)
        }
    }
}
