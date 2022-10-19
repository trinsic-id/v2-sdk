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
}
