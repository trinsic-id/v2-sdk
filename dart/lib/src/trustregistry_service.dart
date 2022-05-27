import 'package:grpc/service_api.dart' as $grpc;
import 'package:trinsic_dart/src/proto/sdk/options/v1/options.pb.dart';
import 'package:trinsic_dart/src/proto/services/trust-registry/v1/trust-registry.pbgrpc.dart';
import 'package:trinsic_dart/src/service_base.dart';



class TrustRegistryService extends ServiceBase {
  late TrustRegistryClient client;

  TrustRegistryService(ServiceOptions? serverOptions) : super(serverOptions) {
    client = TrustRegistryClient(super.channel,
        interceptors: [MetadataInterceptor(this)]);
  }

  Future<AddFrameworkResponse> addFramework(
      AddFrameworkRequest request) async {
    return await client.addFramework(request);
  }

  Future<RemoveFrameworkResponse> removeFramework(
      RemoveFrameworkRequest request) async {
    return await client.removeFramework(request);
  }

  Future<RegisterMemberResponse> registerMember(
      RegisterMemberRequest request) async {
    return await client.registerMember(request);
  }

  Future<UnregisterMemberResponse> unregisterMember(
      UnregisterMemberRequest request) async {
    return await client.unregisterMember(request);
  }

  Future<GetMembershipStatusResponse> getMembershipStatus(
      GetMembershipStatusRequest request) async {
    return await client.getMembershipStatus(request);
  }

  Future<SearchRegistryResponse> searchRegistry(
      {SearchRegistryRequest? request}) async {
    request ??= SearchRegistryRequest();
    if (request.query == "") {
      request.query = "SELECT * FROM c OFFSET 0 LIMIT 100";
    }
    return await client.searchRegistry(request);
  }

  $grpc.ResponseStream<FetchDataResponse> fetchData(FetchDataRequest request) {
    return client.fetchData(request);
  }
}
