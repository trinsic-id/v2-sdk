import 'package:trinsic_dart/src/proto/sdk/options/v1/options.pb.dart';
import 'package:trinsic_dart/src/proto/services/trust-registry/v1/trust-registry.pbgrpc.dart';
import 'package:trinsic_dart/src/service_base.dart';

class TrustRegistryService extends ServiceBase {
  late TrustRegistryClient client;

  TrustRegistryService(TrinsicOptions? serverOptions) : super(serverOptions) {
    client = TrustRegistryClient(super.channel);
  }
// BEGIN Code generated by protoc-gen-trinsic. DO NOT EDIT.
// target: /home/runner/work/sdk/sdk/dart/lib/src/trustregistry_service.dart

  Future<RegisterMemberResponse> registerMember(
      RegisterMemberRequest request) async {
    ///  Register an authoritative issuer for a credential schema

    return client.registerMember(request,
        options: await buildMetadata(request: request));
  }

  Future<UnregisterMemberResponse> unregisterMember(
      UnregisterMemberRequest request) async {
    ///  Removes an authoritative issuer for a credential schema from the trust registry

    return client.unregisterMember(request,
        options: await buildMetadata(request: request));
  }

  Future<GetMemberAuthorizationStatusResponse> getMemberAuthorizationStatus(
      GetMemberAuthorizationStatusRequest request) async {
    ///  Fetch the status of a member for a given credential schema in a trust registry

    return client.getMemberAuthorizationStatus(request,
        options: await buildMetadata(request: request));
  }

  Future<ListAuthorizedMembersResponse> listAuthorizedMembers(
      ListAuthorizedMembersRequest request) async {
    ///  Fetch the ecosystem's authorized issuers and the respective templates against which it can issue

    return client.listAuthorizedMembers(request,
        options: await buildMetadata(request: request));
  }

  Future<GetMemberResponse> getMember(GetMemberRequest request) async {
    ///  Get member for a given did in a trust registry

    return client.getMember(request,
        options: await buildMetadata(request: request));
  }
// END Code generated by protoc-gen-trinsic. DO NOT EDIT.
}
