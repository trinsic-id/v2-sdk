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
}
