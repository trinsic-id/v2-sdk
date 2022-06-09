///
//  Generated code. Do not modify.
//  source: services/universal-wallet/v1/universal-wallet.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

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
}
