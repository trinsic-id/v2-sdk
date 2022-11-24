///
//  Generated code. Do not modify.
//  source: services/provider/v1/access-management.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'access-management.pb.dart' as $6;
export 'access-management.pb.dart';

class AccessManagementClient extends $grpc.Client {
  static final _$addRoleAssignment = $grpc.ClientMethod<
          $6.AddRoleAssignmentRequest, $6.AddRoleAssignmentResponse>(
      '/services.provider.v1.AccessManagement/AddRoleAssignment',
      ($6.AddRoleAssignmentRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.AddRoleAssignmentResponse.fromBuffer(value));
  static final _$removeRoleAssignment = $grpc.ClientMethod<
          $6.RemoveRoleAssignmentRequest, $6.RemoveRoleAssignmentResponse>(
      '/services.provider.v1.AccessManagement/RemoveRoleAssignment',
      ($6.RemoveRoleAssignmentRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.RemoveRoleAssignmentResponse.fromBuffer(value));
  static final _$listRoleAssignments = $grpc.ClientMethod<
          $6.ListRoleAssignmentsRequest, $6.ListRoleAssignmentsResponse>(
      '/services.provider.v1.AccessManagement/ListRoleAssignments',
      ($6.ListRoleAssignmentsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.ListRoleAssignmentsResponse.fromBuffer(value));
  static final _$listAvailableRoles = $grpc.ClientMethod<
          $6.ListAvailableRolesRequest, $6.ListAvailableRolesResponse>(
      '/services.provider.v1.AccessManagement/ListAvailableRoles',
      ($6.ListAvailableRolesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.ListAvailableRolesResponse.fromBuffer(value));

  AccessManagementClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$6.AddRoleAssignmentResponse> addRoleAssignment(
      $6.AddRoleAssignmentRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addRoleAssignment, request, options: options);
  }

  $grpc.ResponseFuture<$6.RemoveRoleAssignmentResponse> removeRoleAssignment(
      $6.RemoveRoleAssignmentRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeRoleAssignment, request, options: options);
  }

  $grpc.ResponseFuture<$6.ListRoleAssignmentsResponse> listRoleAssignments(
      $6.ListRoleAssignmentsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listRoleAssignments, request, options: options);
  }

  $grpc.ResponseFuture<$6.ListAvailableRolesResponse> listAvailableRoles(
      $6.ListAvailableRolesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listAvailableRoles, request, options: options);
  }
}

abstract class AccessManagementServiceBase extends $grpc.Service {
  $core.String get $name => 'services.provider.v1.AccessManagement';

  AccessManagementServiceBase() {
    $addMethod($grpc.ServiceMethod<$6.AddRoleAssignmentRequest,
            $6.AddRoleAssignmentResponse>(
        'AddRoleAssignment',
        addRoleAssignment_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.AddRoleAssignmentRequest.fromBuffer(value),
        ($6.AddRoleAssignmentResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.RemoveRoleAssignmentRequest,
            $6.RemoveRoleAssignmentResponse>(
        'RemoveRoleAssignment',
        removeRoleAssignment_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.RemoveRoleAssignmentRequest.fromBuffer(value),
        ($6.RemoveRoleAssignmentResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.ListRoleAssignmentsRequest,
            $6.ListRoleAssignmentsResponse>(
        'ListRoleAssignments',
        listRoleAssignments_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.ListRoleAssignmentsRequest.fromBuffer(value),
        ($6.ListRoleAssignmentsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.ListAvailableRolesRequest,
            $6.ListAvailableRolesResponse>(
        'ListAvailableRoles',
        listAvailableRoles_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.ListAvailableRolesRequest.fromBuffer(value),
        ($6.ListAvailableRolesResponse value) => value.writeToBuffer()));
  }

  $async.Future<$6.AddRoleAssignmentResponse> addRoleAssignment_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.AddRoleAssignmentRequest> request) async {
    return addRoleAssignment(call, await request);
  }

  $async.Future<$6.RemoveRoleAssignmentResponse> removeRoleAssignment_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.RemoveRoleAssignmentRequest> request) async {
    return removeRoleAssignment(call, await request);
  }

  $async.Future<$6.ListRoleAssignmentsResponse> listRoleAssignments_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.ListRoleAssignmentsRequest> request) async {
    return listRoleAssignments(call, await request);
  }

  $async.Future<$6.ListAvailableRolesResponse> listAvailableRoles_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.ListAvailableRolesRequest> request) async {
    return listAvailableRoles(call, await request);
  }

  $async.Future<$6.AddRoleAssignmentResponse> addRoleAssignment(
      $grpc.ServiceCall call, $6.AddRoleAssignmentRequest request);
  $async.Future<$6.RemoveRoleAssignmentResponse> removeRoleAssignment(
      $grpc.ServiceCall call, $6.RemoveRoleAssignmentRequest request);
  $async.Future<$6.ListRoleAssignmentsResponse> listRoleAssignments(
      $grpc.ServiceCall call, $6.ListRoleAssignmentsRequest request);
  $async.Future<$6.ListAvailableRolesResponse> listAvailableRoles(
      $grpc.ServiceCall call, $6.ListAvailableRolesRequest request);
}
