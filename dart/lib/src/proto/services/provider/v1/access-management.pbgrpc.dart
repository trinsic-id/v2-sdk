///
//  Generated code. Do not modify.
//  source: services/provider/v1/access-management.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'access-management.pb.dart' as $4;
export 'access-management.pb.dart';

class AccessManagementClient extends $grpc.Client {
  static final _$addRoleAssignment = $grpc.ClientMethod<
          $4.AddRoleAssignmentRequest, $4.AddRoleAssignmentResponse>(
      '/services.provider.v1.AccessManagement/AddRoleAssignment',
      ($4.AddRoleAssignmentRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $4.AddRoleAssignmentResponse.fromBuffer(value));
  static final _$removeRoleAssignment = $grpc.ClientMethod<
          $4.RemoveRoleAssignmentRequest, $4.RemoveRoleAssignmentResponse>(
      '/services.provider.v1.AccessManagement/RemoveRoleAssignment',
      ($4.RemoveRoleAssignmentRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $4.RemoveRoleAssignmentResponse.fromBuffer(value));
  static final _$listRoleAssignments = $grpc.ClientMethod<
          $4.ListRoleAssignmentsRequest, $4.ListRoleAssignmentsResponse>(
      '/services.provider.v1.AccessManagement/ListRoleAssignments',
      ($4.ListRoleAssignmentsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $4.ListRoleAssignmentsResponse.fromBuffer(value));
  static final _$listAvailableRoles = $grpc.ClientMethod<
          $4.ListAvailableRolesRequest, $4.ListAvailableRolesResponse>(
      '/services.provider.v1.AccessManagement/ListAvailableRoles',
      ($4.ListAvailableRolesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $4.ListAvailableRolesResponse.fromBuffer(value));

  AccessManagementClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$4.AddRoleAssignmentResponse> addRoleAssignment(
      $4.AddRoleAssignmentRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addRoleAssignment, request, options: options);
  }

  $grpc.ResponseFuture<$4.RemoveRoleAssignmentResponse> removeRoleAssignment(
      $4.RemoveRoleAssignmentRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeRoleAssignment, request, options: options);
  }

  $grpc.ResponseFuture<$4.ListRoleAssignmentsResponse> listRoleAssignments(
      $4.ListRoleAssignmentsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listRoleAssignments, request, options: options);
  }

  $grpc.ResponseFuture<$4.ListAvailableRolesResponse> listAvailableRoles(
      $4.ListAvailableRolesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listAvailableRoles, request, options: options);
  }
}

abstract class AccessManagementServiceBase extends $grpc.Service {
  $core.String get $name => 'services.provider.v1.AccessManagement';

  AccessManagementServiceBase() {
    $addMethod($grpc.ServiceMethod<$4.AddRoleAssignmentRequest,
            $4.AddRoleAssignmentResponse>(
        'AddRoleAssignment',
        addRoleAssignment_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.AddRoleAssignmentRequest.fromBuffer(value),
        ($4.AddRoleAssignmentResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.RemoveRoleAssignmentRequest,
            $4.RemoveRoleAssignmentResponse>(
        'RemoveRoleAssignment',
        removeRoleAssignment_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.RemoveRoleAssignmentRequest.fromBuffer(value),
        ($4.RemoveRoleAssignmentResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.ListRoleAssignmentsRequest,
            $4.ListRoleAssignmentsResponse>(
        'ListRoleAssignments',
        listRoleAssignments_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.ListRoleAssignmentsRequest.fromBuffer(value),
        ($4.ListRoleAssignmentsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.ListAvailableRolesRequest,
            $4.ListAvailableRolesResponse>(
        'ListAvailableRoles',
        listAvailableRoles_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.ListAvailableRolesRequest.fromBuffer(value),
        ($4.ListAvailableRolesResponse value) => value.writeToBuffer()));
  }

  $async.Future<$4.AddRoleAssignmentResponse> addRoleAssignment_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.AddRoleAssignmentRequest> request) async {
    return addRoleAssignment(call, await request);
  }

  $async.Future<$4.RemoveRoleAssignmentResponse> removeRoleAssignment_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.RemoveRoleAssignmentRequest> request) async {
    return removeRoleAssignment(call, await request);
  }

  $async.Future<$4.ListRoleAssignmentsResponse> listRoleAssignments_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.ListRoleAssignmentsRequest> request) async {
    return listRoleAssignments(call, await request);
  }

  $async.Future<$4.ListAvailableRolesResponse> listAvailableRoles_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.ListAvailableRolesRequest> request) async {
    return listAvailableRoles(call, await request);
  }

  $async.Future<$4.AddRoleAssignmentResponse> addRoleAssignment(
      $grpc.ServiceCall call, $4.AddRoleAssignmentRequest request);
  $async.Future<$4.RemoveRoleAssignmentResponse> removeRoleAssignment(
      $grpc.ServiceCall call, $4.RemoveRoleAssignmentRequest request);
  $async.Future<$4.ListRoleAssignmentsResponse> listRoleAssignments(
      $grpc.ServiceCall call, $4.ListRoleAssignmentsRequest request);
  $async.Future<$4.ListAvailableRolesResponse> listAvailableRoles(
      $grpc.ServiceCall call, $4.ListAvailableRolesRequest request);
}
