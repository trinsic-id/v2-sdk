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

import 'provider.pb.dart' as $5;

export 'provider.pb.dart';

@$pb.GrpcServiceName('services.provider.v1.Provider')
class ProviderClient extends $grpc.Client {
  static final _$createEcosystem =
      $grpc.ClientMethod<$5.CreateEcosystemRequest, $5.CreateEcosystemResponse>(
          '/services.provider.v1.Provider/CreateEcosystem',
          ($5.CreateEcosystemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.CreateEcosystemResponse.fromBuffer(value));
  static final _$getOberonKey =
      $grpc.ClientMethod<$5.GetOberonKeyRequest, $5.GetOberonKeyResponse>(
          '/services.provider.v1.Provider/GetOberonKey',
          ($5.GetOberonKeyRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.GetOberonKeyResponse.fromBuffer(value));
  static final _$upgradeDID =
      $grpc.ClientMethod<$5.UpgradeDidRequest, $5.UpgradeDidResponse>(
          '/services.provider.v1.Provider/UpgradeDID',
          ($5.UpgradeDidRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.UpgradeDidResponse.fromBuffer(value));
  static final _$searchWalletConfigurations = $grpc.ClientMethod<
          $5.SearchWalletConfigurationsRequest,
          $5.SearchWalletConfigurationResponse>(
      '/services.provider.v1.Provider/SearchWalletConfigurations',
      ($5.SearchWalletConfigurationsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.SearchWalletConfigurationResponse.fromBuffer(value));

  ProviderClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$5.CreateEcosystemResponse> createEcosystem(
      $5.CreateEcosystemRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createEcosystem, request, options: options);
  }

  $grpc.ResponseFuture<$5.GetOberonKeyResponse> getOberonKey(
      $5.GetOberonKeyRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOberonKey, request, options: options);
  }

  $grpc.ResponseFuture<$5.UpgradeDidResponse> upgradeDID(
      $5.UpgradeDidRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$upgradeDID, request, options: options);
  }

  $grpc.ResponseFuture<$5.SearchWalletConfigurationResponse>
      searchWalletConfigurations($5.SearchWalletConfigurationsRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$searchWalletConfigurations, request,
        options: options);
  }
}

@$pb.GrpcServiceName('services.provider.v1.Provider')
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
    $addMethod(
        $grpc.ServiceMethod<$5.GetOberonKeyRequest, $5.GetOberonKeyResponse>(
            'GetOberonKey',
            getOberonKey_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $5.GetOberonKeyRequest.fromBuffer(value),
            ($5.GetOberonKeyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UpgradeDidRequest, $5.UpgradeDidResponse>(
        'UpgradeDID',
        upgradeDID_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.UpgradeDidRequest.fromBuffer(value),
        ($5.UpgradeDidResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.SearchWalletConfigurationsRequest,
            $5.SearchWalletConfigurationResponse>(
        'SearchWalletConfigurations',
        searchWalletConfigurations_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.SearchWalletConfigurationsRequest.fromBuffer(value),
        ($5.SearchWalletConfigurationResponse value) => value.writeToBuffer()));
  }

  $async.Future<$5.CreateEcosystemResponse> createEcosystem_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.CreateEcosystemRequest> request) async {
    return createEcosystem(call, await request);
  }

  $async.Future<$5.GetOberonKeyResponse> getOberonKey_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.GetOberonKeyRequest> request) async {
    return getOberonKey(call, await request);
  }

  $async.Future<$5.UpgradeDidResponse> upgradeDID_Pre($grpc.ServiceCall call,
      $async.Future<$5.UpgradeDidRequest> request) async {
    return upgradeDID(call, await request);
  }

  $async.Future<$5.SearchWalletConfigurationResponse>
      searchWalletConfigurations_Pre($grpc.ServiceCall call,
          $async.Future<$5.SearchWalletConfigurationsRequest> request) async {
    return searchWalletConfigurations(call, await request);
  }

  $async.Future<$5.CreateEcosystemResponse> createEcosystem(
      $grpc.ServiceCall call, $5.CreateEcosystemRequest request);
  $async.Future<$5.GetOberonKeyResponse> getOberonKey(
      $grpc.ServiceCall call, $5.GetOberonKeyRequest request);
  $async.Future<$5.UpgradeDidResponse> upgradeDID(
      $grpc.ServiceCall call, $5.UpgradeDidRequest request);
  $async.Future<$5.SearchWalletConfigurationResponse>
      searchWalletConfigurations(
          $grpc.ServiceCall call, $5.SearchWalletConfigurationsRequest request);
}
