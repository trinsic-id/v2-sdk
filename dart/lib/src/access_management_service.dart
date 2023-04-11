import 'package:trinsic_dart/src/proto/sdk/options/v1/options.pb.dart';
import 'package:trinsic_dart/src/proto/services/provider/v1/access-management.pbgrpc.dart';
import 'package:trinsic_dart/src/service_base.dart';

class AccessManagementService extends ServiceBase {
  late AccessManagementClient client;

  AccessManagementService(
      TrinsicOptions? serverOptions)
      : super(serverOptions) {
    client = AccessManagementClient(super.channel);
  }
// BEGIN Code generated by protoc-gen-trinsic. DO NOT EDIT.
// target: /home/runner/work/sdk/sdk/dart/lib/src/access_management_service.dart

  @Deprecated('This method is experimental')
  Future<AddRoleAssignmentResponse> addRoleAssignment(
      AddRoleAssignmentRequest request) async {
    /// This method is experimental
    /// Adds a role assignment to an account

    return client.addRoleAssignment(request,
        options: await buildMetadata(request: request));
  }

  @Deprecated('This method is experimental')
  Future<RemoveRoleAssignmentResponse> removeRoleAssignment(
      RemoveRoleAssignmentRequest request) async {
    /// This method is experimental
    /// Removes a role assignment from the account

    return client.removeRoleAssignment(request,
        options: await buildMetadata(request: request));
  }

  @Deprecated('This method is experimental')
  Future<ListRoleAssignmentsResponse> listRoleAssignments(
      ListRoleAssignmentsRequest request) async {
    /// This method is experimental
    /// List the role assignments for the given account

    return client.listRoleAssignments(request,
        options: await buildMetadata(request: request));
  }
// END Code generated by protoc-gen-trinsic. DO NOT EDIT.
}
