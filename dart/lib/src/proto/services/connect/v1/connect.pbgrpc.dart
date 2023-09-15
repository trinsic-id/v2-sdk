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

import 'connect.pb.dart' as $4;

export 'connect.pb.dart';

@$pb.GrpcServiceName('services.connect.v1.Connect')
class ConnectClient extends $grpc.Client {
  static final _$createSession =
      $grpc.ClientMethod<$4.CreateSessionRequest, $4.CreateSessionResponse>(
          '/services.connect.v1.Connect/CreateSession',
          ($4.CreateSessionRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.CreateSessionResponse.fromBuffer(value));
  static final _$cancelSession =
      $grpc.ClientMethod<$4.CancelSessionRequest, $4.CancelSessionResponse>(
          '/services.connect.v1.Connect/CancelSession',
          ($4.CancelSessionRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.CancelSessionResponse.fromBuffer(value));
  static final _$getSession =
      $grpc.ClientMethod<$4.GetSessionRequest, $4.GetSessionResponse>(
          '/services.connect.v1.Connect/GetSession',
          ($4.GetSessionRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.GetSessionResponse.fromBuffer(value));

  ConnectClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$4.CreateSessionResponse> createSession(
      $4.CreateSessionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSession, request, options: options);
  }

  $grpc.ResponseFuture<$4.CancelSessionResponse> cancelSession(
      $4.CancelSessionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$cancelSession, request, options: options);
  }

  $grpc.ResponseFuture<$4.GetSessionResponse> getSession(
      $4.GetSessionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSession, request, options: options);
  }
}

@$pb.GrpcServiceName('services.connect.v1.Connect')
abstract class ConnectServiceBase extends $grpc.Service {
  $core.String get $name => 'services.connect.v1.Connect';

  ConnectServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$4.CreateSessionRequest, $4.CreateSessionResponse>(
            'CreateSession',
            createSession_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $4.CreateSessionRequest.fromBuffer(value),
            ($4.CreateSessionResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$4.CancelSessionRequest, $4.CancelSessionResponse>(
            'CancelSession',
            cancelSession_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $4.CancelSessionRequest.fromBuffer(value),
            ($4.CancelSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.GetSessionRequest, $4.GetSessionResponse>(
        'GetSession',
        getSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.GetSessionRequest.fromBuffer(value),
        ($4.GetSessionResponse value) => value.writeToBuffer()));
  }

  $async.Future<$4.CreateSessionResponse> createSession_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.CreateSessionRequest> request) async {
    return createSession(call, await request);
  }

  $async.Future<$4.CancelSessionResponse> cancelSession_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.CancelSessionRequest> request) async {
    return cancelSession(call, await request);
  }

  $async.Future<$4.GetSessionResponse> getSession_Pre($grpc.ServiceCall call,
      $async.Future<$4.GetSessionRequest> request) async {
    return getSession(call, await request);
  }

  $async.Future<$4.CreateSessionResponse> createSession(
      $grpc.ServiceCall call, $4.CreateSessionRequest request);
  $async.Future<$4.CancelSessionResponse> cancelSession(
      $grpc.ServiceCall call, $4.CancelSessionRequest request);
  $async.Future<$4.GetSessionResponse> getSession(
      $grpc.ServiceCall call, $4.GetSessionRequest request);
}
