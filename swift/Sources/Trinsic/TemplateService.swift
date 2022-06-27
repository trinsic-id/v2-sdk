//
//  File.swift
//
//
//  Created by Tomislav Markovski on 1/8/22.
//

import Foundation
import GRPC

public class TemplateService: ServiceBase {
    var client: Services_Verifiablecredentials_Templates_V1_CredentialTemplatesClient?

    public init() {
        super.init(options: Sdk_Options_V1_ServiceOptions())
        client = Services_Verifiablecredentials_Templates_V1_CredentialTemplatesClient(channel: createChannel())
    }

    override public init(options: Sdk_Options_V1_ServiceOptions) {
        super.init(options: options)
        client = Services_Verifiablecredentials_Templates_V1_CredentialTemplatesClient(channel: createChannel())
    }

    public func create(request: Services_Verifiablecredentials_Templates_V1_CreateCredentialTemplateRequest) throws -> Services_Verifiablecredentials_Templates_V1_CreateCredentialTemplateResponse {
        return try client!.Create(request, callOptions: try buildMetadata(request))
            .response
            .wait()
    }

    public func get(request: Services_Verifiablecredentials_Templates_V1_GetCredentialTemplateRequest) throws -> Services_Verifiablecredentials_Templates_V1_GetCredentialTemplateResponse {
        return try client!.Get(request, callOptions: try buildMetadata(request))
            .response
            .wait()
    }

    public func list(request: inout Services_Verifiablecredentials_Templates_V1_ListCredentialTemplatesRequest) throws -> Services_Verifiablecredentials_Templates_V1_ListCredentialTemplatesResponse {
        if request.query.isEmpty {
            request.query = "SELECT * FROM c OFFSET 0 LIMIT 100"
        }
        return try client!.List(request, callOptions: try buildMetadata(request))
            .response
            .wait()
    }

    public func search(request: inout Services_Verifiablecredentials_Templates_V1_SearchCredentialTemplatesRequest) throws -> Services_Verifiablecredentials_Templates_V1_SearchCredentialTemplatesResponse {
        if request.query.isEmpty {
            request.query = "SELECT * FROM c OFFSET 0 LIMIT 100"
        }
        return try client!.Search(request, callOptions: try buildMetadata(request))
            .response
            .wait()
    }

    public func delete(request: Services_Verifiablecredentials_Templates_V1_DeleteCredentialTemplateRequest) throws -> Services_Verifiablecredentials_Templates_V1_DeleteCredentialTemplateResponse {
        return try client!.Delete(request, callOptions: try buildMetadata(request))
            .response
            .wait()
    }
}
