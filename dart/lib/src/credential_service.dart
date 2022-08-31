import 'package:trinsic_dart/src/proto/sdk/options/v1/options.pb.dart';
import 'package:trinsic_dart/src/proto/services/verifiable-credentials/v1/verifiable-credentials.pbgrpc.dart';
import 'package:trinsic_dart/src/service_base.dart';

class CredentialService extends ServiceBase {
  late VerifiableCredentialClient client;

  CredentialService(ServiceOptions? serverOptions) : super(serverOptions) {
    client = VerifiableCredentialClient(super.channel);
  }
// BEGIN Code generated by protoc-gen-trinsic. DO NOT EDIT.
// target: C:\work\sdk\dart\lib\src\credential_service.dart

    Future<IssueResponse> issue(IssueRequest request) async {
         ///  Sign and issue a verifiable credential from a submitted document.
/// The document must be a valid JSON-LD document.
        return await client.issue(request, options: buildMetadata(request: request));
    }
    Future<IssueFromTemplateResponse> issueFromTemplate(IssueFromTemplateRequest request) async {
         ///  Sign and issue a verifiable credential from a pre-defined template.
/// This process will also add schema validation and 
/// revocation registry values to the credential.
        return await client.issueFromTemplate(request, options: buildMetadata(request: request));
    }
    Future<CheckStatusResponse> checkStatus(CheckStatusRequest request) async {
         ///  Check credential status in the revocation registry
        return await client.checkStatus(request, options: buildMetadata(request: request));
    }
    Future<UpdateStatusResponse> updateStatus(UpdateStatusRequest request) async {
         ///  Update credential status by setting the revocation value
        return await client.updateStatus(request, options: buildMetadata(request: request));
    }
    Future<CreateProofResponse> createProof(CreateProofRequest request) async {
         ///  Create a proof from a signed document that is a valid
/// verifiable credential and contains a signature from which a proof can be derived.
        return await client.createProof(request, options: buildMetadata(request: request));
    }
    Future<VerifyProofResponse> verifyProof(VerifyProofRequest request) async {
         ///  Verifies a proof by checking the signature value, and if possible schema validation,
/// revocation status, and issuer status against a trust registry
        return await client.verifyProof(request, options: buildMetadata(request: request));
    }
    Future<SendResponse> send(SendRequest request) async {
         ///  Sends a document directly to a user's email within the given ecosystem
        return await client.send(request, options: buildMetadata(request: request));
    }
// END Code generated by protoc-gen-trinsic. DO NOT EDIT.
}
