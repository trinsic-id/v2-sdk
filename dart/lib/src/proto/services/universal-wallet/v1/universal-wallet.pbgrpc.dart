///
//  Generated code. Do not modify.
//  source: services/universal-wallet/v1/universal-wallet.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'universal-wallet.pb.dart' as $2;
export 'universal-wallet.pb.dart';

class UniversalWalletClient extends $grpc.Client {
  static final _$getItem =
      $grpc.ClientMethod<$2.GetItemRequest, $2.GetItemResponse>(
          '/services.universalwallet.v1.UniversalWallet/GetItem',
          ($2.GetItemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.GetItemResponse.fromBuffer(value));
  static final _$search =
      $grpc.ClientMethod<$2.SearchRequest, $2.SearchResponse>(
          '/services.universalwallet.v1.UniversalWallet/Search',
          ($2.SearchRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.SearchResponse.fromBuffer(value));
  static final _$insertItem =
      $grpc.ClientMethod<$2.InsertItemRequest, $2.InsertItemResponse>(
          '/services.universalwallet.v1.UniversalWallet/InsertItem',
          ($2.InsertItemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.InsertItemResponse.fromBuffer(value));
  static final _$updateItem =
      $grpc.ClientMethod<$2.UpdateItemRequest, $2.UpdateItemResponse>(
          '/services.universalwallet.v1.UniversalWallet/UpdateItem',
          ($2.UpdateItemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.UpdateItemResponse.fromBuffer(value));
  static final _$deleteItem =
      $grpc.ClientMethod<$2.DeleteItemRequest, $2.DeleteItemResponse>(
          '/services.universalwallet.v1.UniversalWallet/DeleteItem',
          ($2.DeleteItemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.DeleteItemResponse.fromBuffer(value));
  static final _$deleteWallet =
      $grpc.ClientMethod<$2.DeleteWalletRequest, $2.DeleteWalletResponse>(
          '/services.universalwallet.v1.UniversalWallet/DeleteWallet',
          ($2.DeleteWalletRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.DeleteWalletResponse.fromBuffer(value));
  static final _$createWallet =
      $grpc.ClientMethod<$2.CreateWalletRequest, $2.CreateWalletResponse>(
          '/services.universalwallet.v1.UniversalWallet/CreateWallet',
          ($2.CreateWalletRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.CreateWalletResponse.fromBuffer(value));
  static final _$getWalletInfo =
      $grpc.ClientMethod<$2.GetWalletInfoRequest, $2.GetWalletInfoResponse>(
          '/services.universalwallet.v1.UniversalWallet/GetWalletInfo',
          ($2.GetWalletInfoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.GetWalletInfoResponse.fromBuffer(value));
  static final _$getMyInfo =
      $grpc.ClientMethod<$2.GetMyInfoRequest, $2.GetMyInfoResponse>(
          '/services.universalwallet.v1.UniversalWallet/GetMyInfo',
          ($2.GetMyInfoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.GetMyInfoResponse.fromBuffer(value));
  static final _$generateAuthToken = $grpc.ClientMethod<
          $2.GenerateAuthTokenRequest, $2.GenerateAuthTokenResponse>(
      '/services.universalwallet.v1.UniversalWallet/GenerateAuthToken',
      ($2.GenerateAuthTokenRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.GenerateAuthTokenResponse.fromBuffer(value));
  static final _$revokeAuthToken =
      $grpc.ClientMethod<$2.RevokeAuthTokenRequest, $2.RevokeAuthTokenResponse>(
          '/services.universalwallet.v1.UniversalWallet/RevokeAuthToken',
          ($2.RevokeAuthTokenRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.RevokeAuthTokenResponse.fromBuffer(value));
  static final _$addExternalIdentityInit = $grpc.ClientMethod<
          $2.AddExternalIdentityInitRequest,
          $2.AddExternalIdentityInitResponse>(
      '/services.universalwallet.v1.UniversalWallet/AddExternalIdentityInit',
      ($2.AddExternalIdentityInitRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.AddExternalIdentityInitResponse.fromBuffer(value));
  static final _$addExternalIdentityConfirm = $grpc.ClientMethod<
          $2.AddExternalIdentityConfirmRequest,
          $2.AddExternalIdentityConfirmResponse>(
      '/services.universalwallet.v1.UniversalWallet/AddExternalIdentityConfirm',
      ($2.AddExternalIdentityConfirmRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.AddExternalIdentityConfirmResponse.fromBuffer(value));
  static final _$removeExternalIdentity = $grpc.ClientMethod<
          $2.RemoveExternalIdentityRequest, $2.RemoveExternalIdentityResponse>(
      '/services.universalwallet.v1.UniversalWallet/RemoveExternalIdentity',
      ($2.RemoveExternalIdentityRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.RemoveExternalIdentityResponse.fromBuffer(value));
  static final _$authenticateInit = $grpc.ClientMethod<
          $2.AuthenticateInitRequest, $2.AuthenticateInitResponse>(
      '/services.universalwallet.v1.UniversalWallet/AuthenticateInit',
      ($2.AuthenticateInitRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.AuthenticateInitResponse.fromBuffer(value));
  static final _$authenticateConfirm = $grpc.ClientMethod<
          $2.AuthenticateConfirmRequest, $2.AuthenticateConfirmResponse>(
      '/services.universalwallet.v1.UniversalWallet/AuthenticateConfirm',
      ($2.AuthenticateConfirmRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.AuthenticateConfirmResponse.fromBuffer(value));
  static final _$listWallets =
      $grpc.ClientMethod<$2.ListWalletsRequest, $2.ListWalletsResponse>(
          '/services.universalwallet.v1.UniversalWallet/ListWallets',
          ($2.ListWalletsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.ListWalletsResponse.fromBuffer(value));

  UniversalWalletClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$2.GetItemResponse> getItem($2.GetItemRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getItem, request, options: options);
  }

  $grpc.ResponseFuture<$2.SearchResponse> search($2.SearchRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$search, request, options: options);
  }

  $grpc.ResponseFuture<$2.InsertItemResponse> insertItem(
      $2.InsertItemRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$insertItem, request, options: options);
  }

  $grpc.ResponseFuture<$2.UpdateItemResponse> updateItem(
      $2.UpdateItemRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateItem, request, options: options);
  }

  $grpc.ResponseFuture<$2.DeleteItemResponse> deleteItem(
      $2.DeleteItemRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteItem, request, options: options);
  }

  $grpc.ResponseFuture<$2.DeleteWalletResponse> deleteWallet(
      $2.DeleteWalletRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteWallet, request, options: options);
  }

  $grpc.ResponseFuture<$2.CreateWalletResponse> createWallet(
      $2.CreateWalletRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createWallet, request, options: options);
  }

  $grpc.ResponseFuture<$2.GetWalletInfoResponse> getWalletInfo(
      $2.GetWalletInfoRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getWalletInfo, request, options: options);
  }

  $grpc.ResponseFuture<$2.GetMyInfoResponse> getMyInfo(
      $2.GetMyInfoRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMyInfo, request, options: options);
  }

  $grpc.ResponseFuture<$2.GenerateAuthTokenResponse> generateAuthToken(
      $2.GenerateAuthTokenRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$generateAuthToken, request, options: options);
  }

  $grpc.ResponseFuture<$2.RevokeAuthTokenResponse> revokeAuthToken(
      $2.RevokeAuthTokenRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$revokeAuthToken, request, options: options);
  }

  $grpc.ResponseFuture<$2.AddExternalIdentityInitResponse>
      addExternalIdentityInit($2.AddExternalIdentityInitRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addExternalIdentityInit, request,
        options: options);
  }

  $grpc.ResponseFuture<$2.AddExternalIdentityConfirmResponse>
      addExternalIdentityConfirm($2.AddExternalIdentityConfirmRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addExternalIdentityConfirm, request,
        options: options);
  }

  $grpc.ResponseFuture<$2.RemoveExternalIdentityResponse>
      removeExternalIdentity($2.RemoveExternalIdentityRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeExternalIdentity, request,
        options: options);
  }

  $grpc.ResponseFuture<$2.AuthenticateInitResponse> authenticateInit(
      $2.AuthenticateInitRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$authenticateInit, request, options: options);
  }

  $grpc.ResponseFuture<$2.AuthenticateConfirmResponse> authenticateConfirm(
      $2.AuthenticateConfirmRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$authenticateConfirm, request, options: options);
  }

  $grpc.ResponseFuture<$2.ListWalletsResponse> listWallets(
      $2.ListWalletsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listWallets, request, options: options);
  }
}

abstract class UniversalWalletServiceBase extends $grpc.Service {
  $core.String get $name => 'services.universalwallet.v1.UniversalWallet';

  UniversalWalletServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.GetItemRequest, $2.GetItemResponse>(
        'GetItem',
        getItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.GetItemRequest.fromBuffer(value),
        ($2.GetItemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.SearchRequest, $2.SearchResponse>(
        'Search',
        search_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.SearchRequest.fromBuffer(value),
        ($2.SearchResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.InsertItemRequest, $2.InsertItemResponse>(
        'InsertItem',
        insertItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.InsertItemRequest.fromBuffer(value),
        ($2.InsertItemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UpdateItemRequest, $2.UpdateItemResponse>(
        'UpdateItem',
        updateItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.UpdateItemRequest.fromBuffer(value),
        ($2.UpdateItemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.DeleteItemRequest, $2.DeleteItemResponse>(
        'DeleteItem',
        deleteItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.DeleteItemRequest.fromBuffer(value),
        ($2.DeleteItemResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.DeleteWalletRequest, $2.DeleteWalletResponse>(
            'DeleteWallet',
            deleteWallet_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.DeleteWalletRequest.fromBuffer(value),
            ($2.DeleteWalletResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.CreateWalletRequest, $2.CreateWalletResponse>(
            'CreateWallet',
            createWallet_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.CreateWalletRequest.fromBuffer(value),
            ($2.CreateWalletResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.GetWalletInfoRequest, $2.GetWalletInfoResponse>(
            'GetWalletInfo',
            getWalletInfo_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.GetWalletInfoRequest.fromBuffer(value),
            ($2.GetWalletInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.GetMyInfoRequest, $2.GetMyInfoResponse>(
        'GetMyInfo',
        getMyInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.GetMyInfoRequest.fromBuffer(value),
        ($2.GetMyInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.GenerateAuthTokenRequest,
            $2.GenerateAuthTokenResponse>(
        'GenerateAuthToken',
        generateAuthToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.GenerateAuthTokenRequest.fromBuffer(value),
        ($2.GenerateAuthTokenResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.RevokeAuthTokenRequest,
            $2.RevokeAuthTokenResponse>(
        'RevokeAuthToken',
        revokeAuthToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.RevokeAuthTokenRequest.fromBuffer(value),
        ($2.RevokeAuthTokenResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.AddExternalIdentityInitRequest,
            $2.AddExternalIdentityInitResponse>(
        'AddExternalIdentityInit',
        addExternalIdentityInit_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.AddExternalIdentityInitRequest.fromBuffer(value),
        ($2.AddExternalIdentityInitResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.AddExternalIdentityConfirmRequest,
            $2.AddExternalIdentityConfirmResponse>(
        'AddExternalIdentityConfirm',
        addExternalIdentityConfirm_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.AddExternalIdentityConfirmRequest.fromBuffer(value),
        ($2.AddExternalIdentityConfirmResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.RemoveExternalIdentityRequest,
            $2.RemoveExternalIdentityResponse>(
        'RemoveExternalIdentity',
        removeExternalIdentity_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.RemoveExternalIdentityRequest.fromBuffer(value),
        ($2.RemoveExternalIdentityResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.AuthenticateInitRequest,
            $2.AuthenticateInitResponse>(
        'AuthenticateInit',
        authenticateInit_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.AuthenticateInitRequest.fromBuffer(value),
        ($2.AuthenticateInitResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.AuthenticateConfirmRequest,
            $2.AuthenticateConfirmResponse>(
        'AuthenticateConfirm',
        authenticateConfirm_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.AuthenticateConfirmRequest.fromBuffer(value),
        ($2.AuthenticateConfirmResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.ListWalletsRequest, $2.ListWalletsResponse>(
            'ListWallets',
            listWallets_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.ListWalletsRequest.fromBuffer(value),
            ($2.ListWalletsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$2.GetItemResponse> getItem_Pre(
      $grpc.ServiceCall call, $async.Future<$2.GetItemRequest> request) async {
    return getItem(call, await request);
  }

  $async.Future<$2.SearchResponse> search_Pre(
      $grpc.ServiceCall call, $async.Future<$2.SearchRequest> request) async {
    return search(call, await request);
  }

  $async.Future<$2.InsertItemResponse> insertItem_Pre($grpc.ServiceCall call,
      $async.Future<$2.InsertItemRequest> request) async {
    return insertItem(call, await request);
  }

  $async.Future<$2.UpdateItemResponse> updateItem_Pre($grpc.ServiceCall call,
      $async.Future<$2.UpdateItemRequest> request) async {
    return updateItem(call, await request);
  }

  $async.Future<$2.DeleteItemResponse> deleteItem_Pre($grpc.ServiceCall call,
      $async.Future<$2.DeleteItemRequest> request) async {
    return deleteItem(call, await request);
  }

  $async.Future<$2.DeleteWalletResponse> deleteWallet_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.DeleteWalletRequest> request) async {
    return deleteWallet(call, await request);
  }

  $async.Future<$2.CreateWalletResponse> createWallet_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.CreateWalletRequest> request) async {
    return createWallet(call, await request);
  }

  $async.Future<$2.GetWalletInfoResponse> getWalletInfo_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.GetWalletInfoRequest> request) async {
    return getWalletInfo(call, await request);
  }

  $async.Future<$2.GetMyInfoResponse> getMyInfo_Pre($grpc.ServiceCall call,
      $async.Future<$2.GetMyInfoRequest> request) async {
    return getMyInfo(call, await request);
  }

  $async.Future<$2.GenerateAuthTokenResponse> generateAuthToken_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.GenerateAuthTokenRequest> request) async {
    return generateAuthToken(call, await request);
  }

  $async.Future<$2.RevokeAuthTokenResponse> revokeAuthToken_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.RevokeAuthTokenRequest> request) async {
    return revokeAuthToken(call, await request);
  }

  $async.Future<$2.AddExternalIdentityInitResponse> addExternalIdentityInit_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.AddExternalIdentityInitRequest> request) async {
    return addExternalIdentityInit(call, await request);
  }

  $async.Future<$2.AddExternalIdentityConfirmResponse>
      addExternalIdentityConfirm_Pre($grpc.ServiceCall call,
          $async.Future<$2.AddExternalIdentityConfirmRequest> request) async {
    return addExternalIdentityConfirm(call, await request);
  }

  $async.Future<$2.RemoveExternalIdentityResponse> removeExternalIdentity_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.RemoveExternalIdentityRequest> request) async {
    return removeExternalIdentity(call, await request);
  }

  $async.Future<$2.AuthenticateInitResponse> authenticateInit_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.AuthenticateInitRequest> request) async {
    return authenticateInit(call, await request);
  }

  $async.Future<$2.AuthenticateConfirmResponse> authenticateConfirm_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.AuthenticateConfirmRequest> request) async {
    return authenticateConfirm(call, await request);
  }

  $async.Future<$2.ListWalletsResponse> listWallets_Pre($grpc.ServiceCall call,
      $async.Future<$2.ListWalletsRequest> request) async {
    return listWallets(call, await request);
  }

  $async.Future<$2.GetItemResponse> getItem(
      $grpc.ServiceCall call, $2.GetItemRequest request);
  $async.Future<$2.SearchResponse> search(
      $grpc.ServiceCall call, $2.SearchRequest request);
  $async.Future<$2.InsertItemResponse> insertItem(
      $grpc.ServiceCall call, $2.InsertItemRequest request);
  $async.Future<$2.UpdateItemResponse> updateItem(
      $grpc.ServiceCall call, $2.UpdateItemRequest request);
  $async.Future<$2.DeleteItemResponse> deleteItem(
      $grpc.ServiceCall call, $2.DeleteItemRequest request);
  $async.Future<$2.DeleteWalletResponse> deleteWallet(
      $grpc.ServiceCall call, $2.DeleteWalletRequest request);
  $async.Future<$2.CreateWalletResponse> createWallet(
      $grpc.ServiceCall call, $2.CreateWalletRequest request);
  $async.Future<$2.GetWalletInfoResponse> getWalletInfo(
      $grpc.ServiceCall call, $2.GetWalletInfoRequest request);
  $async.Future<$2.GetMyInfoResponse> getMyInfo(
      $grpc.ServiceCall call, $2.GetMyInfoRequest request);
  $async.Future<$2.GenerateAuthTokenResponse> generateAuthToken(
      $grpc.ServiceCall call, $2.GenerateAuthTokenRequest request);
  $async.Future<$2.RevokeAuthTokenResponse> revokeAuthToken(
      $grpc.ServiceCall call, $2.RevokeAuthTokenRequest request);
  $async.Future<$2.AddExternalIdentityInitResponse> addExternalIdentityInit(
      $grpc.ServiceCall call, $2.AddExternalIdentityInitRequest request);
  $async.Future<$2.AddExternalIdentityConfirmResponse>
      addExternalIdentityConfirm(
          $grpc.ServiceCall call, $2.AddExternalIdentityConfirmRequest request);
  $async.Future<$2.RemoveExternalIdentityResponse> removeExternalIdentity(
      $grpc.ServiceCall call, $2.RemoveExternalIdentityRequest request);
  $async.Future<$2.AuthenticateInitResponse> authenticateInit(
      $grpc.ServiceCall call, $2.AuthenticateInitRequest request);
  $async.Future<$2.AuthenticateConfirmResponse> authenticateConfirm(
      $grpc.ServiceCall call, $2.AuthenticateConfirmRequest request);
  $async.Future<$2.ListWalletsResponse> listWallets(
      $grpc.ServiceCall call, $2.ListWalletsRequest request);
}
