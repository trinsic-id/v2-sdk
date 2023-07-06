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

import 'universal-wallet.pb.dart' as $4;

export 'universal-wallet.pb.dart';

@$pb.GrpcServiceName('services.universalwallet.v1.UniversalWallet')
class UniversalWalletClient extends $grpc.Client {
  static final _$getItem =
      $grpc.ClientMethod<$4.GetItemRequest, $4.GetItemResponse>(
          '/services.universalwallet.v1.UniversalWallet/GetItem',
          ($4.GetItemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.GetItemResponse.fromBuffer(value));
  static final _$search =
      $grpc.ClientMethod<$4.SearchRequest, $4.SearchResponse>(
          '/services.universalwallet.v1.UniversalWallet/Search',
          ($4.SearchRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $4.SearchResponse.fromBuffer(value));
  static final _$insertItem =
      $grpc.ClientMethod<$4.InsertItemRequest, $4.InsertItemResponse>(
          '/services.universalwallet.v1.UniversalWallet/InsertItem',
          ($4.InsertItemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.InsertItemResponse.fromBuffer(value));
  static final _$updateItem =
      $grpc.ClientMethod<$4.UpdateItemRequest, $4.UpdateItemResponse>(
          '/services.universalwallet.v1.UniversalWallet/UpdateItem',
          ($4.UpdateItemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.UpdateItemResponse.fromBuffer(value));
  static final _$deleteItem =
      $grpc.ClientMethod<$4.DeleteItemRequest, $4.DeleteItemResponse>(
          '/services.universalwallet.v1.UniversalWallet/DeleteItem',
          ($4.DeleteItemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.DeleteItemResponse.fromBuffer(value));
  static final _$deleteWallet =
      $grpc.ClientMethod<$4.DeleteWalletRequest, $4.DeleteWalletResponse>(
          '/services.universalwallet.v1.UniversalWallet/DeleteWallet',
          ($4.DeleteWalletRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.DeleteWalletResponse.fromBuffer(value));
  static final _$createWallet =
      $grpc.ClientMethod<$4.CreateWalletRequest, $4.CreateWalletResponse>(
          '/services.universalwallet.v1.UniversalWallet/CreateWallet',
          ($4.CreateWalletRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.CreateWalletResponse.fromBuffer(value));
  static final _$getWalletInfo =
      $grpc.ClientMethod<$4.GetWalletInfoRequest, $4.GetWalletInfoResponse>(
          '/services.universalwallet.v1.UniversalWallet/GetWalletInfo',
          ($4.GetWalletInfoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.GetWalletInfoResponse.fromBuffer(value));
  static final _$getMyInfo =
      $grpc.ClientMethod<$4.GetMyInfoRequest, $4.GetMyInfoResponse>(
          '/services.universalwallet.v1.UniversalWallet/GetMyInfo',
          ($4.GetMyInfoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.GetMyInfoResponse.fromBuffer(value));
  static final _$generateAuthToken = $grpc.ClientMethod<
          $4.GenerateAuthTokenRequest, $4.GenerateAuthTokenResponse>(
      '/services.universalwallet.v1.UniversalWallet/GenerateAuthToken',
      ($4.GenerateAuthTokenRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $4.GenerateAuthTokenResponse.fromBuffer(value));
  static final _$revokeAuthToken =
      $grpc.ClientMethod<$4.RevokeAuthTokenRequest, $4.RevokeAuthTokenResponse>(
          '/services.universalwallet.v1.UniversalWallet/RevokeAuthToken',
          ($4.RevokeAuthTokenRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.RevokeAuthTokenResponse.fromBuffer(value));
  static final _$addExternalIdentityInit = $grpc.ClientMethod<
          $4.AddExternalIdentityInitRequest,
          $4.AddExternalIdentityInitResponse>(
      '/services.universalwallet.v1.UniversalWallet/AddExternalIdentityInit',
      ($4.AddExternalIdentityInitRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $4.AddExternalIdentityInitResponse.fromBuffer(value));
  static final _$addExternalIdentityConfirm = $grpc.ClientMethod<
          $4.AddExternalIdentityConfirmRequest,
          $4.AddExternalIdentityConfirmResponse>(
      '/services.universalwallet.v1.UniversalWallet/AddExternalIdentityConfirm',
      ($4.AddExternalIdentityConfirmRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $4.AddExternalIdentityConfirmResponse.fromBuffer(value));
  static final _$removeExternalIdentity = $grpc.ClientMethod<
          $4.RemoveExternalIdentityRequest, $4.RemoveExternalIdentityResponse>(
      '/services.universalwallet.v1.UniversalWallet/RemoveExternalIdentity',
      ($4.RemoveExternalIdentityRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $4.RemoveExternalIdentityResponse.fromBuffer(value));
  static final _$authenticateInit = $grpc.ClientMethod<
          $4.AuthenticateInitRequest, $4.AuthenticateInitResponse>(
      '/services.universalwallet.v1.UniversalWallet/AuthenticateInit',
      ($4.AuthenticateInitRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $4.AuthenticateInitResponse.fromBuffer(value));
  static final _$authenticateConfirm = $grpc.ClientMethod<
          $4.AuthenticateConfirmRequest, $4.AuthenticateConfirmResponse>(
      '/services.universalwallet.v1.UniversalWallet/AuthenticateConfirm',
      ($4.AuthenticateConfirmRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $4.AuthenticateConfirmResponse.fromBuffer(value));
  static final _$authenticateResendCode = $grpc.ClientMethod<
          $4.AuthenticateResendCodeRequest, $4.AuthenticateResendCodeResponse>(
      '/services.universalwallet.v1.UniversalWallet/AuthenticateResendCode',
      ($4.AuthenticateResendCodeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $4.AuthenticateResendCodeResponse.fromBuffer(value));
  static final _$listWallets =
      $grpc.ClientMethod<$4.ListWalletsRequest, $4.ListWalletsResponse>(
          '/services.universalwallet.v1.UniversalWallet/ListWallets',
          ($4.ListWalletsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.ListWalletsResponse.fromBuffer(value));
  static final _$listByVerificationTemplate = $grpc.ClientMethod<
          $4.ListByVerificationTemplateRequest,
          $4.ListByVerificationTemplateResponse>(
      '/services.universalwallet.v1.UniversalWallet/ListByVerificationTemplate',
      ($4.ListByVerificationTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $4.ListByVerificationTemplateResponse.fromBuffer(value));

  UniversalWalletClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$4.GetItemResponse> getItem($4.GetItemRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getItem, request, options: options);
  }

  $grpc.ResponseFuture<$4.SearchResponse> search($4.SearchRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$search, request, options: options);
  }

  $grpc.ResponseFuture<$4.InsertItemResponse> insertItem(
      $4.InsertItemRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$insertItem, request, options: options);
  }

  $grpc.ResponseFuture<$4.UpdateItemResponse> updateItem(
      $4.UpdateItemRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateItem, request, options: options);
  }

  $grpc.ResponseFuture<$4.DeleteItemResponse> deleteItem(
      $4.DeleteItemRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteItem, request, options: options);
  }

  $grpc.ResponseFuture<$4.DeleteWalletResponse> deleteWallet(
      $4.DeleteWalletRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteWallet, request, options: options);
  }

  $grpc.ResponseFuture<$4.CreateWalletResponse> createWallet(
      $4.CreateWalletRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createWallet, request, options: options);
  }

  $grpc.ResponseFuture<$4.GetWalletInfoResponse> getWalletInfo(
      $4.GetWalletInfoRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getWalletInfo, request, options: options);
  }

  $grpc.ResponseFuture<$4.GetMyInfoResponse> getMyInfo(
      $4.GetMyInfoRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMyInfo, request, options: options);
  }

  $grpc.ResponseFuture<$4.GenerateAuthTokenResponse> generateAuthToken(
      $4.GenerateAuthTokenRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$generateAuthToken, request, options: options);
  }

  $grpc.ResponseFuture<$4.RevokeAuthTokenResponse> revokeAuthToken(
      $4.RevokeAuthTokenRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$revokeAuthToken, request, options: options);
  }

  $grpc.ResponseFuture<$4.AddExternalIdentityInitResponse>
      addExternalIdentityInit($4.AddExternalIdentityInitRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addExternalIdentityInit, request,
        options: options);
  }

  $grpc.ResponseFuture<$4.AddExternalIdentityConfirmResponse>
      addExternalIdentityConfirm($4.AddExternalIdentityConfirmRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addExternalIdentityConfirm, request,
        options: options);
  }

  $grpc.ResponseFuture<$4.RemoveExternalIdentityResponse>
      removeExternalIdentity($4.RemoveExternalIdentityRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeExternalIdentity, request,
        options: options);
  }

  $grpc.ResponseFuture<$4.AuthenticateInitResponse> authenticateInit(
      $4.AuthenticateInitRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$authenticateInit, request, options: options);
  }

  $grpc.ResponseFuture<$4.AuthenticateConfirmResponse> authenticateConfirm(
      $4.AuthenticateConfirmRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$authenticateConfirm, request, options: options);
  }

  $grpc.ResponseFuture<$4.AuthenticateResendCodeResponse>
      authenticateResendCode($4.AuthenticateResendCodeRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$authenticateResendCode, request,
        options: options);
  }

  $grpc.ResponseFuture<$4.ListWalletsResponse> listWallets(
      $4.ListWalletsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listWallets, request, options: options);
  }

  $grpc.ResponseFuture<$4.ListByVerificationTemplateResponse>
      listByVerificationTemplate($4.ListByVerificationTemplateRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listByVerificationTemplate, request,
        options: options);
  }
}

@$pb.GrpcServiceName('services.universalwallet.v1.UniversalWallet')
abstract class UniversalWalletServiceBase extends $grpc.Service {
  $core.String get $name => 'services.universalwallet.v1.UniversalWallet';

  UniversalWalletServiceBase() {
    $addMethod($grpc.ServiceMethod<$4.GetItemRequest, $4.GetItemResponse>(
        'GetItem',
        getItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.GetItemRequest.fromBuffer(value),
        ($4.GetItemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.SearchRequest, $4.SearchResponse>(
        'Search',
        search_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.SearchRequest.fromBuffer(value),
        ($4.SearchResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.InsertItemRequest, $4.InsertItemResponse>(
        'InsertItem',
        insertItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.InsertItemRequest.fromBuffer(value),
        ($4.InsertItemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.UpdateItemRequest, $4.UpdateItemResponse>(
        'UpdateItem',
        updateItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.UpdateItemRequest.fromBuffer(value),
        ($4.UpdateItemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.DeleteItemRequest, $4.DeleteItemResponse>(
        'DeleteItem',
        deleteItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.DeleteItemRequest.fromBuffer(value),
        ($4.DeleteItemResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$4.DeleteWalletRequest, $4.DeleteWalletResponse>(
            'DeleteWallet',
            deleteWallet_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $4.DeleteWalletRequest.fromBuffer(value),
            ($4.DeleteWalletResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$4.CreateWalletRequest, $4.CreateWalletResponse>(
            'CreateWallet',
            createWallet_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $4.CreateWalletRequest.fromBuffer(value),
            ($4.CreateWalletResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$4.GetWalletInfoRequest, $4.GetWalletInfoResponse>(
            'GetWalletInfo',
            getWalletInfo_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $4.GetWalletInfoRequest.fromBuffer(value),
            ($4.GetWalletInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.GetMyInfoRequest, $4.GetMyInfoResponse>(
        'GetMyInfo',
        getMyInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.GetMyInfoRequest.fromBuffer(value),
        ($4.GetMyInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.GenerateAuthTokenRequest,
            $4.GenerateAuthTokenResponse>(
        'GenerateAuthToken',
        generateAuthToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.GenerateAuthTokenRequest.fromBuffer(value),
        ($4.GenerateAuthTokenResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.RevokeAuthTokenRequest,
            $4.RevokeAuthTokenResponse>(
        'RevokeAuthToken',
        revokeAuthToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.RevokeAuthTokenRequest.fromBuffer(value),
        ($4.RevokeAuthTokenResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.AddExternalIdentityInitRequest,
            $4.AddExternalIdentityInitResponse>(
        'AddExternalIdentityInit',
        addExternalIdentityInit_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.AddExternalIdentityInitRequest.fromBuffer(value),
        ($4.AddExternalIdentityInitResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.AddExternalIdentityConfirmRequest,
            $4.AddExternalIdentityConfirmResponse>(
        'AddExternalIdentityConfirm',
        addExternalIdentityConfirm_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.AddExternalIdentityConfirmRequest.fromBuffer(value),
        ($4.AddExternalIdentityConfirmResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.RemoveExternalIdentityRequest,
            $4.RemoveExternalIdentityResponse>(
        'RemoveExternalIdentity',
        removeExternalIdentity_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.RemoveExternalIdentityRequest.fromBuffer(value),
        ($4.RemoveExternalIdentityResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.AuthenticateInitRequest,
            $4.AuthenticateInitResponse>(
        'AuthenticateInit',
        authenticateInit_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.AuthenticateInitRequest.fromBuffer(value),
        ($4.AuthenticateInitResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.AuthenticateConfirmRequest,
            $4.AuthenticateConfirmResponse>(
        'AuthenticateConfirm',
        authenticateConfirm_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.AuthenticateConfirmRequest.fromBuffer(value),
        ($4.AuthenticateConfirmResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.AuthenticateResendCodeRequest,
            $4.AuthenticateResendCodeResponse>(
        'AuthenticateResendCode',
        authenticateResendCode_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.AuthenticateResendCodeRequest.fromBuffer(value),
        ($4.AuthenticateResendCodeResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$4.ListWalletsRequest, $4.ListWalletsResponse>(
            'ListWallets',
            listWallets_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $4.ListWalletsRequest.fromBuffer(value),
            ($4.ListWalletsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.ListByVerificationTemplateRequest,
            $4.ListByVerificationTemplateResponse>(
        'ListByVerificationTemplate',
        listByVerificationTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.ListByVerificationTemplateRequest.fromBuffer(value),
        ($4.ListByVerificationTemplateResponse value) =>
            value.writeToBuffer()));
  }

  $async.Future<$4.GetItemResponse> getItem_Pre(
      $grpc.ServiceCall call, $async.Future<$4.GetItemRequest> request) async {
    return getItem(call, await request);
  }

  $async.Future<$4.SearchResponse> search_Pre(
      $grpc.ServiceCall call, $async.Future<$4.SearchRequest> request) async {
    return search(call, await request);
  }

  $async.Future<$4.InsertItemResponse> insertItem_Pre($grpc.ServiceCall call,
      $async.Future<$4.InsertItemRequest> request) async {
    return insertItem(call, await request);
  }

  $async.Future<$4.UpdateItemResponse> updateItem_Pre($grpc.ServiceCall call,
      $async.Future<$4.UpdateItemRequest> request) async {
    return updateItem(call, await request);
  }

  $async.Future<$4.DeleteItemResponse> deleteItem_Pre($grpc.ServiceCall call,
      $async.Future<$4.DeleteItemRequest> request) async {
    return deleteItem(call, await request);
  }

  $async.Future<$4.DeleteWalletResponse> deleteWallet_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.DeleteWalletRequest> request) async {
    return deleteWallet(call, await request);
  }

  $async.Future<$4.CreateWalletResponse> createWallet_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.CreateWalletRequest> request) async {
    return createWallet(call, await request);
  }

  $async.Future<$4.GetWalletInfoResponse> getWalletInfo_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.GetWalletInfoRequest> request) async {
    return getWalletInfo(call, await request);
  }

  $async.Future<$4.GetMyInfoResponse> getMyInfo_Pre($grpc.ServiceCall call,
      $async.Future<$4.GetMyInfoRequest> request) async {
    return getMyInfo(call, await request);
  }

  $async.Future<$4.GenerateAuthTokenResponse> generateAuthToken_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.GenerateAuthTokenRequest> request) async {
    return generateAuthToken(call, await request);
  }

  $async.Future<$4.RevokeAuthTokenResponse> revokeAuthToken_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.RevokeAuthTokenRequest> request) async {
    return revokeAuthToken(call, await request);
  }

  $async.Future<$4.AddExternalIdentityInitResponse> addExternalIdentityInit_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.AddExternalIdentityInitRequest> request) async {
    return addExternalIdentityInit(call, await request);
  }

  $async.Future<$4.AddExternalIdentityConfirmResponse>
      addExternalIdentityConfirm_Pre($grpc.ServiceCall call,
          $async.Future<$4.AddExternalIdentityConfirmRequest> request) async {
    return addExternalIdentityConfirm(call, await request);
  }

  $async.Future<$4.RemoveExternalIdentityResponse> removeExternalIdentity_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.RemoveExternalIdentityRequest> request) async {
    return removeExternalIdentity(call, await request);
  }

  $async.Future<$4.AuthenticateInitResponse> authenticateInit_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.AuthenticateInitRequest> request) async {
    return authenticateInit(call, await request);
  }

  $async.Future<$4.AuthenticateConfirmResponse> authenticateConfirm_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.AuthenticateConfirmRequest> request) async {
    return authenticateConfirm(call, await request);
  }

  $async.Future<$4.AuthenticateResendCodeResponse> authenticateResendCode_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.AuthenticateResendCodeRequest> request) async {
    return authenticateResendCode(call, await request);
  }

  $async.Future<$4.ListWalletsResponse> listWallets_Pre($grpc.ServiceCall call,
      $async.Future<$4.ListWalletsRequest> request) async {
    return listWallets(call, await request);
  }

  $async.Future<$4.ListByVerificationTemplateResponse>
      listByVerificationTemplate_Pre($grpc.ServiceCall call,
          $async.Future<$4.ListByVerificationTemplateRequest> request) async {
    return listByVerificationTemplate(call, await request);
  }

  $async.Future<$4.GetItemResponse> getItem(
      $grpc.ServiceCall call, $4.GetItemRequest request);
  $async.Future<$4.SearchResponse> search(
      $grpc.ServiceCall call, $4.SearchRequest request);
  $async.Future<$4.InsertItemResponse> insertItem(
      $grpc.ServiceCall call, $4.InsertItemRequest request);
  $async.Future<$4.UpdateItemResponse> updateItem(
      $grpc.ServiceCall call, $4.UpdateItemRequest request);
  $async.Future<$4.DeleteItemResponse> deleteItem(
      $grpc.ServiceCall call, $4.DeleteItemRequest request);
  $async.Future<$4.DeleteWalletResponse> deleteWallet(
      $grpc.ServiceCall call, $4.DeleteWalletRequest request);
  $async.Future<$4.CreateWalletResponse> createWallet(
      $grpc.ServiceCall call, $4.CreateWalletRequest request);
  $async.Future<$4.GetWalletInfoResponse> getWalletInfo(
      $grpc.ServiceCall call, $4.GetWalletInfoRequest request);
  $async.Future<$4.GetMyInfoResponse> getMyInfo(
      $grpc.ServiceCall call, $4.GetMyInfoRequest request);
  $async.Future<$4.GenerateAuthTokenResponse> generateAuthToken(
      $grpc.ServiceCall call, $4.GenerateAuthTokenRequest request);
  $async.Future<$4.RevokeAuthTokenResponse> revokeAuthToken(
      $grpc.ServiceCall call, $4.RevokeAuthTokenRequest request);
  $async.Future<$4.AddExternalIdentityInitResponse> addExternalIdentityInit(
      $grpc.ServiceCall call, $4.AddExternalIdentityInitRequest request);
  $async.Future<$4.AddExternalIdentityConfirmResponse>
      addExternalIdentityConfirm(
          $grpc.ServiceCall call, $4.AddExternalIdentityConfirmRequest request);
  $async.Future<$4.RemoveExternalIdentityResponse> removeExternalIdentity(
      $grpc.ServiceCall call, $4.RemoveExternalIdentityRequest request);
  $async.Future<$4.AuthenticateInitResponse> authenticateInit(
      $grpc.ServiceCall call, $4.AuthenticateInitRequest request);
  $async.Future<$4.AuthenticateConfirmResponse> authenticateConfirm(
      $grpc.ServiceCall call, $4.AuthenticateConfirmRequest request);
  $async.Future<$4.AuthenticateResendCodeResponse> authenticateResendCode(
      $grpc.ServiceCall call, $4.AuthenticateResendCodeRequest request);
  $async.Future<$4.ListWalletsResponse> listWallets(
      $grpc.ServiceCall call, $4.ListWalletsRequest request);
  $async.Future<$4.ListByVerificationTemplateResponse>
      listByVerificationTemplate(
          $grpc.ServiceCall call, $4.ListByVerificationTemplateRequest request);
}
