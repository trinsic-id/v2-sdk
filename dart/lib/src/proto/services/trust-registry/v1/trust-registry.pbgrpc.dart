///
//  Generated code. Do not modify.
//  source: services/trust-registry/v1/trust-registry.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'trust-registry.pb.dart' as $4;
export 'trust-registry.pb.dart';

class TrustRegistryClient extends $grpc.Client {
  static final _$addFramework =
      $grpc.ClientMethod<$4.AddFrameworkRequest, $4.AddFrameworkResponse>(
          '/services.trustregistry.v1.TrustRegistry/AddFramework',
          ($4.AddFrameworkRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.AddFrameworkResponse.fromBuffer(value));
  static final _$removeFramework =
      $grpc.ClientMethod<$4.RemoveFrameworkRequest, $4.RemoveFrameworkResponse>(
          '/services.trustregistry.v1.TrustRegistry/RemoveFramework',
          ($4.RemoveFrameworkRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.RemoveFrameworkResponse.fromBuffer(value));
  static final _$searchRegistry =
      $grpc.ClientMethod<$4.SearchRegistryRequest, $4.SearchRegistryResponse>(
          '/services.trustregistry.v1.TrustRegistry/SearchRegistry',
          ($4.SearchRegistryRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.SearchRegistryResponse.fromBuffer(value));
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
  static final _$getMembershipStatus = $grpc.ClientMethod<
          $4.GetMembershipStatusRequest, $4.GetMembershipStatusResponse>(
      '/services.trustregistry.v1.TrustRegistry/GetMembershipStatus',
      ($4.GetMembershipStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $4.GetMembershipStatusResponse.fromBuffer(value));

  TrustRegistryClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$4.AddFrameworkResponse> addFramework(
      $4.AddFrameworkRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addFramework, request, options: options);
  }

  $grpc.ResponseFuture<$4.RemoveFrameworkResponse> removeFramework(
      $4.RemoveFrameworkRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeFramework, request, options: options);
  }

  $grpc.ResponseFuture<$4.SearchRegistryResponse> searchRegistry(
      $4.SearchRegistryRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$searchRegistry, request, options: options);
  }

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

  $grpc.ResponseFuture<$4.GetMembershipStatusResponse> getMembershipStatus(
      $4.GetMembershipStatusRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMembershipStatus, request, options: options);
  }
}

abstract class TrustRegistryServiceBase extends $grpc.Service {
  $core.String get $name => 'services.trustregistry.v1.TrustRegistry';

  TrustRegistryServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$4.AddFrameworkRequest, $4.AddFrameworkResponse>(
            'AddFramework',
            addFramework_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $4.AddFrameworkRequest.fromBuffer(value),
            ($4.AddFrameworkResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.RemoveFrameworkRequest,
            $4.RemoveFrameworkResponse>(
        'RemoveFramework',
        removeFramework_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.RemoveFrameworkRequest.fromBuffer(value),
        ($4.RemoveFrameworkResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.SearchRegistryRequest,
            $4.SearchRegistryResponse>(
        'SearchRegistry',
        searchRegistry_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.SearchRegistryRequest.fromBuffer(value),
        ($4.SearchRegistryResponse value) => value.writeToBuffer()));
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
    $addMethod($grpc.ServiceMethod<$4.GetMembershipStatusRequest,
            $4.GetMembershipStatusResponse>(
        'GetMembershipStatus',
        getMembershipStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.GetMembershipStatusRequest.fromBuffer(value),
        ($4.GetMembershipStatusResponse value) => value.writeToBuffer()));
  }

  $async.Future<$4.AddFrameworkResponse> addFramework_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.AddFrameworkRequest> request) async {
    return addFramework(call, await request);
  }

  $async.Future<$4.RemoveFrameworkResponse> removeFramework_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.RemoveFrameworkRequest> request) async {
    return removeFramework(call, await request);
  }

  $async.Future<$4.SearchRegistryResponse> searchRegistry_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.SearchRegistryRequest> request) async {
    return searchRegistry(call, await request);
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

  $async.Future<$4.GetMembershipStatusResponse> getMembershipStatus_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.GetMembershipStatusRequest> request) async {
    return getMembershipStatus(call, await request);
  }

  $async.Future<$4.AddFrameworkResponse> addFramework(
      $grpc.ServiceCall call, $4.AddFrameworkRequest request);
  $async.Future<$4.RemoveFrameworkResponse> removeFramework(
      $grpc.ServiceCall call, $4.RemoveFrameworkRequest request);
  $async.Future<$4.SearchRegistryResponse> searchRegistry(
      $grpc.ServiceCall call, $4.SearchRegistryRequest request);
  $async.Future<$4.RegisterMemberResponse> registerMember(
      $grpc.ServiceCall call, $4.RegisterMemberRequest request);
  $async.Future<$4.UnregisterMemberResponse> unregisterMember(
      $grpc.ServiceCall call, $4.UnregisterMemberRequest request);
  $async.Future<$4.GetMembershipStatusResponse> getMembershipStatus(
      $grpc.ServiceCall call, $4.GetMembershipStatusRequest request);
}
