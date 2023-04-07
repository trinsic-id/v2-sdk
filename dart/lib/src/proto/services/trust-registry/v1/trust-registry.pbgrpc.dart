///
//  Generated code. Do not modify.
//  source: services/trust-registry/v1/trust-registry.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'trust-registry.pb.dart' as $3;
export 'trust-registry.pb.dart';

class TrustRegistryClient extends $grpc.Client {
  static final _$addFramework =
      $grpc.ClientMethod<$3.AddFrameworkRequest, $3.AddFrameworkResponse>(
          '/services.trustregistry.v1.TrustRegistry/AddFramework',
          ($3.AddFrameworkRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.AddFrameworkResponse.fromBuffer(value));
  static final _$removeFramework =
      $grpc.ClientMethod<$3.RemoveFrameworkRequest, $3.RemoveFrameworkResponse>(
          '/services.trustregistry.v1.TrustRegistry/RemoveFramework',
          ($3.RemoveFrameworkRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.RemoveFrameworkResponse.fromBuffer(value));
  static final _$searchRegistry =
      $grpc.ClientMethod<$3.SearchRegistryRequest, $3.SearchRegistryResponse>(
          '/services.trustregistry.v1.TrustRegistry/SearchRegistry',
          ($3.SearchRegistryRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.SearchRegistryResponse.fromBuffer(value));
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
  static final _$getMembershipStatus = $grpc.ClientMethod<
          $3.GetMembershipStatusRequest, $3.GetMembershipStatusResponse>(
      '/services.trustregistry.v1.TrustRegistry/GetMembershipStatus',
      ($3.GetMembershipStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $3.GetMembershipStatusResponse.fromBuffer(value));

  TrustRegistryClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$3.AddFrameworkResponse> addFramework(
      $3.AddFrameworkRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addFramework, request, options: options);
  }

  $grpc.ResponseFuture<$3.RemoveFrameworkResponse> removeFramework(
      $3.RemoveFrameworkRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeFramework, request, options: options);
  }

  $grpc.ResponseFuture<$3.SearchRegistryResponse> searchRegistry(
      $3.SearchRegistryRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$searchRegistry, request, options: options);
  }

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

  $grpc.ResponseFuture<$3.GetMembershipStatusResponse> getMembershipStatus(
      $3.GetMembershipStatusRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMembershipStatus, request, options: options);
  }
}

abstract class TrustRegistryServiceBase extends $grpc.Service {
  $core.String get $name => 'services.trustregistry.v1.TrustRegistry';

  TrustRegistryServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$3.AddFrameworkRequest, $3.AddFrameworkResponse>(
            'AddFramework',
            addFramework_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $3.AddFrameworkRequest.fromBuffer(value),
            ($3.AddFrameworkResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.RemoveFrameworkRequest,
            $3.RemoveFrameworkResponse>(
        'RemoveFramework',
        removeFramework_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $3.RemoveFrameworkRequest.fromBuffer(value),
        ($3.RemoveFrameworkResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.SearchRegistryRequest,
            $3.SearchRegistryResponse>(
        'SearchRegistry',
        searchRegistry_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $3.SearchRegistryRequest.fromBuffer(value),
        ($3.SearchRegistryResponse value) => value.writeToBuffer()));
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
    $addMethod($grpc.ServiceMethod<$3.GetMembershipStatusRequest,
            $3.GetMembershipStatusResponse>(
        'GetMembershipStatus',
        getMembershipStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $3.GetMembershipStatusRequest.fromBuffer(value),
        ($3.GetMembershipStatusResponse value) => value.writeToBuffer()));
  }

  $async.Future<$3.AddFrameworkResponse> addFramework_Pre(
      $grpc.ServiceCall call,
      $async.Future<$3.AddFrameworkRequest> request) async {
    return addFramework(call, await request);
  }

  $async.Future<$3.RemoveFrameworkResponse> removeFramework_Pre(
      $grpc.ServiceCall call,
      $async.Future<$3.RemoveFrameworkRequest> request) async {
    return removeFramework(call, await request);
  }

  $async.Future<$3.SearchRegistryResponse> searchRegistry_Pre(
      $grpc.ServiceCall call,
      $async.Future<$3.SearchRegistryRequest> request) async {
    return searchRegistry(call, await request);
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

  $async.Future<$3.GetMembershipStatusResponse> getMembershipStatus_Pre(
      $grpc.ServiceCall call,
      $async.Future<$3.GetMembershipStatusRequest> request) async {
    return getMembershipStatus(call, await request);
  }

  $async.Future<$3.AddFrameworkResponse> addFramework(
      $grpc.ServiceCall call, $3.AddFrameworkRequest request);
  $async.Future<$3.RemoveFrameworkResponse> removeFramework(
      $grpc.ServiceCall call, $3.RemoveFrameworkRequest request);
  $async.Future<$3.SearchRegistryResponse> searchRegistry(
      $grpc.ServiceCall call, $3.SearchRegistryRequest request);
  $async.Future<$3.RegisterMemberResponse> registerMember(
      $grpc.ServiceCall call, $3.RegisterMemberRequest request);
  $async.Future<$3.UnregisterMemberResponse> unregisterMember(
      $grpc.ServiceCall call, $3.UnregisterMemberRequest request);
  $async.Future<$3.GetMembershipStatusResponse> getMembershipStatus(
      $grpc.ServiceCall call, $3.GetMembershipStatusRequest request);
}
