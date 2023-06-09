///
//  Generated code. Do not modify.
//  source: services/provider/v1/access-management.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'access-management.pb.dart' as $7;
export 'access-management.pb.dart';

class AccessManagementClient extends $grpc.Client {
  static final _$addRoleAssignment = $grpc.ClientMethod<
          $7.AddRoleAssignmentRequest, $7.AddRoleAssignmentResponse>(
      '/services.provider.v1.AccessManagement/AddRoleAssignment',
      ($7.AddRoleAssignmentRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $7.AddRoleAssignmentResponse.fromBuffer(value));
  static final _$removeRoleAssignment = $grpc.ClientMethod<
          $7.RemoveRoleAssignmentRequest, $7.RemoveRoleAssignmentResponse>(
      '/services.provider.v1.AccessManagement/RemoveRoleAssignment',
      ($7.RemoveRoleAssignmentRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $7.RemoveRoleAssignmentResponse.fromBuffer(value));
  static final _$listRoleAssignments = $grpc.ClientMethod<
          $7.ListRoleAssignmentsRequest, $7.ListRoleAssignmentsResponse>(
      '/services.provider.v1.AccessManagement/ListRoleAssignments',
      ($7.ListRoleAssignmentsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $7.ListRoleAssignmentsResponse.fromBuffer(value));
  static final _$listAvailableRoles = $grpc.ClientMethod<
          $7.ListAvailableRolesRequest, $7.ListAvailableRolesResponse>(
      '/services.provider.v1.AccessManagement/ListAvailableRoles',
      ($7.ListAvailableRolesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $7.ListAvailableRolesResponse.fromBuffer(value));

  AccessManagementClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$7.AddRoleAssignmentResponse> addRoleAssignment(
      $7.AddRoleAssignmentRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addRoleAssignment, request, options: options);
  }

  $grpc.ResponseFuture<$7.RemoveRoleAssignmentResponse> removeRoleAssignment(
      $7.RemoveRoleAssignmentRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeRoleAssignment, request, options: options);
  }

  $grpc.ResponseFuture<$7.ListRoleAssignmentsResponse> listRoleAssignments(
      $7.ListRoleAssignmentsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listRoleAssignments, request, options: options);
  }

  $grpc.ResponseFuture<$7.ListAvailableRolesResponse> listAvailableRoles(
      $7.ListAvailableRolesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listAvailableRoles, request, options: options);
  }
}

abstract class AccessManagementServiceBase extends $grpc.Service {
  $core.String get $name => 'services.provider.v1.AccessManagement';

  AccessManagementServiceBase() {
    $addMethod($grpc.ServiceMethod<$7.AddRoleAssignmentRequest,
            $7.AddRoleAssignmentResponse>(
        'AddRoleAssignment',
        addRoleAssignment_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.AddRoleAssignmentRequest.fromBuffer(value),
        ($7.AddRoleAssignmentResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.RemoveRoleAssignmentRequest,
            $7.RemoveRoleAssignmentResponse>(
        'RemoveRoleAssignment',
        removeRoleAssignment_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.RemoveRoleAssignmentRequest.fromBuffer(value),
        ($7.RemoveRoleAssignmentResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.ListRoleAssignmentsRequest,
            $7.ListRoleAssignmentsResponse>(
        'ListRoleAssignments',
        listRoleAssignments_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.ListRoleAssignmentsRequest.fromBuffer(value),
        ($7.ListRoleAssignmentsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.ListAvailableRolesRequest,
            $7.ListAvailableRolesResponse>(
        'ListAvailableRoles',
        listAvailableRoles_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.ListAvailableRolesRequest.fromBuffer(value),
        ($7.ListAvailableRolesResponse value) => value.writeToBuffer()));
  }

  $async.Future<$7.AddRoleAssignmentResponse> addRoleAssignment_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.AddRoleAssignmentRequest> request) async {
    return addRoleAssignment(call, await request);
  }

  $async.Future<$7.RemoveRoleAssignmentResponse> removeRoleAssignment_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.RemoveRoleAssignmentRequest> request) async {
    return removeRoleAssignment(call, await request);
  }

  $async.Future<$7.ListRoleAssignmentsResponse> listRoleAssignments_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.ListRoleAssignmentsRequest> request) async {
    return listRoleAssignments(call, await request);
  }

  $async.Future<$7.ListAvailableRolesResponse> listAvailableRoles_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.ListAvailableRolesRequest> request) async {
    return listAvailableRoles(call, await request);
  }

  $async.Future<$7.AddRoleAssignmentResponse> addRoleAssignment(
      $grpc.ServiceCall call, $7.AddRoleAssignmentRequest request);
  $async.Future<$7.RemoveRoleAssignmentResponse> removeRoleAssignment(
      $grpc.ServiceCall call, $7.RemoveRoleAssignmentRequest request);
  $async.Future<$7.ListRoleAssignmentsResponse> listRoleAssignments(
      $grpc.ServiceCall call, $7.ListRoleAssignmentsRequest request);
  $async.Future<$7.ListAvailableRolesResponse> listAvailableRoles(
      $grpc.ServiceCall call, $7.ListAvailableRolesRequest request);
}
