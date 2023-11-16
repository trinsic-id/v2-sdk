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

import 'trust-registry.pb.dart' as $4;

export 'trust-registry.pb.dart';

@$pb.GrpcServiceName('services.trustregistry.v1.TrustRegistry')
class TrustRegistryClient extends $grpc.Client {
  static final _$registerMember =
      $grpc.ClientMethod<$4.RegisterMemberRequest, $4.RegisterMemberResponse>(
          '/services.trustregistry.v1.TrustRegistry/RegisterMember',
          ($4.RegisterMemberRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.RegisterMemberResponse.fromBuffer(value));
  static final _$unregisterMember = $grpc.ClientMethod<
          $4.UnregisterMemberRequest, $4.UnregisterMemberResponse>(
      '/services.trustregistry.v1.TrustRegistry/UnregisterMember',
      ($4.UnregisterMemberRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $4.UnregisterMemberResponse.fromBuffer(value));
  static final _$getMemberAuthorizationStatus = $grpc.ClientMethod<
          $4.GetMemberAuthorizationStatusRequest,
          $4.GetMemberAuthorizationStatusResponse>(
      '/services.trustregistry.v1.TrustRegistry/GetMemberAuthorizationStatus',
      ($4.GetMemberAuthorizationStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $4.GetMemberAuthorizationStatusResponse.fromBuffer(value));
  static final _$listAuthorizedMembers = $grpc.ClientMethod<
          $4.ListAuthorizedMembersRequest, $4.ListAuthorizedMembersResponse>(
      '/services.trustregistry.v1.TrustRegistry/ListAuthorizedMembers',
      ($4.ListAuthorizedMembersRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $4.ListAuthorizedMembersResponse.fromBuffer(value));
  static final _$getMember =
      $grpc.ClientMethod<$4.GetMemberRequest, $4.GetMemberResponse>(
          '/services.trustregistry.v1.TrustRegistry/GetMember',
          ($4.GetMemberRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.GetMemberResponse.fromBuffer(value));

  TrustRegistryClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$4.RegisterMemberResponse> registerMember(
      $4.RegisterMemberRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$registerMember, request, options: options);
  }

  $grpc.ResponseFuture<$4.UnregisterMemberResponse> unregisterMember(
      $4.UnregisterMemberRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unregisterMember, request, options: options);
  }

  $grpc.ResponseFuture<$4.GetMemberAuthorizationStatusResponse>
      getMemberAuthorizationStatus(
          $4.GetMemberAuthorizationStatusRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMemberAuthorizationStatus, request,
        options: options);
  }

  $grpc.ResponseFuture<$4.ListAuthorizedMembersResponse> listAuthorizedMembers(
      $4.ListAuthorizedMembersRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listAuthorizedMembers, request, options: options);
  }

  $grpc.ResponseFuture<$4.GetMemberResponse> getMember(
      $4.GetMemberRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMember, request, options: options);
  }
}

@$pb.GrpcServiceName('services.trustregistry.v1.TrustRegistry')
abstract class TrustRegistryServiceBase extends $grpc.Service {
  $core.String get $name => 'services.trustregistry.v1.TrustRegistry';

  TrustRegistryServiceBase() {
    $addMethod($grpc.ServiceMethod<$4.RegisterMemberRequest,
            $4.RegisterMemberResponse>(
        'RegisterMember',
        registerMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.RegisterMemberRequest.fromBuffer(value),
        ($4.RegisterMemberResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.UnregisterMemberRequest,
            $4.UnregisterMemberResponse>(
        'UnregisterMember',
        unregisterMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.UnregisterMemberRequest.fromBuffer(value),
        ($4.UnregisterMemberResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.GetMemberAuthorizationStatusRequest,
            $4.GetMemberAuthorizationStatusResponse>(
        'GetMemberAuthorizationStatus',
        getMemberAuthorizationStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.GetMemberAuthorizationStatusRequest.fromBuffer(value),
        ($4.GetMemberAuthorizationStatusResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.ListAuthorizedMembersRequest,
            $4.ListAuthorizedMembersResponse>(
        'ListAuthorizedMembers',
        listAuthorizedMembers_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.ListAuthorizedMembersRequest.fromBuffer(value),
        ($4.ListAuthorizedMembersResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.GetMemberRequest, $4.GetMemberResponse>(
        'GetMember',
        getMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.GetMemberRequest.fromBuffer(value),
        ($4.GetMemberResponse value) => value.writeToBuffer()));
  }

  $async.Future<$4.RegisterMemberResponse> registerMember_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.RegisterMemberRequest> request) async {
    return registerMember(call, await request);
  }

  $async.Future<$4.UnregisterMemberResponse> unregisterMember_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.UnregisterMemberRequest> request) async {
    return unregisterMember(call, await request);
  }

  $async.Future<$4.GetMemberAuthorizationStatusResponse>
      getMemberAuthorizationStatus_Pre($grpc.ServiceCall call,
          $async.Future<$4.GetMemberAuthorizationStatusRequest> request) async {
    return getMemberAuthorizationStatus(call, await request);
  }

  $async.Future<$4.ListAuthorizedMembersResponse> listAuthorizedMembers_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.ListAuthorizedMembersRequest> request) async {
    return listAuthorizedMembers(call, await request);
  }

  $async.Future<$4.GetMemberResponse> getMember_Pre($grpc.ServiceCall call,
      $async.Future<$4.GetMemberRequest> request) async {
    return getMember(call, await request);
  }

  $async.Future<$4.RegisterMemberResponse> registerMember(
      $grpc.ServiceCall call, $4.RegisterMemberRequest request);
  $async.Future<$4.UnregisterMemberResponse> unregisterMember(
      $grpc.ServiceCall call, $4.UnregisterMemberRequest request);
  $async.Future<$4.GetMemberAuthorizationStatusResponse>
      getMemberAuthorizationStatus($grpc.ServiceCall call,
          $4.GetMemberAuthorizationStatusRequest request);
  $async.Future<$4.ListAuthorizedMembersResponse> listAuthorizedMembers(
      $grpc.ServiceCall call, $4.ListAuthorizedMembersRequest request);
  $async.Future<$4.GetMemberResponse> getMember(
      $grpc.ServiceCall call, $4.GetMemberRequest request);
}
