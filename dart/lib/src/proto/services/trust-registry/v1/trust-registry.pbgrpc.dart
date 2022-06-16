///
//  Generated code. Do not modify.
//  source: services/trust-registry/v1/trust-registry.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'trust-registry.pb.dart' as $2;
export 'trust-registry.pb.dart';

class TrustRegistryClient extends $grpc.Client {
  static final _$addFramework =
      $grpc.ClientMethod<$2.AddFrameworkRequest, $2.AddFrameworkResponse>(
          '/services.trustregistry.v1.TrustRegistry/AddFramework',
          ($2.AddFrameworkRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.AddFrameworkResponse.fromBuffer(value));
  static final _$removeFramework =
      $grpc.ClientMethod<$2.RemoveFrameworkRequest, $2.RemoveFrameworkResponse>(
          '/services.trustregistry.v1.TrustRegistry/RemoveFramework',
          ($2.RemoveFrameworkRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.RemoveFrameworkResponse.fromBuffer(value));
  static final _$searchRegistry =
      $grpc.ClientMethod<$2.SearchRegistryRequest, $2.SearchRegistryResponse>(
          '/services.trustregistry.v1.TrustRegistry/SearchRegistry',
          ($2.SearchRegistryRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.SearchRegistryResponse.fromBuffer(value));
  static final _$registerMember =
      $grpc.ClientMethod<$2.RegisterMemberRequest, $2.RegisterMemberResponse>(
          '/services.trustregistry.v1.TrustRegistry/RegisterMember',
          ($2.RegisterMemberRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.RegisterMemberResponse.fromBuffer(value));
  static final _$unregisterMember = $grpc.ClientMethod<
          $2.UnregisterMemberRequest, $2.UnregisterMemberResponse>(
      '/services.trustregistry.v1.TrustRegistry/UnregisterMember',
      ($2.UnregisterMemberRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.UnregisterMemberResponse.fromBuffer(value));
  static final _$getMembershipStatus = $grpc.ClientMethod<
          $2.GetMembershipStatusRequest, $2.GetMembershipStatusResponse>(
      '/services.trustregistry.v1.TrustRegistry/GetMembershipStatus',
      ($2.GetMembershipStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.GetMembershipStatusResponse.fromBuffer(value));
  static final _$fetchData =
      $grpc.ClientMethod<$2.FetchDataRequest, $2.FetchDataResponse>(
          '/services.trustregistry.v1.TrustRegistry/FetchData',
          ($2.FetchDataRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.FetchDataResponse.fromBuffer(value));

  TrustRegistryClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$2.AddFrameworkResponse> addFramework(
      $2.AddFrameworkRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addFramework, request, options: options);
  }

  $grpc.ResponseFuture<$2.RemoveFrameworkResponse> removeFramework(
      $2.RemoveFrameworkRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeFramework, request, options: options);
  }

  $grpc.ResponseFuture<$2.SearchRegistryResponse> searchRegistry(
      $2.SearchRegistryRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$searchRegistry, request, options: options);
  }

  $grpc.ResponseFuture<$2.RegisterMemberResponse> registerMember(
      $2.RegisterMemberRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$registerMember, request, options: options);
  }

  $grpc.ResponseFuture<$2.UnregisterMemberResponse> unregisterMember(
      $2.UnregisterMemberRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unregisterMember, request, options: options);
  }

  $grpc.ResponseFuture<$2.GetMembershipStatusResponse> getMembershipStatus(
      $2.GetMembershipStatusRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMembershipStatus, request, options: options);
  }

  $grpc.ResponseStream<$2.FetchDataResponse> fetchData(
      $2.FetchDataRequest request,
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
        $grpc.ServiceMethod<$2.AddFrameworkRequest, $2.AddFrameworkResponse>(
            'AddFramework',
            addFramework_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.AddFrameworkRequest.fromBuffer(value),
            ($2.AddFrameworkResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.RemoveFrameworkRequest,
            $2.RemoveFrameworkResponse>(
        'RemoveFramework',
        removeFramework_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.RemoveFrameworkRequest.fromBuffer(value),
        ($2.RemoveFrameworkResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.SearchRegistryRequest,
            $2.SearchRegistryResponse>(
        'SearchRegistry',
        searchRegistry_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.SearchRegistryRequest.fromBuffer(value),
        ($2.SearchRegistryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.RegisterMemberRequest,
            $2.RegisterMemberResponse>(
        'RegisterMember',
        registerMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.RegisterMemberRequest.fromBuffer(value),
        ($2.RegisterMemberResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UnregisterMemberRequest,
            $2.UnregisterMemberResponse>(
        'UnregisterMember',
        unregisterMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.UnregisterMemberRequest.fromBuffer(value),
        ($2.UnregisterMemberResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.GetMembershipStatusRequest,
            $2.GetMembershipStatusResponse>(
        'GetMembershipStatus',
        getMembershipStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.GetMembershipStatusRequest.fromBuffer(value),
        ($2.GetMembershipStatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.FetchDataRequest, $2.FetchDataResponse>(
        'FetchData',
        fetchData_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $2.FetchDataRequest.fromBuffer(value),
        ($2.FetchDataResponse value) => value.writeToBuffer()));
  }

  $async.Future<$2.AddFrameworkResponse> addFramework_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.AddFrameworkRequest> request) async {
    return addFramework(call, await request);
  }

  $async.Future<$2.RemoveFrameworkResponse> removeFramework_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.RemoveFrameworkRequest> request) async {
    return removeFramework(call, await request);
  }

  $async.Future<$2.SearchRegistryResponse> searchRegistry_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.SearchRegistryRequest> request) async {
    return searchRegistry(call, await request);
  }

  $async.Future<$2.RegisterMemberResponse> registerMember_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.RegisterMemberRequest> request) async {
    return registerMember(call, await request);
  }

  $async.Future<$2.UnregisterMemberResponse> unregisterMember_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.UnregisterMemberRequest> request) async {
    return unregisterMember(call, await request);
  }

  $async.Future<$2.GetMembershipStatusResponse> getMembershipStatus_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.GetMembershipStatusRequest> request) async {
    return getMembershipStatus(call, await request);
  }

  $async.Stream<$2.FetchDataResponse> fetchData_Pre($grpc.ServiceCall call,
      $async.Future<$2.FetchDataRequest> request) async* {
    yield* fetchData(call, await request);
  }

  $async.Future<$2.AddFrameworkResponse> addFramework(
      $grpc.ServiceCall call, $2.AddFrameworkRequest request);
  $async.Future<$2.RemoveFrameworkResponse> removeFramework(
      $grpc.ServiceCall call, $2.RemoveFrameworkRequest request);
  $async.Future<$2.SearchRegistryResponse> searchRegistry(
      $grpc.ServiceCall call, $2.SearchRegistryRequest request);
  $async.Future<$2.RegisterMemberResponse> registerMember(
      $grpc.ServiceCall call, $2.RegisterMemberRequest request);
  $async.Future<$2.UnregisterMemberResponse> unregisterMember(
      $grpc.ServiceCall call, $2.UnregisterMemberRequest request);
  $async.Future<$2.GetMembershipStatusResponse> getMembershipStatus(
      $grpc.ServiceCall call, $2.GetMembershipStatusRequest request);
  $async.Stream<$2.FetchDataResponse> fetchData(
      $grpc.ServiceCall call, $2.FetchDataRequest request);
}
