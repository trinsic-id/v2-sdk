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

import 'provider.pb.dart' as $3;

export 'provider.pb.dart';

@$pb.GrpcServiceName('services.provider.v1.Provider')
class ProviderClient extends $grpc.Client {
  static final _$createEcosystem =
      $grpc.ClientMethod<$3.CreateEcosystemRequest, $3.CreateEcosystemResponse>(
          '/services.provider.v1.Provider/CreateEcosystem',
          ($3.CreateEcosystemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.CreateEcosystemResponse.fromBuffer(value));
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

  $grpc.ResponseFuture<$3.SearchWalletConfigurationResponse>
      searchWalletConfigurations($3.SearchWalletConfigurationsRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$searchWalletConfigurations, request,
        options: options);
  }
}

@$pb.GrpcServiceName('services.provider.v1.Provider')
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

  $async.Future<$3.GetOberonKeyResponse> getOberonKey_Pre(
      $grpc.ServiceCall call,
      $async.Future<$3.GetOberonKeyRequest> request) async {
    return getOberonKey(call, await request);
  }

  $async.Future<$3.UpgradeDidResponse> upgradeDID_Pre($grpc.ServiceCall call,
      $async.Future<$3.UpgradeDidRequest> request) async {
    return upgradeDID(call, await request);
  }

  $async.Future<$3.SearchWalletConfigurationResponse>
      searchWalletConfigurations_Pre($grpc.ServiceCall call,
          $async.Future<$3.SearchWalletConfigurationsRequest> request) async {
    return searchWalletConfigurations(call, await request);
  }

  $async.Future<$3.CreateEcosystemResponse> createEcosystem(
      $grpc.ServiceCall call, $3.CreateEcosystemRequest request);
  $async.Future<$3.GetOberonKeyResponse> getOberonKey(
      $grpc.ServiceCall call, $3.GetOberonKeyRequest request);
  $async.Future<$3.UpgradeDidResponse> upgradeDID(
      $grpc.ServiceCall call, $3.UpgradeDidRequest request);
  $async.Future<$3.SearchWalletConfigurationResponse>
      searchWalletConfigurations(
          $grpc.ServiceCall call, $3.SearchWalletConfigurationsRequest request);
}
