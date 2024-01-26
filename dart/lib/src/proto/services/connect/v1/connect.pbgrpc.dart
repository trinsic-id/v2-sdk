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

import 'connect.pb.dart' as $2;

export 'connect.pb.dart';

@$pb.GrpcServiceName('services.connect.v1.Connect')
class ConnectClient extends $grpc.Client {
  static final _$createSession =
      $grpc.ClientMethod<$2.CreateSessionRequest, $2.CreateSessionResponse>(
          '/services.connect.v1.Connect/CreateSession',
          ($2.CreateSessionRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.CreateSessionResponse.fromBuffer(value));
  static final _$cancelSession =
      $grpc.ClientMethod<$2.CancelSessionRequest, $2.CancelSessionResponse>(
          '/services.connect.v1.Connect/CancelSession',
          ($2.CancelSessionRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.CancelSessionResponse.fromBuffer(value));
  static final _$getSession =
      $grpc.ClientMethod<$2.GetSessionRequest, $2.GetSessionResponse>(
          '/services.connect.v1.Connect/GetSession',
          ($2.GetSessionRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.GetSessionResponse.fromBuffer(value));
  static final _$listSessions =
      $grpc.ClientMethod<$2.ListSessionsRequest, $2.ListSessionsResponse>(
          '/services.connect.v1.Connect/ListSessions',
          ($2.ListSessionsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.ListSessionsResponse.fromBuffer(value));
  static final _$hasValidCredential = $grpc.ClientMethod<
          $2.HasValidCredentialRequest, $2.HasValidCredentialResponse>(
      '/services.connect.v1.Connect/HasValidCredential',
      ($2.HasValidCredentialRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.HasValidCredentialResponse.fromBuffer(value));

  ConnectClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$2.CreateSessionResponse> createSession(
      $2.CreateSessionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSession, request, options: options);
  }

  $grpc.ResponseFuture<$2.CancelSessionResponse> cancelSession(
      $2.CancelSessionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$cancelSession, request, options: options);
  }

  $grpc.ResponseFuture<$2.GetSessionResponse> getSession(
      $2.GetSessionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSession, request, options: options);
  }

  $grpc.ResponseFuture<$2.ListSessionsResponse> listSessions(
      $2.ListSessionsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSessions, request, options: options);
  }

  $grpc.ResponseFuture<$2.HasValidCredentialResponse> hasValidCredential(
      $2.HasValidCredentialRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$hasValidCredential, request, options: options);
  }
}

@$pb.GrpcServiceName('services.connect.v1.Connect')
abstract class ConnectServiceBase extends $grpc.Service {
  $core.String get $name => 'services.connect.v1.Connect';

  ConnectServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$2.CreateSessionRequest, $2.CreateSessionResponse>(
            'CreateSession',
            createSession_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.CreateSessionRequest.fromBuffer(value),
            ($2.CreateSessionResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.CancelSessionRequest, $2.CancelSessionResponse>(
            'CancelSession',
            cancelSession_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.CancelSessionRequest.fromBuffer(value),
            ($2.CancelSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.GetSessionRequest, $2.GetSessionResponse>(
        'GetSession',
        getSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.GetSessionRequest.fromBuffer(value),
        ($2.GetSessionResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.ListSessionsRequest, $2.ListSessionsResponse>(
            'ListSessions',
            listSessions_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.ListSessionsRequest.fromBuffer(value),
            ($2.ListSessionsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.HasValidCredentialRequest,
            $2.HasValidCredentialResponse>(
        'HasValidCredential',
        hasValidCredential_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.HasValidCredentialRequest.fromBuffer(value),
        ($2.HasValidCredentialResponse value) => value.writeToBuffer()));
  }

  $async.Future<$2.CreateSessionResponse> createSession_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.CreateSessionRequest> request) async {
    return createSession(call, await request);
  }

  $async.Future<$2.CancelSessionResponse> cancelSession_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.CancelSessionRequest> request) async {
    return cancelSession(call, await request);
  }

  $async.Future<$2.GetSessionResponse> getSession_Pre($grpc.ServiceCall call,
      $async.Future<$2.GetSessionRequest> request) async {
    return getSession(call, await request);
  }

  $async.Future<$2.ListSessionsResponse> listSessions_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.ListSessionsRequest> request) async {
    return listSessions(call, await request);
  }

  $async.Future<$2.HasValidCredentialResponse> hasValidCredential_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.HasValidCredentialRequest> request) async {
    return hasValidCredential(call, await request);
  }

  $async.Future<$2.CreateSessionResponse> createSession(
      $grpc.ServiceCall call, $2.CreateSessionRequest request);
  $async.Future<$2.CancelSessionResponse> cancelSession(
      $grpc.ServiceCall call, $2.CancelSessionRequest request);
  $async.Future<$2.GetSessionResponse> getSession(
      $grpc.ServiceCall call, $2.GetSessionRequest request);
  $async.Future<$2.ListSessionsResponse> listSessions(
      $grpc.ServiceCall call, $2.ListSessionsRequest request);
  $async.Future<$2.HasValidCredentialResponse> hasValidCredential(
      $grpc.ServiceCall call, $2.HasValidCredentialRequest request);
}
