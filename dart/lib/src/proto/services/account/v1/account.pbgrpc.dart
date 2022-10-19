///
//  Generated code. Do not modify.
//  source: services/account/v1/account.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'account.pb.dart' as $3;
export 'account.pb.dart';

class AccountClient extends $grpc.Client {
  static final _$signIn =
      $grpc.ClientMethod<$3.SignInRequest, $3.SignInResponse>(
          '/services.account.v1.Account/SignIn',
          ($3.SignInRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $3.SignInResponse.fromBuffer(value));
  static final _$login = $grpc.ClientMethod<$3.LoginRequest, $3.LoginResponse>(
      '/services.account.v1.Account/Login',
      ($3.LoginRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.LoginResponse.fromBuffer(value));
  static final _$loginConfirm =
      $grpc.ClientMethod<$3.LoginConfirmRequest, $3.LoginConfirmResponse>(
          '/services.account.v1.Account/LoginConfirm',
          ($3.LoginConfirmRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.LoginConfirmResponse.fromBuffer(value));
  static final _$info =
      $grpc.ClientMethod<$3.AccountInfoRequest, $3.AccountInfoResponse>(
          '/services.account.v1.Account/Info',
          ($3.AccountInfoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.AccountInfoResponse.fromBuffer(value));
  static final _$listDevices =
      $grpc.ClientMethod<$3.ListDevicesRequest, $3.ListDevicesResponse>(
          '/services.account.v1.Account/ListDevices',
          ($3.ListDevicesRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.ListDevicesResponse.fromBuffer(value));
  static final _$revokeDevice =
      $grpc.ClientMethod<$3.RevokeDeviceRequest, $3.RevokeDeviceResponse>(
          '/services.account.v1.Account/RevokeDevice',
          ($3.RevokeDeviceRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.RevokeDeviceResponse.fromBuffer(value));
  static final _$authorizeWebhook = $grpc.ClientMethod<
          $3.AuthorizeWebhookRequest, $3.AuthorizeWebhookResponse>(
      '/services.account.v1.Account/AuthorizeWebhook',
      ($3.AuthorizeWebhookRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $3.AuthorizeWebhookResponse.fromBuffer(value));

  AccountClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$3.SignInResponse> signIn($3.SignInRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$signIn, request, options: options);
  }

  $grpc.ResponseFuture<$3.LoginResponse> login($3.LoginRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$login, request, options: options);
  }

  $grpc.ResponseFuture<$3.LoginConfirmResponse> loginConfirm(
      $3.LoginConfirmRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$loginConfirm, request, options: options);
  }

  $grpc.ResponseFuture<$3.AccountInfoResponse> info(
      $3.AccountInfoRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$info, request, options: options);
  }

  $grpc.ResponseFuture<$3.ListDevicesResponse> listDevices(
      $3.ListDevicesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listDevices, request, options: options);
  }

  $grpc.ResponseFuture<$3.RevokeDeviceResponse> revokeDevice(
      $3.RevokeDeviceRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$revokeDevice, request, options: options);
  }

  $grpc.ResponseFuture<$3.AuthorizeWebhookResponse> authorizeWebhook(
      $3.AuthorizeWebhookRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$authorizeWebhook, request, options: options);
  }
}

abstract class AccountServiceBase extends $grpc.Service {
  $core.String get $name => 'services.account.v1.Account';

  AccountServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.SignInRequest, $3.SignInResponse>(
        'SignIn',
        signIn_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.SignInRequest.fromBuffer(value),
        ($3.SignInResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.LoginRequest, $3.LoginResponse>(
        'Login',
        login_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.LoginRequest.fromBuffer(value),
        ($3.LoginResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$3.LoginConfirmRequest, $3.LoginConfirmResponse>(
            'LoginConfirm',
            loginConfirm_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $3.LoginConfirmRequest.fromBuffer(value),
            ($3.LoginConfirmResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$3.AccountInfoRequest, $3.AccountInfoResponse>(
            'Info',
            info_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $3.AccountInfoRequest.fromBuffer(value),
            ($3.AccountInfoResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$3.ListDevicesRequest, $3.ListDevicesResponse>(
            'ListDevices',
            listDevices_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $3.ListDevicesRequest.fromBuffer(value),
            ($3.ListDevicesResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$3.RevokeDeviceRequest, $3.RevokeDeviceResponse>(
            'RevokeDevice',
            revokeDevice_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $3.RevokeDeviceRequest.fromBuffer(value),
            ($3.RevokeDeviceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.AuthorizeWebhookRequest,
            $3.AuthorizeWebhookResponse>(
        'AuthorizeWebhook',
        authorizeWebhook_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $3.AuthorizeWebhookRequest.fromBuffer(value),
        ($3.AuthorizeWebhookResponse value) => value.writeToBuffer()));
  }

  $async.Future<$3.SignInResponse> signIn_Pre(
      $grpc.ServiceCall call, $async.Future<$3.SignInRequest> request) async {
    return signIn(call, await request);
  }

  $async.Future<$3.LoginResponse> login_Pre(
      $grpc.ServiceCall call, $async.Future<$3.LoginRequest> request) async {
    return login(call, await request);
  }

  $async.Future<$3.LoginConfirmResponse> loginConfirm_Pre(
      $grpc.ServiceCall call,
      $async.Future<$3.LoginConfirmRequest> request) async {
    return loginConfirm(call, await request);
  }

  $async.Future<$3.AccountInfoResponse> info_Pre($grpc.ServiceCall call,
      $async.Future<$3.AccountInfoRequest> request) async {
    return info(call, await request);
  }

  $async.Future<$3.ListDevicesResponse> listDevices_Pre($grpc.ServiceCall call,
      $async.Future<$3.ListDevicesRequest> request) async {
    return listDevices(call, await request);
  }

  $async.Future<$3.RevokeDeviceResponse> revokeDevice_Pre(
      $grpc.ServiceCall call,
      $async.Future<$3.RevokeDeviceRequest> request) async {
    return revokeDevice(call, await request);
  }

  $async.Future<$3.AuthorizeWebhookResponse> authorizeWebhook_Pre(
      $grpc.ServiceCall call,
      $async.Future<$3.AuthorizeWebhookRequest> request) async {
    return authorizeWebhook(call, await request);
  }

  $async.Future<$3.SignInResponse> signIn(
      $grpc.ServiceCall call, $3.SignInRequest request);
  $async.Future<$3.LoginResponse> login(
      $grpc.ServiceCall call, $3.LoginRequest request);
  $async.Future<$3.LoginConfirmResponse> loginConfirm(
      $grpc.ServiceCall call, $3.LoginConfirmRequest request);
  $async.Future<$3.AccountInfoResponse> info(
      $grpc.ServiceCall call, $3.AccountInfoRequest request);
  $async.Future<$3.ListDevicesResponse> listDevices(
      $grpc.ServiceCall call, $3.ListDevicesRequest request);
  $async.Future<$3.RevokeDeviceResponse> revokeDevice(
      $grpc.ServiceCall call, $3.RevokeDeviceRequest request);
  $async.Future<$3.AuthorizeWebhookResponse> authorizeWebhook(
      $grpc.ServiceCall call, $3.AuthorizeWebhookRequest request);
}
