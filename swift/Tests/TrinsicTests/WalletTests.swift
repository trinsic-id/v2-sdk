//
//  File.swift
//
//
//  Created by Tomislav Markovski on 11/30/21.
//

import Foundation
@testable import Trinsic
import XCTest

final class WalletTests: XCTestCase {
    let testEndpoint = "dev-internal.trinsic.cloud"
    var service: WalletService?

    override func setUpWithError() throws {
        var options = Sdk_Options_V1_ServiceOptions()
        options.serverEndpoint = testEndpoint
        let accountService = AccountService(options: options)

        options.authToken = try accountService.signIn(request: Services_Account_V1_SignInRequest())
        service = WalletService(options: options)
    }

    func testSearch() throws {
        let response = try service!.search()

        XCTAssertNotNil(response)
    }

    func testInsertItem() throws {
        var insertRequest = Services_Universalwallet_V1_InsertItemRequest()
        insertRequest.itemJson = "{\"test\": \"document\"}"

        let response = try service!.insertItem(request: insertRequest)

        XCTAssertNotNil(response)
    }
}
