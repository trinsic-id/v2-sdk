//
//  Generated code. Do not modify.
//  source: services/trust-registry/v1/trust-registry.proto
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

import 'trust-registry.pb.dart' as $8;

export 'trust-registry.pb.dart';

@$pb.GrpcServiceName('services.trustregistry.v1.TrustRegistry')
class TrustRegistryClient extends $grpc.Client {
  static final _$registerMember =
      $grpc.ClientMethod<$8.RegisterMemberRequest, $8.RegisterMemberResponse>(
          '/services.trustregistry.v1.TrustRegistry/RegisterMember',
          ($8.RegisterMemberRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $8.RegisterMemberResponse.fromBuffer(value));
  static final _$unregisterMember = $grpc.ClientMethod<
          $8.UnregisterMemberRequest, $8.UnregisterMemberResponse>(
      '/services.trustregistry.v1.TrustRegistry/UnregisterMember',
      ($8.UnregisterMemberRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $8.UnregisterMemberResponse.fromBuffer(value));
  static final _$getMemberAuthorizationStatus = $grpc.ClientMethod<
          $8.GetMemberAuthorizationStatusRequest,
          $8.GetMemberAuthorizationStatusResponse>(
      '/services.trustregistry.v1.TrustRegistry/GetMemberAuthorizationStatus',
      ($8.GetMemberAuthorizationStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $8.GetMemberAuthorizationStatusResponse.fromBuffer(value));
  static final _$listAuthorizedMembers = $grpc.ClientMethod<
          $8.ListAuthorizedMembersRequest, $8.ListAuthorizedMembersResponse>(
      '/services.trustregistry.v1.TrustRegistry/ListAuthorizedMembers',
      ($8.ListAuthorizedMembersRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $8.ListAuthorizedMembersResponse.fromBuffer(value));
  static final _$getMember =
      $grpc.ClientMethod<$8.GetMemberRequest, $8.GetMemberResponse>(
          '/services.trustregistry.v1.TrustRegistry/GetMember',
          ($8.GetMemberRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $8.GetMemberResponse.fromBuffer(value));

  TrustRegistryClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$8.RegisterMemberResponse> registerMember(
      $8.RegisterMemberRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$registerMember, request, options: options);
  }

  $grpc.ResponseFuture<$8.UnregisterMemberResponse> unregisterMember(
      $8.UnregisterMemberRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unregisterMember, request, options: options);
  }

  $grpc.ResponseFuture<$8.GetMemberAuthorizationStatusResponse>
      getMemberAuthorizationStatus(
          $8.GetMemberAuthorizationStatusRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMemberAuthorizationStatus, request,
        options: options);
  }

  $grpc.ResponseFuture<$8.ListAuthorizedMembersResponse> listAuthorizedMembers(
      $8.ListAuthorizedMembersRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listAuthorizedMembers, request, options: options);
  }

  $grpc.ResponseFuture<$8.GetMemberResponse> getMember(
      $8.GetMemberRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMember, request, options: options);
  }
}

@$pb.GrpcServiceName('services.trustregistry.v1.TrustRegistry')
abstract class TrustRegistryServiceBase extends $grpc.Service {
  $core.String get $name => 'services.trustregistry.v1.TrustRegistry';

  TrustRegistryServiceBase() {
    $addMethod($grpc.ServiceMethod<$8.RegisterMemberRequest,
            $8.RegisterMemberResponse>(
        'RegisterMember',
        registerMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $8.RegisterMemberRequest.fromBuffer(value),
        ($8.RegisterMemberResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.UnregisterMemberRequest,
            $8.UnregisterMemberResponse>(
        'UnregisterMember',
        unregisterMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $8.UnregisterMemberRequest.fromBuffer(value),
        ($8.UnregisterMemberResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.GetMemberAuthorizationStatusRequest,
            $8.GetMemberAuthorizationStatusResponse>(
        'GetMemberAuthorizationStatus',
        getMemberAuthorizationStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $8.GetMemberAuthorizationStatusRequest.fromBuffer(value),
        ($8.GetMemberAuthorizationStatusResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.ListAuthorizedMembersRequest,
            $8.ListAuthorizedMembersResponse>(
        'ListAuthorizedMembers',
        listAuthorizedMembers_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $8.ListAuthorizedMembersRequest.fromBuffer(value),
        ($8.ListAuthorizedMembersResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.GetMemberRequest, $8.GetMemberResponse>(
        'GetMember',
        getMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.GetMemberRequest.fromBuffer(value),
        ($8.GetMemberResponse value) => value.writeToBuffer()));
  }

  $async.Future<$8.RegisterMemberResponse> registerMember_Pre(
      $grpc.ServiceCall call,
      $async.Future<$8.RegisterMemberRequest> request) async {
    return registerMember(call, await request);
  }

  $async.Future<$8.UnregisterMemberResponse> unregisterMember_Pre(
      $grpc.ServiceCall call,
      $async.Future<$8.UnregisterMemberRequest> request) async {
    return unregisterMember(call, await request);
  }

  $async.Future<$8.GetMemberAuthorizationStatusResponse>
      getMemberAuthorizationStatus_Pre($grpc.ServiceCall call,
          $async.Future<$8.GetMemberAuthorizationStatusRequest> request) async {
    return getMemberAuthorizationStatus(call, await request);
  }

  $async.Future<$8.ListAuthorizedMembersResponse> listAuthorizedMembers_Pre(
      $grpc.ServiceCall call,
      $async.Future<$8.ListAuthorizedMembersRequest> request) async {
    return listAuthorizedMembers(call, await request);
  }

  $async.Future<$8.GetMemberResponse> getMember_Pre($grpc.ServiceCall call,
      $async.Future<$8.GetMemberRequest> request) async {
    return getMember(call, await request);
  }

  $async.Future<$8.RegisterMemberResponse> registerMember(
      $grpc.ServiceCall call, $8.RegisterMemberRequest request);
  $async.Future<$8.UnregisterMemberResponse> unregisterMember(
      $grpc.ServiceCall call, $8.UnregisterMemberRequest request);
  $async.Future<$8.GetMemberAuthorizationStatusResponse>
      getMemberAuthorizationStatus($grpc.ServiceCall call,
          $8.GetMemberAuthorizationStatusRequest request);
  $async.Future<$8.ListAuthorizedMembersResponse> listAuthorizedMembers(
      $grpc.ServiceCall call, $8.ListAuthorizedMembersRequest request);
  $async.Future<$8.GetMemberResponse> getMember(
      $grpc.ServiceCall call, $8.GetMemberRequest request);
}
