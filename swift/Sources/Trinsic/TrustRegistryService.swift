//
//  File.swift
//
//
//  Created by Tomislav Markovski on 11/30/21.
//

import Foundation
import GRPC

public class TrustRegistryService: ServiceBase {
    var client: Services_Trustregistry_V1_TrustRegistryClient?

    public init() {
        super.init(options: Sdk_Options_V1_ServiceOptions())
        client = Services_Trustregistry_V1_TrustRegistryClient(channel: createChannel())
    }

    override public init(options: Sdk_Options_V1_ServiceOptions) {
        super.init(options: options)
        client = Services_Trustregistry_V1_TrustRegistryClient(channel: createChannel())
    }

    public func addFramework(request: Services_Trustregistry_V1_AddFrameworkRequest) throws -> Services_Trustregistry_V1_AddFrameworkResponse {
        return try client!.AddFramework(request, callOptions: try buildMetadata(request))
            .response
            .wait()
    }

    public func removeFramework(request: Services_Trustregistry_V1_RemoveFrameworkRequest) throws -> Services_Trustregistry_V1_RemoveFrameworkResponse {
        return try client!.RemoveFramework(request, callOptions: try buildMetadata(request))
            .response
            .wait()
    }

    public func registerMember(request: Services_Trustregistry_V1_RegisterMemberRequest) throws -> Services_Trustregistry_V1_RegisterMemberResponse {
        return try client!.RegisterMember(request, callOptions: try buildMetadata(request))
            .response
            .wait()
    }

    public func unregisterMember(request: Services_Trustregistry_V1_UnregisterMemberRequest) throws -> Services_Trustregistry_V1_UnregisterMemberResponse {
        return try client!.UnregisterMember(request, callOptions: try buildMetadata(request))
            .response
            .wait()
    }

    public func checkIssuerStatus(request: Services_Trustregistry_V1_GetMembershipStatusRequest) throws -> Services_Trustregistry_V1_GetMembershipStatusResponse {
        return try client!.GetMembershipStatus(request, callOptions: try buildMetadata(request))
            .response
            .wait()
    }

    public func searchRegistry(request: Services_Trustregistry_V1_SearchRegistryRequest) throws -> Services_Trustregistry_V1_SearchRegistryResponse {
        return try client!.SearchRegistry(request, callOptions: try buildMetadata(request))
            .response
            .wait()
    }
}
