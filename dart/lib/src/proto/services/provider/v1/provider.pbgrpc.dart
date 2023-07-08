//
//  Generated code. Do not modify.
//  source: services/provider/v1/provider.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'provider.pb.dart' as $1;

export 'provider.pb.dart';

@$pb.GrpcServiceName('services.provider.v1.Provider')
class ProviderClient extends $grpc.Client {
  static final _$createEcosystem =
      $grpc.ClientMethod<$1.CreateEcosystemRequest, $1.CreateEcosystemResponse>(
          '/services.provider.v1.Provider/CreateEcosystem',
          ($1.CreateEcosystemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.CreateEcosystemResponse.fromBuffer(value));
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

  $grpc.ResponseFuture<$1.SearchWalletConfigurationResponse>
      searchWalletConfigurations($1.SearchWalletConfigurationsRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$searchWalletConfigurations, request,
        options: options);
  }
}

@$pb.GrpcServiceName('services.provider.v1.Provider')
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

  $async.Future<$1.GetOberonKeyResponse> getOberonKey_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.GetOberonKeyRequest> request) async {
    return getOberonKey(call, await request);
  }

  $async.Future<$1.UpgradeDidResponse> upgradeDID_Pre($grpc.ServiceCall call,
      $async.Future<$1.UpgradeDidRequest> request) async {
    return upgradeDID(call, await request);
  }

  $async.Future<$1.SearchWalletConfigurationResponse>
      searchWalletConfigurations_Pre($grpc.ServiceCall call,
          $async.Future<$1.SearchWalletConfigurationsRequest> request) async {
    return searchWalletConfigurations(call, await request);
  }

  $async.Future<$1.CreateEcosystemResponse> createEcosystem(
      $grpc.ServiceCall call, $1.CreateEcosystemRequest request);
  $async.Future<$1.GetOberonKeyResponse> getOberonKey(
      $grpc.ServiceCall call, $1.GetOberonKeyRequest request);
  $async.Future<$1.UpgradeDidResponse> upgradeDID(
      $grpc.ServiceCall call, $1.UpgradeDidRequest request);
  $async.Future<$1.SearchWalletConfigurationResponse>
      searchWalletConfigurations(
          $grpc.ServiceCall call, $1.SearchWalletConfigurationsRequest request);
}
