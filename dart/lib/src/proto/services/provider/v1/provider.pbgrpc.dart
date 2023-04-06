///
//  Generated code. Do not modify.
//  source: services/provider/v1/provider.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'provider.pb.dart' as $1;
export 'provider.pb.dart';

class ProviderClient extends $grpc.Client {
  static final _$createEcosystem =
      $grpc.ClientMethod<$1.CreateEcosystemRequest, $1.CreateEcosystemResponse>(
          '/services.provider.v1.Provider/CreateEcosystem',
          ($1.CreateEcosystemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.CreateEcosystemResponse.fromBuffer(value));
  static final _$updateEcosystem =
      $grpc.ClientMethod<$1.UpdateEcosystemRequest, $1.UpdateEcosystemResponse>(
          '/services.provider.v1.Provider/UpdateEcosystem',
          ($1.UpdateEcosystemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.UpdateEcosystemResponse.fromBuffer(value));
  static final _$addWebhook =
      $grpc.ClientMethod<$1.AddWebhookRequest, $1.AddWebhookResponse>(
          '/services.provider.v1.Provider/AddWebhook',
          ($1.AddWebhookRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.AddWebhookResponse.fromBuffer(value));
  static final _$deleteWebhook =
      $grpc.ClientMethod<$1.DeleteWebhookRequest, $1.DeleteWebhookResponse>(
          '/services.provider.v1.Provider/DeleteWebhook',
          ($1.DeleteWebhookRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.DeleteWebhookResponse.fromBuffer(value));
  static final _$ecosystemInfo =
      $grpc.ClientMethod<$1.EcosystemInfoRequest, $1.EcosystemInfoResponse>(
          '/services.provider.v1.Provider/EcosystemInfo',
          ($1.EcosystemInfoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.EcosystemInfoResponse.fromBuffer(value));
  static final _$getPublicEcosystemInfo = $grpc.ClientMethod<
          $1.GetPublicEcosystemInfoRequest, $1.GetPublicEcosystemInfoResponse>(
      '/services.provider.v1.Provider/GetPublicEcosystemInfo',
      ($1.GetPublicEcosystemInfoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.GetPublicEcosystemInfoResponse.fromBuffer(value));
  static final _$invite =
      $grpc.ClientMethod<$1.InviteRequest, $1.InviteResponse>(
          '/services.provider.v1.Provider/Invite',
          ($1.InviteRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.InviteResponse.fromBuffer(value));
  static final _$invitationStatus = $grpc.ClientMethod<
          $1.InvitationStatusRequest, $1.InvitationStatusResponse>(
      '/services.provider.v1.Provider/InvitationStatus',
      ($1.InvitationStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.InvitationStatusResponse.fromBuffer(value));
  static final _$getOberonKey =
      $grpc.ClientMethod<$1.GetOberonKeyRequest, $1.GetOberonKeyResponse>(
          '/services.provider.v1.Provider/GetOberonKey',
          ($1.GetOberonKeyRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.GetOberonKeyResponse.fromBuffer(value));
  static final _$upgradeDID =
      $grpc.ClientMethod<$1.UpgradeDidRequest, $1.UpgradeDidResponse>(
          '/services.provider.v1.Provider/UpgradeDID',
          ($1.UpgradeDidRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.UpgradeDidResponse.fromBuffer(value));
  static final _$retrieveDomainVerificationRecord = $grpc.ClientMethod<
          $1.RetrieveDomainVerificationRecordRequest,
          $1.RetrieveDomainVerificationRecordResponse>(
      '/services.provider.v1.Provider/RetrieveDomainVerificationRecord',
      ($1.RetrieveDomainVerificationRecordRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.RetrieveDomainVerificationRecordResponse.fromBuffer(value));
  static final _$refreshDomainVerificationStatus = $grpc.ClientMethod<
          $1.RefreshDomainVerificationStatusRequest,
          $1.RefreshDomainVerificationStatusResponse>(
      '/services.provider.v1.Provider/RefreshDomainVerificationStatus',
      ($1.RefreshDomainVerificationStatusRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.RefreshDomainVerificationStatusResponse.fromBuffer(value));
  static final _$searchWalletConfigurations = $grpc.ClientMethod<
          $1.SearchWalletConfigurationsRequest,
          $1.SearchWalletConfigurationResponse>(
      '/services.provider.v1.Provider/SearchWalletConfigurations',
      ($1.SearchWalletConfigurationsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.SearchWalletConfigurationResponse.fromBuffer(value));

  ProviderClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.CreateEcosystemResponse> createEcosystem(
      $1.CreateEcosystemRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createEcosystem, request, options: options);
  }

  $grpc.ResponseFuture<$1.UpdateEcosystemResponse> updateEcosystem(
      $1.UpdateEcosystemRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateEcosystem, request, options: options);
  }

  $grpc.ResponseFuture<$1.AddWebhookResponse> addWebhook(
      $1.AddWebhookRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addWebhook, request, options: options);
  }

  $grpc.ResponseFuture<$1.DeleteWebhookResponse> deleteWebhook(
      $1.DeleteWebhookRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteWebhook, request, options: options);
  }

  $grpc.ResponseFuture<$1.EcosystemInfoResponse> ecosystemInfo(
      $1.EcosystemInfoRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$ecosystemInfo, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetPublicEcosystemInfoResponse>
      getPublicEcosystemInfo($1.GetPublicEcosystemInfoRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPublicEcosystemInfo, request,
        options: options);
  }

  $grpc.ResponseFuture<$1.InviteResponse> invite($1.InviteRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$invite, request, options: options);
  }

  $grpc.ResponseFuture<$1.InvitationStatusResponse> invitationStatus(
      $1.InvitationStatusRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$invitationStatus, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetOberonKeyResponse> getOberonKey(
      $1.GetOberonKeyRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOberonKey, request, options: options);
  }

  $grpc.ResponseFuture<$1.UpgradeDidResponse> upgradeDID(
      $1.UpgradeDidRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$upgradeDID, request, options: options);
  }

  $grpc.ResponseFuture<$1.RetrieveDomainVerificationRecordResponse>
      retrieveDomainVerificationRecord(
          $1.RetrieveDomainVerificationRecordRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$retrieveDomainVerificationRecord, request,
        options: options);
  }

  $grpc.ResponseFuture<$1.RefreshDomainVerificationStatusResponse>
      refreshDomainVerificationStatus(
          $1.RefreshDomainVerificationStatusRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$refreshDomainVerificationStatus, request,
        options: options);
  }

  $grpc.ResponseFuture<$1.SearchWalletConfigurationResponse>
      searchWalletConfigurations($1.SearchWalletConfigurationsRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$searchWalletConfigurations, request,
        options: options);
  }
}

abstract class ProviderServiceBase extends $grpc.Service {
  $core.String get $name => 'services.provider.v1.Provider';

  ProviderServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.CreateEcosystemRequest,
            $1.CreateEcosystemResponse>(
        'CreateEcosystem',
        createEcosystem_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.CreateEcosystemRequest.fromBuffer(value),
        ($1.CreateEcosystemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.UpdateEcosystemRequest,
            $1.UpdateEcosystemResponse>(
        'UpdateEcosystem',
        updateEcosystem_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.UpdateEcosystemRequest.fromBuffer(value),
        ($1.UpdateEcosystemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.AddWebhookRequest, $1.AddWebhookResponse>(
        'AddWebhook',
        addWebhook_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.AddWebhookRequest.fromBuffer(value),
        ($1.AddWebhookResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.DeleteWebhookRequest, $1.DeleteWebhookResponse>(
            'DeleteWebhook',
            deleteWebhook_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.DeleteWebhookRequest.fromBuffer(value),
            ($1.DeleteWebhookResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.EcosystemInfoRequest, $1.EcosystemInfoResponse>(
            'EcosystemInfo',
            ecosystemInfo_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.EcosystemInfoRequest.fromBuffer(value),
            ($1.EcosystemInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetPublicEcosystemInfoRequest,
            $1.GetPublicEcosystemInfoResponse>(
        'GetPublicEcosystemInfo',
        getPublicEcosystemInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.GetPublicEcosystemInfoRequest.fromBuffer(value),
        ($1.GetPublicEcosystemInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.InviteRequest, $1.InviteResponse>(
        'Invite',
        invite_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.InviteRequest.fromBuffer(value),
        ($1.InviteResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.InvitationStatusRequest,
            $1.InvitationStatusResponse>(
        'InvitationStatus',
        invitationStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.InvitationStatusRequest.fromBuffer(value),
        ($1.InvitationStatusResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.GetOberonKeyRequest, $1.GetOberonKeyResponse>(
            'GetOberonKey',
            getOberonKey_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.GetOberonKeyRequest.fromBuffer(value),
            ($1.GetOberonKeyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.UpgradeDidRequest, $1.UpgradeDidResponse>(
        'UpgradeDID',
        upgradeDID_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.UpgradeDidRequest.fromBuffer(value),
        ($1.UpgradeDidResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.RetrieveDomainVerificationRecordRequest,
            $1.RetrieveDomainVerificationRecordResponse>(
        'RetrieveDomainVerificationRecord',
        retrieveDomainVerificationRecord_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.RetrieveDomainVerificationRecordRequest.fromBuffer(value),
        ($1.RetrieveDomainVerificationRecordResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.RefreshDomainVerificationStatusRequest,
            $1.RefreshDomainVerificationStatusResponse>(
        'RefreshDomainVerificationStatus',
        refreshDomainVerificationStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.RefreshDomainVerificationStatusRequest.fromBuffer(value),
        ($1.RefreshDomainVerificationStatusResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.SearchWalletConfigurationsRequest,
            $1.SearchWalletConfigurationResponse>(
        'SearchWalletConfigurations',
        searchWalletConfigurations_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.SearchWalletConfigurationsRequest.fromBuffer(value),
        ($1.SearchWalletConfigurationResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.CreateEcosystemResponse> createEcosystem_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.CreateEcosystemRequest> request) async {
    return createEcosystem(call, await request);
  }

  $async.Future<$1.UpdateEcosystemResponse> updateEcosystem_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.UpdateEcosystemRequest> request) async {
    return updateEcosystem(call, await request);
  }

  $async.Future<$1.AddWebhookResponse> addWebhook_Pre($grpc.ServiceCall call,
      $async.Future<$1.AddWebhookRequest> request) async {
    return addWebhook(call, await request);
  }

  $async.Future<$1.DeleteWebhookResponse> deleteWebhook_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.DeleteWebhookRequest> request) async {
    return deleteWebhook(call, await request);
  }

  $async.Future<$1.EcosystemInfoResponse> ecosystemInfo_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.EcosystemInfoRequest> request) async {
    return ecosystemInfo(call, await request);
  }

  $async.Future<$1.GetPublicEcosystemInfoResponse> getPublicEcosystemInfo_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.GetPublicEcosystemInfoRequest> request) async {
    return getPublicEcosystemInfo(call, await request);
  }

  $async.Future<$1.InviteResponse> invite_Pre(
      $grpc.ServiceCall call, $async.Future<$1.InviteRequest> request) async {
    return invite(call, await request);
  }

  $async.Future<$1.InvitationStatusResponse> invitationStatus_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.InvitationStatusRequest> request) async {
    return invitationStatus(call, await request);
  }

  $async.Future<$1.GetOberonKeyResponse> getOberonKey_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.GetOberonKeyRequest> request) async {
    return getOberonKey(call, await request);
  }

  $async.Future<$1.UpgradeDidResponse> upgradeDID_Pre($grpc.ServiceCall call,
      $async.Future<$1.UpgradeDidRequest> request) async {
    return upgradeDID(call, await request);
  }

  $async.Future<$1.RetrieveDomainVerificationRecordResponse>
      retrieveDomainVerificationRecord_Pre(
          $grpc.ServiceCall call,
          $async.Future<$1.RetrieveDomainVerificationRecordRequest>
              request) async {
    return retrieveDomainVerificationRecord(call, await request);
  }

  $async.Future<$1.RefreshDomainVerificationStatusResponse>
      refreshDomainVerificationStatus_Pre(
          $grpc.ServiceCall call,
          $async.Future<$1.RefreshDomainVerificationStatusRequest>
              request) async {
    return refreshDomainVerificationStatus(call, await request);
  }

  $async.Future<$1.SearchWalletConfigurationResponse>
      searchWalletConfigurations_Pre($grpc.ServiceCall call,
          $async.Future<$1.SearchWalletConfigurationsRequest> request) async {
    return searchWalletConfigurations(call, await request);
  }

  $async.Future<$1.CreateEcosystemResponse> createEcosystem(
      $grpc.ServiceCall call, $1.CreateEcosystemRequest request);
  $async.Future<$1.UpdateEcosystemResponse> updateEcosystem(
      $grpc.ServiceCall call, $1.UpdateEcosystemRequest request);
  $async.Future<$1.AddWebhookResponse> addWebhook(
      $grpc.ServiceCall call, $1.AddWebhookRequest request);
  $async.Future<$1.DeleteWebhookResponse> deleteWebhook(
      $grpc.ServiceCall call, $1.DeleteWebhookRequest request);
  $async.Future<$1.EcosystemInfoResponse> ecosystemInfo(
      $grpc.ServiceCall call, $1.EcosystemInfoRequest request);
  $async.Future<$1.GetPublicEcosystemInfoResponse> getPublicEcosystemInfo(
      $grpc.ServiceCall call, $1.GetPublicEcosystemInfoRequest request);
  $async.Future<$1.InviteResponse> invite(
      $grpc.ServiceCall call, $1.InviteRequest request);
  $async.Future<$1.InvitationStatusResponse> invitationStatus(
      $grpc.ServiceCall call, $1.InvitationStatusRequest request);
  $async.Future<$1.GetOberonKeyResponse> getOberonKey(
      $grpc.ServiceCall call, $1.GetOberonKeyRequest request);
  $async.Future<$1.UpgradeDidResponse> upgradeDID(
      $grpc.ServiceCall call, $1.UpgradeDidRequest request);
  $async.Future<$1.RetrieveDomainVerificationRecordResponse>
      retrieveDomainVerificationRecord($grpc.ServiceCall call,
          $1.RetrieveDomainVerificationRecordRequest request);
  $async.Future<$1.RefreshDomainVerificationStatusResponse>
      refreshDomainVerificationStatus($grpc.ServiceCall call,
          $1.RefreshDomainVerificationStatusRequest request);
  $async.Future<$1.SearchWalletConfigurationResponse>
      searchWalletConfigurations(
          $grpc.ServiceCall call, $1.SearchWalletConfigurationsRequest request);
}
