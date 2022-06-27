//
//  File.swift
//
//
//  Created by Tomislav Markovski on 11/30/21.
//

import Foundation
@testable import Trinsic
import XCTest

final class CredentialTests: XCTestCase {
    let testEndpoint = "dev-internal.trinsic.cloud"

    let vaccinationCertificateFrame: [String: Any] = [
        "@context": [
            "https://www.w3.org/2018/credentials/v1",
            "https://w3id.org/vaccination/v1",
            "https://w3id.org/security/bbs/v1",
        ],
        "type": [
            "VerifiableCredential",
            "VaccinationCertificate",
        ],
        "@explicit": true,
        "issuer": [],
        "credentialSubject": [
            "@explicit": true,
            "@type": "VaccinationEvent",
            "batchNumber": [],
            "countryOfVaccination": [],
        ],
    ]

    let vaccinationCertificateUnsigned: [String: Any] = [
        "@context": [
            "https://www.w3.org/2018/credentials/v1",
            "https://w3id.org/vaccination/v1",
            "https://w3id.org/security/bbs/v1",
        ],
        "id": "urn:uvci:af5vshde843jf831j128fj",
        "type": [
            "VaccinationCertificate",
            "VerifiableCredential",
        ],
        "description": "COVID-19 Vaccination Certificate",
        "name": "COVID-19 Vaccination Certificate",
        "expirationDate": "2029-12-03T12:19:52Z",
        "issuanceDate": "2019-12-03T12:19:52Z",
        "issuer": "did:key:zUC724vuGvHpnCGFG1qqpXb81SiBLu3KLSqVzenwEZNPoY35i2Bscb8DLaVwHvRFs6F2NkNNXRcPWvqnPDUd9ukdjLkjZd3u9zzL4wDZDUpkPAatLDGLEYVo8kkAzuAKJQMr7N2",
        "credentialSubject": [
            "id": "urn:uuid:c53e70f8-ce9a-4576-8744-e5f85c20a743",
            "type": "VaccinationEvent",
            "batchNumber": "1183738569",
            "countryOfVaccination": "US",
        ],
    ]

    func testCredentialDemo() throws {
        var options = Sdk_Options_V1_ServiceOptions()
        options.serverEndpoint = testEndpoint

        let accountService = AccountService(options: options)
        let credentialService = CredentialService(options: options)
        let walletService = WalletService(options: options)

        let authToken = try accountService.signIn(request: Services_Account_V1_SignInRequest())
        options.authToken = authToken

        // SETUP Actors
        // Create 3 different profiles for each participant in the scenario
        // setupActors() {
        let allison = try accountService.signIn(request: Services_Account_V1_SignInRequest())
        let clinic = try accountService.signIn(request: Services_Account_V1_SignInRequest())
        let airline = try accountService.signIn(request: Services_Account_V1_SignInRequest())
        // }

        // Store profile for later use
        // Create profile from existing data

        // ISSUE CREDENTIAL
        // issueCredential() {
        // Sign a credential as the clinic and send it to Allison
        credentialService.options.authToken = clinic

        var issueRequest = Services_Verifiablecredentials_V1_IssueRequest()
        issueRequest.documentJson = String(
            decoding: try JSONSerialization.data(
                withJSONObject: vaccinationCertificateUnsigned,
                options: JSONSerialization.WritingOptions.prettyPrinted
            ),
            as: UTF8.self
        )

        let credential = try credentialService.issue(request: issueRequest)
        // }
        XCTAssertNotNil(credential)
        XCTAssertNotEqual("", credential.signedDocumentJson)

        // STORE CREDENTIAL
        // storeCredential() {
        // Alice stores the credential in her cloud wallet
        walletService.options.authToken = allison

        var insertRequest = Services_Universalwallet_V1_InsertItemRequest()
        insertRequest.itemJson = credential.signedDocumentJson

        let insertResponse = try walletService.insertItem(request: insertRequest)
        // }
        XCTAssertNotNil(insertResponse)
        XCTAssertNotEqual("", insertResponse.itemID)

        // SHARE CREDENTIAL
        // Allison shares the credential with the venue
        // The venue has communicated with Allison the details of the credential
        // that they require expressed as a Json-LD frame.
        // shareCredential() {
        credentialService.options.authToken = allison

        var proofRequest = Services_Verifiablecredentials_V1_CreateProofRequest()
        proofRequest.itemID = insertResponse.itemID

        let proofResponse = try credentialService.createProof(request: proofRequest)
        // }
        XCTAssertNotNil(proofResponse)

        // VERIFY CREDENTIAL
        // The airline verifies the credential
        // verifyCredential() {
        credentialService.options.authToken = airline

        var verifyRequest = Services_Verifiablecredentials_V1_VerifyProofRequest()
        verifyRequest.proofDocumentJson = proofResponse.proofDocumentJson

        let verifyResponse = try credentialService.verify(request: verifyRequest)
        // }
        XCTAssertNotNil(verifyResponse)
        XCTAssertTrue(verifyResponse.isValid, "Result should be valid")
    }
}
