import 'package:trinsic_dart/src/proto/sdk/options/v1/options.pb.dart';
import 'package:trinsic_dart/src/proto/services/provider/v1/provider.pbgrpc.dart';
import 'package:trinsic_dart/src/service_base.dart';

class ProviderService extends ServiceBase {
  late ProviderClient client;

  ProviderService(ServiceOptions? serverOptions) : super(serverOptions) {
    client = ProviderClient(super.channel,
        interceptors: [MetadataInterceptor(this)]);
  }

  Future<InviteResponse> invite(InviteRequest request) async {
    return await client.invite(request);
  }

  Future<InvitationStatusResponse> invitationStatus(
      InvitationStatusRequest request) async {
    return await client.invitationStatus(request);
  }

  Future<CreateEcosystemResponse> createEcosystem(
      {CreateEcosystemRequest? request}) async {
    request = request ?? CreateEcosystemRequest();
    return await client.createEcosystem(request);
  }
}