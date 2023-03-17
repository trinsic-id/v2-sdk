///
//  Generated code. Do not modify.
//  source: services/provider/v1/provider.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'provider.pb.dart' as $3;
export 'provider.pb.dart';

class ProviderClient extends $grpc.Client {
  static final _$createEcosystem =
      $grpc.ClientMethod<$3.CreateEcosystemRequest, $3.CreateEcosystemResponse>(
          '/services.provider.v1.Provider/CreateEcosystem',
          ($3.CreateEcosystemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.CreateEcosystemResponse.fromBuffer(value));
  static final _$updateEcosystem =
      $grpc.ClientMethod<$3.UpdateEcosystemRequest, $3.UpdateEcosystemResponse>(
          '/services.provider.v1.Provider/UpdateEcosystem',
          ($3.UpdateEcosystemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.UpdateEcosystemResponse.fromBuffer(value));
  static final _$addWebhook =
      $grpc.ClientMethod<$3.AddWebhookRequest, $3.AddWebhookResponse>(
          '/services.provider.v1.Provider/AddWebhook',
          ($3.AddWebhookRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.AddWebhookResponse.fromBuffer(value));
  static final _$deleteWebhook =
      $grpc.ClientMethod<$3.DeleteWebhookRequest, $3.DeleteWebhookResponse>(
          '/services.provider.v1.Provider/DeleteWebhook',
          ($3.DeleteWebhookRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.DeleteWebhookResponse.fromBuffer(value));
  static final _$ecosystemInfo =
      $grpc.ClientMethod<$3.EcosystemInfoRequest, $3.EcosystemInfoResponse>(
          '/services.provider.v1.Provider/EcosystemInfo',
          ($3.EcosystemInfoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.EcosystemInfoResponse.fromBuffer(value));
  static final _$getPublicEcosystemInfo = $grpc.ClientMethod<
          $3.GetPublicEcosystemInfoRequest, $3.GetPublicEcosystemInfoResponse>(
      '/services.provider.v1.Provider/GetPublicEcosystemInfo',
      ($3.GetPublicEcosystemInfoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $3.GetPublicEcosystemInfoResponse.fromBuffer(value));
  static final _$invite =
      $grpc.ClientMethod<$3.InviteRequest, $3.InviteResponse>(
          '/services.provider.v1.Provider/Invite',
          ($3.InviteRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $3.InviteResponse.fromBuffer(value));
  static final _$invitationStatus = $grpc.ClientMethod<
          $3.InvitationStatusRequest, $3.InvitationStatusResponse>(
      '/services.provider.v1.Provider/InvitationStatus',
      ($3.InvitationStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $3.InvitationStatusResponse.fromBuffer(value));
  static final _$getOberonKey =
      $grpc.ClientMethod<$3.GetOberonKeyRequest, $3.GetOberonKeyResponse>(
          '/services.provider.v1.Provider/GetOberonKey',
          ($3.GetOberonKeyRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.GetOberonKeyResponse.fromBuffer(value));
  static final _$upgradeDID =
      $grpc.ClientMethod<$3.UpgradeDidRequest, $3.UpgradeDidResponse>(
          '/services.provider.v1.Provider/UpgradeDID',
          ($3.UpgradeDidRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.UpgradeDidResponse.fromBuffer(value));
  static final _$retrieveDomainVerificationRecord = $grpc.ClientMethod<
          $3.RetrieveDomainVerificationRecordRequest,
          $3.RetrieveDomainVerificationRecordResponse>(
      '/services.provider.v1.Provider/RetrieveDomainVerificationRecord',
      ($3.RetrieveDomainVerificationRecordRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $3.RetrieveDomainVerificationRecordResponse.fromBuffer(value));
  static final _$refreshDomainVerificationStatus = $grpc.ClientMethod<
          $3.RefreshDomainVerificationStatusRequest,
          $3.RefreshDomainVerificationStatusResponse>(
      '/services.provider.v1.Provider/RefreshDomainVerificationStatus',
      ($3.RefreshDomainVerificationStatusRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $3.RefreshDomainVerificationStatusResponse.fromBuffer(value));
  static final _$searchWalletConfigurations = $grpc.ClientMethod<
          $3.SearchWalletConfigurationsRequest,
          $3.SearchWalletConfigurationResponse>(
      '/services.provider.v1.Provider/SearchWalletConfigurations',
      ($3.SearchWalletConfigurationsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $3.SearchWalletConfigurationResponse.fromBuffer(value));

  ProviderClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$3.CreateEcosystemResponse> createEcosystem(
      $3.CreateEcosystemRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createEcosystem, request, options: options);
  }

  $grpc.ResponseFuture<$3.UpdateEcosystemResponse> updateEcosystem(
      $3.UpdateEcosystemRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateEcosystem, request, options: options);
  }

  $grpc.ResponseFuture<$3.AddWebhookResponse> addWebhook(
      $3.AddWebhookRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addWebhook, request, options: options);
  }

  $grpc.ResponseFuture<$3.DeleteWebhookResponse> deleteWebhook(
      $3.DeleteWebhookRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteWebhook, request, options: options);
  }

  $grpc.ResponseFuture<$3.EcosystemInfoResponse> ecosystemInfo(
      $3.EcosystemInfoRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$ecosystemInfo, request, options: options);
  }

  $grpc.ResponseFuture<$3.GetPublicEcosystemInfoResponse>
      getPublicEcosystemInfo($3.GetPublicEcosystemInfoRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPublicEcosystemInfo, request,
        options: options);
  }

  $grpc.ResponseFuture<$3.InviteResponse> invite($3.InviteRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$invite, request, options: options);
  }

  $grpc.ResponseFuture<$3.InvitationStatusResponse> invitationStatus(
      $3.InvitationStatusRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$invitationStatus, request, options: options);
  }

  $grpc.ResponseFuture<$3.GetOberonKeyResponse> getOberonKey(
      $3.GetOberonKeyRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOberonKey, request, options: options);
  }

  $grpc.ResponseFuture<$3.UpgradeDidResponse> upgradeDID(
      $3.UpgradeDidRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$upgradeDID, request, options: options);
  }

  $grpc.ResponseFuture<$3.RetrieveDomainVerificationRecordResponse>
      retrieveDomainVerificationRecord(
          $3.RetrieveDomainVerificationRecordRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$retrieveDomainVerificationRecord, request,
        options: options);
  }

  $grpc.ResponseFuture<$3.RefreshDomainVerificationStatusResponse>
      refreshDomainVerificationStatus(
          $3.RefreshDomainVerificationStatusRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$refreshDomainVerificationStatus, request,
        options: options);
  }

  $grpc.ResponseFuture<$3.SearchWalletConfigurationResponse>
      searchWalletConfigurations($3.SearchWalletConfigurationsRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$searchWalletConfigurations, request,
        options: options);
  }
}

abstract class ProviderServiceBase extends $grpc.Service {
  $core.String get $name => 'services.provider.v1.Provider';

  ProviderServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.CreateEcosystemRequest,
            $3.CreateEcosystemResponse>(
        'CreateEcosystem',
        createEcosystem_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $3.CreateEcosystemRequest.fromBuffer(value),
        ($3.CreateEcosystemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.UpdateEcosystemRequest,
            $3.UpdateEcosystemResponse>(
        'UpdateEcosystem',
        updateEcosystem_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $3.UpdateEcosystemRequest.fromBuffer(value),
        ($3.UpdateEcosystemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.AddWebhookRequest, $3.AddWebhookResponse>(
        'AddWebhook',
        addWebhook_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.AddWebhookRequest.fromBuffer(value),
        ($3.AddWebhookResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$3.DeleteWebhookRequest, $3.DeleteWebhookResponse>(
            'DeleteWebhook',
            deleteWebhook_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $3.DeleteWebhookRequest.fromBuffer(value),
            ($3.DeleteWebhookResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$3.EcosystemInfoRequest, $3.EcosystemInfoResponse>(
            'EcosystemInfo',
            ecosystemInfo_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $3.EcosystemInfoRequest.fromBuffer(value),
            ($3.EcosystemInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.GetPublicEcosystemInfoRequest,
            $3.GetPublicEcosystemInfoResponse>(
        'GetPublicEcosystemInfo',
        getPublicEcosystemInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $3.GetPublicEcosystemInfoRequest.fromBuffer(value),
        ($3.GetPublicEcosystemInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.InviteRequest, $3.InviteResponse>(
        'Invite',
        invite_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.InviteRequest.fromBuffer(value),
        ($3.InviteResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.InvitationStatusRequest,
            $3.InvitationStatusResponse>(
        'InvitationStatus',
        invitationStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $3.InvitationStatusRequest.fromBuffer(value),
        ($3.InvitationStatusResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$3.GetOberonKeyRequest, $3.GetOberonKeyResponse>(
            'GetOberonKey',
            getOberonKey_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $3.GetOberonKeyRequest.fromBuffer(value),
            ($3.GetOberonKeyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.UpgradeDidRequest, $3.UpgradeDidResponse>(
        'UpgradeDID',
        upgradeDID_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.UpgradeDidRequest.fromBuffer(value),
        ($3.UpgradeDidResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.RetrieveDomainVerificationRecordRequest,
            $3.RetrieveDomainVerificationRecordResponse>(
        'RetrieveDomainVerificationRecord',
        retrieveDomainVerificationRecord_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $3.RetrieveDomainVerificationRecordRequest.fromBuffer(value),
        ($3.RetrieveDomainVerificationRecordResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.RefreshDomainVerificationStatusRequest,
            $3.RefreshDomainVerificationStatusResponse>(
        'RefreshDomainVerificationStatus',
        refreshDomainVerificationStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $3.RefreshDomainVerificationStatusRequest.fromBuffer(value),
        ($3.RefreshDomainVerificationStatusResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.SearchWalletConfigurationsRequest,
            $3.SearchWalletConfigurationResponse>(
        'SearchWalletConfigurations',
        searchWalletConfigurations_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $3.SearchWalletConfigurationsRequest.fromBuffer(value),
        ($3.SearchWalletConfigurationResponse value) => value.writeToBuffer()));
  }

  $async.Future<$3.CreateEcosystemResponse> createEcosystem_Pre(
      $grpc.ServiceCall call,
      $async.Future<$3.CreateEcosystemRequest> request) async {
    return createEcosystem(call, await request);
  }

  $async.Future<$3.UpdateEcosystemResponse> updateEcosystem_Pre(
      $grpc.ServiceCall call,
      $async.Future<$3.UpdateEcosystemRequest> request) async {
    return updateEcosystem(call, await request);
  }

  $async.Future<$3.AddWebhookResponse> addWebhook_Pre($grpc.ServiceCall call,
      $async.Future<$3.AddWebhookRequest> request) async {
    return addWebhook(call, await request);
  }

  $async.Future<$3.DeleteWebhookResponse> deleteWebhook_Pre(
      $grpc.ServiceCall call,
      $async.Future<$3.DeleteWebhookRequest> request) async {
    return deleteWebhook(call, await request);
  }

  $async.Future<$3.EcosystemInfoResponse> ecosystemInfo_Pre(
      $grpc.ServiceCall call,
      $async.Future<$3.EcosystemInfoRequest> request) async {
    return ecosystemInfo(call, await request);
  }

  $async.Future<$3.GetPublicEcosystemInfoResponse> getPublicEcosystemInfo_Pre(
      $grpc.ServiceCall call,
      $async.Future<$3.GetPublicEcosystemInfoRequest> request) async {
    return getPublicEcosystemInfo(call, await request);
  }

  $async.Future<$3.InviteResponse> invite_Pre(
      $grpc.ServiceCall call, $async.Future<$3.InviteRequest> request) async {
    return invite(call, await request);
  }

  $async.Future<$3.InvitationStatusResponse> invitationStatus_Pre(
      $grpc.ServiceCall call,
      $async.Future<$3.InvitationStatusRequest> request) async {
    return invitationStatus(call, await request);
  }

  $async.Future<$3.GetOberonKeyResponse> getOberonKey_Pre(
      $grpc.ServiceCall call,
      $async.Future<$3.GetOberonKeyRequest> request) async {
    return getOberonKey(call, await request);
  }

  $async.Future<$3.UpgradeDidResponse> upgradeDID_Pre($grpc.ServiceCall call,
      $async.Future<$3.UpgradeDidRequest> request) async {
    return upgradeDID(call, await request);
  }

  $async.Future<$3.RetrieveDomainVerificationRecordResponse>
      retrieveDomainVerificationRecord_Pre(
          $grpc.ServiceCall call,
          $async.Future<$3.RetrieveDomainVerificationRecordRequest>
              request) async {
    return retrieveDomainVerificationRecord(call, await request);
  }

  $async.Future<$3.RefreshDomainVerificationStatusResponse>
      refreshDomainVerificationStatus_Pre(
          $grpc.ServiceCall call,
          $async.Future<$3.RefreshDomainVerificationStatusRequest>
              request) async {
    return refreshDomainVerificationStatus(call, await request);
  }

  $async.Future<$3.SearchWalletConfigurationResponse>
      searchWalletConfigurations_Pre($grpc.ServiceCall call,
          $async.Future<$3.SearchWalletConfigurationsRequest> request) async {
    return searchWalletConfigurations(call, await request);
  }

  $async.Future<$3.CreateEcosystemResponse> createEcosystem(
      $grpc.ServiceCall call, $3.CreateEcosystemRequest request);
  $async.Future<$3.UpdateEcosystemResponse> updateEcosystem(
      $grpc.ServiceCall call, $3.UpdateEcosystemRequest request);
  $async.Future<$3.AddWebhookResponse> addWebhook(
      $grpc.ServiceCall call, $3.AddWebhookRequest request);
  $async.Future<$3.DeleteWebhookResponse> deleteWebhook(
      $grpc.ServiceCall call, $3.DeleteWebhookRequest request);
  $async.Future<$3.EcosystemInfoResponse> ecosystemInfo(
      $grpc.ServiceCall call, $3.EcosystemInfoRequest request);
  $async.Future<$3.GetPublicEcosystemInfoResponse> getPublicEcosystemInfo(
      $grpc.ServiceCall call, $3.GetPublicEcosystemInfoRequest request);
  $async.Future<$3.InviteResponse> invite(
      $grpc.ServiceCall call, $3.InviteRequest request);
  $async.Future<$3.InvitationStatusResponse> invitationStatus(
      $grpc.ServiceCall call, $3.InvitationStatusRequest request);
  $async.Future<$3.GetOberonKeyResponse> getOberonKey(
      $grpc.ServiceCall call, $3.GetOberonKeyRequest request);
  $async.Future<$3.UpgradeDidResponse> upgradeDID(
      $grpc.ServiceCall call, $3.UpgradeDidRequest request);
  $async.Future<$3.RetrieveDomainVerificationRecordResponse>
      retrieveDomainVerificationRecord($grpc.ServiceCall call,
          $3.RetrieveDomainVerificationRecordRequest request);
  $async.Future<$3.RefreshDomainVerificationStatusResponse>
      refreshDomainVerificationStatus($grpc.ServiceCall call,
          $3.RefreshDomainVerificationStatusRequest request);
  $async.Future<$3.SearchWalletConfigurationResponse>
      searchWalletConfigurations(
          $grpc.ServiceCall call, $3.SearchWalletConfigurationsRequest request);
}
