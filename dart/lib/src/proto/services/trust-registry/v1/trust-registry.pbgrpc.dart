///
//  Generated code. Do not modify.
//  source: services/trust-registry/v1/trust-registry.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'trust-registry.pb.dart' as $0;
export 'trust-registry.pb.dart';

class TrustRegistryClient extends $grpc.Client {
  static final _$addFramework =
      $grpc.ClientMethod<$0.AddFrameworkRequest, $0.AddFrameworkResponse>(
          '/services.trustregistry.v1.TrustRegistry/AddFramework',
          ($0.AddFrameworkRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AddFrameworkResponse.fromBuffer(value));
  static final _$removeFramework =
      $grpc.ClientMethod<$0.RemoveFrameworkRequest, $0.RemoveFrameworkResponse>(
          '/services.trustregistry.v1.TrustRegistry/RemoveFramework',
          ($0.RemoveFrameworkRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.RemoveFrameworkResponse.fromBuffer(value));
  static final _$searchRegistry =
      $grpc.ClientMethod<$0.SearchRegistryRequest, $0.SearchRegistryResponse>(
          '/services.trustregistry.v1.TrustRegistry/SearchRegistry',
          ($0.SearchRegistryRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.SearchRegistryResponse.fromBuffer(value));
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
  static final _$getMembershipStatus = $grpc.ClientMethod<
          $0.GetMembershipStatusRequest, $0.GetMembershipStatusResponse>(
      '/services.trustregistry.v1.TrustRegistry/GetMembershipStatus',
      ($0.GetMembershipStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.GetMembershipStatusResponse.fromBuffer(value));
  static final _$fetchData =
      $grpc.ClientMethod<$0.FetchDataRequest, $0.FetchDataResponse>(
          '/services.trustregistry.v1.TrustRegistry/FetchData',
          ($0.FetchDataRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.FetchDataResponse.fromBuffer(value));

  TrustRegistryClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.AddFrameworkResponse> addFramework(
      $0.AddFrameworkRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addFramework, request, options: options);
  }

  $grpc.ResponseFuture<$0.RemoveFrameworkResponse> removeFramework(
      $0.RemoveFrameworkRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeFramework, request, options: options);
  }

  $grpc.ResponseFuture<$0.SearchRegistryResponse> searchRegistry(
      $0.SearchRegistryRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$searchRegistry, request, options: options);
  }

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

  $grpc.ResponseFuture<$0.GetMembershipStatusResponse> getMembershipStatus(
      $0.GetMembershipStatusRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMembershipStatus, request, options: options);
  }

  $grpc.ResponseStream<$0.FetchDataResponse> fetchData(
      $0.FetchDataRequest request,
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
        $grpc.ServiceMethod<$0.AddFrameworkRequest, $0.AddFrameworkResponse>(
            'AddFramework',
            addFramework_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.AddFrameworkRequest.fromBuffer(value),
            ($0.AddFrameworkResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RemoveFrameworkRequest,
            $0.RemoveFrameworkResponse>(
        'RemoveFramework',
        removeFramework_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.RemoveFrameworkRequest.fromBuffer(value),
        ($0.RemoveFrameworkResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SearchRegistryRequest,
            $0.SearchRegistryResponse>(
        'SearchRegistry',
        searchRegistry_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.SearchRegistryRequest.fromBuffer(value),
        ($0.SearchRegistryResponse value) => value.writeToBuffer()));
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
    $addMethod($grpc.ServiceMethod<$0.GetMembershipStatusRequest,
            $0.GetMembershipStatusResponse>(
        'GetMembershipStatus',
        getMembershipStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetMembershipStatusRequest.fromBuffer(value),
        ($0.GetMembershipStatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.FetchDataRequest, $0.FetchDataResponse>(
        'FetchData',
        fetchData_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.FetchDataRequest.fromBuffer(value),
        ($0.FetchDataResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.AddFrameworkResponse> addFramework_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AddFrameworkRequest> request) async {
    return addFramework(call, await request);
  }

  $async.Future<$0.RemoveFrameworkResponse> removeFramework_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.RemoveFrameworkRequest> request) async {
    return removeFramework(call, await request);
  }

  $async.Future<$0.SearchRegistryResponse> searchRegistry_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.SearchRegistryRequest> request) async {
    return searchRegistry(call, await request);
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

  $async.Future<$0.GetMembershipStatusResponse> getMembershipStatus_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetMembershipStatusRequest> request) async {
    return getMembershipStatus(call, await request);
  }

  $async.Stream<$0.FetchDataResponse> fetchData_Pre($grpc.ServiceCall call,
      $async.Future<$0.FetchDataRequest> request) async* {
    yield* fetchData(call, await request);
  }

  $async.Future<$0.AddFrameworkResponse> addFramework(
      $grpc.ServiceCall call, $0.AddFrameworkRequest request);
  $async.Future<$0.RemoveFrameworkResponse> removeFramework(
      $grpc.ServiceCall call, $0.RemoveFrameworkRequest request);
  $async.Future<$0.SearchRegistryResponse> searchRegistry(
      $grpc.ServiceCall call, $0.SearchRegistryRequest request);
  $async.Future<$0.RegisterMemberResponse> registerMember(
      $grpc.ServiceCall call, $0.RegisterMemberRequest request);
  $async.Future<$0.UnregisterMemberResponse> unregisterMember(
      $grpc.ServiceCall call, $0.UnregisterMemberRequest request);
  $async.Future<$0.GetMembershipStatusResponse> getMembershipStatus(
      $grpc.ServiceCall call, $0.GetMembershipStatusRequest request);
  $async.Stream<$0.FetchDataResponse> fetchData(
      $grpc.ServiceCall call, $0.FetchDataRequest request);
}
