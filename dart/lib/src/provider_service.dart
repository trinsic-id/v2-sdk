import 'package:grpc/service_api.dart';
import 'package:trinsic_dart/src/proto/sdk/options/v1/options.pb.dart';
import 'package:trinsic_dart/src/proto/services/provider/v1/provider.pbgrpc.dart';
import 'package:trinsic_dart/src/service_base.dart';

class ProviderService extends ServiceBase {
  late ProviderClient client;

  ProviderService(ServiceOptions? serverOptions) : super(serverOptions) {
    client = ProviderClient(super.channel,
        interceptors: [MetadataInterceptor(this)]);
  }

  Future<CreateEcosystemResponse> createEcosystem(
      {CreateEcosystemRequest? request}) async {
    request = request ?? CreateEcosystemRequest();
    var metadata = {
      'authenticateCall':
          (request.name.isNotEmpty || request.details.email.isNotEmpty)
              .toString()
    };
    return await client.createEcosystem(request,
        options: CallOptions(metadata: metadata));
  }

// BEGIN Code generated by protoc-gen-trinsic. DO NOT EDIT.
// target: C:\work\sdk\dart\lib\src\provider_service.dart

    Future<UpdateEcosystemResponse> updateEcosystem(UpdateEcosystemRequest request) async {
         ///  Update an existing ecosystem
        return await client.updateEcosystem(request);
    }
    Future<AddWebhookResponse> addWebhook(AddWebhookRequest request) async {
         ///  Add a webhook endpoint to the ecosystem
        return await client.addWebhook(request);
    }
    Future<DeleteWebhookResponse> deleteWebhook(DeleteWebhookRequest request) async {
         ///  Delete a webhook endpoint from the ecosystem
        return await client.deleteWebhook(request);
    }
    Future<EcosystemInfoResponse> ecosystemInfo(EcosystemInfoRequest request) async {
         ///  Get ecosystem information
        return await client.ecosystemInfo(request);
    }
    Future<GenerateTokenResponse> generateToken(GenerateTokenRequest request) async {
         ///  Generates an unprotected authentication token that can be used to
/// configure server side applications
        return await client.generateToken(request);
    }
    Future<InviteResponse> invite(InviteRequest request) async {
         ///  Invite a user to the ecosystem
        return await client.invite(request);
    }
    Future<InvitationStatusResponse> invitationStatus(InvitationStatusRequest request) async {
         ///  Check the invitation status
        return await client.invitationStatus(request);
    }
    Future<GetOberonKeyResponse> getOberonKey(GetOberonKeyRequest request) async {
         ///  Returns the public key being used to create/verify oberon tokens
        return await client.getOberonKey(request);
    }
    Future<GetEventTokenResponse> getEventToken(GetEventTokenRequest request) async {
         ///  Generate a signed token (JWT) that can be used to connect to the message bus
        return await client.getEventToken(request);
    }

// END Code generated by protoc-gen-trinsic. DO NOT EDIT.
}
