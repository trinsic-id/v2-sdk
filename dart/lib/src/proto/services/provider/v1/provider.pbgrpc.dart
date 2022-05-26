///
//  Generated code. Do not modify.
//  source: services/provider/v1/provider.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'provider.pb.dart' as $2;
export 'provider.pb.dart';

class ProviderClient extends $grpc.Client {
  static final _$createEcosystem =
      $grpc.ClientMethod<$2.CreateEcosystemRequest, $2.CreateEcosystemResponse>(
          '/services.provider.v1.Provider/CreateEcosystem',
          ($2.CreateEcosystemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.CreateEcosystemResponse.fromBuffer(value));
  static final _$generateToken =
      $grpc.ClientMethod<$2.GenerateTokenRequest, $2.GenerateTokenResponse>(
          '/services.provider.v1.Provider/GenerateToken',
          ($2.GenerateTokenRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.GenerateTokenResponse.fromBuffer(value));
  static final _$invite =
      $grpc.ClientMethod<$2.InviteRequest, $2.InviteResponse>(
          '/services.provider.v1.Provider/Invite',
          ($2.InviteRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.InviteResponse.fromBuffer(value));
  static final _$invitationStatus = $grpc.ClientMethod<
          $2.InvitationStatusRequest, $2.InvitationStatusResponse>(
      '/services.provider.v1.Provider/InvitationStatus',
      ($2.InvitationStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.InvitationStatusResponse.fromBuffer(value));
  static final _$getOberonKey =
      $grpc.ClientMethod<$2.GetOberonKeyRequest, $2.GetOberonKeyResponse>(
          '/services.provider.v1.Provider/GetOberonKey',
          ($2.GetOberonKeyRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.GetOberonKeyResponse.fromBuffer(value));

  ProviderClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$2.CreateEcosystemResponse> createEcosystem(
      $2.CreateEcosystemRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createEcosystem, request, options: options);
  }

  $grpc.ResponseFuture<$2.GenerateTokenResponse> generateToken(
      $2.GenerateTokenRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$generateToken, request, options: options);
  }

  $grpc.ResponseFuture<$2.InviteResponse> invite($2.InviteRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$invite, request, options: options);
  }

  $grpc.ResponseFuture<$2.InvitationStatusResponse> invitationStatus(
      $2.InvitationStatusRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$invitationStatus, request, options: options);
  }

  $grpc.ResponseFuture<$2.GetOberonKeyResponse> getOberonKey(
      $2.GetOberonKeyRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOberonKey, request, options: options);
  }
}

abstract class ProviderServiceBase extends $grpc.Service {
  $core.String get $name => 'services.provider.v1.Provider';

  ProviderServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.CreateEcosystemRequest,
            $2.CreateEcosystemResponse>(
        'CreateEcosystem',
        createEcosystem_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.CreateEcosystemRequest.fromBuffer(value),
        ($2.CreateEcosystemResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.GenerateTokenRequest, $2.GenerateTokenResponse>(
            'GenerateToken',
            generateToken_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.GenerateTokenRequest.fromBuffer(value),
            ($2.GenerateTokenResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.InviteRequest, $2.InviteResponse>(
        'Invite',
        invite_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.InviteRequest.fromBuffer(value),
        ($2.InviteResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.InvitationStatusRequest,
            $2.InvitationStatusResponse>(
        'InvitationStatus',
        invitationStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.InvitationStatusRequest.fromBuffer(value),
        ($2.InvitationStatusResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.GetOberonKeyRequest, $2.GetOberonKeyResponse>(
            'GetOberonKey',
            getOberonKey_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.GetOberonKeyRequest.fromBuffer(value),
            ($2.GetOberonKeyResponse value) => value.writeToBuffer()));
  }

  $async.Future<$2.CreateEcosystemResponse> createEcosystem_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.CreateEcosystemRequest> request) async {
    return createEcosystem(call, await request);
  }

  $async.Future<$2.GenerateTokenResponse> generateToken_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.GenerateTokenRequest> request) async {
    return generateToken(call, await request);
  }

  $async.Future<$2.InviteResponse> invite_Pre(
      $grpc.ServiceCall call, $async.Future<$2.InviteRequest> request) async {
    return invite(call, await request);
  }

  $async.Future<$2.InvitationStatusResponse> invitationStatus_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.InvitationStatusRequest> request) async {
    return invitationStatus(call, await request);
  }

  $async.Future<$2.GetOberonKeyResponse> getOberonKey_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.GetOberonKeyRequest> request) async {
    return getOberonKey(call, await request);
  }

  $async.Future<$2.CreateEcosystemResponse> createEcosystem(
      $grpc.ServiceCall call, $2.CreateEcosystemRequest request);
  $async.Future<$2.GenerateTokenResponse> generateToken(
      $grpc.ServiceCall call, $2.GenerateTokenRequest request);
  $async.Future<$2.InviteResponse> invite(
      $grpc.ServiceCall call, $2.InviteRequest request);
  $async.Future<$2.InvitationStatusResponse> invitationStatus(
      $grpc.ServiceCall call, $2.InvitationStatusRequest request);
  $async.Future<$2.GetOberonKeyResponse> getOberonKey(
      $grpc.ServiceCall call, $2.GetOberonKeyRequest request);
}
