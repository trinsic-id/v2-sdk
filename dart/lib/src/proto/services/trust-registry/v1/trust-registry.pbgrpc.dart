///
//  Generated code. Do not modify.
//  source: services/trust-registry/v1/trust-registry.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'trust-registry.pb.dart' as $6;
export 'trust-registry.pb.dart';

class TrustRegistryClient extends $grpc.Client {
  static final _$addFramework =
      $grpc.ClientMethod<$6.AddFrameworkRequest, $6.AddFrameworkResponse>(
          '/services.trustregistry.v1.TrustRegistry/AddFramework',
          ($6.AddFrameworkRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $6.AddFrameworkResponse.fromBuffer(value));
  static final _$removeFramework =
      $grpc.ClientMethod<$6.RemoveFrameworkRequest, $6.RemoveFrameworkResponse>(
          '/services.trustregistry.v1.TrustRegistry/RemoveFramework',
          ($6.RemoveFrameworkRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $6.RemoveFrameworkResponse.fromBuffer(value));
  static final _$searchRegistry =
      $grpc.ClientMethod<$6.SearchRegistryRequest, $6.SearchRegistryResponse>(
          '/services.trustregistry.v1.TrustRegistry/SearchRegistry',
          ($6.SearchRegistryRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $6.SearchRegistryResponse.fromBuffer(value));
  static final _$registerMember =
      $grpc.ClientMethod<$6.RegisterMemberRequest, $6.RegisterMemberResponse>(
          '/services.trustregistry.v1.TrustRegistry/RegisterMember',
          ($6.RegisterMemberRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $6.RegisterMemberResponse.fromBuffer(value));
  static final _$unregisterMember = $grpc.ClientMethod<
          $6.UnregisterMemberRequest, $6.UnregisterMemberResponse>(
      '/services.trustregistry.v1.TrustRegistry/UnregisterMember',
      ($6.UnregisterMemberRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.UnregisterMemberResponse.fromBuffer(value));
  static final _$getMembershipStatus = $grpc.ClientMethod<
          $6.GetMembershipStatusRequest, $6.GetMembershipStatusResponse>(
      '/services.trustregistry.v1.TrustRegistry/GetMembershipStatus',
      ($6.GetMembershipStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.GetMembershipStatusResponse.fromBuffer(value));
  static final _$fetchData =
      $grpc.ClientMethod<$6.FetchDataRequest, $6.FetchDataResponse>(
          '/services.trustregistry.v1.TrustRegistry/FetchData',
          ($6.FetchDataRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $6.FetchDataResponse.fromBuffer(value));

  TrustRegistryClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$6.AddFrameworkResponse> addFramework(
      $6.AddFrameworkRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addFramework, request, options: options);
  }

  $grpc.ResponseFuture<$6.RemoveFrameworkResponse> removeFramework(
      $6.RemoveFrameworkRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeFramework, request, options: options);
  }

  $grpc.ResponseFuture<$6.SearchRegistryResponse> searchRegistry(
      $6.SearchRegistryRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$searchRegistry, request, options: options);
  }

  $grpc.ResponseFuture<$6.RegisterMemberResponse> registerMember(
      $6.RegisterMemberRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$registerMember, request, options: options);
  }

  $grpc.ResponseFuture<$6.UnregisterMemberResponse> unregisterMember(
      $6.UnregisterMemberRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unregisterMember, request, options: options);
  }

  $grpc.ResponseFuture<$6.GetMembershipStatusResponse> getMembershipStatus(
      $6.GetMembershipStatusRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMembershipStatus, request, options: options);
  }

  $grpc.ResponseStream<$6.FetchDataResponse> fetchData(
      $6.FetchDataRequest request,
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
        $grpc.ServiceMethod<$6.AddFrameworkRequest, $6.AddFrameworkResponse>(
            'AddFramework',
            addFramework_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $6.AddFrameworkRequest.fromBuffer(value),
            ($6.AddFrameworkResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.RemoveFrameworkRequest,
            $6.RemoveFrameworkResponse>(
        'RemoveFramework',
        removeFramework_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.RemoveFrameworkRequest.fromBuffer(value),
        ($6.RemoveFrameworkResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.SearchRegistryRequest,
            $6.SearchRegistryResponse>(
        'SearchRegistry',
        searchRegistry_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.SearchRegistryRequest.fromBuffer(value),
        ($6.SearchRegistryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.RegisterMemberRequest,
            $6.RegisterMemberResponse>(
        'RegisterMember',
        registerMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.RegisterMemberRequest.fromBuffer(value),
        ($6.RegisterMemberResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.UnregisterMemberRequest,
            $6.UnregisterMemberResponse>(
        'UnregisterMember',
        unregisterMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.UnregisterMemberRequest.fromBuffer(value),
        ($6.UnregisterMemberResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.GetMembershipStatusRequest,
            $6.GetMembershipStatusResponse>(
        'GetMembershipStatus',
        getMembershipStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.GetMembershipStatusRequest.fromBuffer(value),
        ($6.GetMembershipStatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.FetchDataRequest, $6.FetchDataResponse>(
        'FetchData',
        fetchData_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $6.FetchDataRequest.fromBuffer(value),
        ($6.FetchDataResponse value) => value.writeToBuffer()));
  }

  $async.Future<$6.AddFrameworkResponse> addFramework_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.AddFrameworkRequest> request) async {
    return addFramework(call, await request);
  }

  $async.Future<$6.RemoveFrameworkResponse> removeFramework_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.RemoveFrameworkRequest> request) async {
    return removeFramework(call, await request);
  }

  $async.Future<$6.SearchRegistryResponse> searchRegistry_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.SearchRegistryRequest> request) async {
    return searchRegistry(call, await request);
  }

  $async.Future<$6.RegisterMemberResponse> registerMember_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.RegisterMemberRequest> request) async {
    return registerMember(call, await request);
  }

  $async.Future<$6.UnregisterMemberResponse> unregisterMember_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.UnregisterMemberRequest> request) async {
    return unregisterMember(call, await request);
  }

  $async.Future<$6.GetMembershipStatusResponse> getMembershipStatus_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.GetMembershipStatusRequest> request) async {
    return getMembershipStatus(call, await request);
  }

  $async.Stream<$6.FetchDataResponse> fetchData_Pre($grpc.ServiceCall call,
      $async.Future<$6.FetchDataRequest> request) async* {
    yield* fetchData(call, await request);
  }

  $async.Future<$6.AddFrameworkResponse> addFramework(
      $grpc.ServiceCall call, $6.AddFrameworkRequest request);
  $async.Future<$6.RemoveFrameworkResponse> removeFramework(
      $grpc.ServiceCall call, $6.RemoveFrameworkRequest request);
  $async.Future<$6.SearchRegistryResponse> searchRegistry(
      $grpc.ServiceCall call, $6.SearchRegistryRequest request);
  $async.Future<$6.RegisterMemberResponse> registerMember(
      $grpc.ServiceCall call, $6.RegisterMemberRequest request);
  $async.Future<$6.UnregisterMemberResponse> unregisterMember(
      $grpc.ServiceCall call, $6.UnregisterMemberRequest request);
  $async.Future<$6.GetMembershipStatusResponse> getMembershipStatus(
      $grpc.ServiceCall call, $6.GetMembershipStatusRequest request);
  $async.Stream<$6.FetchDataResponse> fetchData(
      $grpc.ServiceCall call, $6.FetchDataRequest request);
}
