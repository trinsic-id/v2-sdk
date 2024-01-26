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

import 'universal-wallet.pb.dart' as $1;

export 'universal-wallet.pb.dart';

@$pb.GrpcServiceName('services.universalwallet.v1.UniversalWallet')
class UniversalWalletClient extends $grpc.Client {
  static final _$getItem =
      $grpc.ClientMethod<$1.GetItemRequest, $1.GetItemResponse>(
          '/services.universalwallet.v1.UniversalWallet/GetItem',
          ($1.GetItemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.GetItemResponse.fromBuffer(value));
  static final _$search =
      $grpc.ClientMethod<$1.SearchRequest, $1.SearchResponse>(
          '/services.universalwallet.v1.UniversalWallet/Search',
          ($1.SearchRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.SearchResponse.fromBuffer(value));
  static final _$insertItem =
      $grpc.ClientMethod<$1.InsertItemRequest, $1.InsertItemResponse>(
          '/services.universalwallet.v1.UniversalWallet/InsertItem',
          ($1.InsertItemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.InsertItemResponse.fromBuffer(value));
  static final _$updateItem =
      $grpc.ClientMethod<$1.UpdateItemRequest, $1.UpdateItemResponse>(
          '/services.universalwallet.v1.UniversalWallet/UpdateItem',
          ($1.UpdateItemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.UpdateItemResponse.fromBuffer(value));
  static final _$deleteItem =
      $grpc.ClientMethod<$1.DeleteItemRequest, $1.DeleteItemResponse>(
          '/services.universalwallet.v1.UniversalWallet/DeleteItem',
          ($1.DeleteItemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.DeleteItemResponse.fromBuffer(value));
  static final _$deleteWallet =
      $grpc.ClientMethod<$1.DeleteWalletRequest, $1.DeleteWalletResponse>(
          '/services.universalwallet.v1.UniversalWallet/DeleteWallet',
          ($1.DeleteWalletRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.DeleteWalletResponse.fromBuffer(value));
  static final _$createWallet =
      $grpc.ClientMethod<$1.CreateWalletRequest, $1.CreateWalletResponse>(
          '/services.universalwallet.v1.UniversalWallet/CreateWallet',
          ($1.CreateWalletRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.CreateWalletResponse.fromBuffer(value));
  static final _$getWalletInfo =
      $grpc.ClientMethod<$1.GetWalletInfoRequest, $1.GetWalletInfoResponse>(
          '/services.universalwallet.v1.UniversalWallet/GetWalletInfo',
          ($1.GetWalletInfoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.GetWalletInfoResponse.fromBuffer(value));
  static final _$getMyInfo =
      $grpc.ClientMethod<$1.GetMyInfoRequest, $1.GetMyInfoResponse>(
          '/services.universalwallet.v1.UniversalWallet/GetMyInfo',
          ($1.GetMyInfoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.GetMyInfoResponse.fromBuffer(value));
  static final _$getWalletFromExternalIdentity = $grpc.ClientMethod<
          $1.GetWalletFromExternalIdentityRequest,
          $1.GetWalletFromExternalIdentityResponse>(
      '/services.universalwallet.v1.UniversalWallet/GetWalletFromExternalIdentity',
      ($1.GetWalletFromExternalIdentityRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.GetWalletFromExternalIdentityResponse.fromBuffer(value));
  static final _$generateAuthToken = $grpc.ClientMethod<
          $1.GenerateAuthTokenRequest, $1.GenerateAuthTokenResponse>(
      '/services.universalwallet.v1.UniversalWallet/GenerateAuthToken',
      ($1.GenerateAuthTokenRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.GenerateAuthTokenResponse.fromBuffer(value));
  static final _$revokeAuthToken =
      $grpc.ClientMethod<$1.RevokeAuthTokenRequest, $1.RevokeAuthTokenResponse>(
          '/services.universalwallet.v1.UniversalWallet/RevokeAuthToken',
          ($1.RevokeAuthTokenRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.RevokeAuthTokenResponse.fromBuffer(value));
  static final _$addExternalIdentityInit = $grpc.ClientMethod<
          $1.AddExternalIdentityInitRequest,
          $1.AddExternalIdentityInitResponse>(
      '/services.universalwallet.v1.UniversalWallet/AddExternalIdentityInit',
      ($1.AddExternalIdentityInitRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.AddExternalIdentityInitResponse.fromBuffer(value));
  static final _$addExternalIdentityConfirm = $grpc.ClientMethod<
          $1.AddExternalIdentityConfirmRequest,
          $1.AddExternalIdentityConfirmResponse>(
      '/services.universalwallet.v1.UniversalWallet/AddExternalIdentityConfirm',
      ($1.AddExternalIdentityConfirmRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.AddExternalIdentityConfirmResponse.fromBuffer(value));
  static final _$removeExternalIdentity = $grpc.ClientMethod<
          $1.RemoveExternalIdentityRequest, $1.RemoveExternalIdentityResponse>(
      '/services.universalwallet.v1.UniversalWallet/RemoveExternalIdentity',
      ($1.RemoveExternalIdentityRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.RemoveExternalIdentityResponse.fromBuffer(value));
  static final _$authenticateInit = $grpc.ClientMethod<
          $1.AuthenticateInitRequest, $1.AuthenticateInitResponse>(
      '/services.universalwallet.v1.UniversalWallet/AuthenticateInit',
      ($1.AuthenticateInitRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.AuthenticateInitResponse.fromBuffer(value));
  static final _$authenticateConfirm = $grpc.ClientMethod<
          $1.AuthenticateConfirmRequest, $1.AuthenticateConfirmResponse>(
      '/services.universalwallet.v1.UniversalWallet/AuthenticateConfirm',
      ($1.AuthenticateConfirmRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.AuthenticateConfirmResponse.fromBuffer(value));
  static final _$authenticateResendCode = $grpc.ClientMethod<
          $1.AuthenticateResendCodeRequest, $1.AuthenticateResendCodeResponse>(
      '/services.universalwallet.v1.UniversalWallet/AuthenticateResendCode',
      ($1.AuthenticateResendCodeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.AuthenticateResendCodeResponse.fromBuffer(value));
  static final _$listWallets =
      $grpc.ClientMethod<$1.ListWalletsRequest, $1.ListWalletsResponse>(
          '/services.universalwallet.v1.UniversalWallet/ListWallets',
          ($1.ListWalletsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.ListWalletsResponse.fromBuffer(value));
  static final _$listByVerificationTemplate = $grpc.ClientMethod<
          $1.ListByVerificationTemplateRequest,
          $1.ListByVerificationTemplateResponse>(
      '/services.universalwallet.v1.UniversalWallet/ListByVerificationTemplate',
      ($1.ListByVerificationTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.ListByVerificationTemplateResponse.fromBuffer(value));

  UniversalWalletClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.GetItemResponse> getItem($1.GetItemRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getItem, request, options: options);
  }

  $grpc.ResponseFuture<$1.SearchResponse> search($1.SearchRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$search, request, options: options);
  }

  $grpc.ResponseFuture<$1.InsertItemResponse> insertItem(
      $1.InsertItemRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$insertItem, request, options: options);
  }

  $grpc.ResponseFuture<$1.UpdateItemResponse> updateItem(
      $1.UpdateItemRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateItem, request, options: options);
  }

  $grpc.ResponseFuture<$1.DeleteItemResponse> deleteItem(
      $1.DeleteItemRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteItem, request, options: options);
  }

  $grpc.ResponseFuture<$1.DeleteWalletResponse> deleteWallet(
      $1.DeleteWalletRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteWallet, request, options: options);
  }

  $grpc.ResponseFuture<$1.CreateWalletResponse> createWallet(
      $1.CreateWalletRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createWallet, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetWalletInfoResponse> getWalletInfo(
      $1.GetWalletInfoRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getWalletInfo, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetMyInfoResponse> getMyInfo(
      $1.GetMyInfoRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMyInfo, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetWalletFromExternalIdentityResponse>
      getWalletFromExternalIdentity(
          $1.GetWalletFromExternalIdentityRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getWalletFromExternalIdentity, request,
        options: options);
  }

  $grpc.ResponseFuture<$1.GenerateAuthTokenResponse> generateAuthToken(
      $1.GenerateAuthTokenRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$generateAuthToken, request, options: options);
  }

  $grpc.ResponseFuture<$1.RevokeAuthTokenResponse> revokeAuthToken(
      $1.RevokeAuthTokenRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$revokeAuthToken, request, options: options);
  }

  $grpc.ResponseFuture<$1.AddExternalIdentityInitResponse>
      addExternalIdentityInit($1.AddExternalIdentityInitRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addExternalIdentityInit, request,
        options: options);
  }

  $grpc.ResponseFuture<$1.AddExternalIdentityConfirmResponse>
      addExternalIdentityConfirm($1.AddExternalIdentityConfirmRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addExternalIdentityConfirm, request,
        options: options);
  }

  $grpc.ResponseFuture<$1.RemoveExternalIdentityResponse>
      removeExternalIdentity($1.RemoveExternalIdentityRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeExternalIdentity, request,
        options: options);
  }

  $grpc.ResponseFuture<$1.AuthenticateInitResponse> authenticateInit(
      $1.AuthenticateInitRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$authenticateInit, request, options: options);
  }

  $grpc.ResponseFuture<$1.AuthenticateConfirmResponse> authenticateConfirm(
      $1.AuthenticateConfirmRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$authenticateConfirm, request, options: options);
  }

  $grpc.ResponseFuture<$1.AuthenticateResendCodeResponse>
      authenticateResendCode($1.AuthenticateResendCodeRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$authenticateResendCode, request,
        options: options);
  }

  $grpc.ResponseFuture<$1.ListWalletsResponse> listWallets(
      $1.ListWalletsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listWallets, request, options: options);
  }

  $grpc.ResponseFuture<$1.ListByVerificationTemplateResponse>
      listByVerificationTemplate($1.ListByVerificationTemplateRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listByVerificationTemplate, request,
        options: options);
  }
}

@$pb.GrpcServiceName('services.universalwallet.v1.UniversalWallet')
abstract class UniversalWalletServiceBase extends $grpc.Service {
  $core.String get $name => 'services.universalwallet.v1.UniversalWallet';

  UniversalWalletServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.GetItemRequest, $1.GetItemResponse>(
        'GetItem',
        getItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetItemRequest.fromBuffer(value),
        ($1.GetItemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.SearchRequest, $1.SearchResponse>(
        'Search',
        search_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.SearchRequest.fromBuffer(value),
        ($1.SearchResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.InsertItemRequest, $1.InsertItemResponse>(
        'InsertItem',
        insertItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.InsertItemRequest.fromBuffer(value),
        ($1.InsertItemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.UpdateItemRequest, $1.UpdateItemResponse>(
        'UpdateItem',
        updateItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.UpdateItemRequest.fromBuffer(value),
        ($1.UpdateItemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.DeleteItemRequest, $1.DeleteItemResponse>(
        'DeleteItem',
        deleteItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.DeleteItemRequest.fromBuffer(value),
        ($1.DeleteItemResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.DeleteWalletRequest, $1.DeleteWalletResponse>(
            'DeleteWallet',
            deleteWallet_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.DeleteWalletRequest.fromBuffer(value),
            ($1.DeleteWalletResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.CreateWalletRequest, $1.CreateWalletResponse>(
            'CreateWallet',
            createWallet_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.CreateWalletRequest.fromBuffer(value),
            ($1.CreateWalletResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.GetWalletInfoRequest, $1.GetWalletInfoResponse>(
            'GetWalletInfo',
            getWalletInfo_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.GetWalletInfoRequest.fromBuffer(value),
            ($1.GetWalletInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetMyInfoRequest, $1.GetMyInfoResponse>(
        'GetMyInfo',
        getMyInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetMyInfoRequest.fromBuffer(value),
        ($1.GetMyInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetWalletFromExternalIdentityRequest,
            $1.GetWalletFromExternalIdentityResponse>(
        'GetWalletFromExternalIdentity',
        getWalletFromExternalIdentity_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.GetWalletFromExternalIdentityRequest.fromBuffer(value),
        ($1.GetWalletFromExternalIdentityResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GenerateAuthTokenRequest,
            $1.GenerateAuthTokenResponse>(
        'GenerateAuthToken',
        generateAuthToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.GenerateAuthTokenRequest.fromBuffer(value),
        ($1.GenerateAuthTokenResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.RevokeAuthTokenRequest,
            $1.RevokeAuthTokenResponse>(
        'RevokeAuthToken',
        revokeAuthToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.RevokeAuthTokenRequest.fromBuffer(value),
        ($1.RevokeAuthTokenResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.AddExternalIdentityInitRequest,
            $1.AddExternalIdentityInitResponse>(
        'AddExternalIdentityInit',
        addExternalIdentityInit_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.AddExternalIdentityInitRequest.fromBuffer(value),
        ($1.AddExternalIdentityInitResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.AddExternalIdentityConfirmRequest,
            $1.AddExternalIdentityConfirmResponse>(
        'AddExternalIdentityConfirm',
        addExternalIdentityConfirm_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.AddExternalIdentityConfirmRequest.fromBuffer(value),
        ($1.AddExternalIdentityConfirmResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.RemoveExternalIdentityRequest,
            $1.RemoveExternalIdentityResponse>(
        'RemoveExternalIdentity',
        removeExternalIdentity_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.RemoveExternalIdentityRequest.fromBuffer(value),
        ($1.RemoveExternalIdentityResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.AuthenticateInitRequest,
            $1.AuthenticateInitResponse>(
        'AuthenticateInit',
        authenticateInit_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.AuthenticateInitRequest.fromBuffer(value),
        ($1.AuthenticateInitResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.AuthenticateConfirmRequest,
            $1.AuthenticateConfirmResponse>(
        'AuthenticateConfirm',
        authenticateConfirm_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.AuthenticateConfirmRequest.fromBuffer(value),
        ($1.AuthenticateConfirmResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.AuthenticateResendCodeRequest,
            $1.AuthenticateResendCodeResponse>(
        'AuthenticateResendCode',
        authenticateResendCode_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.AuthenticateResendCodeRequest.fromBuffer(value),
        ($1.AuthenticateResendCodeResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.ListWalletsRequest, $1.ListWalletsResponse>(
            'ListWallets',
            listWallets_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.ListWalletsRequest.fromBuffer(value),
            ($1.ListWalletsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.ListByVerificationTemplateRequest,
            $1.ListByVerificationTemplateResponse>(
        'ListByVerificationTemplate',
        listByVerificationTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.ListByVerificationTemplateRequest.fromBuffer(value),
        ($1.ListByVerificationTemplateResponse value) =>
            value.writeToBuffer()));
  }

  $async.Future<$1.GetItemResponse> getItem_Pre(
      $grpc.ServiceCall call, $async.Future<$1.GetItemRequest> request) async {
    return getItem(call, await request);
  }

  $async.Future<$1.SearchResponse> search_Pre(
      $grpc.ServiceCall call, $async.Future<$1.SearchRequest> request) async {
    return search(call, await request);
  }

  $async.Future<$1.InsertItemResponse> insertItem_Pre($grpc.ServiceCall call,
      $async.Future<$1.InsertItemRequest> request) async {
    return insertItem(call, await request);
  }

  $async.Future<$1.UpdateItemResponse> updateItem_Pre($grpc.ServiceCall call,
      $async.Future<$1.UpdateItemRequest> request) async {
    return updateItem(call, await request);
  }

  $async.Future<$1.DeleteItemResponse> deleteItem_Pre($grpc.ServiceCall call,
      $async.Future<$1.DeleteItemRequest> request) async {
    return deleteItem(call, await request);
  }

  $async.Future<$1.DeleteWalletResponse> deleteWallet_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.DeleteWalletRequest> request) async {
    return deleteWallet(call, await request);
  }

  $async.Future<$1.CreateWalletResponse> createWallet_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.CreateWalletRequest> request) async {
    return createWallet(call, await request);
  }

  $async.Future<$1.GetWalletInfoResponse> getWalletInfo_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.GetWalletInfoRequest> request) async {
    return getWalletInfo(call, await request);
  }

  $async.Future<$1.GetMyInfoResponse> getMyInfo_Pre($grpc.ServiceCall call,
      $async.Future<$1.GetMyInfoRequest> request) async {
    return getMyInfo(call, await request);
  }

  $async.Future<$1.GetWalletFromExternalIdentityResponse>
      getWalletFromExternalIdentity_Pre(
          $grpc.ServiceCall call,
          $async.Future<$1.GetWalletFromExternalIdentityRequest>
              request) async {
    return getWalletFromExternalIdentity(call, await request);
  }

  $async.Future<$1.GenerateAuthTokenResponse> generateAuthToken_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.GenerateAuthTokenRequest> request) async {
    return generateAuthToken(call, await request);
  }

  $async.Future<$1.RevokeAuthTokenResponse> revokeAuthToken_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.RevokeAuthTokenRequest> request) async {
    return revokeAuthToken(call, await request);
  }

  $async.Future<$1.AddExternalIdentityInitResponse> addExternalIdentityInit_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.AddExternalIdentityInitRequest> request) async {
    return addExternalIdentityInit(call, await request);
  }

  $async.Future<$1.AddExternalIdentityConfirmResponse>
      addExternalIdentityConfirm_Pre($grpc.ServiceCall call,
          $async.Future<$1.AddExternalIdentityConfirmRequest> request) async {
    return addExternalIdentityConfirm(call, await request);
  }

  $async.Future<$1.RemoveExternalIdentityResponse> removeExternalIdentity_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.RemoveExternalIdentityRequest> request) async {
    return removeExternalIdentity(call, await request);
  }

  $async.Future<$1.AuthenticateInitResponse> authenticateInit_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.AuthenticateInitRequest> request) async {
    return authenticateInit(call, await request);
  }

  $async.Future<$1.AuthenticateConfirmResponse> authenticateConfirm_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.AuthenticateConfirmRequest> request) async {
    return authenticateConfirm(call, await request);
  }

  $async.Future<$1.AuthenticateResendCodeResponse> authenticateResendCode_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.AuthenticateResendCodeRequest> request) async {
    return authenticateResendCode(call, await request);
  }

  $async.Future<$1.ListWalletsResponse> listWallets_Pre($grpc.ServiceCall call,
      $async.Future<$1.ListWalletsRequest> request) async {
    return listWallets(call, await request);
  }

  $async.Future<$1.ListByVerificationTemplateResponse>
      listByVerificationTemplate_Pre($grpc.ServiceCall call,
          $async.Future<$1.ListByVerificationTemplateRequest> request) async {
    return listByVerificationTemplate(call, await request);
  }

  $async.Future<$1.GetItemResponse> getItem(
      $grpc.ServiceCall call, $1.GetItemRequest request);
  $async.Future<$1.SearchResponse> search(
      $grpc.ServiceCall call, $1.SearchRequest request);
  $async.Future<$1.InsertItemResponse> insertItem(
      $grpc.ServiceCall call, $1.InsertItemRequest request);
  $async.Future<$1.UpdateItemResponse> updateItem(
      $grpc.ServiceCall call, $1.UpdateItemRequest request);
  $async.Future<$1.DeleteItemResponse> deleteItem(
      $grpc.ServiceCall call, $1.DeleteItemRequest request);
  $async.Future<$1.DeleteWalletResponse> deleteWallet(
      $grpc.ServiceCall call, $1.DeleteWalletRequest request);
  $async.Future<$1.CreateWalletResponse> createWallet(
      $grpc.ServiceCall call, $1.CreateWalletRequest request);
  $async.Future<$1.GetWalletInfoResponse> getWalletInfo(
      $grpc.ServiceCall call, $1.GetWalletInfoRequest request);
  $async.Future<$1.GetMyInfoResponse> getMyInfo(
      $grpc.ServiceCall call, $1.GetMyInfoRequest request);
  $async.Future<$1.GetWalletFromExternalIdentityResponse>
      getWalletFromExternalIdentity($grpc.ServiceCall call,
          $1.GetWalletFromExternalIdentityRequest request);
  $async.Future<$1.GenerateAuthTokenResponse> generateAuthToken(
      $grpc.ServiceCall call, $1.GenerateAuthTokenRequest request);
  $async.Future<$1.RevokeAuthTokenResponse> revokeAuthToken(
      $grpc.ServiceCall call, $1.RevokeAuthTokenRequest request);
  $async.Future<$1.AddExternalIdentityInitResponse> addExternalIdentityInit(
      $grpc.ServiceCall call, $1.AddExternalIdentityInitRequest request);
  $async.Future<$1.AddExternalIdentityConfirmResponse>
      addExternalIdentityConfirm(
          $grpc.ServiceCall call, $1.AddExternalIdentityConfirmRequest request);
  $async.Future<$1.RemoveExternalIdentityResponse> removeExternalIdentity(
      $grpc.ServiceCall call, $1.RemoveExternalIdentityRequest request);
  $async.Future<$1.AuthenticateInitResponse> authenticateInit(
      $grpc.ServiceCall call, $1.AuthenticateInitRequest request);
  $async.Future<$1.AuthenticateConfirmResponse> authenticateConfirm(
      $grpc.ServiceCall call, $1.AuthenticateConfirmRequest request);
  $async.Future<$1.AuthenticateResendCodeResponse> authenticateResendCode(
      $grpc.ServiceCall call, $1.AuthenticateResendCodeRequest request);
  $async.Future<$1.ListWalletsResponse> listWallets(
      $grpc.ServiceCall call, $1.ListWalletsRequest request);
  $async.Future<$1.ListByVerificationTemplateResponse>
      listByVerificationTemplate(
          $grpc.ServiceCall call, $1.ListByVerificationTemplateRequest request);
}
