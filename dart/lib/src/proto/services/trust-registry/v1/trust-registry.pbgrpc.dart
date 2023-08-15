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

import 'trust-registry.pb.dart' as $5;

export 'trust-registry.pb.dart';

@$pb.GrpcServiceName('services.trustregistry.v1.TrustRegistry')
class TrustRegistryClient extends $grpc.Client {
  static final _$registerMember =
      $grpc.ClientMethod<$5.RegisterMemberRequest, $5.RegisterMemberResponse>(
          '/services.trustregistry.v1.TrustRegistry/RegisterMember',
          ($5.RegisterMemberRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.RegisterMemberResponse.fromBuffer(value));
  static final _$unregisterMember = $grpc.ClientMethod<
          $5.UnregisterMemberRequest, $5.UnregisterMemberResponse>(
      '/services.trustregistry.v1.TrustRegistry/UnregisterMember',
      ($5.UnregisterMemberRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.UnregisterMemberResponse.fromBuffer(value));
  static final _$getMemberAuthorizationStatus = $grpc.ClientMethod<
          $5.GetMemberAuthorizationStatusRequest,
          $5.GetMemberAuthorizationStatusResponse>(
      '/services.trustregistry.v1.TrustRegistry/GetMemberAuthorizationStatus',
      ($5.GetMemberAuthorizationStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.GetMemberAuthorizationStatusResponse.fromBuffer(value));
  static final _$listAuthorizedMembers = $grpc.ClientMethod<
          $5.ListAuthorizedMembersRequest, $5.ListAuthorizedMembersResponse>(
      '/services.trustregistry.v1.TrustRegistry/ListAuthorizedMembers',
      ($5.ListAuthorizedMembersRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.ListAuthorizedMembersResponse.fromBuffer(value));
  static final _$getMember =
      $grpc.ClientMethod<$5.GetMemberRequest, $5.GetMemberResponse>(
          '/services.trustregistry.v1.TrustRegistry/GetMember',
          ($5.GetMemberRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.GetMemberResponse.fromBuffer(value));

  TrustRegistryClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$5.RegisterMemberResponse> registerMember(
      $5.RegisterMemberRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$registerMember, request, options: options);
  }

  $grpc.ResponseFuture<$5.UnregisterMemberResponse> unregisterMember(
      $5.UnregisterMemberRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unregisterMember, request, options: options);
  }

  $grpc.ResponseFuture<$5.GetMemberAuthorizationStatusResponse>
      getMemberAuthorizationStatus(
          $5.GetMemberAuthorizationStatusRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMemberAuthorizationStatus, request,
        options: options);
  }

  $grpc.ResponseFuture<$5.ListAuthorizedMembersResponse> listAuthorizedMembers(
      $5.ListAuthorizedMembersRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listAuthorizedMembers, request, options: options);
  }

  $grpc.ResponseFuture<$5.GetMemberResponse> getMember(
      $5.GetMemberRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMember, request, options: options);
  }
}

@$pb.GrpcServiceName('services.trustregistry.v1.TrustRegistry')
abstract class TrustRegistryServiceBase extends $grpc.Service {
  $core.String get $name => 'services.trustregistry.v1.TrustRegistry';

  TrustRegistryServiceBase() {
    $addMethod($grpc.ServiceMethod<$5.RegisterMemberRequest,
            $5.RegisterMemberResponse>(
        'RegisterMember',
        registerMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.RegisterMemberRequest.fromBuffer(value),
        ($5.RegisterMemberResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UnregisterMemberRequest,
            $5.UnregisterMemberResponse>(
        'UnregisterMember',
        unregisterMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.UnregisterMemberRequest.fromBuffer(value),
        ($5.UnregisterMemberResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.GetMemberAuthorizationStatusRequest,
            $5.GetMemberAuthorizationStatusResponse>(
        'GetMemberAuthorizationStatus',
        getMemberAuthorizationStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.GetMemberAuthorizationStatusRequest.fromBuffer(value),
        ($5.GetMemberAuthorizationStatusResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.ListAuthorizedMembersRequest,
            $5.ListAuthorizedMembersResponse>(
        'ListAuthorizedMembers',
        listAuthorizedMembers_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.ListAuthorizedMembersRequest.fromBuffer(value),
        ($5.ListAuthorizedMembersResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.GetMemberRequest, $5.GetMemberResponse>(
        'GetMember',
        getMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.GetMemberRequest.fromBuffer(value),
        ($5.GetMemberResponse value) => value.writeToBuffer()));
  }

  $async.Future<$5.RegisterMemberResponse> registerMember_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.RegisterMemberRequest> request) async {
    return registerMember(call, await request);
  }

  $async.Future<$5.UnregisterMemberResponse> unregisterMember_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.UnregisterMemberRequest> request) async {
    return unregisterMember(call, await request);
  }

  $async.Future<$5.GetMemberAuthorizationStatusResponse>
      getMemberAuthorizationStatus_Pre($grpc.ServiceCall call,
          $async.Future<$5.GetMemberAuthorizationStatusRequest> request) async {
    return getMemberAuthorizationStatus(call, await request);
  }

  $async.Future<$5.ListAuthorizedMembersResponse> listAuthorizedMembers_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.ListAuthorizedMembersRequest> request) async {
    return listAuthorizedMembers(call, await request);
  }

  $async.Future<$5.GetMemberResponse> getMember_Pre($grpc.ServiceCall call,
      $async.Future<$5.GetMemberRequest> request) async {
    return getMember(call, await request);
  }

  $async.Future<$5.RegisterMemberResponse> registerMember(
      $grpc.ServiceCall call, $5.RegisterMemberRequest request);
  $async.Future<$5.UnregisterMemberResponse> unregisterMember(
      $grpc.ServiceCall call, $5.UnregisterMemberRequest request);
  $async.Future<$5.GetMemberAuthorizationStatusResponse>
      getMemberAuthorizationStatus($grpc.ServiceCall call,
          $5.GetMemberAuthorizationStatusRequest request);
  $async.Future<$5.ListAuthorizedMembersResponse> listAuthorizedMembers(
      $grpc.ServiceCall call, $5.ListAuthorizedMembersRequest request);
  $async.Future<$5.GetMemberResponse> getMember(
      $grpc.ServiceCall call, $5.GetMemberRequest request);
}
