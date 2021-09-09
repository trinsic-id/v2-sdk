import XCTest
@testable import TrinsicServices

final class TrinsicServicesTests: XCTestCase {
    
    func vaccinationCertificateFrame() -> [String: Any] {
        // TODO - Load the JSON file.
        return [
            "@context": [
                "https://www.w3.org/2018/credentials/v1",
                "https://w3id.org/vaccination/v1",
                "https://w3id.org/security/bbs/v1"
                ],
            "type": [
                "VerifiableCredential",
                "VaccinationCertificate"
            ],
            "@explicit": true,
            "issuer": [],
            "credentialSubject": [
                "@explicit": true,
                "@type": "VaccinationEvent",
                "batchNumber": [],
                "countryOfVaccination": []
            ]
            ];
    }
    
    func vaccinationCertificateUnsigned() -> [String: Any] {
        // TODO - Load the JSON file.
        return [
            "@context": [
                "https://www.w3.org/2018/credentials/v1",
                "https://w3id.org/vaccination/v1",
                "https://w3id.org/security/bbs/v1"
            ],
            "id": "urn:uvci:af5vshde843jf831j128fj",
            "type": [
                "VaccinationCertificate",
                "VerifiableCredential"
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
                "countryOfVaccination": "US"
            ]
        ];
    }
    
    func testTrinsicServicesDemo() throws {
        let serverAddress = "http://trinsic-staging.centralus.azurecontainer.io:5000";
        let walletService = WalletService(serviceAddress: serverAddress);
        
        // SETUP Actors
        // Create 3 different profiles for each participant in the scenario
        let allison = try walletService.createWallet();
        let clinic = try walletService.createWallet();
        let airline = try walletService.createWallet();
        
        // Store profile for later use
        // Create profile from existing data
        
        // ISSUE CREDENTIAL
        // Sign a credential as the clinic and send it to Allison
        try walletService.setProfile(profile: clinic);
        let credential = try walletService.issueCredential(document: self.vaccinationCertificateUnsigned());
        
        NSLog("%@", credential);
        
        // STORE CREDENTIAL
        // Alice stores the credential in her cloud wallet
        try walletService.setProfile(profile: allison);
        let itemId = try walletService.insertItem(item: credential);
        NSLog("item id = %@", itemId);
        
        // SHARE CREDENTIAL
        // Allison shares the credential with the venue
        // The venue has communicated with Allison the details of the credential
        // that they require expressed as a Json-LD frame.
        try walletService.setProfile(profile: allison);
        
        let credentialProof = try walletService.createProof(documentId: itemId, revealDocument: self.vaccinationCertificateFrame());
        NSLog("Proof: %@", credentialProof);
        
        // VERIFY CREDENTIAL
        // The airline verifies the credential
        try walletService.setProfile(profile: airline);
        let valid = try walletService.verifyProof(proofDocument: credentialProof);
        
        XCTAssertTrue(valid, "Result should be valid");
    }
}
