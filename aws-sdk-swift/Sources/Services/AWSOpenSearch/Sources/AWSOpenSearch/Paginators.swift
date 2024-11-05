//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

// Code generated by smithy-swift-codegen. DO NOT EDIT!

import protocol ClientRuntime.PaginateToken
import struct ClientRuntime.PaginatorSequence

extension OpenSearchClient {
    /// Paginate over `[DescribeDomainAutoTunesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeDomainAutoTunesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeDomainAutoTunesOutput`
    public func describeDomainAutoTunesPaginated(input: DescribeDomainAutoTunesInput) -> ClientRuntime.PaginatorSequence<DescribeDomainAutoTunesInput, DescribeDomainAutoTunesOutput> {
        return ClientRuntime.PaginatorSequence<DescribeDomainAutoTunesInput, DescribeDomainAutoTunesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.describeDomainAutoTunes(input:))
    }
}

extension DescribeDomainAutoTunesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeDomainAutoTunesInput {
        return DescribeDomainAutoTunesInput(
            domainName: self.domainName,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension OpenSearchClient {
    /// Paginate over `[DescribeInboundConnectionsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeInboundConnectionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeInboundConnectionsOutput`
    public func describeInboundConnectionsPaginated(input: DescribeInboundConnectionsInput) -> ClientRuntime.PaginatorSequence<DescribeInboundConnectionsInput, DescribeInboundConnectionsOutput> {
        return ClientRuntime.PaginatorSequence<DescribeInboundConnectionsInput, DescribeInboundConnectionsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.describeInboundConnections(input:))
    }
}

extension DescribeInboundConnectionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeInboundConnectionsInput {
        return DescribeInboundConnectionsInput(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension OpenSearchClient {
    /// Paginate over `[DescribeOutboundConnectionsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeOutboundConnectionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeOutboundConnectionsOutput`
    public func describeOutboundConnectionsPaginated(input: DescribeOutboundConnectionsInput) -> ClientRuntime.PaginatorSequence<DescribeOutboundConnectionsInput, DescribeOutboundConnectionsOutput> {
        return ClientRuntime.PaginatorSequence<DescribeOutboundConnectionsInput, DescribeOutboundConnectionsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.describeOutboundConnections(input:))
    }
}

extension DescribeOutboundConnectionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeOutboundConnectionsInput {
        return DescribeOutboundConnectionsInput(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension OpenSearchClient {
    /// Paginate over `[DescribePackagesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribePackagesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribePackagesOutput`
    public func describePackagesPaginated(input: DescribePackagesInput) -> ClientRuntime.PaginatorSequence<DescribePackagesInput, DescribePackagesOutput> {
        return ClientRuntime.PaginatorSequence<DescribePackagesInput, DescribePackagesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.describePackages(input:))
    }
}

extension DescribePackagesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribePackagesInput {
        return DescribePackagesInput(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension OpenSearchClient {
    /// Paginate over `[DescribeReservedInstanceOfferingsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeReservedInstanceOfferingsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeReservedInstanceOfferingsOutput`
    public func describeReservedInstanceOfferingsPaginated(input: DescribeReservedInstanceOfferingsInput) -> ClientRuntime.PaginatorSequence<DescribeReservedInstanceOfferingsInput, DescribeReservedInstanceOfferingsOutput> {
        return ClientRuntime.PaginatorSequence<DescribeReservedInstanceOfferingsInput, DescribeReservedInstanceOfferingsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.describeReservedInstanceOfferings(input:))
    }
}

extension DescribeReservedInstanceOfferingsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeReservedInstanceOfferingsInput {
        return DescribeReservedInstanceOfferingsInput(
            maxResults: self.maxResults,
            nextToken: token,
            reservedInstanceOfferingId: self.reservedInstanceOfferingId
        )}
}
extension OpenSearchClient {
    /// Paginate over `[DescribeReservedInstancesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeReservedInstancesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeReservedInstancesOutput`
    public func describeReservedInstancesPaginated(input: DescribeReservedInstancesInput) -> ClientRuntime.PaginatorSequence<DescribeReservedInstancesInput, DescribeReservedInstancesOutput> {
        return ClientRuntime.PaginatorSequence<DescribeReservedInstancesInput, DescribeReservedInstancesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.describeReservedInstances(input:))
    }
}

extension DescribeReservedInstancesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeReservedInstancesInput {
        return DescribeReservedInstancesInput(
            maxResults: self.maxResults,
            nextToken: token,
            reservedInstanceId: self.reservedInstanceId
        )}
}
extension OpenSearchClient {
    /// Paginate over `[GetPackageVersionHistoryOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[GetPackageVersionHistoryInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `GetPackageVersionHistoryOutput`
    public func getPackageVersionHistoryPaginated(input: GetPackageVersionHistoryInput) -> ClientRuntime.PaginatorSequence<GetPackageVersionHistoryInput, GetPackageVersionHistoryOutput> {
        return ClientRuntime.PaginatorSequence<GetPackageVersionHistoryInput, GetPackageVersionHistoryOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.getPackageVersionHistory(input:))
    }
}

extension GetPackageVersionHistoryInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetPackageVersionHistoryInput {
        return GetPackageVersionHistoryInput(
            maxResults: self.maxResults,
            nextToken: token,
            packageID: self.packageID
        )}
}
extension OpenSearchClient {
    /// Paginate over `[GetUpgradeHistoryOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[GetUpgradeHistoryInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `GetUpgradeHistoryOutput`
    public func getUpgradeHistoryPaginated(input: GetUpgradeHistoryInput) -> ClientRuntime.PaginatorSequence<GetUpgradeHistoryInput, GetUpgradeHistoryOutput> {
        return ClientRuntime.PaginatorSequence<GetUpgradeHistoryInput, GetUpgradeHistoryOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.getUpgradeHistory(input:))
    }
}

extension GetUpgradeHistoryInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetUpgradeHistoryInput {
        return GetUpgradeHistoryInput(
            domainName: self.domainName,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension OpenSearchClient {
    /// Paginate over `[ListApplicationsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListApplicationsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListApplicationsOutput`
    public func listApplicationsPaginated(input: ListApplicationsInput) -> ClientRuntime.PaginatorSequence<ListApplicationsInput, ListApplicationsOutput> {
        return ClientRuntime.PaginatorSequence<ListApplicationsInput, ListApplicationsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listApplications(input:))
    }
}

extension ListApplicationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListApplicationsInput {
        return ListApplicationsInput(
            maxResults: self.maxResults,
            nextToken: token,
            statuses: self.statuses
        )}
}

extension PaginatorSequence where OperationStackInput == ListApplicationsInput, OperationStackOutput == ListApplicationsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listApplicationsPaginated`
    /// to access the nested member `[OpenSearchClientTypes.ApplicationSummary]`
    /// - Returns: `[OpenSearchClientTypes.ApplicationSummary]`
    public func applicationSummaries() async throws -> [OpenSearchClientTypes.ApplicationSummary] {
        return try await self.asyncCompactMap { item in item.applicationSummaries }
    }
}
extension OpenSearchClient {
    /// Paginate over `[ListDomainMaintenancesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListDomainMaintenancesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListDomainMaintenancesOutput`
    public func listDomainMaintenancesPaginated(input: ListDomainMaintenancesInput) -> ClientRuntime.PaginatorSequence<ListDomainMaintenancesInput, ListDomainMaintenancesOutput> {
        return ClientRuntime.PaginatorSequence<ListDomainMaintenancesInput, ListDomainMaintenancesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listDomainMaintenances(input:))
    }
}

extension ListDomainMaintenancesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDomainMaintenancesInput {
        return ListDomainMaintenancesInput(
            action: self.action,
            domainName: self.domainName,
            maxResults: self.maxResults,
            nextToken: token,
            status: self.status
        )}
}
extension OpenSearchClient {
    /// Paginate over `[ListDomainsForPackageOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListDomainsForPackageInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListDomainsForPackageOutput`
    public func listDomainsForPackagePaginated(input: ListDomainsForPackageInput) -> ClientRuntime.PaginatorSequence<ListDomainsForPackageInput, ListDomainsForPackageOutput> {
        return ClientRuntime.PaginatorSequence<ListDomainsForPackageInput, ListDomainsForPackageOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listDomainsForPackage(input:))
    }
}

extension ListDomainsForPackageInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDomainsForPackageInput {
        return ListDomainsForPackageInput(
            maxResults: self.maxResults,
            nextToken: token,
            packageID: self.packageID
        )}
}
extension OpenSearchClient {
    /// Paginate over `[ListInstanceTypeDetailsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListInstanceTypeDetailsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListInstanceTypeDetailsOutput`
    public func listInstanceTypeDetailsPaginated(input: ListInstanceTypeDetailsInput) -> ClientRuntime.PaginatorSequence<ListInstanceTypeDetailsInput, ListInstanceTypeDetailsOutput> {
        return ClientRuntime.PaginatorSequence<ListInstanceTypeDetailsInput, ListInstanceTypeDetailsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listInstanceTypeDetails(input:))
    }
}

extension ListInstanceTypeDetailsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListInstanceTypeDetailsInput {
        return ListInstanceTypeDetailsInput(
            domainName: self.domainName,
            engineVersion: self.engineVersion,
            instanceType: self.instanceType,
            maxResults: self.maxResults,
            nextToken: token,
            retrieveAZs: self.retrieveAZs
        )}
}
extension OpenSearchClient {
    /// Paginate over `[ListPackagesForDomainOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListPackagesForDomainInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListPackagesForDomainOutput`
    public func listPackagesForDomainPaginated(input: ListPackagesForDomainInput) -> ClientRuntime.PaginatorSequence<ListPackagesForDomainInput, ListPackagesForDomainOutput> {
        return ClientRuntime.PaginatorSequence<ListPackagesForDomainInput, ListPackagesForDomainOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listPackagesForDomain(input:))
    }
}

extension ListPackagesForDomainInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPackagesForDomainInput {
        return ListPackagesForDomainInput(
            domainName: self.domainName,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension OpenSearchClient {
    /// Paginate over `[ListScheduledActionsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListScheduledActionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListScheduledActionsOutput`
    public func listScheduledActionsPaginated(input: ListScheduledActionsInput) -> ClientRuntime.PaginatorSequence<ListScheduledActionsInput, ListScheduledActionsOutput> {
        return ClientRuntime.PaginatorSequence<ListScheduledActionsInput, ListScheduledActionsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listScheduledActions(input:))
    }
}

extension ListScheduledActionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListScheduledActionsInput {
        return ListScheduledActionsInput(
            domainName: self.domainName,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension OpenSearchClient {
    /// Paginate over `[ListVersionsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListVersionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListVersionsOutput`
    public func listVersionsPaginated(input: ListVersionsInput) -> ClientRuntime.PaginatorSequence<ListVersionsInput, ListVersionsOutput> {
        return ClientRuntime.PaginatorSequence<ListVersionsInput, ListVersionsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listVersions(input:))
    }
}

extension ListVersionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListVersionsInput {
        return ListVersionsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}
