import Foundation;
import SwiftProtobuf;
import OkapiSwift;
import OkapiObjectiveC;
import GRPC;
import NIO;
import NIOHPACK

enum TrinsicError :Error {
    case profileNotSet
}

class ServiceBase {
    var capInvocation: String = "";

    func getMetadata() throws -> [String: String] {
        if self.capInvocation == "" {
            throw TrinsicError.profileNotSet;
        }
        return ["capability-invocation": self.capInvocation];
    }
    func getCallOptions() throws -> CallOptions {
        CallOptions(customMetadata: HPACKHeaders([("capability-invocation", self.capInvocation)]))
    }
    
    func setProfile(profile: Trinsic_Services_WalletProfile) throws {
        let capabilityDictionary = [
            "@context": Google_Protobuf_Value(stringValue:"https://w3id.org/security/v2"),
            "invocationTarget": Google_Protobuf_Value(stringValue:profile.walletID),
            "proof": Google_Protobuf_Value(structValue: Google_Protobuf_Struct(fields:[
                "proofPurpose": Google_Protobuf_Value(stringValue:"capabilityInvocation"),
              "created": Google_Protobuf_Value(stringValue:ISO8601DateFormatter().string(from: Date())),
                "capability": Google_Protobuf_Value(stringValue:profile.capability)
            ])),
        ] as [String: Google_Protobuf_Value];

        var proofRequest = Okapi_Proofs_CreateProofRequest();
        proofRequest.key = try Okapi_Keys_JsonWebKey(serializedData: profile.invokerJwk);
        proofRequest.document = Google_Protobuf_Struct(fields: capabilityDictionary);
        let proofResponse = try LdProofs.createProof(request: proofRequest);
        let proofJson = try proofResponse.signedDocument.jsonUTF8Data();
        self.capInvocation = proofJson.base64EncodedString();
    }
}

class WalletService : ServiceBase {
    var credentialClient: Trinsic_Services_CredentialClient;
    var walletClient: Trinsic_Services_WalletClient;
    init(serviceAddress: String = "http://localhost:5000") {
        let url = URL(string: serviceAddress)!;
        let group = MultiThreadedEventLoopGroup(numberOfThreads: 1);
        let channel = ClientConnection.insecure(group: group).connect(host: url.host!, port: url.port!);
        self.credentialClient = Trinsic_Services_CredentialClient(channel: channel);
        self.walletClient = Trinsic_Services_WalletClient(channel: channel);
    }
    
    func registerOrConnect(email: String) throws {
        // TODO - Async?
        var request = Trinsic_Services_ConnectRequest();
        request.email = email;
        try self.walletClient.connectExternalIdentity(request).response.wait();
    }
    
    func createWallet(securityCode: String = "") throws -> Trinsic_Services_WalletProfile {
        let configuration = try self.walletClient.getProviderConfiguration(Google_Protobuf_Empty()).response.wait();
        var resolveRequest = Okapi_Keys_ResolveRequest();
        resolveRequest.did = configuration.keyAgreementKeyID;
        let resolveResponse = try DidKey.resolve(request: resolveRequest);
        let providerExchangeKey = resolveResponse.keys.first(where: {$0.kid == configuration.keyAgreementKeyID})!;
        
        var myKeyRequest = Okapi_Keys_GenerateKeyRequest();
        myKeyRequest.keyType = Okapi_Keys_KeyType.ed25519;
        let myKeyResponse = try DidKey.generate(request: myKeyRequest);
        let myExchangeKey = myKeyResponse.key.first(where: {$0.crv == "X25519"})!;
        
        let myDidDocument = myKeyResponse.didDocument.fields;
        var createWalletRequest = Trinsic_Services_CreateWalletRequest();
        createWalletRequest.description_p = "My Cloud Wallet";
        createWalletRequest.controller = myDidDocument["id"]!.stringValue;
        createWalletRequest.securityCode = securityCode;
        var packRequest = Okapi_Transport_PackRequest();
        packRequest.senderKey = myExchangeKey;
        packRequest.receiverKey = providerExchangeKey;
        packRequest.plaintext = try createWalletRequest.serializedData();
        let packedMessage = try DidComm.pack(request: packRequest);
        
        let servicePbmse = try Pbmse_EncryptedMessage(serializedData: packedMessage.message.serializedData());
        // TODO - Async?
        let response = try self.walletClient.createWalletEncrypted(servicePbmse).response.wait();
        
        var unpackRequest = Okapi_Transport_UnpackRequest();
        unpackRequest.message = try OkapiSwift.Pbmse_EncryptedMessage(serializedData: response.serializedData());
        unpackRequest.receiverKey = myExchangeKey;
        unpackRequest.senderKey = providerExchangeKey;
        let decryptedResponse = try DidComm.unpack(request: unpackRequest);
        let createWalletResponse = try Trinsic_Services_CreateWalletResponse(serializedData: decryptedResponse.plaintext);
        
        var payload = Trinsic_Services_JsonPayload();
        payload.jsonString = try myKeyResponse.didDocument.jsonString();
        
        var walletProfile = Trinsic_Services_WalletProfile();
        walletProfile.walletID = createWalletResponse.walletID;
        walletProfile.capability = createWalletResponse.capability;
        walletProfile.didDocument = payload;
        walletProfile.invoker = createWalletResponse.invoker;
        walletProfile.invokerJwk = try myKeyResponse.key[0].serializedData();
        
        return walletProfile;
    }
    
    func issueCredential(document: [String: Any]) throws -> [String: Any] {
        var issueRequest = Trinsic_Services_IssueRequest();
        issueRequest.document = Trinsic_Services_JsonPayload();
        issueRequest.document.jsonString = String(decoding: try JSONSerialization.data(withJSONObject: document, options: JSONSerialization.WritingOptions.prettyPrinted), as: UTF8.self);
        let response = try self.credentialClient.issue(issueRequest, callOptions: self.getCallOptions()).response.wait();
        return (try JSONSerialization.jsonObject(with: response.document.jsonString.data(using: .utf8)!, options: [])) as! [String: Any];
    }
    
    func search(query: String = "SELECT * from c") throws -> Trinsic_Services_SearchResponse {
        var searchRequest = Trinsic_Services_SearchRequest();
        searchRequest.query = query;
        return try self.walletClient.search(searchRequest, callOptions: self.getCallOptions()).response.wait();
    }
    
    func insertItem(item: [String: Any]) throws -> String {
        var request = Trinsic_Services_InsertItemRequest();
        request.item = Trinsic_Services_JsonPayload();
        request.item.jsonString = String(decoding:try JSONSerialization.data(withJSONObject: item, options: JSONSerialization.WritingOptions.prettyPrinted), as: UTF8.self);
        let result = try self.walletClient.insertItem(request, callOptions: self.getCallOptions());
        // TODO - Async?
        return try result.response.wait().itemID;
    }
    
    func send(document: [String: Any], email: String) throws {
        var sendRequest = Trinsic_Services_SendRequest();
        sendRequest.email = email;
        sendRequest.document = Trinsic_Services_JsonPayload();
        sendRequest.document.jsonString = String(decoding: try JSONSerialization.data(withJSONObject: document, options: JSONSerialization.WritingOptions.prettyPrinted), as: UTF8.self);
        try self.credentialClient.send(sendRequest, callOptions: self.getCallOptions()).response.wait();
    }
    
    func createProof(documentId: String, revealDocument: [String: Any]) throws -> [String: Any] {
        var request = Trinsic_Services_CreateProofRequest();
        request.documentID = documentId;
        request.revealDocument = Trinsic_Services_JsonPayload();
        request.revealDocument.jsonString = String(decoding:try JSONSerialization.data(withJSONObject: revealDocument, options: JSONSerialization.WritingOptions.prettyPrinted), as: UTF8.self);
        let result = (try self.credentialClient.createProof(request, callOptions: self.getCallOptions()).response.wait());
        // TODO - Async?
        return (try JSONSerialization.jsonObject(with: result.proofDocument.jsonString.data(using: .utf8)!, options: [])) as! [String: Any];
    }
    
    func verifyProof(proofDocument: [String: Any]) throws -> Bool {
        var request = Trinsic_Services_VerifyProofRequest();
        request.proofDocument = Trinsic_Services_JsonPayload();
        request.proofDocument.jsonString = String(decoding:try JSONSerialization.data(withJSONObject: proofDocument, options: JSONSerialization.WritingOptions.prettyPrinted), as: UTF8.self);
        let result = try self.credentialClient.verifyProof(request, callOptions: self.getCallOptions());
        // TODO - Async?
        return try result.response.wait().valid;
    }
}

class ProviderService : ServiceBase {
    var providerClient: Trinsic_Services_ProviderClient;
    init(serviceAddress: String = "http://localhost:5000") {
        let url = URL(string: serviceAddress);
        let group = MultiThreadedEventLoopGroup(numberOfThreads: 1);
        let channel = ClientConnection.insecure(group: group).connect(host: url!.host!, port: url!.port!);
        self.providerClient = Trinsic_Services_ProviderClient(channel: channel);
    }
    
    func inviteParticipant(request: Trinsic_Services_InviteRequest) throws -> Trinsic_Services_InviteResponse {
        // TODO - One of contact method.
        let result = try self.providerClient.invite(request, callOptions: self.getCallOptions());
        // TODO - Async?
        return try result.response.wait();
    }
    
    func invitationStatus(request: Trinsic_Services_InvitationStatusRequest) throws -> Trinsic_Services_InvitationStatusResponse {
        // TODO - One of contact method.
        let result = try self.providerClient.invitationStatus(request, callOptions: self.getCallOptions());
        // TODO - Async?
        return try result.response.wait();
    }
}
