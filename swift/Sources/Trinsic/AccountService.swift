//
//  File.swift
//
//
//  Created by Tomislav Markovski on 11/30/21.
//

import Foundation
import GRPC
import Okapi

public typealias AccountProfile = Services_Account_V1_AccountProfile

public class AccountService: ServiceBase {
    var client: Services_Account_V1_AccountClient?

    public init() {
        super.init(options: Sdk_Options_V1_ServiceOptions())
        client = Services_Account_V1_AccountClient(channel: createChannel())
    }

    override public init(options: Sdk_Options_V1_ServiceOptions) {
        super.init(options: options)
        client = Services_Account_V1_AccountClient(channel: createChannel())
    }

    public func signIn(request: Services_Account_V1_SignInRequest) throws -> String {
        var requestCopy = Services_Account_V1_SignInRequest()
        requestCopy.ecosystemID = request.ecosystemID
        requestCopy.details = request.details
        requestCopy.invitationCode = request.invitationCode

        if requestCopy.ecosystemID.isEmpty {
            requestCopy.ecosystemID = options.defaultEcosystem
        }
        let response = try client!.SignIn(requestCopy)
            .response
            .wait()

        let authToken = (try response.profile.serializedData()).base64EncodedString()
        if response.profile.hasProtection, !response.profile.protection.enabled {
            options.authToken = authToken
        }

        return authToken
    }

    // Protect/Unprotect
    public static func protectProfile(profile: AccountProfile, securityCode: String) throws -> AccountProfile {
        let utf8code = securityCode.data(using: .utf8)!
        var request = Okapi_Security_V1_BlindOberonTokenRequest()
        request.token = profile.authToken
        request.blinding.append(utf8code)

        let response = try Okapi.Oberon.blindToken(request: request)
        var profile = AccountProfile()
        profile.protection.enabled = true
        profile.protection.method = Services_Account_V1_ConfirmationMethod.other
        profile.authToken = response.token

        return profile
    }

    public static func unprotectProfile(profile: AccountProfile, securityCode: String) throws -> AccountProfile {
        let utf8code = securityCode.data(using: .utf8)!
        var request = Okapi_Security_V1_UnBlindOberonTokenRequest()
        request.token = profile.authToken
        request.blinding.append(utf8code)

        let response = try Okapi.Oberon.unblindToken(request: request)
        var profile = AccountProfile()
        profile.protection.enabled = false
        profile.protection.method = Services_Account_V1_ConfirmationMethod.none
        profile.authToken = response.token

        return profile
    }

    public static func protect(base64Profile: String, securityCode: String) throws -> String {
        var profile = try AccountProfile(serializedData: Data(base64Encoded: base64Profile)!)
        profile = try protectProfile(profile: profile, securityCode: securityCode)
        return (try profile.serializedData()).base64EncodedString()
    }

    public static func unprotect(base64Profile: String, securityCode: String) throws -> String {
        var profile = try AccountProfile(serializedData: Data(base64Encoded: base64Profile)!)
        profile = try unprotectProfile(profile: profile, securityCode: securityCode)
        return (try profile.serializedData()).base64EncodedString()
    }

    public func info(request: Services_Account_V1_AccountInfoRequest) throws -> Services_Account_V1_AccountInfoResponse {
        let response = try client!.Info(request, callOptions: try buildMetadata(request))
            .response.wait()

        return response
    }

    public func login(request: Services_Account_V1_LoginRequest) throws -> Services_Account_V1_LoginResponse {
        var requestCopy = request

        if requestCopy.ecosystemID.isEmpty {
            requestCopy.ecosystemID = options.defaultEcosystem
        }
        let response = try client!.Login(requestCopy)
            .response.wait()

        return response
    }

    public func loginConfirm(challenge: String, authCode: String) throws -> String {
        var hashRequest = Okapi_Hashing_V1_Blake3HashRequest()
        hashRequest.data = authCode.data(using: .utf8)!
        let hashed = try Hashing.Blake3Hash(request: hashRequest)
        var confirmRequest = Services_Account_V1_LoginConfirmRequest()
        confirmRequest.challenge = challenge.data(using: .utf8)!
        confirmRequest.confirmationCodeHashed = hashed.digest
        let response = try client!.LoginConfirm(confirmRequest)
            .response.wait()

        var token = (try response.profile.serializedData()).base64EncodedString()

        if !response.hasProfile {
            throw SdkError.noProfileReturned
        }
        if response.profile.hasProtection, response.profile.protection.enabled {
            token = try AccountService.unprotect(base64Profile: token, securityCode: authCode) // TODO: - Unprotect this the normal way
        }
        return token
    }

    public func loginAnonymous() throws -> String {
        let response = try login(request: Services_Account_V1_LoginRequest())
        if response.profile.hasProtection, response.profile.protection.enabled {
            throw SdkError.profileProtected
        }
        return (try response.profile.serializedData()).base64EncodedString()
    }

    public func authorizeWebhook(request: Services_Account_V1_AuthorizeWebhookRequest) throws -> Services_Account_V1_AuthorizeWebhookResponse {
        return try client!.AuthorizeWebhook(request, callOptions: try buildMetadata(request)).response.wait()
    }
}
