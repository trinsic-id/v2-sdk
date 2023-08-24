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

import 'connect.pb.dart' as $3;

export 'connect.pb.dart';

@$pb.GrpcServiceName('services.connect.v1.Connect')
class ConnectClient extends $grpc.Client {
  static final _$createSession =
      $grpc.ClientMethod<$3.CreateSessionRequest, $3.CreateSessionResponse2>(
          '/services.connect.v1.Connect/CreateSession',
          ($3.CreateSessionRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.CreateSessionResponse2.fromBuffer(value));
  static final _$cancelSession =
      $grpc.ClientMethod<$3.CancelSessionRequest, $3.CancelSessionResponse>(
          '/services.connect.v1.Connect/CancelSession',
          ($3.CancelSessionRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.CancelSessionResponse.fromBuffer(value));
  static final _$getSession =
      $grpc.ClientMethod<$3.GetSessionRequest, $3.GetSessionResponse>(
          '/services.connect.v1.Connect/GetSession',
          ($3.GetSessionRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.GetSessionResponse.fromBuffer(value));

  ConnectClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$3.CreateSessionResponse2> createSession(
      $3.CreateSessionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSession, request, options: options);
  }

  $grpc.ResponseFuture<$3.CancelSessionResponse> cancelSession(
      $3.CancelSessionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$cancelSession, request, options: options);
  }

  $grpc.ResponseFuture<$3.GetSessionResponse> getSession(
      $3.GetSessionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSession, request, options: options);
  }
}

@$pb.GrpcServiceName('services.connect.v1.Connect')
abstract class ConnectServiceBase extends $grpc.Service {
  $core.String get $name => 'services.connect.v1.Connect';

  ConnectServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$3.CreateSessionRequest, $3.CreateSessionResponse2>(
            'CreateSession',
            createSession_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $3.CreateSessionRequest.fromBuffer(value),
            ($3.CreateSessionResponse2 value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$3.CancelSessionRequest, $3.CancelSessionResponse>(
            'CancelSession',
            cancelSession_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $3.CancelSessionRequest.fromBuffer(value),
            ($3.CancelSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.GetSessionRequest, $3.GetSessionResponse>(
        'GetSession',
        getSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.GetSessionRequest.fromBuffer(value),
        ($3.GetSessionResponse value) => value.writeToBuffer()));
  }

  $async.Future<$3.CreateSessionResponse2> createSession_Pre(
      $grpc.ServiceCall call,
      $async.Future<$3.CreateSessionRequest> request) async {
    return createSession(call, await request);
  }

  $async.Future<$3.CancelSessionResponse> cancelSession_Pre(
      $grpc.ServiceCall call,
      $async.Future<$3.CancelSessionRequest> request) async {
    return cancelSession(call, await request);
  }

  $async.Future<$3.GetSessionResponse> getSession_Pre($grpc.ServiceCall call,
      $async.Future<$3.GetSessionRequest> request) async {
    return getSession(call, await request);
  }

  $async.Future<$3.CreateSessionResponse2> createSession(
      $grpc.ServiceCall call, $3.CreateSessionRequest request);
  $async.Future<$3.CancelSessionResponse> cancelSession(
      $grpc.ServiceCall call, $3.CancelSessionRequest request);
  $async.Future<$3.GetSessionResponse> getSession(
      $grpc.ServiceCall call, $3.GetSessionRequest request);
}
