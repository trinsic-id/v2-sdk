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

import 'universal-wallet.pb.dart' as $7;

export 'universal-wallet.pb.dart';

@$pb.GrpcServiceName('services.universalwallet.v1.UniversalWallet')
class UniversalWalletClient extends $grpc.Client {
  static final _$getItem =
      $grpc.ClientMethod<$7.GetItemRequest, $7.GetItemResponse>(
          '/services.universalwallet.v1.UniversalWallet/GetItem',
          ($7.GetItemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $7.GetItemResponse.fromBuffer(value));
  static final _$search =
      $grpc.ClientMethod<$7.SearchRequest, $7.SearchResponse>(
          '/services.universalwallet.v1.UniversalWallet/Search',
          ($7.SearchRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $7.SearchResponse.fromBuffer(value));
  static final _$insertItem =
      $grpc.ClientMethod<$7.InsertItemRequest, $7.InsertItemResponse>(
          '/services.universalwallet.v1.UniversalWallet/InsertItem',
          ($7.InsertItemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $7.InsertItemResponse.fromBuffer(value));
  static final _$updateItem =
      $grpc.ClientMethod<$7.UpdateItemRequest, $7.UpdateItemResponse>(
          '/services.universalwallet.v1.UniversalWallet/UpdateItem',
          ($7.UpdateItemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $7.UpdateItemResponse.fromBuffer(value));
  static final _$deleteItem =
      $grpc.ClientMethod<$7.DeleteItemRequest, $7.DeleteItemResponse>(
          '/services.universalwallet.v1.UniversalWallet/DeleteItem',
          ($7.DeleteItemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $7.DeleteItemResponse.fromBuffer(value));
  static final _$deleteWallet =
      $grpc.ClientMethod<$7.DeleteWalletRequest, $7.DeleteWalletResponse>(
          '/services.universalwallet.v1.UniversalWallet/DeleteWallet',
          ($7.DeleteWalletRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $7.DeleteWalletResponse.fromBuffer(value));
  static final _$createWallet =
      $grpc.ClientMethod<$7.CreateWalletRequest, $7.CreateWalletResponse>(
          '/services.universalwallet.v1.UniversalWallet/CreateWallet',
          ($7.CreateWalletRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $7.CreateWalletResponse.fromBuffer(value));
  static final _$getWalletInfo =
      $grpc.ClientMethod<$7.GetWalletInfoRequest, $7.GetWalletInfoResponse>(
          '/services.universalwallet.v1.UniversalWallet/GetWalletInfo',
          ($7.GetWalletInfoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $7.GetWalletInfoResponse.fromBuffer(value));
  static final _$getMyInfo =
      $grpc.ClientMethod<$7.GetMyInfoRequest, $7.GetMyInfoResponse>(
          '/services.universalwallet.v1.UniversalWallet/GetMyInfo',
          ($7.GetMyInfoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $7.GetMyInfoResponse.fromBuffer(value));
  static final _$generateAuthToken = $grpc.ClientMethod<
          $7.GenerateAuthTokenRequest, $7.GenerateAuthTokenResponse>(
      '/services.universalwallet.v1.UniversalWallet/GenerateAuthToken',
      ($7.GenerateAuthTokenRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $7.GenerateAuthTokenResponse.fromBuffer(value));
  static final _$revokeAuthToken =
      $grpc.ClientMethod<$7.RevokeAuthTokenRequest, $7.RevokeAuthTokenResponse>(
          '/services.universalwallet.v1.UniversalWallet/RevokeAuthToken',
          ($7.RevokeAuthTokenRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $7.RevokeAuthTokenResponse.fromBuffer(value));
  static final _$addExternalIdentityInit = $grpc.ClientMethod<
          $7.AddExternalIdentityInitRequest,
          $7.AddExternalIdentityInitResponse>(
      '/services.universalwallet.v1.UniversalWallet/AddExternalIdentityInit',
      ($7.AddExternalIdentityInitRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $7.AddExternalIdentityInitResponse.fromBuffer(value));
  static final _$addExternalIdentityConfirm = $grpc.ClientMethod<
          $7.AddExternalIdentityConfirmRequest,
          $7.AddExternalIdentityConfirmResponse>(
      '/services.universalwallet.v1.UniversalWallet/AddExternalIdentityConfirm',
      ($7.AddExternalIdentityConfirmRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $7.AddExternalIdentityConfirmResponse.fromBuffer(value));
  static final _$removeExternalIdentity = $grpc.ClientMethod<
          $7.RemoveExternalIdentityRequest, $7.RemoveExternalIdentityResponse>(
      '/services.universalwallet.v1.UniversalWallet/RemoveExternalIdentity',
      ($7.RemoveExternalIdentityRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $7.RemoveExternalIdentityResponse.fromBuffer(value));
  static final _$authenticateInit = $grpc.ClientMethod<
          $7.AuthenticateInitRequest, $7.AuthenticateInitResponse>(
      '/services.universalwallet.v1.UniversalWallet/AuthenticateInit',
      ($7.AuthenticateInitRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $7.AuthenticateInitResponse.fromBuffer(value));
  static final _$authenticateConfirm = $grpc.ClientMethod<
          $7.AuthenticateConfirmRequest, $7.AuthenticateConfirmResponse>(
      '/services.universalwallet.v1.UniversalWallet/AuthenticateConfirm',
      ($7.AuthenticateConfirmRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $7.AuthenticateConfirmResponse.fromBuffer(value));
  static final _$authenticateResendCode = $grpc.ClientMethod<
          $7.AuthenticateResendCodeRequest, $7.AuthenticateResendCodeResponse>(
      '/services.universalwallet.v1.UniversalWallet/AuthenticateResendCode',
      ($7.AuthenticateResendCodeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $7.AuthenticateResendCodeResponse.fromBuffer(value));
  static final _$listWallets =
      $grpc.ClientMethod<$7.ListWalletsRequest, $7.ListWalletsResponse>(
          '/services.universalwallet.v1.UniversalWallet/ListWallets',
          ($7.ListWalletsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $7.ListWalletsResponse.fromBuffer(value));
  static final _$listByVerificationTemplate = $grpc.ClientMethod<
          $7.ListByVerificationTemplateRequest,
          $7.ListByVerificationTemplateResponse>(
      '/services.universalwallet.v1.UniversalWallet/ListByVerificationTemplate',
      ($7.ListByVerificationTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $7.ListByVerificationTemplateResponse.fromBuffer(value));

  UniversalWalletClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$7.GetItemResponse> getItem($7.GetItemRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getItem, request, options: options);
  }

  $grpc.ResponseFuture<$7.SearchResponse> search($7.SearchRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$search, request, options: options);
  }

  $grpc.ResponseFuture<$7.InsertItemResponse> insertItem(
      $7.InsertItemRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$insertItem, request, options: options);
  }

  $grpc.ResponseFuture<$7.UpdateItemResponse> updateItem(
      $7.UpdateItemRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateItem, request, options: options);
  }

  $grpc.ResponseFuture<$7.DeleteItemResponse> deleteItem(
      $7.DeleteItemRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteItem, request, options: options);
  }

  $grpc.ResponseFuture<$7.DeleteWalletResponse> deleteWallet(
      $7.DeleteWalletRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteWallet, request, options: options);
  }

  $grpc.ResponseFuture<$7.CreateWalletResponse> createWallet(
      $7.CreateWalletRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createWallet, request, options: options);
  }

  $grpc.ResponseFuture<$7.GetWalletInfoResponse> getWalletInfo(
      $7.GetWalletInfoRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getWalletInfo, request, options: options);
  }

  $grpc.ResponseFuture<$7.GetMyInfoResponse> getMyInfo(
      $7.GetMyInfoRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMyInfo, request, options: options);
  }

  $grpc.ResponseFuture<$7.GenerateAuthTokenResponse> generateAuthToken(
      $7.GenerateAuthTokenRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$generateAuthToken, request, options: options);
  }

  $grpc.ResponseFuture<$7.RevokeAuthTokenResponse> revokeAuthToken(
      $7.RevokeAuthTokenRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$revokeAuthToken, request, options: options);
  }

  $grpc.ResponseFuture<$7.AddExternalIdentityInitResponse>
      addExternalIdentityInit($7.AddExternalIdentityInitRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addExternalIdentityInit, request,
        options: options);
  }

  $grpc.ResponseFuture<$7.AddExternalIdentityConfirmResponse>
      addExternalIdentityConfirm($7.AddExternalIdentityConfirmRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addExternalIdentityConfirm, request,
        options: options);
  }

  $grpc.ResponseFuture<$7.RemoveExternalIdentityResponse>
      removeExternalIdentity($7.RemoveExternalIdentityRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeExternalIdentity, request,
        options: options);
  }

  $grpc.ResponseFuture<$7.AuthenticateInitResponse> authenticateInit(
      $7.AuthenticateInitRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$authenticateInit, request, options: options);
  }

  $grpc.ResponseFuture<$7.AuthenticateConfirmResponse> authenticateConfirm(
      $7.AuthenticateConfirmRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$authenticateConfirm, request, options: options);
  }

  $grpc.ResponseFuture<$7.AuthenticateResendCodeResponse>
      authenticateResendCode($7.AuthenticateResendCodeRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$authenticateResendCode, request,
        options: options);
  }

  $grpc.ResponseFuture<$7.ListWalletsResponse> listWallets(
      $7.ListWalletsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listWallets, request, options: options);
  }

  $grpc.ResponseFuture<$7.ListByVerificationTemplateResponse>
      listByVerificationTemplate($7.ListByVerificationTemplateRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listByVerificationTemplate, request,
        options: options);
  }
}

@$pb.GrpcServiceName('services.universalwallet.v1.UniversalWallet')
abstract class UniversalWalletServiceBase extends $grpc.Service {
  $core.String get $name => 'services.universalwallet.v1.UniversalWallet';

  UniversalWalletServiceBase() {
    $addMethod($grpc.ServiceMethod<$7.GetItemRequest, $7.GetItemResponse>(
        'GetItem',
        getItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.GetItemRequest.fromBuffer(value),
        ($7.GetItemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.SearchRequest, $7.SearchResponse>(
        'Search',
        search_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.SearchRequest.fromBuffer(value),
        ($7.SearchResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.InsertItemRequest, $7.InsertItemResponse>(
        'InsertItem',
        insertItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.InsertItemRequest.fromBuffer(value),
        ($7.InsertItemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.UpdateItemRequest, $7.UpdateItemResponse>(
        'UpdateItem',
        updateItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.UpdateItemRequest.fromBuffer(value),
        ($7.UpdateItemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.DeleteItemRequest, $7.DeleteItemResponse>(
        'DeleteItem',
        deleteItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.DeleteItemRequest.fromBuffer(value),
        ($7.DeleteItemResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$7.DeleteWalletRequest, $7.DeleteWalletResponse>(
            'DeleteWallet',
            deleteWallet_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $7.DeleteWalletRequest.fromBuffer(value),
            ($7.DeleteWalletResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$7.CreateWalletRequest, $7.CreateWalletResponse>(
            'CreateWallet',
            createWallet_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $7.CreateWalletRequest.fromBuffer(value),
            ($7.CreateWalletResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$7.GetWalletInfoRequest, $7.GetWalletInfoResponse>(
            'GetWalletInfo',
            getWalletInfo_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $7.GetWalletInfoRequest.fromBuffer(value),
            ($7.GetWalletInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.GetMyInfoRequest, $7.GetMyInfoResponse>(
        'GetMyInfo',
        getMyInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.GetMyInfoRequest.fromBuffer(value),
        ($7.GetMyInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.GenerateAuthTokenRequest,
            $7.GenerateAuthTokenResponse>(
        'GenerateAuthToken',
        generateAuthToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.GenerateAuthTokenRequest.fromBuffer(value),
        ($7.GenerateAuthTokenResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.RevokeAuthTokenRequest,
            $7.RevokeAuthTokenResponse>(
        'RevokeAuthToken',
        revokeAuthToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.RevokeAuthTokenRequest.fromBuffer(value),
        ($7.RevokeAuthTokenResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.AddExternalIdentityInitRequest,
            $7.AddExternalIdentityInitResponse>(
        'AddExternalIdentityInit',
        addExternalIdentityInit_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.AddExternalIdentityInitRequest.fromBuffer(value),
        ($7.AddExternalIdentityInitResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.AddExternalIdentityConfirmRequest,
            $7.AddExternalIdentityConfirmResponse>(
        'AddExternalIdentityConfirm',
        addExternalIdentityConfirm_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.AddExternalIdentityConfirmRequest.fromBuffer(value),
        ($7.AddExternalIdentityConfirmResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.RemoveExternalIdentityRequest,
            $7.RemoveExternalIdentityResponse>(
        'RemoveExternalIdentity',
        removeExternalIdentity_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.RemoveExternalIdentityRequest.fromBuffer(value),
        ($7.RemoveExternalIdentityResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.AuthenticateInitRequest,
            $7.AuthenticateInitResponse>(
        'AuthenticateInit',
        authenticateInit_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.AuthenticateInitRequest.fromBuffer(value),
        ($7.AuthenticateInitResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.AuthenticateConfirmRequest,
            $7.AuthenticateConfirmResponse>(
        'AuthenticateConfirm',
        authenticateConfirm_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.AuthenticateConfirmRequest.fromBuffer(value),
        ($7.AuthenticateConfirmResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.AuthenticateResendCodeRequest,
            $7.AuthenticateResendCodeResponse>(
        'AuthenticateResendCode',
        authenticateResendCode_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.AuthenticateResendCodeRequest.fromBuffer(value),
        ($7.AuthenticateResendCodeResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$7.ListWalletsRequest, $7.ListWalletsResponse>(
            'ListWallets',
            listWallets_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $7.ListWalletsRequest.fromBuffer(value),
            ($7.ListWalletsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.ListByVerificationTemplateRequest,
            $7.ListByVerificationTemplateResponse>(
        'ListByVerificationTemplate',
        listByVerificationTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.ListByVerificationTemplateRequest.fromBuffer(value),
        ($7.ListByVerificationTemplateResponse value) =>
            value.writeToBuffer()));
  }

  $async.Future<$7.GetItemResponse> getItem_Pre(
      $grpc.ServiceCall call, $async.Future<$7.GetItemRequest> request) async {
    return getItem(call, await request);
  }

  $async.Future<$7.SearchResponse> search_Pre(
      $grpc.ServiceCall call, $async.Future<$7.SearchRequest> request) async {
    return search(call, await request);
  }

  $async.Future<$7.InsertItemResponse> insertItem_Pre($grpc.ServiceCall call,
      $async.Future<$7.InsertItemRequest> request) async {
    return insertItem(call, await request);
  }

  $async.Future<$7.UpdateItemResponse> updateItem_Pre($grpc.ServiceCall call,
      $async.Future<$7.UpdateItemRequest> request) async {
    return updateItem(call, await request);
  }

  $async.Future<$7.DeleteItemResponse> deleteItem_Pre($grpc.ServiceCall call,
      $async.Future<$7.DeleteItemRequest> request) async {
    return deleteItem(call, await request);
  }

  $async.Future<$7.DeleteWalletResponse> deleteWallet_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.DeleteWalletRequest> request) async {
    return deleteWallet(call, await request);
  }

  $async.Future<$7.CreateWalletResponse> createWallet_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.CreateWalletRequest> request) async {
    return createWallet(call, await request);
  }

  $async.Future<$7.GetWalletInfoResponse> getWalletInfo_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.GetWalletInfoRequest> request) async {
    return getWalletInfo(call, await request);
  }

  $async.Future<$7.GetMyInfoResponse> getMyInfo_Pre($grpc.ServiceCall call,
      $async.Future<$7.GetMyInfoRequest> request) async {
    return getMyInfo(call, await request);
  }

  $async.Future<$7.GenerateAuthTokenResponse> generateAuthToken_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.GenerateAuthTokenRequest> request) async {
    return generateAuthToken(call, await request);
  }

  $async.Future<$7.RevokeAuthTokenResponse> revokeAuthToken_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.RevokeAuthTokenRequest> request) async {
    return revokeAuthToken(call, await request);
  }

  $async.Future<$7.AddExternalIdentityInitResponse> addExternalIdentityInit_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.AddExternalIdentityInitRequest> request) async {
    return addExternalIdentityInit(call, await request);
  }

  $async.Future<$7.AddExternalIdentityConfirmResponse>
      addExternalIdentityConfirm_Pre($grpc.ServiceCall call,
          $async.Future<$7.AddExternalIdentityConfirmRequest> request) async {
    return addExternalIdentityConfirm(call, await request);
  }

  $async.Future<$7.RemoveExternalIdentityResponse> removeExternalIdentity_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.RemoveExternalIdentityRequest> request) async {
    return removeExternalIdentity(call, await request);
  }

  $async.Future<$7.AuthenticateInitResponse> authenticateInit_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.AuthenticateInitRequest> request) async {
    return authenticateInit(call, await request);
  }

  $async.Future<$7.AuthenticateConfirmResponse> authenticateConfirm_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.AuthenticateConfirmRequest> request) async {
    return authenticateConfirm(call, await request);
  }

  $async.Future<$7.AuthenticateResendCodeResponse> authenticateResendCode_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.AuthenticateResendCodeRequest> request) async {
    return authenticateResendCode(call, await request);
  }

  $async.Future<$7.ListWalletsResponse> listWallets_Pre($grpc.ServiceCall call,
      $async.Future<$7.ListWalletsRequest> request) async {
    return listWallets(call, await request);
  }

  $async.Future<$7.ListByVerificationTemplateResponse>
      listByVerificationTemplate_Pre($grpc.ServiceCall call,
          $async.Future<$7.ListByVerificationTemplateRequest> request) async {
    return listByVerificationTemplate(call, await request);
  }

  $async.Future<$7.GetItemResponse> getItem(
      $grpc.ServiceCall call, $7.GetItemRequest request);
  $async.Future<$7.SearchResponse> search(
      $grpc.ServiceCall call, $7.SearchRequest request);
  $async.Future<$7.InsertItemResponse> insertItem(
      $grpc.ServiceCall call, $7.InsertItemRequest request);
  $async.Future<$7.UpdateItemResponse> updateItem(
      $grpc.ServiceCall call, $7.UpdateItemRequest request);
  $async.Future<$7.DeleteItemResponse> deleteItem(
      $grpc.ServiceCall call, $7.DeleteItemRequest request);
  $async.Future<$7.DeleteWalletResponse> deleteWallet(
      $grpc.ServiceCall call, $7.DeleteWalletRequest request);
  $async.Future<$7.CreateWalletResponse> createWallet(
      $grpc.ServiceCall call, $7.CreateWalletRequest request);
  $async.Future<$7.GetWalletInfoResponse> getWalletInfo(
      $grpc.ServiceCall call, $7.GetWalletInfoRequest request);
  $async.Future<$7.GetMyInfoResponse> getMyInfo(
      $grpc.ServiceCall call, $7.GetMyInfoRequest request);
  $async.Future<$7.GenerateAuthTokenResponse> generateAuthToken(
      $grpc.ServiceCall call, $7.GenerateAuthTokenRequest request);
  $async.Future<$7.RevokeAuthTokenResponse> revokeAuthToken(
      $grpc.ServiceCall call, $7.RevokeAuthTokenRequest request);
  $async.Future<$7.AddExternalIdentityInitResponse> addExternalIdentityInit(
      $grpc.ServiceCall call, $7.AddExternalIdentityInitRequest request);
  $async.Future<$7.AddExternalIdentityConfirmResponse>
      addExternalIdentityConfirm(
          $grpc.ServiceCall call, $7.AddExternalIdentityConfirmRequest request);
  $async.Future<$7.RemoveExternalIdentityResponse> removeExternalIdentity(
      $grpc.ServiceCall call, $7.RemoveExternalIdentityRequest request);
  $async.Future<$7.AuthenticateInitResponse> authenticateInit(
      $grpc.ServiceCall call, $7.AuthenticateInitRequest request);
  $async.Future<$7.AuthenticateConfirmResponse> authenticateConfirm(
      $grpc.ServiceCall call, $7.AuthenticateConfirmRequest request);
  $async.Future<$7.AuthenticateResendCodeResponse> authenticateResendCode(
      $grpc.ServiceCall call, $7.AuthenticateResendCodeRequest request);
  $async.Future<$7.ListWalletsResponse> listWallets(
      $grpc.ServiceCall call, $7.ListWalletsRequest request);
  $async.Future<$7.ListByVerificationTemplateResponse>
      listByVerificationTemplate(
          $grpc.ServiceCall call, $7.ListByVerificationTemplateRequest request);
}
