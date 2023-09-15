//
//  Generated code. Do not modify.
//  source: services/universal-wallet/v1/universal-wallet.proto
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

import 'universal-wallet.pb.dart' as $8;

export 'universal-wallet.pb.dart';

@$pb.GrpcServiceName('services.universalwallet.v1.UniversalWallet')
class UniversalWalletClient extends $grpc.Client {
  static final _$getItem =
      $grpc.ClientMethod<$8.GetItemRequest, $8.GetItemResponse>(
          '/services.universalwallet.v1.UniversalWallet/GetItem',
          ($8.GetItemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $8.GetItemResponse.fromBuffer(value));
  static final _$search =
      $grpc.ClientMethod<$8.SearchRequest, $8.SearchResponse>(
          '/services.universalwallet.v1.UniversalWallet/Search',
          ($8.SearchRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $8.SearchResponse.fromBuffer(value));
  static final _$insertItem =
      $grpc.ClientMethod<$8.InsertItemRequest, $8.InsertItemResponse>(
          '/services.universalwallet.v1.UniversalWallet/InsertItem',
          ($8.InsertItemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $8.InsertItemResponse.fromBuffer(value));
  static final _$updateItem =
      $grpc.ClientMethod<$8.UpdateItemRequest, $8.UpdateItemResponse>(
          '/services.universalwallet.v1.UniversalWallet/UpdateItem',
          ($8.UpdateItemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $8.UpdateItemResponse.fromBuffer(value));
  static final _$deleteItem =
      $grpc.ClientMethod<$8.DeleteItemRequest, $8.DeleteItemResponse>(
          '/services.universalwallet.v1.UniversalWallet/DeleteItem',
          ($8.DeleteItemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $8.DeleteItemResponse.fromBuffer(value));
  static final _$deleteWallet =
      $grpc.ClientMethod<$8.DeleteWalletRequest, $8.DeleteWalletResponse>(
          '/services.universalwallet.v1.UniversalWallet/DeleteWallet',
          ($8.DeleteWalletRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $8.DeleteWalletResponse.fromBuffer(value));
  static final _$createWallet =
      $grpc.ClientMethod<$8.CreateWalletRequest, $8.CreateWalletResponse>(
          '/services.universalwallet.v1.UniversalWallet/CreateWallet',
          ($8.CreateWalletRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $8.CreateWalletResponse.fromBuffer(value));
  static final _$getWalletInfo =
      $grpc.ClientMethod<$8.GetWalletInfoRequest, $8.GetWalletInfoResponse>(
          '/services.universalwallet.v1.UniversalWallet/GetWalletInfo',
          ($8.GetWalletInfoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $8.GetWalletInfoResponse.fromBuffer(value));
  static final _$getMyInfo =
      $grpc.ClientMethod<$8.GetMyInfoRequest, $8.GetMyInfoResponse>(
          '/services.universalwallet.v1.UniversalWallet/GetMyInfo',
          ($8.GetMyInfoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $8.GetMyInfoResponse.fromBuffer(value));
  static final _$generateAuthToken = $grpc.ClientMethod<
          $8.GenerateAuthTokenRequest, $8.GenerateAuthTokenResponse>(
      '/services.universalwallet.v1.UniversalWallet/GenerateAuthToken',
      ($8.GenerateAuthTokenRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $8.GenerateAuthTokenResponse.fromBuffer(value));
  static final _$revokeAuthToken =
      $grpc.ClientMethod<$8.RevokeAuthTokenRequest, $8.RevokeAuthTokenResponse>(
          '/services.universalwallet.v1.UniversalWallet/RevokeAuthToken',
          ($8.RevokeAuthTokenRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $8.RevokeAuthTokenResponse.fromBuffer(value));
  static final _$addExternalIdentityInit = $grpc.ClientMethod<
          $8.AddExternalIdentityInitRequest,
          $8.AddExternalIdentityInitResponse>(
      '/services.universalwallet.v1.UniversalWallet/AddExternalIdentityInit',
      ($8.AddExternalIdentityInitRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $8.AddExternalIdentityInitResponse.fromBuffer(value));
  static final _$addExternalIdentityConfirm = $grpc.ClientMethod<
          $8.AddExternalIdentityConfirmRequest,
          $8.AddExternalIdentityConfirmResponse>(
      '/services.universalwallet.v1.UniversalWallet/AddExternalIdentityConfirm',
      ($8.AddExternalIdentityConfirmRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $8.AddExternalIdentityConfirmResponse.fromBuffer(value));
  static final _$removeExternalIdentity = $grpc.ClientMethod<
          $8.RemoveExternalIdentityRequest, $8.RemoveExternalIdentityResponse>(
      '/services.universalwallet.v1.UniversalWallet/RemoveExternalIdentity',
      ($8.RemoveExternalIdentityRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $8.RemoveExternalIdentityResponse.fromBuffer(value));
  static final _$authenticateInit = $grpc.ClientMethod<
          $8.AuthenticateInitRequest, $8.AuthenticateInitResponse>(
      '/services.universalwallet.v1.UniversalWallet/AuthenticateInit',
      ($8.AuthenticateInitRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $8.AuthenticateInitResponse.fromBuffer(value));
  static final _$authenticateConfirm = $grpc.ClientMethod<
          $8.AuthenticateConfirmRequest, $8.AuthenticateConfirmResponse>(
      '/services.universalwallet.v1.UniversalWallet/AuthenticateConfirm',
      ($8.AuthenticateConfirmRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $8.AuthenticateConfirmResponse.fromBuffer(value));
  static final _$authenticateResendCode = $grpc.ClientMethod<
          $8.AuthenticateResendCodeRequest, $8.AuthenticateResendCodeResponse>(
      '/services.universalwallet.v1.UniversalWallet/AuthenticateResendCode',
      ($8.AuthenticateResendCodeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $8.AuthenticateResendCodeResponse.fromBuffer(value));
  static final _$listWallets =
      $grpc.ClientMethod<$8.ListWalletsRequest, $8.ListWalletsResponse>(
          '/services.universalwallet.v1.UniversalWallet/ListWallets',
          ($8.ListWalletsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $8.ListWalletsResponse.fromBuffer(value));
  static final _$listByVerificationTemplate = $grpc.ClientMethod<
          $8.ListByVerificationTemplateRequest,
          $8.ListByVerificationTemplateResponse>(
      '/services.universalwallet.v1.UniversalWallet/ListByVerificationTemplate',
      ($8.ListByVerificationTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $8.ListByVerificationTemplateResponse.fromBuffer(value));

  UniversalWalletClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$8.GetItemResponse> getItem($8.GetItemRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getItem, request, options: options);
  }

  $grpc.ResponseFuture<$8.SearchResponse> search($8.SearchRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$search, request, options: options);
  }

  $grpc.ResponseFuture<$8.InsertItemResponse> insertItem(
      $8.InsertItemRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$insertItem, request, options: options);
  }

  $grpc.ResponseFuture<$8.UpdateItemResponse> updateItem(
      $8.UpdateItemRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateItem, request, options: options);
  }

  $grpc.ResponseFuture<$8.DeleteItemResponse> deleteItem(
      $8.DeleteItemRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteItem, request, options: options);
  }

  $grpc.ResponseFuture<$8.DeleteWalletResponse> deleteWallet(
      $8.DeleteWalletRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteWallet, request, options: options);
  }

  $grpc.ResponseFuture<$8.CreateWalletResponse> createWallet(
      $8.CreateWalletRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createWallet, request, options: options);
  }

  $grpc.ResponseFuture<$8.GetWalletInfoResponse> getWalletInfo(
      $8.GetWalletInfoRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getWalletInfo, request, options: options);
  }

  $grpc.ResponseFuture<$8.GetMyInfoResponse> getMyInfo(
      $8.GetMyInfoRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMyInfo, request, options: options);
  }

  $grpc.ResponseFuture<$8.GenerateAuthTokenResponse> generateAuthToken(
      $8.GenerateAuthTokenRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$generateAuthToken, request, options: options);
  }

  $grpc.ResponseFuture<$8.RevokeAuthTokenResponse> revokeAuthToken(
      $8.RevokeAuthTokenRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$revokeAuthToken, request, options: options);
  }

  $grpc.ResponseFuture<$8.AddExternalIdentityInitResponse>
      addExternalIdentityInit($8.AddExternalIdentityInitRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addExternalIdentityInit, request,
        options: options);
  }

  $grpc.ResponseFuture<$8.AddExternalIdentityConfirmResponse>
      addExternalIdentityConfirm($8.AddExternalIdentityConfirmRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addExternalIdentityConfirm, request,
        options: options);
  }

  $grpc.ResponseFuture<$8.RemoveExternalIdentityResponse>
      removeExternalIdentity($8.RemoveExternalIdentityRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeExternalIdentity, request,
        options: options);
  }

  $grpc.ResponseFuture<$8.AuthenticateInitResponse> authenticateInit(
      $8.AuthenticateInitRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$authenticateInit, request, options: options);
  }

  $grpc.ResponseFuture<$8.AuthenticateConfirmResponse> authenticateConfirm(
      $8.AuthenticateConfirmRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$authenticateConfirm, request, options: options);
  }

  $grpc.ResponseFuture<$8.AuthenticateResendCodeResponse>
      authenticateResendCode($8.AuthenticateResendCodeRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$authenticateResendCode, request,
        options: options);
  }

  $grpc.ResponseFuture<$8.ListWalletsResponse> listWallets(
      $8.ListWalletsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listWallets, request, options: options);
  }

  $grpc.ResponseFuture<$8.ListByVerificationTemplateResponse>
      listByVerificationTemplate($8.ListByVerificationTemplateRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listByVerificationTemplate, request,
        options: options);
  }
}

@$pb.GrpcServiceName('services.universalwallet.v1.UniversalWallet')
abstract class UniversalWalletServiceBase extends $grpc.Service {
  $core.String get $name => 'services.universalwallet.v1.UniversalWallet';

  UniversalWalletServiceBase() {
    $addMethod($grpc.ServiceMethod<$8.GetItemRequest, $8.GetItemResponse>(
        'GetItem',
        getItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.GetItemRequest.fromBuffer(value),
        ($8.GetItemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.SearchRequest, $8.SearchResponse>(
        'Search',
        search_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.SearchRequest.fromBuffer(value),
        ($8.SearchResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.InsertItemRequest, $8.InsertItemResponse>(
        'InsertItem',
        insertItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.InsertItemRequest.fromBuffer(value),
        ($8.InsertItemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.UpdateItemRequest, $8.UpdateItemResponse>(
        'UpdateItem',
        updateItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.UpdateItemRequest.fromBuffer(value),
        ($8.UpdateItemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.DeleteItemRequest, $8.DeleteItemResponse>(
        'DeleteItem',
        deleteItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.DeleteItemRequest.fromBuffer(value),
        ($8.DeleteItemResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$8.DeleteWalletRequest, $8.DeleteWalletResponse>(
            'DeleteWallet',
            deleteWallet_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $8.DeleteWalletRequest.fromBuffer(value),
            ($8.DeleteWalletResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$8.CreateWalletRequest, $8.CreateWalletResponse>(
            'CreateWallet',
            createWallet_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $8.CreateWalletRequest.fromBuffer(value),
            ($8.CreateWalletResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$8.GetWalletInfoRequest, $8.GetWalletInfoResponse>(
            'GetWalletInfo',
            getWalletInfo_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $8.GetWalletInfoRequest.fromBuffer(value),
            ($8.GetWalletInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.GetMyInfoRequest, $8.GetMyInfoResponse>(
        'GetMyInfo',
        getMyInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.GetMyInfoRequest.fromBuffer(value),
        ($8.GetMyInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.GenerateAuthTokenRequest,
            $8.GenerateAuthTokenResponse>(
        'GenerateAuthToken',
        generateAuthToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $8.GenerateAuthTokenRequest.fromBuffer(value),
        ($8.GenerateAuthTokenResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.RevokeAuthTokenRequest,
            $8.RevokeAuthTokenResponse>(
        'RevokeAuthToken',
        revokeAuthToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $8.RevokeAuthTokenRequest.fromBuffer(value),
        ($8.RevokeAuthTokenResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.AddExternalIdentityInitRequest,
            $8.AddExternalIdentityInitResponse>(
        'AddExternalIdentityInit',
        addExternalIdentityInit_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $8.AddExternalIdentityInitRequest.fromBuffer(value),
        ($8.AddExternalIdentityInitResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.AddExternalIdentityConfirmRequest,
            $8.AddExternalIdentityConfirmResponse>(
        'AddExternalIdentityConfirm',
        addExternalIdentityConfirm_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $8.AddExternalIdentityConfirmRequest.fromBuffer(value),
        ($8.AddExternalIdentityConfirmResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.RemoveExternalIdentityRequest,
            $8.RemoveExternalIdentityResponse>(
        'RemoveExternalIdentity',
        removeExternalIdentity_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $8.RemoveExternalIdentityRequest.fromBuffer(value),
        ($8.RemoveExternalIdentityResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.AuthenticateInitRequest,
            $8.AuthenticateInitResponse>(
        'AuthenticateInit',
        authenticateInit_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $8.AuthenticateInitRequest.fromBuffer(value),
        ($8.AuthenticateInitResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.AuthenticateConfirmRequest,
            $8.AuthenticateConfirmResponse>(
        'AuthenticateConfirm',
        authenticateConfirm_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $8.AuthenticateConfirmRequest.fromBuffer(value),
        ($8.AuthenticateConfirmResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.AuthenticateResendCodeRequest,
            $8.AuthenticateResendCodeResponse>(
        'AuthenticateResendCode',
        authenticateResendCode_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $8.AuthenticateResendCodeRequest.fromBuffer(value),
        ($8.AuthenticateResendCodeResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$8.ListWalletsRequest, $8.ListWalletsResponse>(
            'ListWallets',
            listWallets_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $8.ListWalletsRequest.fromBuffer(value),
            ($8.ListWalletsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.ListByVerificationTemplateRequest,
            $8.ListByVerificationTemplateResponse>(
        'ListByVerificationTemplate',
        listByVerificationTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $8.ListByVerificationTemplateRequest.fromBuffer(value),
        ($8.ListByVerificationTemplateResponse value) =>
            value.writeToBuffer()));
  }

  $async.Future<$8.GetItemResponse> getItem_Pre(
      $grpc.ServiceCall call, $async.Future<$8.GetItemRequest> request) async {
    return getItem(call, await request);
  }

  $async.Future<$8.SearchResponse> search_Pre(
      $grpc.ServiceCall call, $async.Future<$8.SearchRequest> request) async {
    return search(call, await request);
  }

  $async.Future<$8.InsertItemResponse> insertItem_Pre($grpc.ServiceCall call,
      $async.Future<$8.InsertItemRequest> request) async {
    return insertItem(call, await request);
  }

  $async.Future<$8.UpdateItemResponse> updateItem_Pre($grpc.ServiceCall call,
      $async.Future<$8.UpdateItemRequest> request) async {
    return updateItem(call, await request);
  }

  $async.Future<$8.DeleteItemResponse> deleteItem_Pre($grpc.ServiceCall call,
      $async.Future<$8.DeleteItemRequest> request) async {
    return deleteItem(call, await request);
  }

  $async.Future<$8.DeleteWalletResponse> deleteWallet_Pre(
      $grpc.ServiceCall call,
      $async.Future<$8.DeleteWalletRequest> request) async {
    return deleteWallet(call, await request);
  }

  $async.Future<$8.CreateWalletResponse> createWallet_Pre(
      $grpc.ServiceCall call,
      $async.Future<$8.CreateWalletRequest> request) async {
    return createWallet(call, await request);
  }

  $async.Future<$8.GetWalletInfoResponse> getWalletInfo_Pre(
      $grpc.ServiceCall call,
      $async.Future<$8.GetWalletInfoRequest> request) async {
    return getWalletInfo(call, await request);
  }

  $async.Future<$8.GetMyInfoResponse> getMyInfo_Pre($grpc.ServiceCall call,
      $async.Future<$8.GetMyInfoRequest> request) async {
    return getMyInfo(call, await request);
  }

  $async.Future<$8.GenerateAuthTokenResponse> generateAuthToken_Pre(
      $grpc.ServiceCall call,
      $async.Future<$8.GenerateAuthTokenRequest> request) async {
    return generateAuthToken(call, await request);
  }

  $async.Future<$8.RevokeAuthTokenResponse> revokeAuthToken_Pre(
      $grpc.ServiceCall call,
      $async.Future<$8.RevokeAuthTokenRequest> request) async {
    return revokeAuthToken(call, await request);
  }

  $async.Future<$8.AddExternalIdentityInitResponse> addExternalIdentityInit_Pre(
      $grpc.ServiceCall call,
      $async.Future<$8.AddExternalIdentityInitRequest> request) async {
    return addExternalIdentityInit(call, await request);
  }

  $async.Future<$8.AddExternalIdentityConfirmResponse>
      addExternalIdentityConfirm_Pre($grpc.ServiceCall call,
          $async.Future<$8.AddExternalIdentityConfirmRequest> request) async {
    return addExternalIdentityConfirm(call, await request);
  }

  $async.Future<$8.RemoveExternalIdentityResponse> removeExternalIdentity_Pre(
      $grpc.ServiceCall call,
      $async.Future<$8.RemoveExternalIdentityRequest> request) async {
    return removeExternalIdentity(call, await request);
  }

  $async.Future<$8.AuthenticateInitResponse> authenticateInit_Pre(
      $grpc.ServiceCall call,
      $async.Future<$8.AuthenticateInitRequest> request) async {
    return authenticateInit(call, await request);
  }

  $async.Future<$8.AuthenticateConfirmResponse> authenticateConfirm_Pre(
      $grpc.ServiceCall call,
      $async.Future<$8.AuthenticateConfirmRequest> request) async {
    return authenticateConfirm(call, await request);
  }

  $async.Future<$8.AuthenticateResendCodeResponse> authenticateResendCode_Pre(
      $grpc.ServiceCall call,
      $async.Future<$8.AuthenticateResendCodeRequest> request) async {
    return authenticateResendCode(call, await request);
  }

  $async.Future<$8.ListWalletsResponse> listWallets_Pre($grpc.ServiceCall call,
      $async.Future<$8.ListWalletsRequest> request) async {
    return listWallets(call, await request);
  }

  $async.Future<$8.ListByVerificationTemplateResponse>
      listByVerificationTemplate_Pre($grpc.ServiceCall call,
          $async.Future<$8.ListByVerificationTemplateRequest> request) async {
    return listByVerificationTemplate(call, await request);
  }

  $async.Future<$8.GetItemResponse> getItem(
      $grpc.ServiceCall call, $8.GetItemRequest request);
  $async.Future<$8.SearchResponse> search(
      $grpc.ServiceCall call, $8.SearchRequest request);
  $async.Future<$8.InsertItemResponse> insertItem(
      $grpc.ServiceCall call, $8.InsertItemRequest request);
  $async.Future<$8.UpdateItemResponse> updateItem(
      $grpc.ServiceCall call, $8.UpdateItemRequest request);
  $async.Future<$8.DeleteItemResponse> deleteItem(
      $grpc.ServiceCall call, $8.DeleteItemRequest request);
  $async.Future<$8.DeleteWalletResponse> deleteWallet(
      $grpc.ServiceCall call, $8.DeleteWalletRequest request);
  $async.Future<$8.CreateWalletResponse> createWallet(
      $grpc.ServiceCall call, $8.CreateWalletRequest request);
  $async.Future<$8.GetWalletInfoResponse> getWalletInfo(
      $grpc.ServiceCall call, $8.GetWalletInfoRequest request);
  $async.Future<$8.GetMyInfoResponse> getMyInfo(
      $grpc.ServiceCall call, $8.GetMyInfoRequest request);
  $async.Future<$8.GenerateAuthTokenResponse> generateAuthToken(
      $grpc.ServiceCall call, $8.GenerateAuthTokenRequest request);
  $async.Future<$8.RevokeAuthTokenResponse> revokeAuthToken(
      $grpc.ServiceCall call, $8.RevokeAuthTokenRequest request);
  $async.Future<$8.AddExternalIdentityInitResponse> addExternalIdentityInit(
      $grpc.ServiceCall call, $8.AddExternalIdentityInitRequest request);
  $async.Future<$8.AddExternalIdentityConfirmResponse>
      addExternalIdentityConfirm(
          $grpc.ServiceCall call, $8.AddExternalIdentityConfirmRequest request);
  $async.Future<$8.RemoveExternalIdentityResponse> removeExternalIdentity(
      $grpc.ServiceCall call, $8.RemoveExternalIdentityRequest request);
  $async.Future<$8.AuthenticateInitResponse> authenticateInit(
      $grpc.ServiceCall call, $8.AuthenticateInitRequest request);
  $async.Future<$8.AuthenticateConfirmResponse> authenticateConfirm(
      $grpc.ServiceCall call, $8.AuthenticateConfirmRequest request);
  $async.Future<$8.AuthenticateResendCodeResponse> authenticateResendCode(
      $grpc.ServiceCall call, $8.AuthenticateResendCodeRequest request);
  $async.Future<$8.ListWalletsResponse> listWallets(
      $grpc.ServiceCall call, $8.ListWalletsRequest request);
  $async.Future<$8.ListByVerificationTemplateResponse>
      listByVerificationTemplate(
          $grpc.ServiceCall call, $8.ListByVerificationTemplateRequest request);
}
