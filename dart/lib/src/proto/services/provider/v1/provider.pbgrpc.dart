///
//  Generated code. Do not modify.
//  source: services/provider/v1/provider.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

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
  static final _$grantAuthorization = $grpc.ClientMethod<
          $2.GrantAuthorizationRequest, $2.GrantAuthorizationResponse>(
      '/services.provider.v1.Provider/GrantAuthorization',
      ($2.GrantAuthorizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.GrantAuthorizationResponse.fromBuffer(value));
  static final _$revokeAuthorization = $grpc.ClientMethod<
          $2.RevokeAuthorizationRequest, $2.RevokeAuthorizationResponse>(
      '/services.provider.v1.Provider/RevokeAuthorization',
      ($2.RevokeAuthorizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.RevokeAuthorizationResponse.fromBuffer(value));
  static final _$getAuthorizations = $grpc.ClientMethod<
          $2.GetAuthorizationsRequest, $2.GetAuthorizationsResponse>(
      '/services.provider.v1.Provider/GetAuthorizations',
      ($2.GetAuthorizationsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.GetAuthorizationsResponse.fromBuffer(value));
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
  static final _$getPublicEcosystemInfo = $grpc.ClientMethod<
          $2.GetPublicEcosystemInfoRequest, $2.GetPublicEcosystemInfoResponse>(
      '/services.provider.v1.Provider/GetPublicEcosystemInfo',
      ($2.GetPublicEcosystemInfoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.GetPublicEcosystemInfoResponse.fromBuffer(value));
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
  static final _$upgradeDID =
      $grpc.ClientMethod<$2.UpgradeDidRequest, $2.UpgradeDidResponse>(
          '/services.provider.v1.Provider/UpgradeDID',
          ($2.UpgradeDidRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.UpgradeDidResponse.fromBuffer(value));
  static final _$retrieveDomainVerificationRecord = $grpc.ClientMethod<
          $2.RetrieveDomainVerificationRecordRequest,
          $2.RetrieveDomainVerificationRecordResponse>(
      '/services.provider.v1.Provider/RetrieveDomainVerificationRecord',
      ($2.RetrieveDomainVerificationRecordRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.RetrieveDomainVerificationRecordResponse.fromBuffer(value));
  static final _$refreshDomainVerificationStatus = $grpc.ClientMethod<
          $2.RefreshDomainVerificationStatusRequest,
          $2.RefreshDomainVerificationStatusResponse>(
      '/services.provider.v1.Provider/RefreshDomainVerificationStatus',
      ($2.RefreshDomainVerificationStatusRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.RefreshDomainVerificationStatusResponse.fromBuffer(value));
  static final _$searchWalletConfigurations = $grpc.ClientMethod<
          $2.SearchWalletConfigurationsRequest,
          $2.SearchWalletConfigurationResponse>(
      '/services.provider.v1.Provider/SearchWalletConfigurations',
      ($2.SearchWalletConfigurationsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.SearchWalletConfigurationResponse.fromBuffer(value));

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

  $grpc.ResponseFuture<$2.GrantAuthorizationResponse> grantAuthorization(
      $2.GrantAuthorizationRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$grantAuthorization, request, options: options);
  }

  $grpc.ResponseFuture<$2.RevokeAuthorizationResponse> revokeAuthorization(
      $2.RevokeAuthorizationRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$revokeAuthorization, request, options: options);
  }

  $grpc.ResponseFuture<$2.GetAuthorizationsResponse> getAuthorizations(
      $2.GetAuthorizationsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAuthorizations, request, options: options);
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

  $grpc.ResponseFuture<$2.GetPublicEcosystemInfoResponse>
      getPublicEcosystemInfo($2.GetPublicEcosystemInfoRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPublicEcosystemInfo, request,
        options: options);
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

  $grpc.ResponseFuture<$2.UpgradeDidResponse> upgradeDID(
      $2.UpgradeDidRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$upgradeDID, request, options: options);
  }

  $grpc.ResponseFuture<$2.RetrieveDomainVerificationRecordResponse>
      retrieveDomainVerificationRecord(
          $2.RetrieveDomainVerificationRecordRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$retrieveDomainVerificationRecord, request,
        options: options);
  }

  $grpc.ResponseFuture<$2.RefreshDomainVerificationStatusResponse>
      refreshDomainVerificationStatus(
          $2.RefreshDomainVerificationStatusRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$refreshDomainVerificationStatus, request,
        options: options);
  }

  $grpc.ResponseFuture<$2.SearchWalletConfigurationResponse>
      searchWalletConfigurations($2.SearchWalletConfigurationsRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$searchWalletConfigurations, request,
        options: options);
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
    $addMethod($grpc.ServiceMethod<$2.GrantAuthorizationRequest,
            $2.GrantAuthorizationResponse>(
        'GrantAuthorization',
        grantAuthorization_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.GrantAuthorizationRequest.fromBuffer(value),
        ($2.GrantAuthorizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.RevokeAuthorizationRequest,
            $2.RevokeAuthorizationResponse>(
        'RevokeAuthorization',
        revokeAuthorization_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.RevokeAuthorizationRequest.fromBuffer(value),
        ($2.RevokeAuthorizationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.GetAuthorizationsRequest,
            $2.GetAuthorizationsResponse>(
        'GetAuthorizations',
        getAuthorizations_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.GetAuthorizationsRequest.fromBuffer(value),
        ($2.GetAuthorizationsResponse value) => value.writeToBuffer()));
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
    $addMethod($grpc.ServiceMethod<$2.GetPublicEcosystemInfoRequest,
            $2.GetPublicEcosystemInfoResponse>(
        'GetPublicEcosystemInfo',
        getPublicEcosystemInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.GetPublicEcosystemInfoRequest.fromBuffer(value),
        ($2.GetPublicEcosystemInfoResponse value) => value.writeToBuffer()));
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
    $addMethod($grpc.ServiceMethod<$2.UpgradeDidRequest, $2.UpgradeDidResponse>(
        'UpgradeDID',
        upgradeDID_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.UpgradeDidRequest.fromBuffer(value),
        ($2.UpgradeDidResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.RetrieveDomainVerificationRecordRequest,
            $2.RetrieveDomainVerificationRecordResponse>(
        'RetrieveDomainVerificationRecord',
        retrieveDomainVerificationRecord_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.RetrieveDomainVerificationRecordRequest.fromBuffer(value),
        ($2.RetrieveDomainVerificationRecordResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.RefreshDomainVerificationStatusRequest,
            $2.RefreshDomainVerificationStatusResponse>(
        'RefreshDomainVerificationStatus',
        refreshDomainVerificationStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.RefreshDomainVerificationStatusRequest.fromBuffer(value),
        ($2.RefreshDomainVerificationStatusResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.SearchWalletConfigurationsRequest,
            $2.SearchWalletConfigurationResponse>(
        'SearchWalletConfigurations',
        searchWalletConfigurations_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.SearchWalletConfigurationsRequest.fromBuffer(value),
        ($2.SearchWalletConfigurationResponse value) => value.writeToBuffer()));
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

  $async.Future<$2.GrantAuthorizationResponse> grantAuthorization_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.GrantAuthorizationRequest> request) async {
    return grantAuthorization(call, await request);
  }

  $async.Future<$2.RevokeAuthorizationResponse> revokeAuthorization_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.RevokeAuthorizationRequest> request) async {
    return revokeAuthorization(call, await request);
  }

  $async.Future<$2.GetAuthorizationsResponse> getAuthorizations_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.GetAuthorizationsRequest> request) async {
    return getAuthorizations(call, await request);
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

  $async.Future<$2.GetPublicEcosystemInfoResponse> getPublicEcosystemInfo_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.GetPublicEcosystemInfoRequest> request) async {
    return getPublicEcosystemInfo(call, await request);
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

  $async.Future<$2.UpgradeDidResponse> upgradeDID_Pre($grpc.ServiceCall call,
      $async.Future<$2.UpgradeDidRequest> request) async {
    return upgradeDID(call, await request);
  }

  $async.Future<$2.RetrieveDomainVerificationRecordResponse>
      retrieveDomainVerificationRecord_Pre(
          $grpc.ServiceCall call,
          $async.Future<$2.RetrieveDomainVerificationRecordRequest>
              request) async {
    return retrieveDomainVerificationRecord(call, await request);
  }

  $async.Future<$2.RefreshDomainVerificationStatusResponse>
      refreshDomainVerificationStatus_Pre(
          $grpc.ServiceCall call,
          $async.Future<$2.RefreshDomainVerificationStatusRequest>
              request) async {
    return refreshDomainVerificationStatus(call, await request);
  }

  $async.Future<$2.SearchWalletConfigurationResponse>
      searchWalletConfigurations_Pre($grpc.ServiceCall call,
          $async.Future<$2.SearchWalletConfigurationsRequest> request) async {
    return searchWalletConfigurations(call, await request);
  }

  $async.Future<$2.CreateEcosystemResponse> createEcosystem(
      $grpc.ServiceCall call, $2.CreateEcosystemRequest request);
  $async.Future<$2.UpdateEcosystemResponse> updateEcosystem(
      $grpc.ServiceCall call, $2.UpdateEcosystemRequest request);
  $async.Future<$2.GrantAuthorizationResponse> grantAuthorization(
      $grpc.ServiceCall call, $2.GrantAuthorizationRequest request);
  $async.Future<$2.RevokeAuthorizationResponse> revokeAuthorization(
      $grpc.ServiceCall call, $2.RevokeAuthorizationRequest request);
  $async.Future<$2.GetAuthorizationsResponse> getAuthorizations(
      $grpc.ServiceCall call, $2.GetAuthorizationsRequest request);
  $async.Future<$2.AddWebhookResponse> addWebhook(
      $grpc.ServiceCall call, $2.AddWebhookRequest request);
  $async.Future<$2.DeleteWebhookResponse> deleteWebhook(
      $grpc.ServiceCall call, $2.DeleteWebhookRequest request);
  $async.Future<$2.EcosystemInfoResponse> ecosystemInfo(
      $grpc.ServiceCall call, $2.EcosystemInfoRequest request);
  $async.Future<$2.GetPublicEcosystemInfoResponse> getPublicEcosystemInfo(
      $grpc.ServiceCall call, $2.GetPublicEcosystemInfoRequest request);
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
  $async.Future<$2.UpgradeDidResponse> upgradeDID(
      $grpc.ServiceCall call, $2.UpgradeDidRequest request);
  $async.Future<$2.RetrieveDomainVerificationRecordResponse>
      retrieveDomainVerificationRecord($grpc.ServiceCall call,
          $2.RetrieveDomainVerificationRecordRequest request);
  $async.Future<$2.RefreshDomainVerificationStatusResponse>
      refreshDomainVerificationStatus($grpc.ServiceCall call,
          $2.RefreshDomainVerificationStatusRequest request);
  $async.Future<$2.SearchWalletConfigurationResponse>
      searchWalletConfigurations(
          $grpc.ServiceCall call, $2.SearchWalletConfigurationsRequest request);
}
