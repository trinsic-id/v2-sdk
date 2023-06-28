//
//  Generated code. Do not modify.
//  source: services/universal-wallet/v1/universal-wallet.proto
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

import 'universal-wallet.pb.dart' as $6;

export 'universal-wallet.pb.dart';

@$pb.GrpcServiceName('services.universalwallet.v1.UniversalWallet')
class UniversalWalletClient extends $grpc.Client {
  static final _$getItem =
      $grpc.ClientMethod<$6.GetItemRequest, $6.GetItemResponse>(
          '/services.universalwallet.v1.UniversalWallet/GetItem',
          ($6.GetItemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $6.GetItemResponse.fromBuffer(value));
  static final _$search =
      $grpc.ClientMethod<$6.SearchRequest, $6.SearchResponse>(
          '/services.universalwallet.v1.UniversalWallet/Search',
          ($6.SearchRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $6.SearchResponse.fromBuffer(value));
  static final _$insertItem =
      $grpc.ClientMethod<$6.InsertItemRequest, $6.InsertItemResponse>(
          '/services.universalwallet.v1.UniversalWallet/InsertItem',
          ($6.InsertItemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $6.InsertItemResponse.fromBuffer(value));
  static final _$updateItem =
      $grpc.ClientMethod<$6.UpdateItemRequest, $6.UpdateItemResponse>(
          '/services.universalwallet.v1.UniversalWallet/UpdateItem',
          ($6.UpdateItemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $6.UpdateItemResponse.fromBuffer(value));
  static final _$deleteItem =
      $grpc.ClientMethod<$6.DeleteItemRequest, $6.DeleteItemResponse>(
          '/services.universalwallet.v1.UniversalWallet/DeleteItem',
          ($6.DeleteItemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $6.DeleteItemResponse.fromBuffer(value));
  static final _$deleteWallet =
      $grpc.ClientMethod<$6.DeleteWalletRequest, $6.DeleteWalletResponse>(
          '/services.universalwallet.v1.UniversalWallet/DeleteWallet',
          ($6.DeleteWalletRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $6.DeleteWalletResponse.fromBuffer(value));
  static final _$createWallet =
      $grpc.ClientMethod<$6.CreateWalletRequest, $6.CreateWalletResponse>(
          '/services.universalwallet.v1.UniversalWallet/CreateWallet',
          ($6.CreateWalletRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $6.CreateWalletResponse.fromBuffer(value));
  static final _$getWalletInfo =
      $grpc.ClientMethod<$6.GetWalletInfoRequest, $6.GetWalletInfoResponse>(
          '/services.universalwallet.v1.UniversalWallet/GetWalletInfo',
          ($6.GetWalletInfoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $6.GetWalletInfoResponse.fromBuffer(value));
  static final _$getMyInfo =
      $grpc.ClientMethod<$6.GetMyInfoRequest, $6.GetMyInfoResponse>(
          '/services.universalwallet.v1.UniversalWallet/GetMyInfo',
          ($6.GetMyInfoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $6.GetMyInfoResponse.fromBuffer(value));
  static final _$generateAuthToken = $grpc.ClientMethod<
          $6.GenerateAuthTokenRequest, $6.GenerateAuthTokenResponse>(
      '/services.universalwallet.v1.UniversalWallet/GenerateAuthToken',
      ($6.GenerateAuthTokenRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.GenerateAuthTokenResponse.fromBuffer(value));
  static final _$revokeAuthToken =
      $grpc.ClientMethod<$6.RevokeAuthTokenRequest, $6.RevokeAuthTokenResponse>(
          '/services.universalwallet.v1.UniversalWallet/RevokeAuthToken',
          ($6.RevokeAuthTokenRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $6.RevokeAuthTokenResponse.fromBuffer(value));
  static final _$addExternalIdentityInit = $grpc.ClientMethod<
          $6.AddExternalIdentityInitRequest,
          $6.AddExternalIdentityInitResponse>(
      '/services.universalwallet.v1.UniversalWallet/AddExternalIdentityInit',
      ($6.AddExternalIdentityInitRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.AddExternalIdentityInitResponse.fromBuffer(value));
  static final _$addExternalIdentityConfirm = $grpc.ClientMethod<
          $6.AddExternalIdentityConfirmRequest,
          $6.AddExternalIdentityConfirmResponse>(
      '/services.universalwallet.v1.UniversalWallet/AddExternalIdentityConfirm',
      ($6.AddExternalIdentityConfirmRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.AddExternalIdentityConfirmResponse.fromBuffer(value));
  static final _$removeExternalIdentity = $grpc.ClientMethod<
          $6.RemoveExternalIdentityRequest, $6.RemoveExternalIdentityResponse>(
      '/services.universalwallet.v1.UniversalWallet/RemoveExternalIdentity',
      ($6.RemoveExternalIdentityRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.RemoveExternalIdentityResponse.fromBuffer(value));
  static final _$authenticateInit = $grpc.ClientMethod<
          $6.AuthenticateInitRequest, $6.AuthenticateInitResponse>(
      '/services.universalwallet.v1.UniversalWallet/AuthenticateInit',
      ($6.AuthenticateInitRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.AuthenticateInitResponse.fromBuffer(value));
  static final _$authenticateConfirm = $grpc.ClientMethod<
          $6.AuthenticateConfirmRequest, $6.AuthenticateConfirmResponse>(
      '/services.universalwallet.v1.UniversalWallet/AuthenticateConfirm',
      ($6.AuthenticateConfirmRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.AuthenticateConfirmResponse.fromBuffer(value));
  static final _$authenticateResendCode = $grpc.ClientMethod<
          $6.AuthenticateResendCodeRequest, $6.AuthenticateResendCodeResponse>(
      '/services.universalwallet.v1.UniversalWallet/AuthenticateResendCode',
      ($6.AuthenticateResendCodeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.AuthenticateResendCodeResponse.fromBuffer(value));
  static final _$listWallets =
      $grpc.ClientMethod<$6.ListWalletsRequest, $6.ListWalletsResponse>(
          '/services.universalwallet.v1.UniversalWallet/ListWallets',
          ($6.ListWalletsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $6.ListWalletsResponse.fromBuffer(value));

  UniversalWalletClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$6.GetItemResponse> getItem($6.GetItemRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getItem, request, options: options);
  }

  $grpc.ResponseFuture<$6.SearchResponse> search($6.SearchRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$search, request, options: options);
  }

  $grpc.ResponseFuture<$6.InsertItemResponse> insertItem(
      $6.InsertItemRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$insertItem, request, options: options);
  }

  $grpc.ResponseFuture<$6.UpdateItemResponse> updateItem(
      $6.UpdateItemRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateItem, request, options: options);
  }

  $grpc.ResponseFuture<$6.DeleteItemResponse> deleteItem(
      $6.DeleteItemRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteItem, request, options: options);
  }

  $grpc.ResponseFuture<$6.DeleteWalletResponse> deleteWallet(
      $6.DeleteWalletRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteWallet, request, options: options);
  }

  $grpc.ResponseFuture<$6.CreateWalletResponse> createWallet(
      $6.CreateWalletRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createWallet, request, options: options);
  }

  $grpc.ResponseFuture<$6.GetWalletInfoResponse> getWalletInfo(
      $6.GetWalletInfoRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getWalletInfo, request, options: options);
  }

  $grpc.ResponseFuture<$6.GetMyInfoResponse> getMyInfo(
      $6.GetMyInfoRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMyInfo, request, options: options);
  }

  $grpc.ResponseFuture<$6.GenerateAuthTokenResponse> generateAuthToken(
      $6.GenerateAuthTokenRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$generateAuthToken, request, options: options);
  }

  $grpc.ResponseFuture<$6.RevokeAuthTokenResponse> revokeAuthToken(
      $6.RevokeAuthTokenRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$revokeAuthToken, request, options: options);
  }

  $grpc.ResponseFuture<$6.AddExternalIdentityInitResponse>
      addExternalIdentityInit($6.AddExternalIdentityInitRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addExternalIdentityInit, request,
        options: options);
  }

  $grpc.ResponseFuture<$6.AddExternalIdentityConfirmResponse>
      addExternalIdentityConfirm($6.AddExternalIdentityConfirmRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addExternalIdentityConfirm, request,
        options: options);
  }

  $grpc.ResponseFuture<$6.RemoveExternalIdentityResponse>
      removeExternalIdentity($6.RemoveExternalIdentityRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeExternalIdentity, request,
        options: options);
  }

  $grpc.ResponseFuture<$6.AuthenticateInitResponse> authenticateInit(
      $6.AuthenticateInitRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$authenticateInit, request, options: options);
  }

  $grpc.ResponseFuture<$6.AuthenticateConfirmResponse> authenticateConfirm(
      $6.AuthenticateConfirmRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$authenticateConfirm, request, options: options);
  }

  $grpc.ResponseFuture<$6.AuthenticateResendCodeResponse>
      authenticateResendCode($6.AuthenticateResendCodeRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$authenticateResendCode, request,
        options: options);
  }

  $grpc.ResponseFuture<$6.ListWalletsResponse> listWallets(
      $6.ListWalletsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listWallets, request, options: options);
  }
}

@$pb.GrpcServiceName('services.universalwallet.v1.UniversalWallet')
abstract class UniversalWalletServiceBase extends $grpc.Service {
  $core.String get $name => 'services.universalwallet.v1.UniversalWallet';

  UniversalWalletServiceBase() {
    $addMethod($grpc.ServiceMethod<$6.GetItemRequest, $6.GetItemResponse>(
        'GetItem',
        getItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.GetItemRequest.fromBuffer(value),
        ($6.GetItemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.SearchRequest, $6.SearchResponse>(
        'Search',
        search_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.SearchRequest.fromBuffer(value),
        ($6.SearchResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.InsertItemRequest, $6.InsertItemResponse>(
        'InsertItem',
        insertItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.InsertItemRequest.fromBuffer(value),
        ($6.InsertItemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.UpdateItemRequest, $6.UpdateItemResponse>(
        'UpdateItem',
        updateItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.UpdateItemRequest.fromBuffer(value),
        ($6.UpdateItemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.DeleteItemRequest, $6.DeleteItemResponse>(
        'DeleteItem',
        deleteItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.DeleteItemRequest.fromBuffer(value),
        ($6.DeleteItemResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$6.DeleteWalletRequest, $6.DeleteWalletResponse>(
            'DeleteWallet',
            deleteWallet_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $6.DeleteWalletRequest.fromBuffer(value),
            ($6.DeleteWalletResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$6.CreateWalletRequest, $6.CreateWalletResponse>(
            'CreateWallet',
            createWallet_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $6.CreateWalletRequest.fromBuffer(value),
            ($6.CreateWalletResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$6.GetWalletInfoRequest, $6.GetWalletInfoResponse>(
            'GetWalletInfo',
            getWalletInfo_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $6.GetWalletInfoRequest.fromBuffer(value),
            ($6.GetWalletInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.GetMyInfoRequest, $6.GetMyInfoResponse>(
        'GetMyInfo',
        getMyInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.GetMyInfoRequest.fromBuffer(value),
        ($6.GetMyInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.GenerateAuthTokenRequest,
            $6.GenerateAuthTokenResponse>(
        'GenerateAuthToken',
        generateAuthToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.GenerateAuthTokenRequest.fromBuffer(value),
        ($6.GenerateAuthTokenResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.RevokeAuthTokenRequest,
            $6.RevokeAuthTokenResponse>(
        'RevokeAuthToken',
        revokeAuthToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.RevokeAuthTokenRequest.fromBuffer(value),
        ($6.RevokeAuthTokenResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.AddExternalIdentityInitRequest,
            $6.AddExternalIdentityInitResponse>(
        'AddExternalIdentityInit',
        addExternalIdentityInit_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.AddExternalIdentityInitRequest.fromBuffer(value),
        ($6.AddExternalIdentityInitResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.AddExternalIdentityConfirmRequest,
            $6.AddExternalIdentityConfirmResponse>(
        'AddExternalIdentityConfirm',
        addExternalIdentityConfirm_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.AddExternalIdentityConfirmRequest.fromBuffer(value),
        ($6.AddExternalIdentityConfirmResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.RemoveExternalIdentityRequest,
            $6.RemoveExternalIdentityResponse>(
        'RemoveExternalIdentity',
        removeExternalIdentity_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.RemoveExternalIdentityRequest.fromBuffer(value),
        ($6.RemoveExternalIdentityResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.AuthenticateInitRequest,
            $6.AuthenticateInitResponse>(
        'AuthenticateInit',
        authenticateInit_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.AuthenticateInitRequest.fromBuffer(value),
        ($6.AuthenticateInitResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.AuthenticateConfirmRequest,
            $6.AuthenticateConfirmResponse>(
        'AuthenticateConfirm',
        authenticateConfirm_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.AuthenticateConfirmRequest.fromBuffer(value),
        ($6.AuthenticateConfirmResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.AuthenticateResendCodeRequest,
            $6.AuthenticateResendCodeResponse>(
        'AuthenticateResendCode',
        authenticateResendCode_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.AuthenticateResendCodeRequest.fromBuffer(value),
        ($6.AuthenticateResendCodeResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$6.ListWalletsRequest, $6.ListWalletsResponse>(
            'ListWallets',
            listWallets_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $6.ListWalletsRequest.fromBuffer(value),
            ($6.ListWalletsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$6.GetItemResponse> getItem_Pre(
      $grpc.ServiceCall call, $async.Future<$6.GetItemRequest> request) async {
    return getItem(call, await request);
  }

  $async.Future<$6.SearchResponse> search_Pre(
      $grpc.ServiceCall call, $async.Future<$6.SearchRequest> request) async {
    return search(call, await request);
  }

  $async.Future<$6.InsertItemResponse> insertItem_Pre($grpc.ServiceCall call,
      $async.Future<$6.InsertItemRequest> request) async {
    return insertItem(call, await request);
  }

  $async.Future<$6.UpdateItemResponse> updateItem_Pre($grpc.ServiceCall call,
      $async.Future<$6.UpdateItemRequest> request) async {
    return updateItem(call, await request);
  }

  $async.Future<$6.DeleteItemResponse> deleteItem_Pre($grpc.ServiceCall call,
      $async.Future<$6.DeleteItemRequest> request) async {
    return deleteItem(call, await request);
  }

  $async.Future<$6.DeleteWalletResponse> deleteWallet_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.DeleteWalletRequest> request) async {
    return deleteWallet(call, await request);
  }

  $async.Future<$6.CreateWalletResponse> createWallet_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.CreateWalletRequest> request) async {
    return createWallet(call, await request);
  }

  $async.Future<$6.GetWalletInfoResponse> getWalletInfo_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.GetWalletInfoRequest> request) async {
    return getWalletInfo(call, await request);
  }

  $async.Future<$6.GetMyInfoResponse> getMyInfo_Pre($grpc.ServiceCall call,
      $async.Future<$6.GetMyInfoRequest> request) async {
    return getMyInfo(call, await request);
  }

  $async.Future<$6.GenerateAuthTokenResponse> generateAuthToken_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.GenerateAuthTokenRequest> request) async {
    return generateAuthToken(call, await request);
  }

  $async.Future<$6.RevokeAuthTokenResponse> revokeAuthToken_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.RevokeAuthTokenRequest> request) async {
    return revokeAuthToken(call, await request);
  }

  $async.Future<$6.AddExternalIdentityInitResponse> addExternalIdentityInit_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.AddExternalIdentityInitRequest> request) async {
    return addExternalIdentityInit(call, await request);
  }

  $async.Future<$6.AddExternalIdentityConfirmResponse>
      addExternalIdentityConfirm_Pre($grpc.ServiceCall call,
          $async.Future<$6.AddExternalIdentityConfirmRequest> request) async {
    return addExternalIdentityConfirm(call, await request);
  }

  $async.Future<$6.RemoveExternalIdentityResponse> removeExternalIdentity_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.RemoveExternalIdentityRequest> request) async {
    return removeExternalIdentity(call, await request);
  }

  $async.Future<$6.AuthenticateInitResponse> authenticateInit_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.AuthenticateInitRequest> request) async {
    return authenticateInit(call, await request);
  }

  $async.Future<$6.AuthenticateConfirmResponse> authenticateConfirm_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.AuthenticateConfirmRequest> request) async {
    return authenticateConfirm(call, await request);
  }

  $async.Future<$6.AuthenticateResendCodeResponse> authenticateResendCode_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.AuthenticateResendCodeRequest> request) async {
    return authenticateResendCode(call, await request);
  }

  $async.Future<$6.ListWalletsResponse> listWallets_Pre($grpc.ServiceCall call,
      $async.Future<$6.ListWalletsRequest> request) async {
    return listWallets(call, await request);
  }

  $async.Future<$6.GetItemResponse> getItem(
      $grpc.ServiceCall call, $6.GetItemRequest request);
  $async.Future<$6.SearchResponse> search(
      $grpc.ServiceCall call, $6.SearchRequest request);
  $async.Future<$6.InsertItemResponse> insertItem(
      $grpc.ServiceCall call, $6.InsertItemRequest request);
  $async.Future<$6.UpdateItemResponse> updateItem(
      $grpc.ServiceCall call, $6.UpdateItemRequest request);
  $async.Future<$6.DeleteItemResponse> deleteItem(
      $grpc.ServiceCall call, $6.DeleteItemRequest request);
  $async.Future<$6.DeleteWalletResponse> deleteWallet(
      $grpc.ServiceCall call, $6.DeleteWalletRequest request);
  $async.Future<$6.CreateWalletResponse> createWallet(
      $grpc.ServiceCall call, $6.CreateWalletRequest request);
  $async.Future<$6.GetWalletInfoResponse> getWalletInfo(
      $grpc.ServiceCall call, $6.GetWalletInfoRequest request);
  $async.Future<$6.GetMyInfoResponse> getMyInfo(
      $grpc.ServiceCall call, $6.GetMyInfoRequest request);
  $async.Future<$6.GenerateAuthTokenResponse> generateAuthToken(
      $grpc.ServiceCall call, $6.GenerateAuthTokenRequest request);
  $async.Future<$6.RevokeAuthTokenResponse> revokeAuthToken(
      $grpc.ServiceCall call, $6.RevokeAuthTokenRequest request);
  $async.Future<$6.AddExternalIdentityInitResponse> addExternalIdentityInit(
      $grpc.ServiceCall call, $6.AddExternalIdentityInitRequest request);
  $async.Future<$6.AddExternalIdentityConfirmResponse>
      addExternalIdentityConfirm(
          $grpc.ServiceCall call, $6.AddExternalIdentityConfirmRequest request);
  $async.Future<$6.RemoveExternalIdentityResponse> removeExternalIdentity(
      $grpc.ServiceCall call, $6.RemoveExternalIdentityRequest request);
  $async.Future<$6.AuthenticateInitResponse> authenticateInit(
      $grpc.ServiceCall call, $6.AuthenticateInitRequest request);
  $async.Future<$6.AuthenticateConfirmResponse> authenticateConfirm(
      $grpc.ServiceCall call, $6.AuthenticateConfirmRequest request);
  $async.Future<$6.AuthenticateResendCodeResponse> authenticateResendCode(
      $grpc.ServiceCall call, $6.AuthenticateResendCodeRequest request);
  $async.Future<$6.ListWalletsResponse> listWallets(
      $grpc.ServiceCall call, $6.ListWalletsRequest request);
}
