///
//  Generated code. Do not modify.
//  source: services/universal-wallet/v1/universal-wallet.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'universal-wallet.pb.dart' as $3;
export 'universal-wallet.pb.dart';

class UniversalWalletClient extends $grpc.Client {
  static final _$getItem =
      $grpc.ClientMethod<$3.GetItemRequest, $3.GetItemResponse>(
          '/services.universalwallet.v1.UniversalWallet/GetItem',
          ($3.GetItemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.GetItemResponse.fromBuffer(value));
  static final _$search =
      $grpc.ClientMethod<$3.SearchRequest, $3.SearchResponse>(
          '/services.universalwallet.v1.UniversalWallet/Search',
          ($3.SearchRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $3.SearchResponse.fromBuffer(value));
  static final _$insertItem =
      $grpc.ClientMethod<$3.InsertItemRequest, $3.InsertItemResponse>(
          '/services.universalwallet.v1.UniversalWallet/InsertItem',
          ($3.InsertItemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.InsertItemResponse.fromBuffer(value));
  static final _$updateItem =
      $grpc.ClientMethod<$3.UpdateItemRequest, $3.UpdateItemResponse>(
          '/services.universalwallet.v1.UniversalWallet/UpdateItem',
          ($3.UpdateItemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.UpdateItemResponse.fromBuffer(value));
  static final _$deleteItem =
      $grpc.ClientMethod<$3.DeleteItemRequest, $3.DeleteItemResponse>(
          '/services.universalwallet.v1.UniversalWallet/DeleteItem',
          ($3.DeleteItemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.DeleteItemResponse.fromBuffer(value));
  static final _$deleteWallet =
      $grpc.ClientMethod<$3.DeleteWalletRequest, $3.DeleteWalletResponse>(
          '/services.universalwallet.v1.UniversalWallet/DeleteWallet',
          ($3.DeleteWalletRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.DeleteWalletResponse.fromBuffer(value));
  static final _$createWallet =
      $grpc.ClientMethod<$3.CreateWalletRequest, $3.CreateWalletResponse>(
          '/services.universalwallet.v1.UniversalWallet/CreateWallet',
          ($3.CreateWalletRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.CreateWalletResponse.fromBuffer(value));
  static final _$getWalletInfo =
      $grpc.ClientMethod<$3.GetWalletInfoRequest, $3.GetWalletInfoResponse>(
          '/services.universalwallet.v1.UniversalWallet/GetWalletInfo',
          ($3.GetWalletInfoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.GetWalletInfoResponse.fromBuffer(value));
  static final _$getMyInfo =
      $grpc.ClientMethod<$3.GetMyInfoRequest, $3.GetMyInfoResponse>(
          '/services.universalwallet.v1.UniversalWallet/GetMyInfo',
          ($3.GetMyInfoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.GetMyInfoResponse.fromBuffer(value));
  static final _$generateAuthToken = $grpc.ClientMethod<
          $3.GenerateAuthTokenRequest, $3.GenerateAuthTokenResponse>(
      '/services.universalwallet.v1.UniversalWallet/GenerateAuthToken',
      ($3.GenerateAuthTokenRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $3.GenerateAuthTokenResponse.fromBuffer(value));
  static final _$revokeAuthToken =
      $grpc.ClientMethod<$3.RevokeAuthTokenRequest, $3.RevokeAuthTokenResponse>(
          '/services.universalwallet.v1.UniversalWallet/RevokeAuthToken',
          ($3.RevokeAuthTokenRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.RevokeAuthTokenResponse.fromBuffer(value));
  static final _$addExternalIdentityInit = $grpc.ClientMethod<
          $3.AddExternalIdentityInitRequest,
          $3.AddExternalIdentityInitResponse>(
      '/services.universalwallet.v1.UniversalWallet/AddExternalIdentityInit',
      ($3.AddExternalIdentityInitRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $3.AddExternalIdentityInitResponse.fromBuffer(value));
  static final _$addExternalIdentityConfirm = $grpc.ClientMethod<
          $3.AddExternalIdentityConfirmRequest,
          $3.AddExternalIdentityConfirmResponse>(
      '/services.universalwallet.v1.UniversalWallet/AddExternalIdentityConfirm',
      ($3.AddExternalIdentityConfirmRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $3.AddExternalIdentityConfirmResponse.fromBuffer(value));
  static final _$removeExternalIdentity = $grpc.ClientMethod<
          $3.RemoveExternalIdentityRequest, $3.RemoveExternalIdentityResponse>(
      '/services.universalwallet.v1.UniversalWallet/RemoveExternalIdentity',
      ($3.RemoveExternalIdentityRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $3.RemoveExternalIdentityResponse.fromBuffer(value));
  static final _$authenticateInit = $grpc.ClientMethod<
          $3.AuthenticateInitRequest, $3.AuthenticateInitResponse>(
      '/services.universalwallet.v1.UniversalWallet/AuthenticateInit',
      ($3.AuthenticateInitRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $3.AuthenticateInitResponse.fromBuffer(value));
  static final _$authenticateConfirm = $grpc.ClientMethod<
          $3.AuthenticateConfirmRequest, $3.AuthenticateConfirmResponse>(
      '/services.universalwallet.v1.UniversalWallet/AuthenticateConfirm',
      ($3.AuthenticateConfirmRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $3.AuthenticateConfirmResponse.fromBuffer(value));
  static final _$authenticateResendCode = $grpc.ClientMethod<
          $3.AuthenticateResendCodeRequest, $3.AuthenticateResendCodeResponse>(
      '/services.universalwallet.v1.UniversalWallet/AuthenticateResendCode',
      ($3.AuthenticateResendCodeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $3.AuthenticateResendCodeResponse.fromBuffer(value));
  static final _$listWallets =
      $grpc.ClientMethod<$3.ListWalletsRequest, $3.ListWalletsResponse>(
          '/services.universalwallet.v1.UniversalWallet/ListWallets',
          ($3.ListWalletsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.ListWalletsResponse.fromBuffer(value));

  UniversalWalletClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$3.GetItemResponse> getItem($3.GetItemRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getItem, request, options: options);
  }

  $grpc.ResponseFuture<$3.SearchResponse> search($3.SearchRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$search, request, options: options);
  }

  $grpc.ResponseFuture<$3.InsertItemResponse> insertItem(
      $3.InsertItemRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$insertItem, request, options: options);
  }

  $grpc.ResponseFuture<$3.UpdateItemResponse> updateItem(
      $3.UpdateItemRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateItem, request, options: options);
  }

  $grpc.ResponseFuture<$3.DeleteItemResponse> deleteItem(
      $3.DeleteItemRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteItem, request, options: options);
  }

  $grpc.ResponseFuture<$3.DeleteWalletResponse> deleteWallet(
      $3.DeleteWalletRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteWallet, request, options: options);
  }

  $grpc.ResponseFuture<$3.CreateWalletResponse> createWallet(
      $3.CreateWalletRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createWallet, request, options: options);
  }

  $grpc.ResponseFuture<$3.GetWalletInfoResponse> getWalletInfo(
      $3.GetWalletInfoRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getWalletInfo, request, options: options);
  }

  $grpc.ResponseFuture<$3.GetMyInfoResponse> getMyInfo(
      $3.GetMyInfoRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMyInfo, request, options: options);
  }

  $grpc.ResponseFuture<$3.GenerateAuthTokenResponse> generateAuthToken(
      $3.GenerateAuthTokenRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$generateAuthToken, request, options: options);
  }

  $grpc.ResponseFuture<$3.RevokeAuthTokenResponse> revokeAuthToken(
      $3.RevokeAuthTokenRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$revokeAuthToken, request, options: options);
  }

  $grpc.ResponseFuture<$3.AddExternalIdentityInitResponse>
      addExternalIdentityInit($3.AddExternalIdentityInitRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addExternalIdentityInit, request,
        options: options);
  }

  $grpc.ResponseFuture<$3.AddExternalIdentityConfirmResponse>
      addExternalIdentityConfirm($3.AddExternalIdentityConfirmRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addExternalIdentityConfirm, request,
        options: options);
  }

  $grpc.ResponseFuture<$3.RemoveExternalIdentityResponse>
      removeExternalIdentity($3.RemoveExternalIdentityRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeExternalIdentity, request,
        options: options);
  }

  $grpc.ResponseFuture<$3.AuthenticateInitResponse> authenticateInit(
      $3.AuthenticateInitRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$authenticateInit, request, options: options);
  }

  $grpc.ResponseFuture<$3.AuthenticateConfirmResponse> authenticateConfirm(
      $3.AuthenticateConfirmRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$authenticateConfirm, request, options: options);
  }

  $grpc.ResponseFuture<$3.AuthenticateResendCodeResponse>
      authenticateResendCode($3.AuthenticateResendCodeRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$authenticateResendCode, request,
        options: options);
  }

  $grpc.ResponseFuture<$3.ListWalletsResponse> listWallets(
      $3.ListWalletsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listWallets, request, options: options);
  }
}

abstract class UniversalWalletServiceBase extends $grpc.Service {
  $core.String get $name => 'services.universalwallet.v1.UniversalWallet';

  UniversalWalletServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.GetItemRequest, $3.GetItemResponse>(
        'GetItem',
        getItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.GetItemRequest.fromBuffer(value),
        ($3.GetItemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.SearchRequest, $3.SearchResponse>(
        'Search',
        search_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.SearchRequest.fromBuffer(value),
        ($3.SearchResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.InsertItemRequest, $3.InsertItemResponse>(
        'InsertItem',
        insertItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.InsertItemRequest.fromBuffer(value),
        ($3.InsertItemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.UpdateItemRequest, $3.UpdateItemResponse>(
        'UpdateItem',
        updateItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.UpdateItemRequest.fromBuffer(value),
        ($3.UpdateItemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.DeleteItemRequest, $3.DeleteItemResponse>(
        'DeleteItem',
        deleteItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.DeleteItemRequest.fromBuffer(value),
        ($3.DeleteItemResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$3.DeleteWalletRequest, $3.DeleteWalletResponse>(
            'DeleteWallet',
            deleteWallet_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $3.DeleteWalletRequest.fromBuffer(value),
            ($3.DeleteWalletResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$3.CreateWalletRequest, $3.CreateWalletResponse>(
            'CreateWallet',
            createWallet_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $3.CreateWalletRequest.fromBuffer(value),
            ($3.CreateWalletResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$3.GetWalletInfoRequest, $3.GetWalletInfoResponse>(
            'GetWalletInfo',
            getWalletInfo_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $3.GetWalletInfoRequest.fromBuffer(value),
            ($3.GetWalletInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.GetMyInfoRequest, $3.GetMyInfoResponse>(
        'GetMyInfo',
        getMyInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.GetMyInfoRequest.fromBuffer(value),
        ($3.GetMyInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.GenerateAuthTokenRequest,
            $3.GenerateAuthTokenResponse>(
        'GenerateAuthToken',
        generateAuthToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $3.GenerateAuthTokenRequest.fromBuffer(value),
        ($3.GenerateAuthTokenResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.RevokeAuthTokenRequest,
            $3.RevokeAuthTokenResponse>(
        'RevokeAuthToken',
        revokeAuthToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $3.RevokeAuthTokenRequest.fromBuffer(value),
        ($3.RevokeAuthTokenResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.AddExternalIdentityInitRequest,
            $3.AddExternalIdentityInitResponse>(
        'AddExternalIdentityInit',
        addExternalIdentityInit_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $3.AddExternalIdentityInitRequest.fromBuffer(value),
        ($3.AddExternalIdentityInitResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.AddExternalIdentityConfirmRequest,
            $3.AddExternalIdentityConfirmResponse>(
        'AddExternalIdentityConfirm',
        addExternalIdentityConfirm_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $3.AddExternalIdentityConfirmRequest.fromBuffer(value),
        ($3.AddExternalIdentityConfirmResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.RemoveExternalIdentityRequest,
            $3.RemoveExternalIdentityResponse>(
        'RemoveExternalIdentity',
        removeExternalIdentity_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $3.RemoveExternalIdentityRequest.fromBuffer(value),
        ($3.RemoveExternalIdentityResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.AuthenticateInitRequest,
            $3.AuthenticateInitResponse>(
        'AuthenticateInit',
        authenticateInit_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $3.AuthenticateInitRequest.fromBuffer(value),
        ($3.AuthenticateInitResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.AuthenticateConfirmRequest,
            $3.AuthenticateConfirmResponse>(
        'AuthenticateConfirm',
        authenticateConfirm_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $3.AuthenticateConfirmRequest.fromBuffer(value),
        ($3.AuthenticateConfirmResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.AuthenticateResendCodeRequest,
            $3.AuthenticateResendCodeResponse>(
        'AuthenticateResendCode',
        authenticateResendCode_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $3.AuthenticateResendCodeRequest.fromBuffer(value),
        ($3.AuthenticateResendCodeResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$3.ListWalletsRequest, $3.ListWalletsResponse>(
            'ListWallets',
            listWallets_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $3.ListWalletsRequest.fromBuffer(value),
            ($3.ListWalletsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$3.GetItemResponse> getItem_Pre(
      $grpc.ServiceCall call, $async.Future<$3.GetItemRequest> request) async {
    return getItem(call, await request);
  }

  $async.Future<$3.SearchResponse> search_Pre(
      $grpc.ServiceCall call, $async.Future<$3.SearchRequest> request) async {
    return search(call, await request);
  }

  $async.Future<$3.InsertItemResponse> insertItem_Pre($grpc.ServiceCall call,
      $async.Future<$3.InsertItemRequest> request) async {
    return insertItem(call, await request);
  }

  $async.Future<$3.UpdateItemResponse> updateItem_Pre($grpc.ServiceCall call,
      $async.Future<$3.UpdateItemRequest> request) async {
    return updateItem(call, await request);
  }

  $async.Future<$3.DeleteItemResponse> deleteItem_Pre($grpc.ServiceCall call,
      $async.Future<$3.DeleteItemRequest> request) async {
    return deleteItem(call, await request);
  }

  $async.Future<$3.DeleteWalletResponse> deleteWallet_Pre(
      $grpc.ServiceCall call,
      $async.Future<$3.DeleteWalletRequest> request) async {
    return deleteWallet(call, await request);
  }

  $async.Future<$3.CreateWalletResponse> createWallet_Pre(
      $grpc.ServiceCall call,
      $async.Future<$3.CreateWalletRequest> request) async {
    return createWallet(call, await request);
  }

  $async.Future<$3.GetWalletInfoResponse> getWalletInfo_Pre(
      $grpc.ServiceCall call,
      $async.Future<$3.GetWalletInfoRequest> request) async {
    return getWalletInfo(call, await request);
  }

  $async.Future<$3.GetMyInfoResponse> getMyInfo_Pre($grpc.ServiceCall call,
      $async.Future<$3.GetMyInfoRequest> request) async {
    return getMyInfo(call, await request);
  }

  $async.Future<$3.GenerateAuthTokenResponse> generateAuthToken_Pre(
      $grpc.ServiceCall call,
      $async.Future<$3.GenerateAuthTokenRequest> request) async {
    return generateAuthToken(call, await request);
  }

  $async.Future<$3.RevokeAuthTokenResponse> revokeAuthToken_Pre(
      $grpc.ServiceCall call,
      $async.Future<$3.RevokeAuthTokenRequest> request) async {
    return revokeAuthToken(call, await request);
  }

  $async.Future<$3.AddExternalIdentityInitResponse> addExternalIdentityInit_Pre(
      $grpc.ServiceCall call,
      $async.Future<$3.AddExternalIdentityInitRequest> request) async {
    return addExternalIdentityInit(call, await request);
  }

  $async.Future<$3.AddExternalIdentityConfirmResponse>
      addExternalIdentityConfirm_Pre($grpc.ServiceCall call,
          $async.Future<$3.AddExternalIdentityConfirmRequest> request) async {
    return addExternalIdentityConfirm(call, await request);
  }

  $async.Future<$3.RemoveExternalIdentityResponse> removeExternalIdentity_Pre(
      $grpc.ServiceCall call,
      $async.Future<$3.RemoveExternalIdentityRequest> request) async {
    return removeExternalIdentity(call, await request);
  }

  $async.Future<$3.AuthenticateInitResponse> authenticateInit_Pre(
      $grpc.ServiceCall call,
      $async.Future<$3.AuthenticateInitRequest> request) async {
    return authenticateInit(call, await request);
  }

  $async.Future<$3.AuthenticateConfirmResponse> authenticateConfirm_Pre(
      $grpc.ServiceCall call,
      $async.Future<$3.AuthenticateConfirmRequest> request) async {
    return authenticateConfirm(call, await request);
  }

  $async.Future<$3.AuthenticateResendCodeResponse> authenticateResendCode_Pre(
      $grpc.ServiceCall call,
      $async.Future<$3.AuthenticateResendCodeRequest> request) async {
    return authenticateResendCode(call, await request);
  }

  $async.Future<$3.ListWalletsResponse> listWallets_Pre($grpc.ServiceCall call,
      $async.Future<$3.ListWalletsRequest> request) async {
    return listWallets(call, await request);
  }

  $async.Future<$3.GetItemResponse> getItem(
      $grpc.ServiceCall call, $3.GetItemRequest request);
  $async.Future<$3.SearchResponse> search(
      $grpc.ServiceCall call, $3.SearchRequest request);
  $async.Future<$3.InsertItemResponse> insertItem(
      $grpc.ServiceCall call, $3.InsertItemRequest request);
  $async.Future<$3.UpdateItemResponse> updateItem(
      $grpc.ServiceCall call, $3.UpdateItemRequest request);
  $async.Future<$3.DeleteItemResponse> deleteItem(
      $grpc.ServiceCall call, $3.DeleteItemRequest request);
  $async.Future<$3.DeleteWalletResponse> deleteWallet(
      $grpc.ServiceCall call, $3.DeleteWalletRequest request);
  $async.Future<$3.CreateWalletResponse> createWallet(
      $grpc.ServiceCall call, $3.CreateWalletRequest request);
  $async.Future<$3.GetWalletInfoResponse> getWalletInfo(
      $grpc.ServiceCall call, $3.GetWalletInfoRequest request);
  $async.Future<$3.GetMyInfoResponse> getMyInfo(
      $grpc.ServiceCall call, $3.GetMyInfoRequest request);
  $async.Future<$3.GenerateAuthTokenResponse> generateAuthToken(
      $grpc.ServiceCall call, $3.GenerateAuthTokenRequest request);
  $async.Future<$3.RevokeAuthTokenResponse> revokeAuthToken(
      $grpc.ServiceCall call, $3.RevokeAuthTokenRequest request);
  $async.Future<$3.AddExternalIdentityInitResponse> addExternalIdentityInit(
      $grpc.ServiceCall call, $3.AddExternalIdentityInitRequest request);
  $async.Future<$3.AddExternalIdentityConfirmResponse>
      addExternalIdentityConfirm(
          $grpc.ServiceCall call, $3.AddExternalIdentityConfirmRequest request);
  $async.Future<$3.RemoveExternalIdentityResponse> removeExternalIdentity(
      $grpc.ServiceCall call, $3.RemoveExternalIdentityRequest request);
  $async.Future<$3.AuthenticateInitResponse> authenticateInit(
      $grpc.ServiceCall call, $3.AuthenticateInitRequest request);
  $async.Future<$3.AuthenticateConfirmResponse> authenticateConfirm(
      $grpc.ServiceCall call, $3.AuthenticateConfirmRequest request);
  $async.Future<$3.AuthenticateResendCodeResponse> authenticateResendCode(
      $grpc.ServiceCall call, $3.AuthenticateResendCodeRequest request);
  $async.Future<$3.ListWalletsResponse> listWallets(
      $grpc.ServiceCall call, $3.ListWalletsRequest request);
}
