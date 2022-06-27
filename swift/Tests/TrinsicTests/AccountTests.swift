//
//  File.swift
//
//
//  Created by Tomislav Markovski on 11/30/21.
//

import Foundation
@testable import Trinsic
import XCTest

final class AccountTests: XCTestCase {
    func testAccountService() throws {
        var options = Sdk_Options_V1_ServiceOptions()
        options.serverEndpoint = "dev-internal.trinsic.cloud"
        let service = AccountService(options: options)

        let authToken = try service.signIn(request: Services_Account_V1_SignInRequest())

        XCTAssertNotNil(authToken)

        let info = try service.info(request: Services_Account_V1_AccountInfoRequest())

        XCTAssertNotNil(info)
        XCTAssertNotNil(info.details)
    }
}
