///
//  Generated code. Do not modify.
//  source: services/trust-registry/v1/trust-registry.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'trust-registry.pb.dart' as $7;
export 'trust-registry.pb.dart';

class TrustRegistryClient extends $grpc.Client {
  static final _$searchRegistry =
      $grpc.ClientMethod<$7.SearchRegistryRequest, $7.SearchRegistryResponse>(
          '/services.trustregistry.v1.TrustRegistry/SearchRegistry',
          ($7.SearchRegistryRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $7.SearchRegistryResponse.fromBuffer(value));
  static final _$registerMember =
      $grpc.ClientMethod<$7.RegisterMemberRequest, $7.RegisterMemberResponse>(
          '/services.trustregistry.v1.TrustRegistry/RegisterMember',
          ($7.RegisterMemberRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $7.RegisterMemberResponse.fromBuffer(value));
  static final _$unregisterMember = $grpc.ClientMethod<
          $7.UnregisterMemberRequest, $7.UnregisterMemberResponse>(
      '/services.trustregistry.v1.TrustRegistry/UnregisterMember',
      ($7.UnregisterMemberRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $7.UnregisterMemberResponse.fromBuffer(value));
  static final _$getMemberAuthorizationStatus = $grpc.ClientMethod<
          $7.GetMemberAuthorizationStatusRequest,
          $7.GetMemberAuthorizationStatusResponse>(
      '/services.trustregistry.v1.TrustRegistry/GetMemberAuthorizationStatus',
      ($7.GetMemberAuthorizationStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $7.GetMemberAuthorizationStatusResponse.fromBuffer(value));
  static final _$listAuthorizedMembers = $grpc.ClientMethod<
          $7.ListAuthorizedMembersRequest, $7.ListAuthorizedMembersResponse>(
      '/services.trustregistry.v1.TrustRegistry/ListAuthorizedMembers',
      ($7.ListAuthorizedMembersRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $7.ListAuthorizedMembersResponse.fromBuffer(value));
  static final _$getMember =
      $grpc.ClientMethod<$7.GetMemberRequest, $7.GetMemberResponse>(
          '/services.trustregistry.v1.TrustRegistry/GetMember',
          ($7.GetMemberRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $7.GetMemberResponse.fromBuffer(value));

  TrustRegistryClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$7.SearchRegistryResponse> searchRegistry(
      $7.SearchRegistryRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$searchRegistry, request, options: options);
  }

  $grpc.ResponseFuture<$7.RegisterMemberResponse> registerMember(
      $7.RegisterMemberRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$registerMember, request, options: options);
  }

  $grpc.ResponseFuture<$7.UnregisterMemberResponse> unregisterMember(
      $7.UnregisterMemberRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unregisterMember, request, options: options);
  }

  $grpc.ResponseFuture<$7.GetMemberAuthorizationStatusResponse>
      getMemberAuthorizationStatus(
          $7.GetMemberAuthorizationStatusRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMemberAuthorizationStatus, request,
        options: options);
  }

  $grpc.ResponseFuture<$7.ListAuthorizedMembersResponse> listAuthorizedMembers(
      $7.ListAuthorizedMembersRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listAuthorizedMembers, request, options: options);
  }

  $grpc.ResponseFuture<$7.GetMemberResponse> getMember(
      $7.GetMemberRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMember, request, options: options);
  }
}

abstract class TrustRegistryServiceBase extends $grpc.Service {
  $core.String get $name => 'services.trustregistry.v1.TrustRegistry';

  TrustRegistryServiceBase() {
    $addMethod($grpc.ServiceMethod<$7.SearchRegistryRequest,
            $7.SearchRegistryResponse>(
        'SearchRegistry',
        searchRegistry_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.SearchRegistryRequest.fromBuffer(value),
        ($7.SearchRegistryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.RegisterMemberRequest,
            $7.RegisterMemberResponse>(
        'RegisterMember',
        registerMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.RegisterMemberRequest.fromBuffer(value),
        ($7.RegisterMemberResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.UnregisterMemberRequest,
            $7.UnregisterMemberResponse>(
        'UnregisterMember',
        unregisterMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.UnregisterMemberRequest.fromBuffer(value),
        ($7.UnregisterMemberResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.GetMemberAuthorizationStatusRequest,
            $7.GetMemberAuthorizationStatusResponse>(
        'GetMemberAuthorizationStatus',
        getMemberAuthorizationStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.GetMemberAuthorizationStatusRequest.fromBuffer(value),
        ($7.GetMemberAuthorizationStatusResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.ListAuthorizedMembersRequest,
            $7.ListAuthorizedMembersResponse>(
        'ListAuthorizedMembers',
        listAuthorizedMembers_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.ListAuthorizedMembersRequest.fromBuffer(value),
        ($7.ListAuthorizedMembersResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.GetMemberRequest, $7.GetMemberResponse>(
        'GetMember',
        getMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.GetMemberRequest.fromBuffer(value),
        ($7.GetMemberResponse value) => value.writeToBuffer()));
  }

  $async.Future<$7.SearchRegistryResponse> searchRegistry_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.SearchRegistryRequest> request) async {
    return searchRegistry(call, await request);
  }

  $async.Future<$7.RegisterMemberResponse> registerMember_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.RegisterMemberRequest> request) async {
    return registerMember(call, await request);
  }

  $async.Future<$7.UnregisterMemberResponse> unregisterMember_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.UnregisterMemberRequest> request) async {
    return unregisterMember(call, await request);
  }

  $async.Future<$7.GetMemberAuthorizationStatusResponse>
      getMemberAuthorizationStatus_Pre($grpc.ServiceCall call,
          $async.Future<$7.GetMemberAuthorizationStatusRequest> request) async {
    return getMemberAuthorizationStatus(call, await request);
  }

  $async.Future<$7.ListAuthorizedMembersResponse> listAuthorizedMembers_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.ListAuthorizedMembersRequest> request) async {
    return listAuthorizedMembers(call, await request);
  }

  $async.Future<$7.GetMemberResponse> getMember_Pre($grpc.ServiceCall call,
      $async.Future<$7.GetMemberRequest> request) async {
    return getMember(call, await request);
  }

  $async.Future<$7.SearchRegistryResponse> searchRegistry(
      $grpc.ServiceCall call, $7.SearchRegistryRequest request);
  $async.Future<$7.RegisterMemberResponse> registerMember(
      $grpc.ServiceCall call, $7.RegisterMemberRequest request);
  $async.Future<$7.UnregisterMemberResponse> unregisterMember(
      $grpc.ServiceCall call, $7.UnregisterMemberRequest request);
  $async.Future<$7.GetMemberAuthorizationStatusResponse>
      getMemberAuthorizationStatus($grpc.ServiceCall call,
          $7.GetMemberAuthorizationStatusRequest request);
  $async.Future<$7.ListAuthorizedMembersResponse> listAuthorizedMembers(
      $grpc.ServiceCall call, $7.ListAuthorizedMembersRequest request);
  $async.Future<$7.GetMemberResponse> getMember(
      $grpc.ServiceCall call, $7.GetMemberRequest request);
}
