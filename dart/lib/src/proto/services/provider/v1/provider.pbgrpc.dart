///
//  Generated code. Do not modify.
//  source: services/provider/v1/provider.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'provider.pb.dart' as $7;
export 'provider.pb.dart';

class ProviderClient extends $grpc.Client {
  static final _$createEcosystem =
      $grpc.ClientMethod<$7.CreateEcosystemRequest, $7.CreateEcosystemResponse>(
          '/services.provider.v1.Provider/CreateEcosystem',
          ($7.CreateEcosystemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $7.CreateEcosystemResponse.fromBuffer(value));
  static final _$updateEcosystem =
      $grpc.ClientMethod<$7.UpdateEcosystemRequest, $7.UpdateEcosystemResponse>(
          '/services.provider.v1.Provider/UpdateEcosystem',
          ($7.UpdateEcosystemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $7.UpdateEcosystemResponse.fromBuffer(value));
  static final _$addWebhook =
      $grpc.ClientMethod<$7.AddWebhookRequest, $7.AddWebhookResponse>(
          '/services.provider.v1.Provider/AddWebhook',
          ($7.AddWebhookRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $7.AddWebhookResponse.fromBuffer(value));
  static final _$deleteWebhook =
      $grpc.ClientMethod<$7.DeleteWebhookRequest, $7.DeleteWebhookResponse>(
          '/services.provider.v1.Provider/DeleteWebhook',
          ($7.DeleteWebhookRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $7.DeleteWebhookResponse.fromBuffer(value));
  static final _$ecosystemInfo =
      $grpc.ClientMethod<$7.EcosystemInfoRequest, $7.EcosystemInfoResponse>(
          '/services.provider.v1.Provider/EcosystemInfo',
          ($7.EcosystemInfoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $7.EcosystemInfoResponse.fromBuffer(value));
  static final _$getPublicEcosystemInfo = $grpc.ClientMethod<
          $7.GetPublicEcosystemInfoRequest, $7.GetPublicEcosystemInfoResponse>(
      '/services.provider.v1.Provider/GetPublicEcosystemInfo',
      ($7.GetPublicEcosystemInfoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $7.GetPublicEcosystemInfoResponse.fromBuffer(value));
  static final _$invite =
      $grpc.ClientMethod<$7.InviteRequest, $7.InviteResponse>(
          '/services.provider.v1.Provider/Invite',
          ($7.InviteRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $7.InviteResponse.fromBuffer(value));
  static final _$invitationStatus = $grpc.ClientMethod<
          $7.InvitationStatusRequest, $7.InvitationStatusResponse>(
      '/services.provider.v1.Provider/InvitationStatus',
      ($7.InvitationStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $7.InvitationStatusResponse.fromBuffer(value));
  static final _$getOberonKey =
      $grpc.ClientMethod<$7.GetOberonKeyRequest, $7.GetOberonKeyResponse>(
          '/services.provider.v1.Provider/GetOberonKey',
          ($7.GetOberonKeyRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $7.GetOberonKeyResponse.fromBuffer(value));
  static final _$upgradeDID =
      $grpc.ClientMethod<$7.UpgradeDidRequest, $7.UpgradeDidResponse>(
          '/services.provider.v1.Provider/UpgradeDID',
          ($7.UpgradeDidRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $7.UpgradeDidResponse.fromBuffer(value));
  static final _$retrieveDomainVerificationRecord = $grpc.ClientMethod<
          $7.RetrieveDomainVerificationRecordRequest,
          $7.RetrieveDomainVerificationRecordResponse>(
      '/services.provider.v1.Provider/RetrieveDomainVerificationRecord',
      ($7.RetrieveDomainVerificationRecordRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $7.RetrieveDomainVerificationRecordResponse.fromBuffer(value));
  static final _$refreshDomainVerificationStatus = $grpc.ClientMethod<
          $7.RefreshDomainVerificationStatusRequest,
          $7.RefreshDomainVerificationStatusResponse>(
      '/services.provider.v1.Provider/RefreshDomainVerificationStatus',
      ($7.RefreshDomainVerificationStatusRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $7.RefreshDomainVerificationStatusResponse.fromBuffer(value));
  static final _$searchWalletConfigurations = $grpc.ClientMethod<
          $7.SearchWalletConfigurationsRequest,
          $7.SearchWalletConfigurationResponse>(
      '/services.provider.v1.Provider/SearchWalletConfigurations',
      ($7.SearchWalletConfigurationsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $7.SearchWalletConfigurationResponse.fromBuffer(value));

  ProviderClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$7.CreateEcosystemResponse> createEcosystem(
      $7.CreateEcosystemRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createEcosystem, request, options: options);
  }

  $grpc.ResponseFuture<$7.UpdateEcosystemResponse> updateEcosystem(
      $7.UpdateEcosystemRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateEcosystem, request, options: options);
  }

  $grpc.ResponseFuture<$7.AddWebhookResponse> addWebhook(
      $7.AddWebhookRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addWebhook, request, options: options);
  }

  $grpc.ResponseFuture<$7.DeleteWebhookResponse> deleteWebhook(
      $7.DeleteWebhookRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteWebhook, request, options: options);
  }

  $grpc.ResponseFuture<$7.EcosystemInfoResponse> ecosystemInfo(
      $7.EcosystemInfoRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$ecosystemInfo, request, options: options);
  }

  $grpc.ResponseFuture<$7.GetPublicEcosystemInfoResponse>
      getPublicEcosystemInfo($7.GetPublicEcosystemInfoRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPublicEcosystemInfo, request,
        options: options);
  }

  $grpc.ResponseFuture<$7.InviteResponse> invite($7.InviteRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$invite, request, options: options);
  }

  $grpc.ResponseFuture<$7.InvitationStatusResponse> invitationStatus(
      $7.InvitationStatusRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$invitationStatus, request, options: options);
  }

  $grpc.ResponseFuture<$7.GetOberonKeyResponse> getOberonKey(
      $7.GetOberonKeyRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOberonKey, request, options: options);
  }

  $grpc.ResponseFuture<$7.UpgradeDidResponse> upgradeDID(
      $7.UpgradeDidRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$upgradeDID, request, options: options);
  }

  $grpc.ResponseFuture<$7.RetrieveDomainVerificationRecordResponse>
      retrieveDomainVerificationRecord(
          $7.RetrieveDomainVerificationRecordRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$retrieveDomainVerificationRecord, request,
        options: options);
  }

  $grpc.ResponseFuture<$7.RefreshDomainVerificationStatusResponse>
      refreshDomainVerificationStatus(
          $7.RefreshDomainVerificationStatusRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$refreshDomainVerificationStatus, request,
        options: options);
  }

  $grpc.ResponseFuture<$7.SearchWalletConfigurationResponse>
      searchWalletConfigurations($7.SearchWalletConfigurationsRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$searchWalletConfigurations, request,
        options: options);
  }
}

abstract class ProviderServiceBase extends $grpc.Service {
  $core.String get $name => 'services.provider.v1.Provider';

  ProviderServiceBase() {
    $addMethod($grpc.ServiceMethod<$7.CreateEcosystemRequest,
            $7.CreateEcosystemResponse>(
        'CreateEcosystem',
        createEcosystem_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.CreateEcosystemRequest.fromBuffer(value),
        ($7.CreateEcosystemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.UpdateEcosystemRequest,
            $7.UpdateEcosystemResponse>(
        'UpdateEcosystem',
        updateEcosystem_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.UpdateEcosystemRequest.fromBuffer(value),
        ($7.UpdateEcosystemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.AddWebhookRequest, $7.AddWebhookResponse>(
        'AddWebhook',
        addWebhook_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.AddWebhookRequest.fromBuffer(value),
        ($7.AddWebhookResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$7.DeleteWebhookRequest, $7.DeleteWebhookResponse>(
            'DeleteWebhook',
            deleteWebhook_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $7.DeleteWebhookRequest.fromBuffer(value),
            ($7.DeleteWebhookResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$7.EcosystemInfoRequest, $7.EcosystemInfoResponse>(
            'EcosystemInfo',
            ecosystemInfo_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $7.EcosystemInfoRequest.fromBuffer(value),
            ($7.EcosystemInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.GetPublicEcosystemInfoRequest,
            $7.GetPublicEcosystemInfoResponse>(
        'GetPublicEcosystemInfo',
        getPublicEcosystemInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.GetPublicEcosystemInfoRequest.fromBuffer(value),
        ($7.GetPublicEcosystemInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.InviteRequest, $7.InviteResponse>(
        'Invite',
        invite_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.InviteRequest.fromBuffer(value),
        ($7.InviteResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.InvitationStatusRequest,
            $7.InvitationStatusResponse>(
        'InvitationStatus',
        invitationStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.InvitationStatusRequest.fromBuffer(value),
        ($7.InvitationStatusResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$7.GetOberonKeyRequest, $7.GetOberonKeyResponse>(
            'GetOberonKey',
            getOberonKey_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $7.GetOberonKeyRequest.fromBuffer(value),
            ($7.GetOberonKeyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.UpgradeDidRequest, $7.UpgradeDidResponse>(
        'UpgradeDID',
        upgradeDID_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.UpgradeDidRequest.fromBuffer(value),
        ($7.UpgradeDidResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.RetrieveDomainVerificationRecordRequest,
            $7.RetrieveDomainVerificationRecordResponse>(
        'RetrieveDomainVerificationRecord',
        retrieveDomainVerificationRecord_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.RetrieveDomainVerificationRecordRequest.fromBuffer(value),
        ($7.RetrieveDomainVerificationRecordResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.RefreshDomainVerificationStatusRequest,
            $7.RefreshDomainVerificationStatusResponse>(
        'RefreshDomainVerificationStatus',
        refreshDomainVerificationStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.RefreshDomainVerificationStatusRequest.fromBuffer(value),
        ($7.RefreshDomainVerificationStatusResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.SearchWalletConfigurationsRequest,
            $7.SearchWalletConfigurationResponse>(
        'SearchWalletConfigurations',
        searchWalletConfigurations_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.SearchWalletConfigurationsRequest.fromBuffer(value),
        ($7.SearchWalletConfigurationResponse value) => value.writeToBuffer()));
  }

  $async.Future<$7.CreateEcosystemResponse> createEcosystem_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.CreateEcosystemRequest> request) async {
    return createEcosystem(call, await request);
  }

  $async.Future<$7.UpdateEcosystemResponse> updateEcosystem_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.UpdateEcosystemRequest> request) async {
    return updateEcosystem(call, await request);
  }

  $async.Future<$7.AddWebhookResponse> addWebhook_Pre($grpc.ServiceCall call,
      $async.Future<$7.AddWebhookRequest> request) async {
    return addWebhook(call, await request);
  }

  $async.Future<$7.DeleteWebhookResponse> deleteWebhook_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.DeleteWebhookRequest> request) async {
    return deleteWebhook(call, await request);
  }

  $async.Future<$7.EcosystemInfoResponse> ecosystemInfo_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.EcosystemInfoRequest> request) async {
    return ecosystemInfo(call, await request);
  }

  $async.Future<$7.GetPublicEcosystemInfoResponse> getPublicEcosystemInfo_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.GetPublicEcosystemInfoRequest> request) async {
    return getPublicEcosystemInfo(call, await request);
  }

  $async.Future<$7.InviteResponse> invite_Pre(
      $grpc.ServiceCall call, $async.Future<$7.InviteRequest> request) async {
    return invite(call, await request);
  }

  $async.Future<$7.InvitationStatusResponse> invitationStatus_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.InvitationStatusRequest> request) async {
    return invitationStatus(call, await request);
  }

  $async.Future<$7.GetOberonKeyResponse> getOberonKey_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.GetOberonKeyRequest> request) async {
    return getOberonKey(call, await request);
  }

  $async.Future<$7.UpgradeDidResponse> upgradeDID_Pre($grpc.ServiceCall call,
      $async.Future<$7.UpgradeDidRequest> request) async {
    return upgradeDID(call, await request);
  }

  $async.Future<$7.RetrieveDomainVerificationRecordResponse>
      retrieveDomainVerificationRecord_Pre(
          $grpc.ServiceCall call,
          $async.Future<$7.RetrieveDomainVerificationRecordRequest>
              request) async {
    return retrieveDomainVerificationRecord(call, await request);
  }

  $async.Future<$7.RefreshDomainVerificationStatusResponse>
      refreshDomainVerificationStatus_Pre(
          $grpc.ServiceCall call,
          $async.Future<$7.RefreshDomainVerificationStatusRequest>
              request) async {
    return refreshDomainVerificationStatus(call, await request);
  }

  $async.Future<$7.SearchWalletConfigurationResponse>
      searchWalletConfigurations_Pre($grpc.ServiceCall call,
          $async.Future<$7.SearchWalletConfigurationsRequest> request) async {
    return searchWalletConfigurations(call, await request);
  }

  $async.Future<$7.CreateEcosystemResponse> createEcosystem(
      $grpc.ServiceCall call, $7.CreateEcosystemRequest request);
  $async.Future<$7.UpdateEcosystemResponse> updateEcosystem(
      $grpc.ServiceCall call, $7.UpdateEcosystemRequest request);
  $async.Future<$7.AddWebhookResponse> addWebhook(
      $grpc.ServiceCall call, $7.AddWebhookRequest request);
  $async.Future<$7.DeleteWebhookResponse> deleteWebhook(
      $grpc.ServiceCall call, $7.DeleteWebhookRequest request);
  $async.Future<$7.EcosystemInfoResponse> ecosystemInfo(
      $grpc.ServiceCall call, $7.EcosystemInfoRequest request);
  $async.Future<$7.GetPublicEcosystemInfoResponse> getPublicEcosystemInfo(
      $grpc.ServiceCall call, $7.GetPublicEcosystemInfoRequest request);
  $async.Future<$7.InviteResponse> invite(
      $grpc.ServiceCall call, $7.InviteRequest request);
  $async.Future<$7.InvitationStatusResponse> invitationStatus(
      $grpc.ServiceCall call, $7.InvitationStatusRequest request);
  $async.Future<$7.GetOberonKeyResponse> getOberonKey(
      $grpc.ServiceCall call, $7.GetOberonKeyRequest request);
  $async.Future<$7.UpgradeDidResponse> upgradeDID(
      $grpc.ServiceCall call, $7.UpgradeDidRequest request);
  $async.Future<$7.RetrieveDomainVerificationRecordResponse>
      retrieveDomainVerificationRecord($grpc.ServiceCall call,
          $7.RetrieveDomainVerificationRecordRequest request);
  $async.Future<$7.RefreshDomainVerificationStatusResponse>
      refreshDomainVerificationStatus($grpc.ServiceCall call,
          $7.RefreshDomainVerificationStatusRequest request);
  $async.Future<$7.SearchWalletConfigurationResponse>
      searchWalletConfigurations(
          $grpc.ServiceCall call, $7.SearchWalletConfigurationsRequest request);
}
