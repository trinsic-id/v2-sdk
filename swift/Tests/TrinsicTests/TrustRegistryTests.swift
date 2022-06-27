//
//  File.swift
//
//
//  Created by Tomislav Markovski on 11/30/21.
//

import Foundation
@testable import Trinsic
import XCTest

final class TrustRegistryTests: XCTestCase {
    let testEndpoint = "dev-internal.trinsic.cloud"
    var service: TrustRegistryService?

    override func setUpWithError() throws {
        var options = Sdk_Options_V1_ServiceOptions()
        options.serverEndpoint = testEndpoint
        let accountService = AccountService(options: options)

        options.authToken = try accountService.signIn(request: Services_Account_V1_SignInRequest())
        service = TrustRegistryService(options: options)
    }

    func testAddFramework() throws {
        var request = Services_Trustregistry_V1_AddFrameworkRequest()
        request.governanceFrameworkUri = "https://test#\(UUID().uuidString)"
        request.description_p = "test egf"
        request.name = "Example Framework: #\(UUID().uuidString)"

        let response = try service!.addFramework(request: request)

        XCTAssertNotNil(response)

        var registerRequest = Services_Trustregistry_V1_RegisterMemberRequest()
        registerRequest.frameworkID = response.id
        registerRequest.didUri = "did:example:isser"
        registerRequest.schemaUri = "https://credential"

        let response2 = try service!.registerMember(request: registerRequest)

        XCTAssertNotNil(response2)
    }
}
