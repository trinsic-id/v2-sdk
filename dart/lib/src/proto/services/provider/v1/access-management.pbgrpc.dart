//
//  Generated code. Do not modify.
//  source: services/provider/v1/access-management.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'access-management.pb.dart' as $8;

export 'access-management.pb.dart';

@$pb.GrpcServiceName('services.provider.v1.AccessManagement')
class AccessManagementClient extends $grpc.Client {
  static final _$addRoleAssignment = $grpc.ClientMethod<
          $8.AddRoleAssignmentRequest, $8.AddRoleAssignmentResponse>(
      '/services.provider.v1.AccessManagement/AddRoleAssignment',
      ($8.AddRoleAssignmentRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $8.AddRoleAssignmentResponse.fromBuffer(value));
  static final _$removeRoleAssignment = $grpc.ClientMethod<
          $8.RemoveRoleAssignmentRequest, $8.RemoveRoleAssignmentResponse>(
      '/services.provider.v1.AccessManagement/RemoveRoleAssignment',
      ($8.RemoveRoleAssignmentRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $8.RemoveRoleAssignmentResponse.fromBuffer(value));
  static final _$listRoleAssignments = $grpc.ClientMethod<
          $8.ListRoleAssignmentsRequest, $8.ListRoleAssignmentsResponse>(
      '/services.provider.v1.AccessManagement/ListRoleAssignments',
      ($8.ListRoleAssignmentsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $8.ListRoleAssignmentsResponse.fromBuffer(value));
  static final _$listAvailableRoles = $grpc.ClientMethod<
          $8.ListAvailableRolesRequest, $8.ListAvailableRolesResponse>(
      '/services.provider.v1.AccessManagement/ListAvailableRoles',
      ($8.ListAvailableRolesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $8.ListAvailableRolesResponse.fromBuffer(value));

  AccessManagementClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$8.AddRoleAssignmentResponse> addRoleAssignment(
      $8.AddRoleAssignmentRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addRoleAssignment, request, options: options);
  }

  $grpc.ResponseFuture<$8.RemoveRoleAssignmentResponse> removeRoleAssignment(
      $8.RemoveRoleAssignmentRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeRoleAssignment, request, options: options);
  }

  $grpc.ResponseFuture<$8.ListRoleAssignmentsResponse> listRoleAssignments(
      $8.ListRoleAssignmentsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listRoleAssignments, request, options: options);
  }

  $grpc.ResponseFuture<$8.ListAvailableRolesResponse> listAvailableRoles(
      $8.ListAvailableRolesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listAvailableRoles, request, options: options);
  }
}

@$pb.GrpcServiceName('services.provider.v1.AccessManagement')
abstract class AccessManagementServiceBase extends $grpc.Service {
  $core.String get $name => 'services.provider.v1.AccessManagement';

  AccessManagementServiceBase() {
    $addMethod($grpc.ServiceMethod<$8.AddRoleAssignmentRequest,
            $8.AddRoleAssignmentResponse>(
        'AddRoleAssignment',
        addRoleAssignment_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $8.AddRoleAssignmentRequest.fromBuffer(value),
        ($8.AddRoleAssignmentResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.RemoveRoleAssignmentRequest,
            $8.RemoveRoleAssignmentResponse>(
        'RemoveRoleAssignment',
        removeRoleAssignment_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $8.RemoveRoleAssignmentRequest.fromBuffer(value),
        ($8.RemoveRoleAssignmentResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.ListRoleAssignmentsRequest,
            $8.ListRoleAssignmentsResponse>(
        'ListRoleAssignments',
        listRoleAssignments_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $8.ListRoleAssignmentsRequest.fromBuffer(value),
        ($8.ListRoleAssignmentsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.ListAvailableRolesRequest,
            $8.ListAvailableRolesResponse>(
        'ListAvailableRoles',
        listAvailableRoles_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $8.ListAvailableRolesRequest.fromBuffer(value),
        ($8.ListAvailableRolesResponse value) => value.writeToBuffer()));
  }

  $async.Future<$8.AddRoleAssignmentResponse> addRoleAssignment_Pre(
      $grpc.ServiceCall call,
      $async.Future<$8.AddRoleAssignmentRequest> request) async {
    return addRoleAssignment(call, await request);
  }

  $async.Future<$8.RemoveRoleAssignmentResponse> removeRoleAssignment_Pre(
      $grpc.ServiceCall call,
      $async.Future<$8.RemoveRoleAssignmentRequest> request) async {
    return removeRoleAssignment(call, await request);
  }

  $async.Future<$8.ListRoleAssignmentsResponse> listRoleAssignments_Pre(
      $grpc.ServiceCall call,
      $async.Future<$8.ListRoleAssignmentsRequest> request) async {
    return listRoleAssignments(call, await request);
  }

  $async.Future<$8.ListAvailableRolesResponse> listAvailableRoles_Pre(
      $grpc.ServiceCall call,
      $async.Future<$8.ListAvailableRolesRequest> request) async {
    return listAvailableRoles(call, await request);
  }

  $async.Future<$8.AddRoleAssignmentResponse> addRoleAssignment(
      $grpc.ServiceCall call, $8.AddRoleAssignmentRequest request);
  $async.Future<$8.RemoveRoleAssignmentResponse> removeRoleAssignment(
      $grpc.ServiceCall call, $8.RemoveRoleAssignmentRequest request);
  $async.Future<$8.ListRoleAssignmentsResponse> listRoleAssignments(
      $grpc.ServiceCall call, $8.ListRoleAssignmentsRequest request);
  $async.Future<$8.ListAvailableRolesResponse> listAvailableRoles(
      $grpc.ServiceCall call, $8.ListAvailableRolesRequest request);
}
