///
//  Generated code. Do not modify.
//  source: services/provider/v1/provider.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'provider.pb.dart' as $5;
export 'provider.pb.dart';

class ProviderClient extends $grpc.Client {
  static final _$createEcosystem =
      $grpc.ClientMethod<$5.CreateEcosystemRequest, $5.CreateEcosystemResponse>(
          '/services.provider.v1.Provider/CreateEcosystem',
          ($5.CreateEcosystemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.CreateEcosystemResponse.fromBuffer(value));
  static final _$updateEcosystem =
      $grpc.ClientMethod<$5.UpdateEcosystemRequest, $5.UpdateEcosystemResponse>(
          '/services.provider.v1.Provider/UpdateEcosystem',
          ($5.UpdateEcosystemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.UpdateEcosystemResponse.fromBuffer(value));
  static final _$addWebhook =
      $grpc.ClientMethod<$5.AddWebhookRequest, $5.AddWebhookResponse>(
          '/services.provider.v1.Provider/AddWebhook',
          ($5.AddWebhookRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.AddWebhookResponse.fromBuffer(value));
  static final _$deleteWebhook =
      $grpc.ClientMethod<$5.DeleteWebhookRequest, $5.DeleteWebhookResponse>(
          '/services.provider.v1.Provider/DeleteWebhook',
          ($5.DeleteWebhookRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.DeleteWebhookResponse.fromBuffer(value));
  static final _$ecosystemInfo =
      $grpc.ClientMethod<$5.EcosystemInfoRequest, $5.EcosystemInfoResponse>(
          '/services.provider.v1.Provider/EcosystemInfo',
          ($5.EcosystemInfoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.EcosystemInfoResponse.fromBuffer(value));
  static final _$generateToken =
      $grpc.ClientMethod<$5.GenerateTokenRequest, $5.GenerateTokenResponse>(
          '/services.provider.v1.Provider/GenerateToken',
          ($5.GenerateTokenRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.GenerateTokenResponse.fromBuffer(value));
  static final _$invite =
      $grpc.ClientMethod<$5.InviteRequest, $5.InviteResponse>(
          '/services.provider.v1.Provider/Invite',
          ($5.InviteRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $5.InviteResponse.fromBuffer(value));
  static final _$invitationStatus = $grpc.ClientMethod<
          $5.InvitationStatusRequest, $5.InvitationStatusResponse>(
      '/services.provider.v1.Provider/InvitationStatus',
      ($5.InvitationStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.InvitationStatusResponse.fromBuffer(value));
  static final _$getOberonKey =
      $grpc.ClientMethod<$5.GetOberonKeyRequest, $5.GetOberonKeyResponse>(
          '/services.provider.v1.Provider/GetOberonKey',
          ($5.GetOberonKeyRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.GetOberonKeyResponse.fromBuffer(value));
  static final _$getEventToken =
      $grpc.ClientMethod<$5.GetEventTokenRequest, $5.GetEventTokenResponse>(
          '/services.provider.v1.Provider/GetEventToken',
          ($5.GetEventTokenRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.GetEventTokenResponse.fromBuffer(value));

  ProviderClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$5.CreateEcosystemResponse> createEcosystem(
      $5.CreateEcosystemRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createEcosystem, request, options: options);
  }

  $grpc.ResponseFuture<$5.UpdateEcosystemResponse> updateEcosystem(
      $5.UpdateEcosystemRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateEcosystem, request, options: options);
  }

  $grpc.ResponseFuture<$5.AddWebhookResponse> addWebhook(
      $5.AddWebhookRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addWebhook, request, options: options);
  }

  $grpc.ResponseFuture<$5.DeleteWebhookResponse> deleteWebhook(
      $5.DeleteWebhookRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteWebhook, request, options: options);
  }

  $grpc.ResponseFuture<$5.EcosystemInfoResponse> ecosystemInfo(
      $5.EcosystemInfoRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$ecosystemInfo, request, options: options);
  }

  $grpc.ResponseFuture<$5.GenerateTokenResponse> generateToken(
      $5.GenerateTokenRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$generateToken, request, options: options);
  }

  $grpc.ResponseFuture<$5.InviteResponse> invite($5.InviteRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$invite, request, options: options);
  }

  $grpc.ResponseFuture<$5.InvitationStatusResponse> invitationStatus(
      $5.InvitationStatusRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$invitationStatus, request, options: options);
  }

  $grpc.ResponseFuture<$5.GetOberonKeyResponse> getOberonKey(
      $5.GetOberonKeyRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOberonKey, request, options: options);
  }

  $grpc.ResponseFuture<$5.GetEventTokenResponse> getEventToken(
      $5.GetEventTokenRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getEventToken, request, options: options);
  }
}

abstract class ProviderServiceBase extends $grpc.Service {
  $core.String get $name => 'services.provider.v1.Provider';

  ProviderServiceBase() {
    $addMethod($grpc.ServiceMethod<$5.CreateEcosystemRequest,
            $5.CreateEcosystemResponse>(
        'CreateEcosystem',
        createEcosystem_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.CreateEcosystemRequest.fromBuffer(value),
        ($5.CreateEcosystemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UpdateEcosystemRequest,
            $5.UpdateEcosystemResponse>(
        'UpdateEcosystem',
        updateEcosystem_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.UpdateEcosystemRequest.fromBuffer(value),
        ($5.UpdateEcosystemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.AddWebhookRequest, $5.AddWebhookResponse>(
        'AddWebhook',
        addWebhook_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.AddWebhookRequest.fromBuffer(value),
        ($5.AddWebhookResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$5.DeleteWebhookRequest, $5.DeleteWebhookResponse>(
            'DeleteWebhook',
            deleteWebhook_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $5.DeleteWebhookRequest.fromBuffer(value),
            ($5.DeleteWebhookResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$5.EcosystemInfoRequest, $5.EcosystemInfoResponse>(
            'EcosystemInfo',
            ecosystemInfo_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $5.EcosystemInfoRequest.fromBuffer(value),
            ($5.EcosystemInfoResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$5.GenerateTokenRequest, $5.GenerateTokenResponse>(
            'GenerateToken',
            generateToken_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $5.GenerateTokenRequest.fromBuffer(value),
            ($5.GenerateTokenResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.InviteRequest, $5.InviteResponse>(
        'Invite',
        invite_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.InviteRequest.fromBuffer(value),
        ($5.InviteResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.InvitationStatusRequest,
            $5.InvitationStatusResponse>(
        'InvitationStatus',
        invitationStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.InvitationStatusRequest.fromBuffer(value),
        ($5.InvitationStatusResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$5.GetOberonKeyRequest, $5.GetOberonKeyResponse>(
            'GetOberonKey',
            getOberonKey_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $5.GetOberonKeyRequest.fromBuffer(value),
            ($5.GetOberonKeyResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$5.GetEventTokenRequest, $5.GetEventTokenResponse>(
            'GetEventToken',
            getEventToken_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $5.GetEventTokenRequest.fromBuffer(value),
            ($5.GetEventTokenResponse value) => value.writeToBuffer()));
  }

  $async.Future<$5.CreateEcosystemResponse> createEcosystem_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.CreateEcosystemRequest> request) async {
    return createEcosystem(call, await request);
  }

  $async.Future<$5.UpdateEcosystemResponse> updateEcosystem_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.UpdateEcosystemRequest> request) async {
    return updateEcosystem(call, await request);
  }

  $async.Future<$5.AddWebhookResponse> addWebhook_Pre($grpc.ServiceCall call,
      $async.Future<$5.AddWebhookRequest> request) async {
    return addWebhook(call, await request);
  }

  $async.Future<$5.DeleteWebhookResponse> deleteWebhook_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.DeleteWebhookRequest> request) async {
    return deleteWebhook(call, await request);
  }

  $async.Future<$5.EcosystemInfoResponse> ecosystemInfo_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.EcosystemInfoRequest> request) async {
    return ecosystemInfo(call, await request);
  }

  $async.Future<$5.GenerateTokenResponse> generateToken_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.GenerateTokenRequest> request) async {
    return generateToken(call, await request);
  }

  $async.Future<$5.InviteResponse> invite_Pre(
      $grpc.ServiceCall call, $async.Future<$5.InviteRequest> request) async {
    return invite(call, await request);
  }

  $async.Future<$5.InvitationStatusResponse> invitationStatus_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.InvitationStatusRequest> request) async {
    return invitationStatus(call, await request);
  }

  $async.Future<$5.GetOberonKeyResponse> getOberonKey_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.GetOberonKeyRequest> request) async {
    return getOberonKey(call, await request);
  }

  $async.Future<$5.GetEventTokenResponse> getEventToken_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.GetEventTokenRequest> request) async {
    return getEventToken(call, await request);
  }

  $async.Future<$5.CreateEcosystemResponse> createEcosystem(
      $grpc.ServiceCall call, $5.CreateEcosystemRequest request);
  $async.Future<$5.UpdateEcosystemResponse> updateEcosystem(
      $grpc.ServiceCall call, $5.UpdateEcosystemRequest request);
  $async.Future<$5.AddWebhookResponse> addWebhook(
      $grpc.ServiceCall call, $5.AddWebhookRequest request);
  $async.Future<$5.DeleteWebhookResponse> deleteWebhook(
      $grpc.ServiceCall call, $5.DeleteWebhookRequest request);
  $async.Future<$5.EcosystemInfoResponse> ecosystemInfo(
      $grpc.ServiceCall call, $5.EcosystemInfoRequest request);
  $async.Future<$5.GenerateTokenResponse> generateToken(
      $grpc.ServiceCall call, $5.GenerateTokenRequest request);
  $async.Future<$5.InviteResponse> invite(
      $grpc.ServiceCall call, $5.InviteRequest request);
  $async.Future<$5.InvitationStatusResponse> invitationStatus(
      $grpc.ServiceCall call, $5.InvitationStatusRequest request);
  $async.Future<$5.GetOberonKeyResponse> getOberonKey(
      $grpc.ServiceCall call, $5.GetOberonKeyRequest request);
  $async.Future<$5.GetEventTokenResponse> getEventToken(
      $grpc.ServiceCall call, $5.GetEventTokenRequest request);
}
