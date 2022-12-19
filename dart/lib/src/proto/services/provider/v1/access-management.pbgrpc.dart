///
//  Generated code. Do not modify.
//  source: services/provider/v1/access-management.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'access-management.pb.dart' as $0;
export 'access-management.pb.dart';

class AccessManagementClient extends $grpc.Client {
  static final _$addRoleAssignment = $grpc.ClientMethod<
          $0.AddRoleAssignmentRequest, $0.AddRoleAssignmentResponse>(
      '/services.provider.v1.AccessManagement/AddRoleAssignment',
      ($0.AddRoleAssignmentRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.AddRoleAssignmentResponse.fromBuffer(value));
  static final _$removeRoleAssignment = $grpc.ClientMethod<
          $0.RemoveRoleAssignmentRequest, $0.RemoveRoleAssignmentResponse>(
      '/services.provider.v1.AccessManagement/RemoveRoleAssignment',
      ($0.RemoveRoleAssignmentRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.RemoveRoleAssignmentResponse.fromBuffer(value));
  static final _$listRoleAssignments = $grpc.ClientMethod<
          $0.ListRoleAssignmentsRequest, $0.ListRoleAssignmentsResponse>(
      '/services.provider.v1.AccessManagement/ListRoleAssignments',
      ($0.ListRoleAssignmentsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.ListRoleAssignmentsResponse.fromBuffer(value));
  static final _$listAvailableRoles = $grpc.ClientMethod<
          $0.ListAvailableRolesRequest, $0.ListAvailableRolesResponse>(
      '/services.provider.v1.AccessManagement/ListAvailableRoles',
      ($0.ListAvailableRolesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.ListAvailableRolesResponse.fromBuffer(value));

  AccessManagementClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.AddRoleAssignmentResponse> addRoleAssignment(
      $0.AddRoleAssignmentRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addRoleAssignment, request, options: options);
  }

  $grpc.ResponseFuture<$0.RemoveRoleAssignmentResponse> removeRoleAssignment(
      $0.RemoveRoleAssignmentRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeRoleAssignment, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListRoleAssignmentsResponse> listRoleAssignments(
      $0.ListRoleAssignmentsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listRoleAssignments, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListAvailableRolesResponse> listAvailableRoles(
      $0.ListAvailableRolesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listAvailableRoles, request, options: options);
  }
}

abstract class AccessManagementServiceBase extends $grpc.Service {
  $core.String get $name => 'services.provider.v1.AccessManagement';

  AccessManagementServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.AddRoleAssignmentRequest,
            $0.AddRoleAssignmentResponse>(
        'AddRoleAssignment',
        addRoleAssignment_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AddRoleAssignmentRequest.fromBuffer(value),
        ($0.AddRoleAssignmentResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RemoveRoleAssignmentRequest,
            $0.RemoveRoleAssignmentResponse>(
        'RemoveRoleAssignment',
        removeRoleAssignment_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.RemoveRoleAssignmentRequest.fromBuffer(value),
        ($0.RemoveRoleAssignmentResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListRoleAssignmentsRequest,
            $0.ListRoleAssignmentsResponse>(
        'ListRoleAssignments',
        listRoleAssignments_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ListRoleAssignmentsRequest.fromBuffer(value),
        ($0.ListRoleAssignmentsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListAvailableRolesRequest,
            $0.ListAvailableRolesResponse>(
        'ListAvailableRoles',
        listAvailableRoles_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ListAvailableRolesRequest.fromBuffer(value),
        ($0.ListAvailableRolesResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.AddRoleAssignmentResponse> addRoleAssignment_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AddRoleAssignmentRequest> request) async {
    return addRoleAssignment(call, await request);
  }

  $async.Future<$0.RemoveRoleAssignmentResponse> removeRoleAssignment_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.RemoveRoleAssignmentRequest> request) async {
    return removeRoleAssignment(call, await request);
  }

  $async.Future<$0.ListRoleAssignmentsResponse> listRoleAssignments_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ListRoleAssignmentsRequest> request) async {
    return listRoleAssignments(call, await request);
  }

  $async.Future<$0.ListAvailableRolesResponse> listAvailableRoles_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ListAvailableRolesRequest> request) async {
    return listAvailableRoles(call, await request);
  }

  $async.Future<$0.AddRoleAssignmentResponse> addRoleAssignment(
      $grpc.ServiceCall call, $0.AddRoleAssignmentRequest request);
  $async.Future<$0.RemoveRoleAssignmentResponse> removeRoleAssignment(
      $grpc.ServiceCall call, $0.RemoveRoleAssignmentRequest request);
  $async.Future<$0.ListRoleAssignmentsResponse> listRoleAssignments(
      $grpc.ServiceCall call, $0.ListRoleAssignmentsRequest request);
  $async.Future<$0.ListAvailableRolesResponse> listAvailableRoles(
      $grpc.ServiceCall call, $0.ListAvailableRolesRequest request);
}
