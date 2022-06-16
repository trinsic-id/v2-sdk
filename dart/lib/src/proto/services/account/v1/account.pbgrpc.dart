///
//  Generated code. Do not modify.
//  source: services/account/v1/account.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'account.pb.dart' as $0;
export 'account.pb.dart';

class AccountClient extends $grpc.Client {
  static final _$signIn =
      $grpc.ClientMethod<$0.SignInRequest, $0.SignInResponse>(
          '/services.account.v1.Account/SignIn',
          ($0.SignInRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.SignInResponse.fromBuffer(value));
  static final _$login = $grpc.ClientMethod<$0.LoginRequest, $0.LoginResponse>(
      '/services.account.v1.Account/Login',
      ($0.LoginRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.LoginResponse.fromBuffer(value));
  static final _$loginConfirm =
      $grpc.ClientMethod<$0.LoginConfirmRequest, $0.LoginConfirmResponse>(
          '/services.account.v1.Account/LoginConfirm',
          ($0.LoginConfirmRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.LoginConfirmResponse.fromBuffer(value));
  static final _$info =
      $grpc.ClientMethod<$0.AccountInfoRequest, $0.AccountInfoResponse>(
          '/services.account.v1.Account/Info',
          ($0.AccountInfoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AccountInfoResponse.fromBuffer(value));
  static final _$listDevices =
      $grpc.ClientMethod<$0.ListDevicesRequest, $0.ListDevicesResponse>(
          '/services.account.v1.Account/ListDevices',
          ($0.ListDevicesRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ListDevicesResponse.fromBuffer(value));
  static final _$revokeDevice =
      $grpc.ClientMethod<$0.RevokeDeviceRequest, $0.RevokeDeviceResponse>(
          '/services.account.v1.Account/RevokeDevice',
          ($0.RevokeDeviceRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.RevokeDeviceResponse.fromBuffer(value));
  static final _$authorizeWebhook = $grpc.ClientMethod<
          $0.AuthorizeWebhookRequest, $0.AuthorizeWebhookResponse>(
      '/services.account.v1.Account/AuthorizeWebhook',
      ($0.AuthorizeWebhookRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.AuthorizeWebhookResponse.fromBuffer(value));

  AccountClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.SignInResponse> signIn($0.SignInRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$signIn, request, options: options);
  }

  $grpc.ResponseFuture<$0.LoginResponse> login($0.LoginRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$login, request, options: options);
  }

  $grpc.ResponseFuture<$0.LoginConfirmResponse> loginConfirm(
      $0.LoginConfirmRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$loginConfirm, request, options: options);
  }

  $grpc.ResponseFuture<$0.AccountInfoResponse> info(
      $0.AccountInfoRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$info, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListDevicesResponse> listDevices(
      $0.ListDevicesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listDevices, request, options: options);
  }

  $grpc.ResponseFuture<$0.RevokeDeviceResponse> revokeDevice(
      $0.RevokeDeviceRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$revokeDevice, request, options: options);
  }

  $grpc.ResponseFuture<$0.AuthorizeWebhookResponse> authorizeWebhook(
      $0.AuthorizeWebhookRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$authorizeWebhook, request, options: options);
  }
}

abstract class AccountServiceBase extends $grpc.Service {
  $core.String get $name => 'services.account.v1.Account';

  AccountServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.SignInRequest, $0.SignInResponse>(
        'SignIn',
        signIn_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SignInRequest.fromBuffer(value),
        ($0.SignInResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LoginRequest, $0.LoginResponse>(
        'Login',
        login_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LoginRequest.fromBuffer(value),
        ($0.LoginResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.LoginConfirmRequest, $0.LoginConfirmResponse>(
            'LoginConfirm',
            loginConfirm_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.LoginConfirmRequest.fromBuffer(value),
            ($0.LoginConfirmResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.AccountInfoRequest, $0.AccountInfoResponse>(
            'Info',
            info_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.AccountInfoRequest.fromBuffer(value),
            ($0.AccountInfoResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.ListDevicesRequest, $0.ListDevicesResponse>(
            'ListDevices',
            listDevices_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.ListDevicesRequest.fromBuffer(value),
            ($0.ListDevicesResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.RevokeDeviceRequest, $0.RevokeDeviceResponse>(
            'RevokeDevice',
            revokeDevice_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.RevokeDeviceRequest.fromBuffer(value),
            ($0.RevokeDeviceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AuthorizeWebhookRequest,
            $0.AuthorizeWebhookResponse>(
        'AuthorizeWebhook',
        authorizeWebhook_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AuthorizeWebhookRequest.fromBuffer(value),
        ($0.AuthorizeWebhookResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.SignInResponse> signIn_Pre(
      $grpc.ServiceCall call, $async.Future<$0.SignInRequest> request) async {
    return signIn(call, await request);
  }

  $async.Future<$0.LoginResponse> login_Pre(
      $grpc.ServiceCall call, $async.Future<$0.LoginRequest> request) async {
    return login(call, await request);
  }

  $async.Future<$0.LoginConfirmResponse> loginConfirm_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.LoginConfirmRequest> request) async {
    return loginConfirm(call, await request);
  }

  $async.Future<$0.AccountInfoResponse> info_Pre($grpc.ServiceCall call,
      $async.Future<$0.AccountInfoRequest> request) async {
    return info(call, await request);
  }

  $async.Future<$0.ListDevicesResponse> listDevices_Pre($grpc.ServiceCall call,
      $async.Future<$0.ListDevicesRequest> request) async {
    return listDevices(call, await request);
  }

  $async.Future<$0.RevokeDeviceResponse> revokeDevice_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.RevokeDeviceRequest> request) async {
    return revokeDevice(call, await request);
  }

  $async.Future<$0.AuthorizeWebhookResponse> authorizeWebhook_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AuthorizeWebhookRequest> request) async {
    return authorizeWebhook(call, await request);
  }

  $async.Future<$0.SignInResponse> signIn(
      $grpc.ServiceCall call, $0.SignInRequest request);
  $async.Future<$0.LoginResponse> login(
      $grpc.ServiceCall call, $0.LoginRequest request);
  $async.Future<$0.LoginConfirmResponse> loginConfirm(
      $grpc.ServiceCall call, $0.LoginConfirmRequest request);
  $async.Future<$0.AccountInfoResponse> info(
      $grpc.ServiceCall call, $0.AccountInfoRequest request);
  $async.Future<$0.ListDevicesResponse> listDevices(
      $grpc.ServiceCall call, $0.ListDevicesRequest request);
  $async.Future<$0.RevokeDeviceResponse> revokeDevice(
      $grpc.ServiceCall call, $0.RevokeDeviceRequest request);
  $async.Future<$0.AuthorizeWebhookResponse> authorizeWebhook(
      $grpc.ServiceCall call, $0.AuthorizeWebhookRequest request);
}
