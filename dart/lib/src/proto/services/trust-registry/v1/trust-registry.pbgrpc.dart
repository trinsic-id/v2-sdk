//
//  Generated code. Do not modify.
//  source: services/trust-registry/v1/trust-registry.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'trust-registry.pb.dart' as $3;

export 'trust-registry.pb.dart';

@$pb.GrpcServiceName('services.trustregistry.v1.TrustRegistry')
class TrustRegistryClient extends $grpc.Client {
  static final _$registerMember =
      $grpc.ClientMethod<$3.RegisterMemberRequest, $3.RegisterMemberResponse>(
          '/services.trustregistry.v1.TrustRegistry/RegisterMember',
          ($3.RegisterMemberRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.RegisterMemberResponse.fromBuffer(value));
  static final _$unregisterMember = $grpc.ClientMethod<
          $3.UnregisterMemberRequest, $3.UnregisterMemberResponse>(
      '/services.trustregistry.v1.TrustRegistry/UnregisterMember',
      ($3.UnregisterMemberRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $3.UnregisterMemberResponse.fromBuffer(value));
  static final _$getMemberAuthorizationStatus = $grpc.ClientMethod<
          $3.GetMemberAuthorizationStatusRequest,
          $3.GetMemberAuthorizationStatusResponse>(
      '/services.trustregistry.v1.TrustRegistry/GetMemberAuthorizationStatus',
      ($3.GetMemberAuthorizationStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $3.GetMemberAuthorizationStatusResponse.fromBuffer(value));
  static final _$listAuthorizedMembers = $grpc.ClientMethod<
          $3.ListAuthorizedMembersRequest, $3.ListAuthorizedMembersResponse>(
      '/services.trustregistry.v1.TrustRegistry/ListAuthorizedMembers',
      ($3.ListAuthorizedMembersRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $3.ListAuthorizedMembersResponse.fromBuffer(value));
  static final _$getMember =
      $grpc.ClientMethod<$3.GetMemberRequest, $3.GetMemberResponse>(
          '/services.trustregistry.v1.TrustRegistry/GetMember',
          ($3.GetMemberRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.GetMemberResponse.fromBuffer(value));

  TrustRegistryClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$3.RegisterMemberResponse> registerMember(
      $3.RegisterMemberRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$registerMember, request, options: options);
  }

  $grpc.ResponseFuture<$3.UnregisterMemberResponse> unregisterMember(
      $3.UnregisterMemberRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unregisterMember, request, options: options);
  }

  $grpc.ResponseFuture<$3.GetMemberAuthorizationStatusResponse>
      getMemberAuthorizationStatus(
          $3.GetMemberAuthorizationStatusRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMemberAuthorizationStatus, request,
        options: options);
  }

  $grpc.ResponseFuture<$3.ListAuthorizedMembersResponse> listAuthorizedMembers(
      $3.ListAuthorizedMembersRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listAuthorizedMembers, request, options: options);
  }

  $grpc.ResponseFuture<$3.GetMemberResponse> getMember(
      $3.GetMemberRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMember, request, options: options);
  }
}

@$pb.GrpcServiceName('services.trustregistry.v1.TrustRegistry')
abstract class TrustRegistryServiceBase extends $grpc.Service {
  $core.String get $name => 'services.trustregistry.v1.TrustRegistry';

  TrustRegistryServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.RegisterMemberRequest,
            $3.RegisterMemberResponse>(
        'RegisterMember',
        registerMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $3.RegisterMemberRequest.fromBuffer(value),
        ($3.RegisterMemberResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.UnregisterMemberRequest,
            $3.UnregisterMemberResponse>(
        'UnregisterMember',
        unregisterMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $3.UnregisterMemberRequest.fromBuffer(value),
        ($3.UnregisterMemberResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.GetMemberAuthorizationStatusRequest,
            $3.GetMemberAuthorizationStatusResponse>(
        'GetMemberAuthorizationStatus',
        getMemberAuthorizationStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $3.GetMemberAuthorizationStatusRequest.fromBuffer(value),
        ($3.GetMemberAuthorizationStatusResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.ListAuthorizedMembersRequest,
            $3.ListAuthorizedMembersResponse>(
        'ListAuthorizedMembers',
        listAuthorizedMembers_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $3.ListAuthorizedMembersRequest.fromBuffer(value),
        ($3.ListAuthorizedMembersResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.GetMemberRequest, $3.GetMemberResponse>(
        'GetMember',
        getMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.GetMemberRequest.fromBuffer(value),
        ($3.GetMemberResponse value) => value.writeToBuffer()));
  }

  $async.Future<$3.RegisterMemberResponse> registerMember_Pre(
      $grpc.ServiceCall call,
      $async.Future<$3.RegisterMemberRequest> request) async {
    return registerMember(call, await request);
  }

  $async.Future<$3.UnregisterMemberResponse> unregisterMember_Pre(
      $grpc.ServiceCall call,
      $async.Future<$3.UnregisterMemberRequest> request) async {
    return unregisterMember(call, await request);
  }

  $async.Future<$3.GetMemberAuthorizationStatusResponse>
      getMemberAuthorizationStatus_Pre($grpc.ServiceCall call,
          $async.Future<$3.GetMemberAuthorizationStatusRequest> request) async {
    return getMemberAuthorizationStatus(call, await request);
  }

  $async.Future<$3.ListAuthorizedMembersResponse> listAuthorizedMembers_Pre(
      $grpc.ServiceCall call,
      $async.Future<$3.ListAuthorizedMembersRequest> request) async {
    return listAuthorizedMembers(call, await request);
  }

  $async.Future<$3.GetMemberResponse> getMember_Pre($grpc.ServiceCall call,
      $async.Future<$3.GetMemberRequest> request) async {
    return getMember(call, await request);
  }

  $async.Future<$3.RegisterMemberResponse> registerMember(
      $grpc.ServiceCall call, $3.RegisterMemberRequest request);
  $async.Future<$3.UnregisterMemberResponse> unregisterMember(
      $grpc.ServiceCall call, $3.UnregisterMemberRequest request);
  $async.Future<$3.GetMemberAuthorizationStatusResponse>
      getMemberAuthorizationStatus($grpc.ServiceCall call,
          $3.GetMemberAuthorizationStatusRequest request);
  $async.Future<$3.ListAuthorizedMembersResponse> listAuthorizedMembers(
      $grpc.ServiceCall call, $3.ListAuthorizedMembersRequest request);
  $async.Future<$3.GetMemberResponse> getMember(
      $grpc.ServiceCall call, $3.GetMemberRequest request);
}
