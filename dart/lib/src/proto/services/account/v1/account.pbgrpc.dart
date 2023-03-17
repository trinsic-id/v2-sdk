///
//  Generated code. Do not modify.
//  source: services/account/v1/account.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'account.pb.dart' as $1;
export 'account.pb.dart';

class AccountClient extends $grpc.Client {
  static final _$signIn =
      $grpc.ClientMethod<$1.SignInRequest, $1.SignInResponse>(
          '/services.account.v1.Account/SignIn',
          ($1.SignInRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.SignInResponse.fromBuffer(value));
  static final _$login = $grpc.ClientMethod<$1.LoginRequest, $1.LoginResponse>(
      '/services.account.v1.Account/Login',
      ($1.LoginRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.LoginResponse.fromBuffer(value));
  static final _$loginConfirm =
      $grpc.ClientMethod<$1.LoginConfirmRequest, $1.LoginConfirmResponse>(
          '/services.account.v1.Account/LoginConfirm',
          ($1.LoginConfirmRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.LoginConfirmResponse.fromBuffer(value));
  static final _$info =
      $grpc.ClientMethod<$1.AccountInfoRequest, $1.AccountInfoResponse>(
          '/services.account.v1.Account/Info',
          ($1.AccountInfoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.AccountInfoResponse.fromBuffer(value));
  static final _$authorizeWebhook = $grpc.ClientMethod<
          $1.AuthorizeWebhookRequest, $1.AuthorizeWebhookResponse>(
      '/services.account.v1.Account/AuthorizeWebhook',
      ($1.AuthorizeWebhookRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.AuthorizeWebhookResponse.fromBuffer(value));

  AccountClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.SignInResponse> signIn($1.SignInRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$signIn, request, options: options);
  }

  $grpc.ResponseFuture<$1.LoginResponse> login($1.LoginRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$login, request, options: options);
  }

  $grpc.ResponseFuture<$1.LoginConfirmResponse> loginConfirm(
      $1.LoginConfirmRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$loginConfirm, request, options: options);
  }

  $grpc.ResponseFuture<$1.AccountInfoResponse> info(
      $1.AccountInfoRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$info, request, options: options);
  }

  $grpc.ResponseFuture<$1.AuthorizeWebhookResponse> authorizeWebhook(
      $1.AuthorizeWebhookRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$authorizeWebhook, request, options: options);
  }
}

abstract class AccountServiceBase extends $grpc.Service {
  $core.String get $name => 'services.account.v1.Account';

  AccountServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.SignInRequest, $1.SignInResponse>(
        'SignIn',
        signIn_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.SignInRequest.fromBuffer(value),
        ($1.SignInResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.LoginRequest, $1.LoginResponse>(
        'Login',
        login_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.LoginRequest.fromBuffer(value),
        ($1.LoginResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.LoginConfirmRequest, $1.LoginConfirmResponse>(
            'LoginConfirm',
            loginConfirm_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.LoginConfirmRequest.fromBuffer(value),
            ($1.LoginConfirmResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.AccountInfoRequest, $1.AccountInfoResponse>(
            'Info',
            info_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.AccountInfoRequest.fromBuffer(value),
            ($1.AccountInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.AuthorizeWebhookRequest,
            $1.AuthorizeWebhookResponse>(
        'AuthorizeWebhook',
        authorizeWebhook_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.AuthorizeWebhookRequest.fromBuffer(value),
        ($1.AuthorizeWebhookResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.SignInResponse> signIn_Pre(
      $grpc.ServiceCall call, $async.Future<$1.SignInRequest> request) async {
    return signIn(call, await request);
  }

  $async.Future<$1.LoginResponse> login_Pre(
      $grpc.ServiceCall call, $async.Future<$1.LoginRequest> request) async {
    return login(call, await request);
  }

  $async.Future<$1.LoginConfirmResponse> loginConfirm_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.LoginConfirmRequest> request) async {
    return loginConfirm(call, await request);
  }

  $async.Future<$1.AccountInfoResponse> info_Pre($grpc.ServiceCall call,
      $async.Future<$1.AccountInfoRequest> request) async {
    return info(call, await request);
  }

  $async.Future<$1.AuthorizeWebhookResponse> authorizeWebhook_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.AuthorizeWebhookRequest> request) async {
    return authorizeWebhook(call, await request);
  }

  $async.Future<$1.SignInResponse> signIn(
      $grpc.ServiceCall call, $1.SignInRequest request);
  $async.Future<$1.LoginResponse> login(
      $grpc.ServiceCall call, $1.LoginRequest request);
  $async.Future<$1.LoginConfirmResponse> loginConfirm(
      $grpc.ServiceCall call, $1.LoginConfirmRequest request);
  $async.Future<$1.AccountInfoResponse> info(
      $grpc.ServiceCall call, $1.AccountInfoRequest request);
  $async.Future<$1.AuthorizeWebhookResponse> authorizeWebhook(
      $grpc.ServiceCall call, $1.AuthorizeWebhookRequest request);
}
