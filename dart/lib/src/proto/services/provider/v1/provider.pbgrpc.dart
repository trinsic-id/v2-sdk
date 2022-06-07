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
  static final _$updateEcosystem =
      $grpc.ClientMethod<$2.UpdateEcosystemRequest, $2.UpdateEcosystemResponse>(
          '/services.provider.v1.Provider/UpdateEcosystem',
          ($2.UpdateEcosystemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.UpdateEcosystemResponse.fromBuffer(value));
  static final _$addWebhook =
      $grpc.ClientMethod<$2.AddWebhookRequest, $2.AddWebhookResponse>(
          '/services.provider.v1.Provider/AddWebhook',
          ($2.AddWebhookRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.AddWebhookResponse.fromBuffer(value));
  static final _$deleteWebhook =
      $grpc.ClientMethod<$2.DeleteWebhookRequest, $2.DeleteWebhookResponse>(
          '/services.provider.v1.Provider/DeleteWebhook',
          ($2.DeleteWebhookRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.DeleteWebhookResponse.fromBuffer(value));
  static final _$ecosystemInfo =
      $grpc.ClientMethod<$2.EcosystemInfoRequest, $2.EcosystemInfoResponse>(
          '/services.provider.v1.Provider/EcosystemInfo',
          ($2.EcosystemInfoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.EcosystemInfoResponse.fromBuffer(value));
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
  static final _$getEventToken =
      $grpc.ClientMethod<$2.GetEventTokenRequest, $2.GetEventTokenResponse>(
          '/services.provider.v1.Provider/GetEventToken',
          ($2.GetEventTokenRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.GetEventTokenResponse.fromBuffer(value));

  ProviderClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$2.CreateEcosystemResponse> createEcosystem(
      $2.CreateEcosystemRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createEcosystem, request, options: options);
  }

  $grpc.ResponseFuture<$2.UpdateEcosystemResponse> updateEcosystem(
      $2.UpdateEcosystemRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateEcosystem, request, options: options);
  }

  $grpc.ResponseFuture<$2.AddWebhookResponse> addWebhook(
      $2.AddWebhookRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addWebhook, request, options: options);
  }

  $grpc.ResponseFuture<$2.DeleteWebhookResponse> deleteWebhook(
      $2.DeleteWebhookRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteWebhook, request, options: options);
  }

  $grpc.ResponseFuture<$2.EcosystemInfoResponse> ecosystemInfo(
      $2.EcosystemInfoRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$ecosystemInfo, request, options: options);
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

  $grpc.ResponseFuture<$2.GetEventTokenResponse> getEventToken(
      $2.GetEventTokenRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getEventToken, request, options: options);
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
    $addMethod($grpc.ServiceMethod<$2.UpdateEcosystemRequest,
            $2.UpdateEcosystemResponse>(
        'UpdateEcosystem',
        updateEcosystem_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.UpdateEcosystemRequest.fromBuffer(value),
        ($2.UpdateEcosystemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.AddWebhookRequest, $2.AddWebhookResponse>(
        'AddWebhook',
        addWebhook_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.AddWebhookRequest.fromBuffer(value),
        ($2.AddWebhookResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.DeleteWebhookRequest, $2.DeleteWebhookResponse>(
            'DeleteWebhook',
            deleteWebhook_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.DeleteWebhookRequest.fromBuffer(value),
            ($2.DeleteWebhookResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.EcosystemInfoRequest, $2.EcosystemInfoResponse>(
            'EcosystemInfo',
            ecosystemInfo_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.EcosystemInfoRequest.fromBuffer(value),
            ($2.EcosystemInfoResponse value) => value.writeToBuffer()));
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
    $addMethod(
        $grpc.ServiceMethod<$2.GetEventTokenRequest, $2.GetEventTokenResponse>(
            'GetEventToken',
            getEventToken_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.GetEventTokenRequest.fromBuffer(value),
            ($2.GetEventTokenResponse value) => value.writeToBuffer()));
  }

  $async.Future<$2.CreateEcosystemResponse> createEcosystem_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.CreateEcosystemRequest> request) async {
    return createEcosystem(call, await request);
  }

  $async.Future<$2.UpdateEcosystemResponse> updateEcosystem_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.UpdateEcosystemRequest> request) async {
    return updateEcosystem(call, await request);
  }

  $async.Future<$2.AddWebhookResponse> addWebhook_Pre($grpc.ServiceCall call,
      $async.Future<$2.AddWebhookRequest> request) async {
    return addWebhook(call, await request);
  }

  $async.Future<$2.DeleteWebhookResponse> deleteWebhook_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.DeleteWebhookRequest> request) async {
    return deleteWebhook(call, await request);
  }

  $async.Future<$2.EcosystemInfoResponse> ecosystemInfo_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.EcosystemInfoRequest> request) async {
    return ecosystemInfo(call, await request);
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

  $async.Future<$2.GetEventTokenResponse> getEventToken_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.GetEventTokenRequest> request) async {
    return getEventToken(call, await request);
  }

  $async.Future<$2.CreateEcosystemResponse> createEcosystem(
      $grpc.ServiceCall call, $2.CreateEcosystemRequest request);
  $async.Future<$2.UpdateEcosystemResponse> updateEcosystem(
      $grpc.ServiceCall call, $2.UpdateEcosystemRequest request);
  $async.Future<$2.AddWebhookResponse> addWebhook(
      $grpc.ServiceCall call, $2.AddWebhookRequest request);
  $async.Future<$2.DeleteWebhookResponse> deleteWebhook(
      $grpc.ServiceCall call, $2.DeleteWebhookRequest request);
  $async.Future<$2.EcosystemInfoResponse> ecosystemInfo(
      $grpc.ServiceCall call, $2.EcosystemInfoRequest request);
  $async.Future<$2.GenerateTokenResponse> generateToken(
      $grpc.ServiceCall call, $2.GenerateTokenRequest request);
  $async.Future<$2.InviteResponse> invite(
      $grpc.ServiceCall call, $2.InviteRequest request);
  $async.Future<$2.InvitationStatusResponse> invitationStatus(
      $grpc.ServiceCall call, $2.InvitationStatusRequest request);
  $async.Future<$2.GetOberonKeyResponse> getOberonKey(
      $grpc.ServiceCall call, $2.GetOberonKeyRequest request);
  $async.Future<$2.GetEventTokenResponse> getEventToken(
      $grpc.ServiceCall call, $2.GetEventTokenRequest request);
}
