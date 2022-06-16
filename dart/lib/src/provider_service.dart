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
    var metadata = { 'authenticateCall': (request.name.isNotEmpty || request.details.email.isNotEmpty).toString() };
      return await client.createEcosystem(request, options: CallOptions(metadata: metadata));
  }

  Future<UpdateEcosystemResponse> updateEcosystem(
      UpdateEcosystemRequest request) async {
    return await client.updateEcosystem(request);
  }

  Future<AddWebhookResponse> addWebhook(AddWebhookRequest request) async {
    return await client.addWebhook(request);
  }

  Future<DeleteWebhookResponse> deleteWebhook(
      DeleteWebhookRequest request) async {
    return await client.deleteWebhook(request);
  }

  Future<EcosystemInfoResponse> ecosystemInfo(
      EcosystemInfoRequest request) async {
    return await client.ecosystemInfo(request);
  }

  Future<GenerateTokenResponse> generateToken(
      GenerateTokenRequest request) async {
    return await client.generateToken(request);
  }

  Future<InviteResponse> invite(InviteRequest request) async {
    return await client.invite(request);
  }

  Future<InvitationStatusResponse> invitationStatus(
      InvitationStatusRequest request) async {
    return await client.invitationStatus(request);
  }

  Future<GetOberonKeyResponse> getOberonKey(GetOberonKeyRequest request) async {
    return await client.getOberonKey(request);
  }

  Future<GetEventTokenResponse> getEventToken(
      GetEventTokenRequest request) async {
    return await client.getEventToken(request);
  }
}
