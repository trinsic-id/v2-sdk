///
//  Generated code. Do not modify.
//  source: services/universal-wallet/v1/universal-wallet.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'universal-wallet.pb.dart' as $5;
export 'universal-wallet.pb.dart';

class UniversalWalletClient extends $grpc.Client {
  static final _$getItem =
      $grpc.ClientMethod<$5.GetItemRequest, $5.GetItemResponse>(
          '/services.universalwallet.v1.UniversalWallet/GetItem',
          ($5.GetItemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.GetItemResponse.fromBuffer(value));
  static final _$search =
      $grpc.ClientMethod<$5.SearchRequest, $5.SearchResponse>(
          '/services.universalwallet.v1.UniversalWallet/Search',
          ($5.SearchRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $5.SearchResponse.fromBuffer(value));
  static final _$insertItem =
      $grpc.ClientMethod<$5.InsertItemRequest, $5.InsertItemResponse>(
          '/services.universalwallet.v1.UniversalWallet/InsertItem',
          ($5.InsertItemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.InsertItemResponse.fromBuffer(value));
  static final _$updateItem =
      $grpc.ClientMethod<$5.UpdateItemRequest, $5.UpdateItemResponse>(
          '/services.universalwallet.v1.UniversalWallet/UpdateItem',
          ($5.UpdateItemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.UpdateItemResponse.fromBuffer(value));
  static final _$deleteItem =
      $grpc.ClientMethod<$5.DeleteItemRequest, $5.DeleteItemResponse>(
          '/services.universalwallet.v1.UniversalWallet/DeleteItem',
          ($5.DeleteItemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.DeleteItemResponse.fromBuffer(value));
  static final _$deleteWallet =
      $grpc.ClientMethod<$5.DeleteWalletRequest, $5.DeleteWalletResponse>(
          '/services.universalwallet.v1.UniversalWallet/DeleteWallet',
          ($5.DeleteWalletRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.DeleteWalletResponse.fromBuffer(value));
  static final _$createWallet =
      $grpc.ClientMethod<$5.CreateWalletRequest, $5.CreateWalletResponse>(
          '/services.universalwallet.v1.UniversalWallet/CreateWallet',
          ($5.CreateWalletRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.CreateWalletResponse.fromBuffer(value));
  static final _$getWalletInfo =
      $grpc.ClientMethod<$5.GetWalletInfoRequest, $5.GetWalletInfoResponse>(
          '/services.universalwallet.v1.UniversalWallet/GetWalletInfo',
          ($5.GetWalletInfoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.GetWalletInfoResponse.fromBuffer(value));
  static final _$getMyInfo =
      $grpc.ClientMethod<$5.GetMyInfoRequest, $5.GetMyInfoResponse>(
          '/services.universalwallet.v1.UniversalWallet/GetMyInfo',
          ($5.GetMyInfoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.GetMyInfoResponse.fromBuffer(value));
  static final _$generateAuthToken = $grpc.ClientMethod<
          $5.GenerateAuthTokenRequest, $5.GenerateAuthTokenResponse>(
      '/services.universalwallet.v1.UniversalWallet/GenerateAuthToken',
      ($5.GenerateAuthTokenRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.GenerateAuthTokenResponse.fromBuffer(value));
  static final _$revokeAuthToken =
      $grpc.ClientMethod<$5.RevokeAuthTokenRequest, $5.RevokeAuthTokenResponse>(
          '/services.universalwallet.v1.UniversalWallet/RevokeAuthToken',
          ($5.RevokeAuthTokenRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.RevokeAuthTokenResponse.fromBuffer(value));
  static final _$addExternalIdentityInit = $grpc.ClientMethod<
          $5.AddExternalIdentityInitRequest,
          $5.AddExternalIdentityInitResponse>(
      '/services.universalwallet.v1.UniversalWallet/AddExternalIdentityInit',
      ($5.AddExternalIdentityInitRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.AddExternalIdentityInitResponse.fromBuffer(value));
  static final _$addExternalIdentityConfirm = $grpc.ClientMethod<
          $5.AddExternalIdentityConfirmRequest,
          $5.AddExternalIdentityConfirmResponse>(
      '/services.universalwallet.v1.UniversalWallet/AddExternalIdentityConfirm',
      ($5.AddExternalIdentityConfirmRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.AddExternalIdentityConfirmResponse.fromBuffer(value));
  static final _$authenticateInit = $grpc.ClientMethod<
          $5.AuthenticateInitRequest, $5.AuthenticateInitResponse>(
      '/services.universalwallet.v1.UniversalWallet/AuthenticateInit',
      ($5.AuthenticateInitRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.AuthenticateInitResponse.fromBuffer(value));
  static final _$authenticateConfirm = $grpc.ClientMethod<
          $5.AuthenticateConfirmRequest, $5.AuthenticateConfirmResponse>(
      '/services.universalwallet.v1.UniversalWallet/AuthenticateConfirm',
      ($5.AuthenticateConfirmRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.AuthenticateConfirmResponse.fromBuffer(value));
  static final _$listWallets =
      $grpc.ClientMethod<$5.ListWalletsRequest, $5.ListWalletsResponse>(
          '/services.universalwallet.v1.UniversalWallet/ListWallets',
          ($5.ListWalletsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.ListWalletsResponse.fromBuffer(value));

  UniversalWalletClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$5.GetItemResponse> getItem($5.GetItemRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getItem, request, options: options);
  }

  $grpc.ResponseFuture<$5.SearchResponse> search($5.SearchRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$search, request, options: options);
  }

  $grpc.ResponseFuture<$5.InsertItemResponse> insertItem(
      $5.InsertItemRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$insertItem, request, options: options);
  }

  $grpc.ResponseFuture<$5.UpdateItemResponse> updateItem(
      $5.UpdateItemRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateItem, request, options: options);
  }

  $grpc.ResponseFuture<$5.DeleteItemResponse> deleteItem(
      $5.DeleteItemRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteItem, request, options: options);
  }

  $grpc.ResponseFuture<$5.DeleteWalletResponse> deleteWallet(
      $5.DeleteWalletRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteWallet, request, options: options);
  }

  $grpc.ResponseFuture<$5.CreateWalletResponse> createWallet(
      $5.CreateWalletRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createWallet, request, options: options);
  }

  $grpc.ResponseFuture<$5.GetWalletInfoResponse> getWalletInfo(
      $5.GetWalletInfoRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getWalletInfo, request, options: options);
  }

  $grpc.ResponseFuture<$5.GetMyInfoResponse> getMyInfo(
      $5.GetMyInfoRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMyInfo, request, options: options);
  }

  $grpc.ResponseFuture<$5.GenerateAuthTokenResponse> generateAuthToken(
      $5.GenerateAuthTokenRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$generateAuthToken, request, options: options);
  }

  $grpc.ResponseFuture<$5.RevokeAuthTokenResponse> revokeAuthToken(
      $5.RevokeAuthTokenRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$revokeAuthToken, request, options: options);
  }

  $grpc.ResponseFuture<$5.AddExternalIdentityInitResponse>
      addExternalIdentityInit($5.AddExternalIdentityInitRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addExternalIdentityInit, request,
        options: options);
  }

  $grpc.ResponseFuture<$5.AddExternalIdentityConfirmResponse>
      addExternalIdentityConfirm($5.AddExternalIdentityConfirmRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addExternalIdentityConfirm, request,
        options: options);
  }

  $grpc.ResponseFuture<$5.AuthenticateInitResponse> authenticateInit(
      $5.AuthenticateInitRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$authenticateInit, request, options: options);
  }

  $grpc.ResponseFuture<$5.AuthenticateConfirmResponse> authenticateConfirm(
      $5.AuthenticateConfirmRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$authenticateConfirm, request, options: options);
  }

  $grpc.ResponseFuture<$5.ListWalletsResponse> listWallets(
      $5.ListWalletsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listWallets, request, options: options);
  }
}

abstract class UniversalWalletServiceBase extends $grpc.Service {
  $core.String get $name => 'services.universalwallet.v1.UniversalWallet';

  UniversalWalletServiceBase() {
    $addMethod($grpc.ServiceMethod<$5.GetItemRequest, $5.GetItemResponse>(
        'GetItem',
        getItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.GetItemRequest.fromBuffer(value),
        ($5.GetItemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.SearchRequest, $5.SearchResponse>(
        'Search',
        search_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.SearchRequest.fromBuffer(value),
        ($5.SearchResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.InsertItemRequest, $5.InsertItemResponse>(
        'InsertItem',
        insertItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.InsertItemRequest.fromBuffer(value),
        ($5.InsertItemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UpdateItemRequest, $5.UpdateItemResponse>(
        'UpdateItem',
        updateItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.UpdateItemRequest.fromBuffer(value),
        ($5.UpdateItemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.DeleteItemRequest, $5.DeleteItemResponse>(
        'DeleteItem',
        deleteItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.DeleteItemRequest.fromBuffer(value),
        ($5.DeleteItemResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$5.DeleteWalletRequest, $5.DeleteWalletResponse>(
            'DeleteWallet',
            deleteWallet_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $5.DeleteWalletRequest.fromBuffer(value),
            ($5.DeleteWalletResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$5.CreateWalletRequest, $5.CreateWalletResponse>(
            'CreateWallet',
            createWallet_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $5.CreateWalletRequest.fromBuffer(value),
            ($5.CreateWalletResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$5.GetWalletInfoRequest, $5.GetWalletInfoResponse>(
            'GetWalletInfo',
            getWalletInfo_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $5.GetWalletInfoRequest.fromBuffer(value),
            ($5.GetWalletInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.GetMyInfoRequest, $5.GetMyInfoResponse>(
        'GetMyInfo',
        getMyInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.GetMyInfoRequest.fromBuffer(value),
        ($5.GetMyInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.GenerateAuthTokenRequest,
            $5.GenerateAuthTokenResponse>(
        'GenerateAuthToken',
        generateAuthToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.GenerateAuthTokenRequest.fromBuffer(value),
        ($5.GenerateAuthTokenResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.RevokeAuthTokenRequest,
            $5.RevokeAuthTokenResponse>(
        'RevokeAuthToken',
        revokeAuthToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.RevokeAuthTokenRequest.fromBuffer(value),
        ($5.RevokeAuthTokenResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.AddExternalIdentityInitRequest,
            $5.AddExternalIdentityInitResponse>(
        'AddExternalIdentityInit',
        addExternalIdentityInit_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.AddExternalIdentityInitRequest.fromBuffer(value),
        ($5.AddExternalIdentityInitResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.AddExternalIdentityConfirmRequest,
            $5.AddExternalIdentityConfirmResponse>(
        'AddExternalIdentityConfirm',
        addExternalIdentityConfirm_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.AddExternalIdentityConfirmRequest.fromBuffer(value),
        ($5.AddExternalIdentityConfirmResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.AuthenticateInitRequest,
            $5.AuthenticateInitResponse>(
        'AuthenticateInit',
        authenticateInit_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.AuthenticateInitRequest.fromBuffer(value),
        ($5.AuthenticateInitResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.AuthenticateConfirmRequest,
            $5.AuthenticateConfirmResponse>(
        'AuthenticateConfirm',
        authenticateConfirm_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.AuthenticateConfirmRequest.fromBuffer(value),
        ($5.AuthenticateConfirmResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$5.ListWalletsRequest, $5.ListWalletsResponse>(
            'ListWallets',
            listWallets_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $5.ListWalletsRequest.fromBuffer(value),
            ($5.ListWalletsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$5.GetItemResponse> getItem_Pre(
      $grpc.ServiceCall call, $async.Future<$5.GetItemRequest> request) async {
    return getItem(call, await request);
  }

  $async.Future<$5.SearchResponse> search_Pre(
      $grpc.ServiceCall call, $async.Future<$5.SearchRequest> request) async {
    return search(call, await request);
  }

  $async.Future<$5.InsertItemResponse> insertItem_Pre($grpc.ServiceCall call,
      $async.Future<$5.InsertItemRequest> request) async {
    return insertItem(call, await request);
  }

  $async.Future<$5.UpdateItemResponse> updateItem_Pre($grpc.ServiceCall call,
      $async.Future<$5.UpdateItemRequest> request) async {
    return updateItem(call, await request);
  }

  $async.Future<$5.DeleteItemResponse> deleteItem_Pre($grpc.ServiceCall call,
      $async.Future<$5.DeleteItemRequest> request) async {
    return deleteItem(call, await request);
  }

  $async.Future<$5.DeleteWalletResponse> deleteWallet_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.DeleteWalletRequest> request) async {
    return deleteWallet(call, await request);
  }

  $async.Future<$5.CreateWalletResponse> createWallet_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.CreateWalletRequest> request) async {
    return createWallet(call, await request);
  }

  $async.Future<$5.GetWalletInfoResponse> getWalletInfo_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.GetWalletInfoRequest> request) async {
    return getWalletInfo(call, await request);
  }

  $async.Future<$5.GetMyInfoResponse> getMyInfo_Pre($grpc.ServiceCall call,
      $async.Future<$5.GetMyInfoRequest> request) async {
    return getMyInfo(call, await request);
  }

  $async.Future<$5.GenerateAuthTokenResponse> generateAuthToken_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.GenerateAuthTokenRequest> request) async {
    return generateAuthToken(call, await request);
  }

  $async.Future<$5.RevokeAuthTokenResponse> revokeAuthToken_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.RevokeAuthTokenRequest> request) async {
    return revokeAuthToken(call, await request);
  }

  $async.Future<$5.AddExternalIdentityInitResponse> addExternalIdentityInit_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.AddExternalIdentityInitRequest> request) async {
    return addExternalIdentityInit(call, await request);
  }

  $async.Future<$5.AddExternalIdentityConfirmResponse>
      addExternalIdentityConfirm_Pre($grpc.ServiceCall call,
          $async.Future<$5.AddExternalIdentityConfirmRequest> request) async {
    return addExternalIdentityConfirm(call, await request);
  }

  $async.Future<$5.AuthenticateInitResponse> authenticateInit_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.AuthenticateInitRequest> request) async {
    return authenticateInit(call, await request);
  }

  $async.Future<$5.AuthenticateConfirmResponse> authenticateConfirm_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.AuthenticateConfirmRequest> request) async {
    return authenticateConfirm(call, await request);
  }

  $async.Future<$5.ListWalletsResponse> listWallets_Pre($grpc.ServiceCall call,
      $async.Future<$5.ListWalletsRequest> request) async {
    return listWallets(call, await request);
  }

  $async.Future<$5.GetItemResponse> getItem(
      $grpc.ServiceCall call, $5.GetItemRequest request);
  $async.Future<$5.SearchResponse> search(
      $grpc.ServiceCall call, $5.SearchRequest request);
  $async.Future<$5.InsertItemResponse> insertItem(
      $grpc.ServiceCall call, $5.InsertItemRequest request);
  $async.Future<$5.UpdateItemResponse> updateItem(
      $grpc.ServiceCall call, $5.UpdateItemRequest request);
  $async.Future<$5.DeleteItemResponse> deleteItem(
      $grpc.ServiceCall call, $5.DeleteItemRequest request);
  $async.Future<$5.DeleteWalletResponse> deleteWallet(
      $grpc.ServiceCall call, $5.DeleteWalletRequest request);
  $async.Future<$5.CreateWalletResponse> createWallet(
      $grpc.ServiceCall call, $5.CreateWalletRequest request);
  $async.Future<$5.GetWalletInfoResponse> getWalletInfo(
      $grpc.ServiceCall call, $5.GetWalletInfoRequest request);
  $async.Future<$5.GetMyInfoResponse> getMyInfo(
      $grpc.ServiceCall call, $5.GetMyInfoRequest request);
  $async.Future<$5.GenerateAuthTokenResponse> generateAuthToken(
      $grpc.ServiceCall call, $5.GenerateAuthTokenRequest request);
  $async.Future<$5.RevokeAuthTokenResponse> revokeAuthToken(
      $grpc.ServiceCall call, $5.RevokeAuthTokenRequest request);
  $async.Future<$5.AddExternalIdentityInitResponse> addExternalIdentityInit(
      $grpc.ServiceCall call, $5.AddExternalIdentityInitRequest request);
  $async.Future<$5.AddExternalIdentityConfirmResponse>
      addExternalIdentityConfirm(
          $grpc.ServiceCall call, $5.AddExternalIdentityConfirmRequest request);
  $async.Future<$5.AuthenticateInitResponse> authenticateInit(
      $grpc.ServiceCall call, $5.AuthenticateInitRequest request);
  $async.Future<$5.AuthenticateConfirmResponse> authenticateConfirm(
      $grpc.ServiceCall call, $5.AuthenticateConfirmRequest request);
  $async.Future<$5.ListWalletsResponse> listWallets(
      $grpc.ServiceCall call, $5.ListWalletsRequest request);
}
