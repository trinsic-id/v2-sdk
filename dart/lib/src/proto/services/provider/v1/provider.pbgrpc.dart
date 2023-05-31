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
  static final _$getOberonKey =
      $grpc.ClientMethod<$2.GetOberonKeyRequest, $2.GetOberonKeyResponse>(
          '/services.provider.v1.Provider/GetOberonKey',
          ($2.GetOberonKeyRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.GetOberonKeyResponse.fromBuffer(value));
  static final _$upgradeDID =
      $grpc.ClientMethod<$2.UpgradeDidRequest, $2.UpgradeDidResponse>(
          '/services.provider.v1.Provider/UpgradeDID',
          ($2.UpgradeDidRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.UpgradeDidResponse.fromBuffer(value));
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

  $grpc.ResponseFuture<$2.GetOberonKeyResponse> getOberonKey(
      $2.GetOberonKeyRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOberonKey, request, options: options);
  }

  $grpc.ResponseFuture<$2.UpgradeDidResponse> upgradeDID(
      $2.UpgradeDidRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$upgradeDID, request, options: options);
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
    $addMethod(
        $grpc.ServiceMethod<$2.GetOberonKeyRequest, $2.GetOberonKeyResponse>(
            'GetOberonKey',
            getOberonKey_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.GetOberonKeyRequest.fromBuffer(value),
            ($2.GetOberonKeyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UpgradeDidRequest, $2.UpgradeDidResponse>(
        'UpgradeDID',
        upgradeDID_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.UpgradeDidRequest.fromBuffer(value),
        ($2.UpgradeDidResponse value) => value.writeToBuffer()));
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

  $async.Future<$2.GetOberonKeyResponse> getOberonKey_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.GetOberonKeyRequest> request) async {
    return getOberonKey(call, await request);
  }

  $async.Future<$2.UpgradeDidResponse> upgradeDID_Pre($grpc.ServiceCall call,
      $async.Future<$2.UpgradeDidRequest> request) async {
    return upgradeDID(call, await request);
  }

  $async.Future<$2.SearchWalletConfigurationResponse>
      searchWalletConfigurations_Pre($grpc.ServiceCall call,
          $async.Future<$2.SearchWalletConfigurationsRequest> request) async {
    return searchWalletConfigurations(call, await request);
  }

  $async.Future<$2.CreateEcosystemResponse> createEcosystem(
      $grpc.ServiceCall call, $2.CreateEcosystemRequest request);
  $async.Future<$2.GetOberonKeyResponse> getOberonKey(
      $grpc.ServiceCall call, $2.GetOberonKeyRequest request);
  $async.Future<$2.UpgradeDidResponse> upgradeDID(
      $grpc.ServiceCall call, $2.UpgradeDidRequest request);
  $async.Future<$2.SearchWalletConfigurationResponse>
      searchWalletConfigurations(
          $grpc.ServiceCall call, $2.SearchWalletConfigurationsRequest request);
}
