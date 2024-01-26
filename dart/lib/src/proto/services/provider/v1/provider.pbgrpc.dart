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

import 'provider.pb.dart' as $0;

export 'provider.pb.dart';

@$pb.GrpcServiceName('services.provider.v1.Provider')
class ProviderClient extends $grpc.Client {
  static final _$createEcosystem =
      $grpc.ClientMethod<$0.CreateEcosystemRequest, $0.CreateEcosystemResponse>(
          '/services.provider.v1.Provider/CreateEcosystem',
          ($0.CreateEcosystemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.CreateEcosystemResponse.fromBuffer(value));
  static final _$getOberonKey =
      $grpc.ClientMethod<$0.GetOberonKeyRequest, $0.GetOberonKeyResponse>(
          '/services.provider.v1.Provider/GetOberonKey',
          ($0.GetOberonKeyRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetOberonKeyResponse.fromBuffer(value));
  static final _$upgradeDID =
      $grpc.ClientMethod<$0.UpgradeDidRequest, $0.UpgradeDidResponse>(
          '/services.provider.v1.Provider/UpgradeDID',
          ($0.UpgradeDidRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.UpgradeDidResponse.fromBuffer(value));
  static final _$searchWalletConfigurations = $grpc.ClientMethod<
          $0.SearchWalletConfigurationsRequest,
          $0.SearchWalletConfigurationResponse>(
      '/services.provider.v1.Provider/SearchWalletConfigurations',
      ($0.SearchWalletConfigurationsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.SearchWalletConfigurationResponse.fromBuffer(value));

  ProviderClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.CreateEcosystemResponse> createEcosystem(
      $0.CreateEcosystemRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createEcosystem, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetOberonKeyResponse> getOberonKey(
      $0.GetOberonKeyRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOberonKey, request, options: options);
  }

  $grpc.ResponseFuture<$0.UpgradeDidResponse> upgradeDID(
      $0.UpgradeDidRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$upgradeDID, request, options: options);
  }

  $grpc.ResponseFuture<$0.SearchWalletConfigurationResponse>
      searchWalletConfigurations($0.SearchWalletConfigurationsRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$searchWalletConfigurations, request,
        options: options);
  }
}

@$pb.GrpcServiceName('services.provider.v1.Provider')
abstract class ProviderServiceBase extends $grpc.Service {
  $core.String get $name => 'services.provider.v1.Provider';

  ProviderServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CreateEcosystemRequest,
            $0.CreateEcosystemResponse>(
        'CreateEcosystem',
        createEcosystem_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CreateEcosystemRequest.fromBuffer(value),
        ($0.CreateEcosystemResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.GetOberonKeyRequest, $0.GetOberonKeyResponse>(
            'GetOberonKey',
            getOberonKey_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.GetOberonKeyRequest.fromBuffer(value),
            ($0.GetOberonKeyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpgradeDidRequest, $0.UpgradeDidResponse>(
        'UpgradeDID',
        upgradeDID_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpgradeDidRequest.fromBuffer(value),
        ($0.UpgradeDidResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SearchWalletConfigurationsRequest,
            $0.SearchWalletConfigurationResponse>(
        'SearchWalletConfigurations',
        searchWalletConfigurations_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.SearchWalletConfigurationsRequest.fromBuffer(value),
        ($0.SearchWalletConfigurationResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.CreateEcosystemResponse> createEcosystem_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.CreateEcosystemRequest> request) async {
    return createEcosystem(call, await request);
  }

  $async.Future<$0.GetOberonKeyResponse> getOberonKey_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetOberonKeyRequest> request) async {
    return getOberonKey(call, await request);
  }

  $async.Future<$0.UpgradeDidResponse> upgradeDID_Pre($grpc.ServiceCall call,
      $async.Future<$0.UpgradeDidRequest> request) async {
    return upgradeDID(call, await request);
  }

  $async.Future<$0.SearchWalletConfigurationResponse>
      searchWalletConfigurations_Pre($grpc.ServiceCall call,
          $async.Future<$0.SearchWalletConfigurationsRequest> request) async {
    return searchWalletConfigurations(call, await request);
  }

  $async.Future<$0.CreateEcosystemResponse> createEcosystem(
      $grpc.ServiceCall call, $0.CreateEcosystemRequest request);
  $async.Future<$0.GetOberonKeyResponse> getOberonKey(
      $grpc.ServiceCall call, $0.GetOberonKeyRequest request);
  $async.Future<$0.UpgradeDidResponse> upgradeDID(
      $grpc.ServiceCall call, $0.UpgradeDidRequest request);
  $async.Future<$0.SearchWalletConfigurationResponse>
      searchWalletConfigurations(
          $grpc.ServiceCall call, $0.SearchWalletConfigurationsRequest request);
}
