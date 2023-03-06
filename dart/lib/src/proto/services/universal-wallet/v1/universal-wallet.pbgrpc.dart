///
//  Generated code. Do not modify.
//  source: services/universal-wallet/v1/universal-wallet.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'universal-wallet.pb.dart' as $1;
export 'universal-wallet.pb.dart';

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
}

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
}
