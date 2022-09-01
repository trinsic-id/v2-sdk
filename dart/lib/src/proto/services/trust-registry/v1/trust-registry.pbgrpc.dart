///
//  Generated code. Do not modify.
//  source: services/trust-registry/v1/trust-registry.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'trust-registry.pb.dart' as $5;
export 'trust-registry.pb.dart';

class TrustRegistryClient extends $grpc.Client {
  static final _$addFramework =
      $grpc.ClientMethod<$5.AddFrameworkRequest, $5.AddFrameworkResponse>(
          '/services.trustregistry.v1.TrustRegistry/AddFramework',
          ($5.AddFrameworkRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.AddFrameworkResponse.fromBuffer(value));
  static final _$removeFramework =
      $grpc.ClientMethod<$5.RemoveFrameworkRequest, $5.RemoveFrameworkResponse>(
          '/services.trustregistry.v1.TrustRegistry/RemoveFramework',
          ($5.RemoveFrameworkRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.RemoveFrameworkResponse.fromBuffer(value));
  static final _$searchRegistry =
      $grpc.ClientMethod<$5.SearchRegistryRequest, $5.SearchRegistryResponse>(
          '/services.trustregistry.v1.TrustRegistry/SearchRegistry',
          ($5.SearchRegistryRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.SearchRegistryResponse.fromBuffer(value));
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
  static final _$getMembershipStatus = $grpc.ClientMethod<
          $5.GetMembershipStatusRequest, $5.GetMembershipStatusResponse>(
      '/services.trustregistry.v1.TrustRegistry/GetMembershipStatus',
      ($5.GetMembershipStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.GetMembershipStatusResponse.fromBuffer(value));
  static final _$fetchData =
      $grpc.ClientMethod<$5.FetchDataRequest, $5.FetchDataResponse>(
          '/services.trustregistry.v1.TrustRegistry/FetchData',
          ($5.FetchDataRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.FetchDataResponse.fromBuffer(value));

  TrustRegistryClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$5.AddFrameworkResponse> addFramework(
      $5.AddFrameworkRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addFramework, request, options: options);
  }

  $grpc.ResponseFuture<$5.RemoveFrameworkResponse> removeFramework(
      $5.RemoveFrameworkRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeFramework, request, options: options);
  }

  $grpc.ResponseFuture<$5.SearchRegistryResponse> searchRegistry(
      $5.SearchRegistryRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$searchRegistry, request, options: options);
  }

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

  $grpc.ResponseFuture<$5.GetMembershipStatusResponse> getMembershipStatus(
      $5.GetMembershipStatusRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMembershipStatus, request, options: options);
  }

  $grpc.ResponseStream<$5.FetchDataResponse> fetchData(
      $5.FetchDataRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$fetchData, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class TrustRegistryServiceBase extends $grpc.Service {
  $core.String get $name => 'services.trustregistry.v1.TrustRegistry';

  TrustRegistryServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$5.AddFrameworkRequest, $5.AddFrameworkResponse>(
            'AddFramework',
            addFramework_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $5.AddFrameworkRequest.fromBuffer(value),
            ($5.AddFrameworkResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.RemoveFrameworkRequest,
            $5.RemoveFrameworkResponse>(
        'RemoveFramework',
        removeFramework_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.RemoveFrameworkRequest.fromBuffer(value),
        ($5.RemoveFrameworkResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.SearchRegistryRequest,
            $5.SearchRegistryResponse>(
        'SearchRegistry',
        searchRegistry_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.SearchRegistryRequest.fromBuffer(value),
        ($5.SearchRegistryResponse value) => value.writeToBuffer()));
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
    $addMethod($grpc.ServiceMethod<$5.GetMembershipStatusRequest,
            $5.GetMembershipStatusResponse>(
        'GetMembershipStatus',
        getMembershipStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.GetMembershipStatusRequest.fromBuffer(value),
        ($5.GetMembershipStatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.FetchDataRequest, $5.FetchDataResponse>(
        'FetchData',
        fetchData_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $5.FetchDataRequest.fromBuffer(value),
        ($5.FetchDataResponse value) => value.writeToBuffer()));
  }

  $async.Future<$5.AddFrameworkResponse> addFramework_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.AddFrameworkRequest> request) async {
    return addFramework(call, await request);
  }

  $async.Future<$5.RemoveFrameworkResponse> removeFramework_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.RemoveFrameworkRequest> request) async {
    return removeFramework(call, await request);
  }

  $async.Future<$5.SearchRegistryResponse> searchRegistry_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.SearchRegistryRequest> request) async {
    return searchRegistry(call, await request);
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

  $async.Future<$5.GetMembershipStatusResponse> getMembershipStatus_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.GetMembershipStatusRequest> request) async {
    return getMembershipStatus(call, await request);
  }

  $async.Stream<$5.FetchDataResponse> fetchData_Pre($grpc.ServiceCall call,
      $async.Future<$5.FetchDataRequest> request) async* {
    yield* fetchData(call, await request);
  }

  $async.Future<$5.AddFrameworkResponse> addFramework(
      $grpc.ServiceCall call, $5.AddFrameworkRequest request);
  $async.Future<$5.RemoveFrameworkResponse> removeFramework(
      $grpc.ServiceCall call, $5.RemoveFrameworkRequest request);
  $async.Future<$5.SearchRegistryResponse> searchRegistry(
      $grpc.ServiceCall call, $5.SearchRegistryRequest request);
  $async.Future<$5.RegisterMemberResponse> registerMember(
      $grpc.ServiceCall call, $5.RegisterMemberRequest request);
  $async.Future<$5.UnregisterMemberResponse> unregisterMember(
      $grpc.ServiceCall call, $5.UnregisterMemberRequest request);
  $async.Future<$5.GetMembershipStatusResponse> getMembershipStatus(
      $grpc.ServiceCall call, $5.GetMembershipStatusRequest request);
  $async.Stream<$5.FetchDataResponse> fetchData(
      $grpc.ServiceCall call, $5.FetchDataRequest request);
}
