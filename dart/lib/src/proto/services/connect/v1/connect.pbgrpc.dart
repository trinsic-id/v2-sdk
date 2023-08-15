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

import 'connect.pb.dart' as $7;

export 'connect.pb.dart';

@$pb.GrpcServiceName('services.connect.v1.Connect')
class ConnectClient extends $grpc.Client {
  static final _$createSession =
      $grpc.ClientMethod<$7.CreateSessionRequest, $7.CreateSessionResponse>(
          '/services.connect.v1.Connect/CreateSession',
          ($7.CreateSessionRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $7.CreateSessionResponse.fromBuffer(value));
  static final _$cancelSession =
      $grpc.ClientMethod<$7.CancelSessionRequest, $7.CancelSessionResponse>(
          '/services.connect.v1.Connect/CancelSession',
          ($7.CancelSessionRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $7.CancelSessionResponse.fromBuffer(value));
  static final _$getSession =
      $grpc.ClientMethod<$7.GetSessionRequest, $7.GetSessionResponse>(
          '/services.connect.v1.Connect/GetSession',
          ($7.GetSessionRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $7.GetSessionResponse.fromBuffer(value));

  ConnectClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$7.CreateSessionResponse> createSession(
      $7.CreateSessionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSession, request, options: options);
  }

  $grpc.ResponseFuture<$7.CancelSessionResponse> cancelSession(
      $7.CancelSessionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$cancelSession, request, options: options);
  }

  $grpc.ResponseFuture<$7.GetSessionResponse> getSession(
      $7.GetSessionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSession, request, options: options);
  }
}

@$pb.GrpcServiceName('services.connect.v1.Connect')
abstract class ConnectServiceBase extends $grpc.Service {
  $core.String get $name => 'services.connect.v1.Connect';

  ConnectServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$7.CreateSessionRequest, $7.CreateSessionResponse>(
            'CreateSession',
            createSession_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $7.CreateSessionRequest.fromBuffer(value),
            ($7.CreateSessionResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$7.CancelSessionRequest, $7.CancelSessionResponse>(
            'CancelSession',
            cancelSession_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $7.CancelSessionRequest.fromBuffer(value),
            ($7.CancelSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.GetSessionRequest, $7.GetSessionResponse>(
        'GetSession',
        getSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.GetSessionRequest.fromBuffer(value),
        ($7.GetSessionResponse value) => value.writeToBuffer()));
  }

  $async.Future<$7.CreateSessionResponse> createSession_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.CreateSessionRequest> request) async {
    return createSession(call, await request);
  }

  $async.Future<$7.CancelSessionResponse> cancelSession_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.CancelSessionRequest> request) async {
    return cancelSession(call, await request);
  }

  $async.Future<$7.GetSessionResponse> getSession_Pre($grpc.ServiceCall call,
      $async.Future<$7.GetSessionRequest> request) async {
    return getSession(call, await request);
  }

  $async.Future<$7.CreateSessionResponse> createSession(
      $grpc.ServiceCall call, $7.CreateSessionRequest request);
  $async.Future<$7.CancelSessionResponse> cancelSession(
      $grpc.ServiceCall call, $7.CancelSessionRequest request);
  $async.Future<$7.GetSessionResponse> getSession(
      $grpc.ServiceCall call, $7.GetSessionRequest request);
}
