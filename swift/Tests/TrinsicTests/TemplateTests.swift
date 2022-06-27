//
//  File.swift
//
//
//  Created by Tomislav Markovski on 11/30/21.
//

import Foundation
@testable import Trinsic
import XCTest

final class TemplateTests: XCTestCase {
    let testEndpoint = "dev-internal.trinsic.cloud"
    var service: TemplateService?

    override func setUpWithError() throws {
        var options = Sdk_Options_V1_ServiceOptions()
        options.serverEndpoint = testEndpoint
        let accountService = AccountService(options: options)

        options.authToken = try accountService.signIn(request: Services_Account_V1_SignInRequest())
        service = TemplateService(options: options)
    }

    func testTemplatesDemo() throws {
        var createRequest = Services_Verifiablecredentials_Templates_V1_CreateCredentialTemplateRequest()
        createRequest.name = "Test Swift Template Credential" + UUID().uuidString // Make it random so it builds
        createRequest.fields["firstName"] = Services_Verifiablecredentials_Templates_V1_TemplateField()

        let createResponse = try service!.create(request: createRequest)

        XCTAssertNotNil(createResponse)
        XCTAssertNotEqual(createResponse.data.id, "")

        var getRequest = Services_Verifiablecredentials_Templates_V1_GetCredentialTemplateRequest()
        getRequest.id = createResponse.data.id

        let response = try service!.get(request: getRequest)

        XCTAssertNotNil(response)
        XCTAssertEqual(response.template, createResponse.data)
    }
}
