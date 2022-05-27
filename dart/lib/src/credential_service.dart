import 'package:trinsic_dart/src/proto/sdk/options/v1/options.pb.dart';
import 'package:trinsic_dart/src/proto/services/verifiable-credentials/v1/verifiable-credentials.pbgrpc.dart';
import 'package:trinsic_dart/src/service_base.dart';

class CredentialService extends ServiceBase {
  late VerifiableCredentialClient client;

  CredentialService(ServiceOptions? serverOptions) : super(serverOptions) {
    client = VerifiableCredentialClient(super.channel,
        interceptors: [MetadataInterceptor(this)]);
  }

  Future<IssueResponse> issueCredential(IssueRequest request) async {
    return await client.issue(request);
  }

  Future<IssueFromTemplateResponse> issueFromTemplate(
      IssueFromTemplateRequest request) async {
    return await client.issueFromTemplate(request);
  }

  Future<CheckStatusResponse> checkStatus(CheckStatusRequest request) async {
    return await client.checkStatus(request);
  }

  Future<UpdateStatusResponse> updateStatus(UpdateStatusRequest request) async {
    return await client.updateStatus(request);
  }

  Future<CreateProofResponse> createProof(CreateProofRequest request) async {
    return await client.createProof(request);
  }

  Future<VerifyProofResponse> verifyProof(VerifyProofRequest request) async {
    return await client.verifyProof(request);
  }

  Future<SendResponse> send(SendRequest request) async {
    return await client.send(request);
  }
}