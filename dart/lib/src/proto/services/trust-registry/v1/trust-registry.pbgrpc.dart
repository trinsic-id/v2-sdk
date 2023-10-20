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

import 'trust-registry.pb.dart' as $0;

export 'trust-registry.pb.dart';

@$pb.GrpcServiceName('services.trustregistry.v1.TrustRegistry')
class TrustRegistryClient extends $grpc.Client {
  static final _$registerMember =
      $grpc.ClientMethod<$0.RegisterMemberRequest, $0.RegisterMemberResponse>(
          '/services.trustregistry.v1.TrustRegistry/RegisterMember',
          ($0.RegisterMemberRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.RegisterMemberResponse.fromBuffer(value));
  static final _$unregisterMember = $grpc.ClientMethod<
          $0.UnregisterMemberRequest, $0.UnregisterMemberResponse>(
      '/services.trustregistry.v1.TrustRegistry/UnregisterMember',
      ($0.UnregisterMemberRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.UnregisterMemberResponse.fromBuffer(value));
  static final _$getMemberAuthorizationStatus = $grpc.ClientMethod<
          $0.GetMemberAuthorizationStatusRequest,
          $0.GetMemberAuthorizationStatusResponse>(
      '/services.trustregistry.v1.TrustRegistry/GetMemberAuthorizationStatus',
      ($0.GetMemberAuthorizationStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.GetMemberAuthorizationStatusResponse.fromBuffer(value));
  static final _$listAuthorizedMembers = $grpc.ClientMethod<
          $0.ListAuthorizedMembersRequest, $0.ListAuthorizedMembersResponse>(
      '/services.trustregistry.v1.TrustRegistry/ListAuthorizedMembers',
      ($0.ListAuthorizedMembersRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.ListAuthorizedMembersResponse.fromBuffer(value));
  static final _$getMember =
      $grpc.ClientMethod<$0.GetMemberRequest, $0.GetMemberResponse>(
          '/services.trustregistry.v1.TrustRegistry/GetMember',
          ($0.GetMemberRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetMemberResponse.fromBuffer(value));

  TrustRegistryClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.RegisterMemberResponse> registerMember(
      $0.RegisterMemberRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$registerMember, request, options: options);
  }

  $grpc.ResponseFuture<$0.UnregisterMemberResponse> unregisterMember(
      $0.UnregisterMemberRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unregisterMember, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetMemberAuthorizationStatusResponse>
      getMemberAuthorizationStatus(
          $0.GetMemberAuthorizationStatusRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMemberAuthorizationStatus, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.ListAuthorizedMembersResponse> listAuthorizedMembers(
      $0.ListAuthorizedMembersRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listAuthorizedMembers, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetMemberResponse> getMember(
      $0.GetMemberRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMember, request, options: options);
  }
}

@$pb.GrpcServiceName('services.trustregistry.v1.TrustRegistry')
abstract class TrustRegistryServiceBase extends $grpc.Service {
  $core.String get $name => 'services.trustregistry.v1.TrustRegistry';

  TrustRegistryServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.RegisterMemberRequest,
            $0.RegisterMemberResponse>(
        'RegisterMember',
        registerMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.RegisterMemberRequest.fromBuffer(value),
        ($0.RegisterMemberResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UnregisterMemberRequest,
            $0.UnregisterMemberResponse>(
        'UnregisterMember',
        unregisterMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.UnregisterMemberRequest.fromBuffer(value),
        ($0.UnregisterMemberResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetMemberAuthorizationStatusRequest,
            $0.GetMemberAuthorizationStatusResponse>(
        'GetMemberAuthorizationStatus',
        getMemberAuthorizationStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetMemberAuthorizationStatusRequest.fromBuffer(value),
        ($0.GetMemberAuthorizationStatusResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListAuthorizedMembersRequest,
            $0.ListAuthorizedMembersResponse>(
        'ListAuthorizedMembers',
        listAuthorizedMembers_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ListAuthorizedMembersRequest.fromBuffer(value),
        ($0.ListAuthorizedMembersResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetMemberRequest, $0.GetMemberResponse>(
        'GetMember',
        getMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetMemberRequest.fromBuffer(value),
        ($0.GetMemberResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.RegisterMemberResponse> registerMember_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.RegisterMemberRequest> request) async {
    return registerMember(call, await request);
  }

  $async.Future<$0.UnregisterMemberResponse> unregisterMember_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.UnregisterMemberRequest> request) async {
    return unregisterMember(call, await request);
  }

  $async.Future<$0.GetMemberAuthorizationStatusResponse>
      getMemberAuthorizationStatus_Pre($grpc.ServiceCall call,
          $async.Future<$0.GetMemberAuthorizationStatusRequest> request) async {
    return getMemberAuthorizationStatus(call, await request);
  }

  $async.Future<$0.ListAuthorizedMembersResponse> listAuthorizedMembers_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ListAuthorizedMembersRequest> request) async {
    return listAuthorizedMembers(call, await request);
  }

  $async.Future<$0.GetMemberResponse> getMember_Pre($grpc.ServiceCall call,
      $async.Future<$0.GetMemberRequest> request) async {
    return getMember(call, await request);
  }

  $async.Future<$0.RegisterMemberResponse> registerMember(
      $grpc.ServiceCall call, $0.RegisterMemberRequest request);
  $async.Future<$0.UnregisterMemberResponse> unregisterMember(
      $grpc.ServiceCall call, $0.UnregisterMemberRequest request);
  $async.Future<$0.GetMemberAuthorizationStatusResponse>
      getMemberAuthorizationStatus($grpc.ServiceCall call,
          $0.GetMemberAuthorizationStatusRequest request);
  $async.Future<$0.ListAuthorizedMembersResponse> listAuthorizedMembers(
      $grpc.ServiceCall call, $0.ListAuthorizedMembersRequest request);
  $async.Future<$0.GetMemberResponse> getMember(
      $grpc.ServiceCall call, $0.GetMemberRequest request);
}
