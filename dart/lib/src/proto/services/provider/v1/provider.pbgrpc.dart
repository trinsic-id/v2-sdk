//
//  Generated code. Do not modify.
//  source: services/provider/v1/provider.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'provider.pb.dart' as $4;

export 'provider.pb.dart';

@$pb.GrpcServiceName('services.provider.v1.Provider')
class ProviderClient extends $grpc.Client {
  static final _$createEcosystem =
      $grpc.ClientMethod<$4.CreateEcosystemRequest, $4.CreateEcosystemResponse>(
          '/services.provider.v1.Provider/CreateEcosystem',
          ($4.CreateEcosystemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.CreateEcosystemResponse.fromBuffer(value));
  static final _$getOberonKey =
      $grpc.ClientMethod<$4.GetOberonKeyRequest, $4.GetOberonKeyResponse>(
          '/services.provider.v1.Provider/GetOberonKey',
          ($4.GetOberonKeyRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.GetOberonKeyResponse.fromBuffer(value));
  static final _$upgradeDID =
      $grpc.ClientMethod<$4.UpgradeDidRequest, $4.UpgradeDidResponse>(
          '/services.provider.v1.Provider/UpgradeDID',
          ($4.UpgradeDidRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.UpgradeDidResponse.fromBuffer(value));
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

  $grpc.ResponseFuture<$4.GetOberonKeyResponse> getOberonKey(
      $4.GetOberonKeyRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOberonKey, request, options: options);
  }

  $grpc.ResponseFuture<$4.UpgradeDidResponse> upgradeDID(
      $4.UpgradeDidRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$upgradeDID, request, options: options);
  }

  $grpc.ResponseFuture<$4.SearchWalletConfigurationResponse>
      searchWalletConfigurations($4.SearchWalletConfigurationsRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$searchWalletConfigurations, request,
        options: options);
  }
}

@$pb.GrpcServiceName('services.provider.v1.Provider')
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
    $addMethod(
        $grpc.ServiceMethod<$4.GetOberonKeyRequest, $4.GetOberonKeyResponse>(
            'GetOberonKey',
            getOberonKey_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $4.GetOberonKeyRequest.fromBuffer(value),
            ($4.GetOberonKeyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.UpgradeDidRequest, $4.UpgradeDidResponse>(
        'UpgradeDID',
        upgradeDID_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.UpgradeDidRequest.fromBuffer(value),
        ($4.UpgradeDidResponse value) => value.writeToBuffer()));
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

  $async.Future<$4.GetOberonKeyResponse> getOberonKey_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.GetOberonKeyRequest> request) async {
    return getOberonKey(call, await request);
  }

  $async.Future<$4.UpgradeDidResponse> upgradeDID_Pre($grpc.ServiceCall call,
      $async.Future<$4.UpgradeDidRequest> request) async {
    return upgradeDID(call, await request);
  }

  $async.Future<$4.SearchWalletConfigurationResponse>
      searchWalletConfigurations_Pre($grpc.ServiceCall call,
          $async.Future<$4.SearchWalletConfigurationsRequest> request) async {
    return searchWalletConfigurations(call, await request);
  }

  $async.Future<$4.CreateEcosystemResponse> createEcosystem(
      $grpc.ServiceCall call, $4.CreateEcosystemRequest request);
  $async.Future<$4.GetOberonKeyResponse> getOberonKey(
      $grpc.ServiceCall call, $4.GetOberonKeyRequest request);
  $async.Future<$4.UpgradeDidResponse> upgradeDID(
      $grpc.ServiceCall call, $4.UpgradeDidRequest request);
  $async.Future<$4.SearchWalletConfigurationResponse>
      searchWalletConfigurations(
          $grpc.ServiceCall call, $4.SearchWalletConfigurationsRequest request);
}
