//
//  Generated code. Do not modify.
//  source: services/connect/v1/connect.proto
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

import 'connect.pb.dart' as $5;

export 'connect.pb.dart';

@$pb.GrpcServiceName('services.connect.v1.Connect')
class ConnectClient extends $grpc.Client {
  static final _$createSession =
      $grpc.ClientMethod<$5.CreateSessionRequest, $5.CreateSessionResponse>(
          '/services.connect.v1.Connect/CreateSession',
          ($5.CreateSessionRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.CreateSessionResponse.fromBuffer(value));
  static final _$cancelSession =
      $grpc.ClientMethod<$5.CancelSessionRequest, $5.CancelSessionResponse>(
          '/services.connect.v1.Connect/CancelSession',
          ($5.CancelSessionRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.CancelSessionResponse.fromBuffer(value));
  static final _$getSession =
      $grpc.ClientMethod<$5.GetSessionRequest, $5.GetSessionResponse>(
          '/services.connect.v1.Connect/GetSession',
          ($5.GetSessionRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.GetSessionResponse.fromBuffer(value));
  static final _$listSessions =
      $grpc.ClientMethod<$5.ListSessionsRequest, $5.ListSessionsResponse>(
          '/services.connect.v1.Connect/ListSessions',
          ($5.ListSessionsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.ListSessionsResponse.fromBuffer(value));

  ConnectClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$5.CreateSessionResponse> createSession(
      $5.CreateSessionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSession, request, options: options);
  }

  $grpc.ResponseFuture<$5.CancelSessionResponse> cancelSession(
      $5.CancelSessionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$cancelSession, request, options: options);
  }

  $grpc.ResponseFuture<$5.GetSessionResponse> getSession(
      $5.GetSessionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSession, request, options: options);
  }

  $grpc.ResponseFuture<$5.ListSessionsResponse> listSessions(
      $5.ListSessionsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessions, request, options: options);
  }
}

@$pb.GrpcServiceName('services.connect.v1.Connect')
abstract class ConnectServiceBase extends $grpc.Service {
  $core.String get $name => 'services.connect.v1.Connect';

  ConnectServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$5.CreateSessionRequest, $5.CreateSessionResponse>(
            'CreateSession',
            createSession_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $5.CreateSessionRequest.fromBuffer(value),
            ($5.CreateSessionResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$5.CancelSessionRequest, $5.CancelSessionResponse>(
            'CancelSession',
            cancelSession_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $5.CancelSessionRequest.fromBuffer(value),
            ($5.CancelSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.GetSessionRequest, $5.GetSessionResponse>(
        'GetSession',
        getSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.GetSessionRequest.fromBuffer(value),
        ($5.GetSessionResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$5.ListSessionsRequest, $5.ListSessionsResponse>(
            'ListSessions',
            listSessions_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $5.ListSessionsRequest.fromBuffer(value),
            ($5.ListSessionsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$5.CreateSessionResponse> createSession_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.CreateSessionRequest> request) async {
    return createSession(call, await request);
  }

  $async.Future<$5.CancelSessionResponse> cancelSession_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.CancelSessionRequest> request) async {
    return cancelSession(call, await request);
  }

  $async.Future<$5.GetSessionResponse> getSession_Pre($grpc.ServiceCall call,
      $async.Future<$5.GetSessionRequest> request) async {
    return getSession(call, await request);
  }

  $async.Future<$5.ListSessionsResponse> listSessions_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.ListSessionsRequest> request) async {
    return listSessions(call, await request);
  }

  $async.Future<$5.CreateSessionResponse> createSession(
      $grpc.ServiceCall call, $5.CreateSessionRequest request);
  $async.Future<$5.CancelSessionResponse> cancelSession(
      $grpc.ServiceCall call, $5.CancelSessionRequest request);
  $async.Future<$5.GetSessionResponse> getSession(
      $grpc.ServiceCall call, $5.GetSessionRequest request);
  $async.Future<$5.ListSessionsResponse> listSessions(
      $grpc.ServiceCall call, $5.ListSessionsRequest request);
}
