///
//  Generated code. Do not modify.
//  source: services/account/v1/account.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'account.pb.dart' as $2;
export 'account.pb.dart';

class AccountClient extends $grpc.Client {
  static final _$signIn =
      $grpc.ClientMethod<$2.SignInRequest, $2.SignInResponse>(
          '/services.account.v1.Account/SignIn',
          ($2.SignInRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.SignInResponse.fromBuffer(value));
  static final _$login = $grpc.ClientMethod<$2.LoginRequest, $2.LoginResponse>(
      '/services.account.v1.Account/Login',
      ($2.LoginRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.LoginResponse.fromBuffer(value));
  static final _$loginConfirm =
      $grpc.ClientMethod<$2.LoginConfirmRequest, $2.LoginConfirmResponse>(
          '/services.account.v1.Account/LoginConfirm',
          ($2.LoginConfirmRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.LoginConfirmResponse.fromBuffer(value));
  static final _$info =
      $grpc.ClientMethod<$2.AccountInfoRequest, $2.AccountInfoResponse>(
          '/services.account.v1.Account/Info',
          ($2.AccountInfoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.AccountInfoResponse.fromBuffer(value));
  static final _$listDevices =
      $grpc.ClientMethod<$2.ListDevicesRequest, $2.ListDevicesResponse>(
          '/services.account.v1.Account/ListDevices',
          ($2.ListDevicesRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.ListDevicesResponse.fromBuffer(value));
  static final _$revokeDevice =
      $grpc.ClientMethod<$2.RevokeDeviceRequest, $2.RevokeDeviceResponse>(
          '/services.account.v1.Account/RevokeDevice',
          ($2.RevokeDeviceRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.RevokeDeviceResponse.fromBuffer(value));
  static final _$authorizeWebhook = $grpc.ClientMethod<
          $2.AuthorizeWebhookRequest, $2.AuthorizeWebhookResponse>(
      '/services.account.v1.Account/AuthorizeWebhook',
      ($2.AuthorizeWebhookRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.AuthorizeWebhookResponse.fromBuffer(value));

  AccountClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$2.SignInResponse> signIn($2.SignInRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$signIn, request, options: options);
  }

  $grpc.ResponseFuture<$2.LoginResponse> login($2.LoginRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$login, request, options: options);
  }

  $grpc.ResponseFuture<$2.LoginConfirmResponse> loginConfirm(
      $2.LoginConfirmRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$loginConfirm, request, options: options);
  }

  $grpc.ResponseFuture<$2.AccountInfoResponse> info(
      $2.AccountInfoRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$info, request, options: options);
  }

  $grpc.ResponseFuture<$2.ListDevicesResponse> listDevices(
      $2.ListDevicesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listDevices, request, options: options);
  }

  $grpc.ResponseFuture<$2.RevokeDeviceResponse> revokeDevice(
      $2.RevokeDeviceRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$revokeDevice, request, options: options);
  }

  $grpc.ResponseFuture<$2.AuthorizeWebhookResponse> authorizeWebhook(
      $2.AuthorizeWebhookRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$authorizeWebhook, request, options: options);
  }
}

abstract class AccountServiceBase extends $grpc.Service {
  $core.String get $name => 'services.account.v1.Account';

  AccountServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.SignInRequest, $2.SignInResponse>(
        'SignIn',
        signIn_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.SignInRequest.fromBuffer(value),
        ($2.SignInResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.LoginRequest, $2.LoginResponse>(
        'Login',
        login_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.LoginRequest.fromBuffer(value),
        ($2.LoginResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.LoginConfirmRequest, $2.LoginConfirmResponse>(
            'LoginConfirm',
            loginConfirm_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.LoginConfirmRequest.fromBuffer(value),
            ($2.LoginConfirmResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.AccountInfoRequest, $2.AccountInfoResponse>(
            'Info',
            info_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.AccountInfoRequest.fromBuffer(value),
            ($2.AccountInfoResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.ListDevicesRequest, $2.ListDevicesResponse>(
            'ListDevices',
            listDevices_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.ListDevicesRequest.fromBuffer(value),
            ($2.ListDevicesResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.RevokeDeviceRequest, $2.RevokeDeviceResponse>(
            'RevokeDevice',
            revokeDevice_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.RevokeDeviceRequest.fromBuffer(value),
            ($2.RevokeDeviceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.AuthorizeWebhookRequest,
            $2.AuthorizeWebhookResponse>(
        'AuthorizeWebhook',
        authorizeWebhook_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.AuthorizeWebhookRequest.fromBuffer(value),
        ($2.AuthorizeWebhookResponse value) => value.writeToBuffer()));
  }

  $async.Future<$2.SignInResponse> signIn_Pre(
      $grpc.ServiceCall call, $async.Future<$2.SignInRequest> request) async {
    return signIn(call, await request);
  }

  $async.Future<$2.LoginResponse> login_Pre(
      $grpc.ServiceCall call, $async.Future<$2.LoginRequest> request) async {
    return login(call, await request);
  }

  $async.Future<$2.LoginConfirmResponse> loginConfirm_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.LoginConfirmRequest> request) async {
    return loginConfirm(call, await request);
  }

  $async.Future<$2.AccountInfoResponse> info_Pre($grpc.ServiceCall call,
      $async.Future<$2.AccountInfoRequest> request) async {
    return info(call, await request);
  }

  $async.Future<$2.ListDevicesResponse> listDevices_Pre($grpc.ServiceCall call,
      $async.Future<$2.ListDevicesRequest> request) async {
    return listDevices(call, await request);
  }

  $async.Future<$2.RevokeDeviceResponse> revokeDevice_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.RevokeDeviceRequest> request) async {
    return revokeDevice(call, await request);
  }

  $async.Future<$2.AuthorizeWebhookResponse> authorizeWebhook_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.AuthorizeWebhookRequest> request) async {
    return authorizeWebhook(call, await request);
  }

  $async.Future<$2.SignInResponse> signIn(
      $grpc.ServiceCall call, $2.SignInRequest request);
  $async.Future<$2.LoginResponse> login(
      $grpc.ServiceCall call, $2.LoginRequest request);
  $async.Future<$2.LoginConfirmResponse> loginConfirm(
      $grpc.ServiceCall call, $2.LoginConfirmRequest request);
  $async.Future<$2.AccountInfoResponse> info(
      $grpc.ServiceCall call, $2.AccountInfoRequest request);
  $async.Future<$2.ListDevicesResponse> listDevices(
      $grpc.ServiceCall call, $2.ListDevicesRequest request);
  $async.Future<$2.RevokeDeviceResponse> revokeDevice(
      $grpc.ServiceCall call, $2.RevokeDeviceRequest request);
  $async.Future<$2.AuthorizeWebhookResponse> authorizeWebhook(
      $grpc.ServiceCall call, $2.AuthorizeWebhookRequest request);
}
