///
//  Generated code. Do not modify.
//  source: services/provider/v1/provider.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'provider.pb.dart' as $4;
export 'provider.pb.dart';

class ProviderClient extends $grpc.Client {
  static final _$createEcosystem =
      $grpc.ClientMethod<$4.CreateEcosystemRequest, $4.CreateEcosystemResponse>(
          '/services.provider.v1.Provider/CreateEcosystem',
          ($4.CreateEcosystemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.CreateEcosystemResponse.fromBuffer(value));
  static final _$updateEcosystem =
      $grpc.ClientMethod<$4.UpdateEcosystemRequest, $4.UpdateEcosystemResponse>(
          '/services.provider.v1.Provider/UpdateEcosystem',
          ($4.UpdateEcosystemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.UpdateEcosystemResponse.fromBuffer(value));
  static final _$grantAuthorization = $grpc.ClientMethod<
          $4.GrantAuthorizationRequest, $4.GrantAuthorizationResponse>(
      '/services.provider.v1.Provider/GrantAuthorization',
      ($4.GrantAuthorizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $4.GrantAuthorizationResponse.fromBuffer(value));
  static final _$revokeAuthorization = $grpc.ClientMethod<
          $4.RevokeAuthorizationRequest, $4.RevokeAuthorizationResponse>(
      '/services.provider.v1.Provider/RevokeAuthorization',
      ($4.RevokeAuthorizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $4.RevokeAuthorizationResponse.fromBuffer(value));
  static final _$getAuthorizations = $grpc.ClientMethod<
          $4.GetAuthorizationsRequest, $4.GetAuthorizationsResponse>(
      '/services.provider.v1.Provider/GetAuthorizations',
      ($4.GetAuthorizationsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $4.GetAuthorizationsResponse.fromBuffer(value));
  static final _$addWebhook =
      $grpc.ClientMethod<$4.AddWebhookRequest, $4.AddWebhookResponse>(
          '/services.provider.v1.Provider/AddWebhook',
          ($4.AddWebhookRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.AddWebhookResponse.fromBuffer(value));
  static final _$deleteWebhook =
      $grpc.ClientMethod<$4.DeleteWebhookRequest, $4.DeleteWebhookResponse>(
          '/services.provider.v1.Provider/DeleteWebhook',
          ($4.DeleteWebhookRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.DeleteWebhookResponse.fromBuffer(value));
  static final _$ecosystemInfo =
      $grpc.ClientMethod<$4.EcosystemInfoRequest, $4.EcosystemInfoResponse>(
          '/services.provider.v1.Provider/EcosystemInfo',
          ($4.EcosystemInfoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.EcosystemInfoResponse.fromBuffer(value));
  static final _$getPublicEcosystemInfo = $grpc.ClientMethod<
          $4.GetPublicEcosystemInfoRequest, $4.GetPublicEcosystemInfoResponse>(
      '/services.provider.v1.Provider/GetPublicEcosystemInfo',
      ($4.GetPublicEcosystemInfoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $4.GetPublicEcosystemInfoResponse.fromBuffer(value));
  static final _$generateToken =
      $grpc.ClientMethod<$4.GenerateTokenRequest, $4.GenerateTokenResponse>(
          '/services.provider.v1.Provider/GenerateToken',
          ($4.GenerateTokenRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.GenerateTokenResponse.fromBuffer(value));
  static final _$invite =
      $grpc.ClientMethod<$4.InviteRequest, $4.InviteResponse>(
          '/services.provider.v1.Provider/Invite',
          ($4.InviteRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $4.InviteResponse.fromBuffer(value));
  static final _$invitationStatus = $grpc.ClientMethod<
          $4.InvitationStatusRequest, $4.InvitationStatusResponse>(
      '/services.provider.v1.Provider/InvitationStatus',
      ($4.InvitationStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $4.InvitationStatusResponse.fromBuffer(value));
  static final _$getOberonKey =
      $grpc.ClientMethod<$4.GetOberonKeyRequest, $4.GetOberonKeyResponse>(
          '/services.provider.v1.Provider/GetOberonKey',
          ($4.GetOberonKeyRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.GetOberonKeyResponse.fromBuffer(value));
  static final _$getEventToken =
      $grpc.ClientMethod<$4.GetEventTokenRequest, $4.GetEventTokenResponse>(
          '/services.provider.v1.Provider/GetEventToken',
          ($4.GetEventTokenRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.GetEventTokenResponse.fromBuffer(value));
  static final _$retrieveDomainVerificationRecord = $grpc.ClientMethod<
          $4.RetrieveDomainVerificationRecordRequest,
          $4.RetrieveDomainVerificationRecordResponse>(
      '/services.provider.v1.Provider/RetrieveDomainVerificationRecord',
      ($4.RetrieveDomainVerificationRecordRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $4.RetrieveDomainVerificationRecordResponse.fromBuffer(value));
  static final _$refreshDomainVerificationStatus = $grpc.ClientMethod<
          $4.RefreshDomainVerificationStatusRequest,
          $4.RefreshDomainVerificationStatusResponse>(
      '/services.provider.v1.Provider/RefreshDomainVerificationStatus',
      ($4.RefreshDomainVerificationStatusRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $4.RefreshDomainVerificationStatusResponse.fromBuffer(value));
  static final _$searchWalletConfigurations = $grpc.ClientMethod<
          $4.SearchWalletConfigurationsRequest,
          $4.SearchWalletConfigurationResponse>(
      '/services.provider.v1.Provider/SearchWalletConfigurations',
      ($4.SearchWalletConfigurationsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $4.SearchWalletConfigurationResponse.fromBuffer(value));

  ProviderClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$4.CreateEcosystemResponse> createEcosystem(
      $4.CreateEcosystemRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createEcosystem, request, options: options);
  }

  $grpc.ResponseFuture<$4.UpdateEcosystemResponse> updateEcosystem(
      $4.UpdateEcosystemRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateEcosystem, request, options: options);
  }

  $grpc.ResponseFuture<$4.GrantAuthorizationResponse> grantAuthorization(
      $4.GrantAuthorizationRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$grantAuthorization, request, options: options);
  }

  $grpc.ResponseFuture<$4.RevokeAuthorizationResponse> revokeAuthorization(
      $4.RevokeAuthorizationRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$revokeAuthorization, request, options: options);
  }

  $grpc.ResponseFuture<$4.GetAuthorizationsResponse> getAuthorizations(
      $4.GetAuthorizationsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAuthorizations, request, options: options);
  }

  $grpc.ResponseFuture<$4.AddWebhookResponse> addWebhook(
      $4.AddWebhookRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addWebhook, request, options: options);
  }

  $grpc.ResponseFuture<$4.DeleteWebhookResponse> deleteWebhook(
      $4.DeleteWebhookRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteWebhook, request, options: options);
  }

  $grpc.ResponseFuture<$4.EcosystemInfoResponse> ecosystemInfo(
      $4.EcosystemInfoRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$ecosystemInfo, request, options: options);
  }

  $grpc.ResponseFuture<$4.GetPublicEcosystemInfoResponse>
      getPublicEcosystemInfo($4.GetPublicEcosystemInfoRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPublicEcosystemInfo, request,
        options: options);
  }

  $grpc.ResponseFuture<$4.GenerateTokenResponse> generateToken(
      $4.GenerateTokenRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$generateToken, request, options: options);
  }

  $grpc.ResponseFuture<$4.InviteResponse> invite($4.InviteRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$invite, request, options: options);
  }

  $grpc.ResponseFuture<$4.InvitationStatusResponse> invitationStatus(
      $4.InvitationStatusRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$invitationStatus, request, options: options);
  }

  $grpc.ResponseFuture<$4.GetOberonKeyResponse> getOberonKey(
      $4.GetOberonKeyRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOberonKey, request, options: options);
  }

  $grpc.ResponseFuture<$4.GetEventTokenResponse> getEventToken(
      $4.GetEventTokenRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getEventToken, request, options: options);
  }

  $grpc.ResponseFuture<$4.RetrieveDomainVerificationRecordResponse>
      retrieveDomainVerificationRecord(
          $4.RetrieveDomainVerificationRecordRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$retrieveDomainVerificationRecord, request,
        options: options);
  }

  $grpc.ResponseFuture<$4.RefreshDomainVerificationStatusResponse>
      refreshDomainVerificationStatus(
          $4.RefreshDomainVerificationStatusRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$refreshDomainVerificationStatus, request,
        options: options);
  }

  $grpc.ResponseFuture<$4.SearchWalletConfigurationResponse>
      searchWalletConfigurations($4.SearchWalletConfigurationsRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$searchWalletConfigurations, request,
        options: options);
  }
}

abstract class ProviderServiceBase extends $grpc.Service {
  $core.String get $name => 'services.provider.v1.Provider';

  ProviderServiceBase() {
    $addMethod($grpc.ServiceMethod<$4.CreateEcosystemRequest,
            $4.CreateEcosystemResponse>(
        'CreateEcosystem',
        createEcosystem_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.CreateEcosystemRequest.fromBuffer(value),
        ($4.CreateEcosystemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.UpdateEcosystemRequest,
            $4.UpdateEcosystemResponse>(
        'UpdateEcosystem',
        updateEcosystem_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.UpdateEcosystemRequest.fromBuffer(value),
        ($4.UpdateEcosystemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.GrantAuthorizationRequest,
            $4.GrantAuthorizationResponse>(
        'GrantAuthorization',
        grantAuthorization_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.GrantAuthorizationRequest.fromBuffer(value),
        ($4.GrantAuthorizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.RevokeAuthorizationRequest,
            $4.RevokeAuthorizationResponse>(
        'RevokeAuthorization',
        revokeAuthorization_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.RevokeAuthorizationRequest.fromBuffer(value),
        ($4.RevokeAuthorizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.GetAuthorizationsRequest,
            $4.GetAuthorizationsResponse>(
        'GetAuthorizations',
        getAuthorizations_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.GetAuthorizationsRequest.fromBuffer(value),
        ($4.GetAuthorizationsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.AddWebhookRequest, $4.AddWebhookResponse>(
        'AddWebhook',
        addWebhook_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.AddWebhookRequest.fromBuffer(value),
        ($4.AddWebhookResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$4.DeleteWebhookRequest, $4.DeleteWebhookResponse>(
            'DeleteWebhook',
            deleteWebhook_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $4.DeleteWebhookRequest.fromBuffer(value),
            ($4.DeleteWebhookResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$4.EcosystemInfoRequest, $4.EcosystemInfoResponse>(
            'EcosystemInfo',
            ecosystemInfo_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $4.EcosystemInfoRequest.fromBuffer(value),
            ($4.EcosystemInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.GetPublicEcosystemInfoRequest,
            $4.GetPublicEcosystemInfoResponse>(
        'GetPublicEcosystemInfo',
        getPublicEcosystemInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.GetPublicEcosystemInfoRequest.fromBuffer(value),
        ($4.GetPublicEcosystemInfoResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$4.GenerateTokenRequest, $4.GenerateTokenResponse>(
            'GenerateToken',
            generateToken_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $4.GenerateTokenRequest.fromBuffer(value),
            ($4.GenerateTokenResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.InviteRequest, $4.InviteResponse>(
        'Invite',
        invite_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.InviteRequest.fromBuffer(value),
        ($4.InviteResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.InvitationStatusRequest,
            $4.InvitationStatusResponse>(
        'InvitationStatus',
        invitationStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.InvitationStatusRequest.fromBuffer(value),
        ($4.InvitationStatusResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$4.GetOberonKeyRequest, $4.GetOberonKeyResponse>(
            'GetOberonKey',
            getOberonKey_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $4.GetOberonKeyRequest.fromBuffer(value),
            ($4.GetOberonKeyResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$4.GetEventTokenRequest, $4.GetEventTokenResponse>(
            'GetEventToken',
            getEventToken_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $4.GetEventTokenRequest.fromBuffer(value),
            ($4.GetEventTokenResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.RetrieveDomainVerificationRecordRequest,
            $4.RetrieveDomainVerificationRecordResponse>(
        'RetrieveDomainVerificationRecord',
        retrieveDomainVerificationRecord_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.RetrieveDomainVerificationRecordRequest.fromBuffer(value),
        ($4.RetrieveDomainVerificationRecordResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.RefreshDomainVerificationStatusRequest,
            $4.RefreshDomainVerificationStatusResponse>(
        'RefreshDomainVerificationStatus',
        refreshDomainVerificationStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.RefreshDomainVerificationStatusRequest.fromBuffer(value),
        ($4.RefreshDomainVerificationStatusResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.SearchWalletConfigurationsRequest,
            $4.SearchWalletConfigurationResponse>(
        'SearchWalletConfigurations',
        searchWalletConfigurations_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.SearchWalletConfigurationsRequest.fromBuffer(value),
        ($4.SearchWalletConfigurationResponse value) => value.writeToBuffer()));
  }

  $async.Future<$4.CreateEcosystemResponse> createEcosystem_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.CreateEcosystemRequest> request) async {
    return createEcosystem(call, await request);
  }

  $async.Future<$4.UpdateEcosystemResponse> updateEcosystem_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.UpdateEcosystemRequest> request) async {
    return updateEcosystem(call, await request);
  }

  $async.Future<$4.GrantAuthorizationResponse> grantAuthorization_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.GrantAuthorizationRequest> request) async {
    return grantAuthorization(call, await request);
  }

  $async.Future<$4.RevokeAuthorizationResponse> revokeAuthorization_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.RevokeAuthorizationRequest> request) async {
    return revokeAuthorization(call, await request);
  }

  $async.Future<$4.GetAuthorizationsResponse> getAuthorizations_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.GetAuthorizationsRequest> request) async {
    return getAuthorizations(call, await request);
  }

  $async.Future<$4.AddWebhookResponse> addWebhook_Pre($grpc.ServiceCall call,
      $async.Future<$4.AddWebhookRequest> request) async {
    return addWebhook(call, await request);
  }

  $async.Future<$4.DeleteWebhookResponse> deleteWebhook_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.DeleteWebhookRequest> request) async {
    return deleteWebhook(call, await request);
  }

  $async.Future<$4.EcosystemInfoResponse> ecosystemInfo_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.EcosystemInfoRequest> request) async {
    return ecosystemInfo(call, await request);
  }

  $async.Future<$4.GetPublicEcosystemInfoResponse> getPublicEcosystemInfo_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.GetPublicEcosystemInfoRequest> request) async {
    return getPublicEcosystemInfo(call, await request);
  }

  $async.Future<$4.GenerateTokenResponse> generateToken_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.GenerateTokenRequest> request) async {
    return generateToken(call, await request);
  }

  $async.Future<$4.InviteResponse> invite_Pre(
      $grpc.ServiceCall call, $async.Future<$4.InviteRequest> request) async {
    return invite(call, await request);
  }

  $async.Future<$4.InvitationStatusResponse> invitationStatus_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.InvitationStatusRequest> request) async {
    return invitationStatus(call, await request);
  }

  $async.Future<$4.GetOberonKeyResponse> getOberonKey_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.GetOberonKeyRequest> request) async {
    return getOberonKey(call, await request);
  }

  $async.Future<$4.GetEventTokenResponse> getEventToken_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.GetEventTokenRequest> request) async {
    return getEventToken(call, await request);
  }

  $async.Future<$4.RetrieveDomainVerificationRecordResponse>
      retrieveDomainVerificationRecord_Pre(
          $grpc.ServiceCall call,
          $async.Future<$4.RetrieveDomainVerificationRecordRequest>
              request) async {
    return retrieveDomainVerificationRecord(call, await request);
  }

  $async.Future<$4.RefreshDomainVerificationStatusResponse>
      refreshDomainVerificationStatus_Pre(
          $grpc.ServiceCall call,
          $async.Future<$4.RefreshDomainVerificationStatusRequest>
              request) async {
    return refreshDomainVerificationStatus(call, await request);
  }

  $async.Future<$4.SearchWalletConfigurationResponse>
      searchWalletConfigurations_Pre($grpc.ServiceCall call,
          $async.Future<$4.SearchWalletConfigurationsRequest> request) async {
    return searchWalletConfigurations(call, await request);
  }

  $async.Future<$4.CreateEcosystemResponse> createEcosystem(
      $grpc.ServiceCall call, $4.CreateEcosystemRequest request);
  $async.Future<$4.UpdateEcosystemResponse> updateEcosystem(
      $grpc.ServiceCall call, $4.UpdateEcosystemRequest request);
  $async.Future<$4.GrantAuthorizationResponse> grantAuthorization(
      $grpc.ServiceCall call, $4.GrantAuthorizationRequest request);
  $async.Future<$4.RevokeAuthorizationResponse> revokeAuthorization(
      $grpc.ServiceCall call, $4.RevokeAuthorizationRequest request);
  $async.Future<$4.GetAuthorizationsResponse> getAuthorizations(
      $grpc.ServiceCall call, $4.GetAuthorizationsRequest request);
  $async.Future<$4.AddWebhookResponse> addWebhook(
      $grpc.ServiceCall call, $4.AddWebhookRequest request);
  $async.Future<$4.DeleteWebhookResponse> deleteWebhook(
      $grpc.ServiceCall call, $4.DeleteWebhookRequest request);
  $async.Future<$4.EcosystemInfoResponse> ecosystemInfo(
      $grpc.ServiceCall call, $4.EcosystemInfoRequest request);
  $async.Future<$4.GetPublicEcosystemInfoResponse> getPublicEcosystemInfo(
      $grpc.ServiceCall call, $4.GetPublicEcosystemInfoRequest request);
  $async.Future<$4.GenerateTokenResponse> generateToken(
      $grpc.ServiceCall call, $4.GenerateTokenRequest request);
  $async.Future<$4.InviteResponse> invite(
      $grpc.ServiceCall call, $4.InviteRequest request);
  $async.Future<$4.InvitationStatusResponse> invitationStatus(
      $grpc.ServiceCall call, $4.InvitationStatusRequest request);
  $async.Future<$4.GetOberonKeyResponse> getOberonKey(
      $grpc.ServiceCall call, $4.GetOberonKeyRequest request);
  $async.Future<$4.GetEventTokenResponse> getEventToken(
      $grpc.ServiceCall call, $4.GetEventTokenRequest request);
  $async.Future<$4.RetrieveDomainVerificationRecordResponse>
      retrieveDomainVerificationRecord($grpc.ServiceCall call,
          $4.RetrieveDomainVerificationRecordRequest request);
  $async.Future<$4.RefreshDomainVerificationStatusResponse>
      refreshDomainVerificationStatus($grpc.ServiceCall call,
          $4.RefreshDomainVerificationStatusRequest request);
  $async.Future<$4.SearchWalletConfigurationResponse>
      searchWalletConfigurations(
          $grpc.ServiceCall call, $4.SearchWalletConfigurationsRequest request);
}
