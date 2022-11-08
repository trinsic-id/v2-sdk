///
//  Generated code. Do not modify.
//  source: services/universal-wallet/v1/universal-wallet.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'universal-wallet.pb.dart' as $6;
export 'universal-wallet.pb.dart';

class UniversalWalletClient extends $grpc.Client {
  static final _$getItem =
      $grpc.ClientMethod<$6.GetItemRequest, $6.GetItemResponse>(
          '/services.universalwallet.v1.UniversalWallet/GetItem',
          ($6.GetItemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $6.GetItemResponse.fromBuffer(value));
  static final _$search =
      $grpc.ClientMethod<$6.SearchRequest, $6.SearchResponse>(
          '/services.universalwallet.v1.UniversalWallet/Search',
          ($6.SearchRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $6.SearchResponse.fromBuffer(value));
  static final _$insertItem =
      $grpc.ClientMethod<$6.InsertItemRequest, $6.InsertItemResponse>(
          '/services.universalwallet.v1.UniversalWallet/InsertItem',
          ($6.InsertItemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $6.InsertItemResponse.fromBuffer(value));
  static final _$updateItem =
      $grpc.ClientMethod<$6.UpdateItemRequest, $6.UpdateItemResponse>(
          '/services.universalwallet.v1.UniversalWallet/UpdateItem',
          ($6.UpdateItemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $6.UpdateItemResponse.fromBuffer(value));
  static final _$deleteItem =
      $grpc.ClientMethod<$6.DeleteItemRequest, $6.DeleteItemResponse>(
          '/services.universalwallet.v1.UniversalWallet/DeleteItem',
          ($6.DeleteItemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $6.DeleteItemResponse.fromBuffer(value));

  UniversalWalletClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$6.GetItemResponse> getItem($6.GetItemRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getItem, request, options: options);
  }

  $grpc.ResponseFuture<$6.SearchResponse> search($6.SearchRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$search, request, options: options);
  }

  $grpc.ResponseFuture<$6.InsertItemResponse> insertItem(
      $6.InsertItemRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$insertItem, request, options: options);
  }

  $grpc.ResponseFuture<$6.UpdateItemResponse> updateItem(
      $6.UpdateItemRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateItem, request, options: options);
  }

  $grpc.ResponseFuture<$6.DeleteItemResponse> deleteItem(
      $6.DeleteItemRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteItem, request, options: options);
  }
}

abstract class UniversalWalletServiceBase extends $grpc.Service {
  $core.String get $name => 'services.universalwallet.v1.UniversalWallet';

  UniversalWalletServiceBase() {
    $addMethod($grpc.ServiceMethod<$6.GetItemRequest, $6.GetItemResponse>(
        'GetItem',
        getItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.GetItemRequest.fromBuffer(value),
        ($6.GetItemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.SearchRequest, $6.SearchResponse>(
        'Search',
        search_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.SearchRequest.fromBuffer(value),
        ($6.SearchResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.InsertItemRequest, $6.InsertItemResponse>(
        'InsertItem',
        insertItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.InsertItemRequest.fromBuffer(value),
        ($6.InsertItemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.UpdateItemRequest, $6.UpdateItemResponse>(
        'UpdateItem',
        updateItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.UpdateItemRequest.fromBuffer(value),
        ($6.UpdateItemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.DeleteItemRequest, $6.DeleteItemResponse>(
        'DeleteItem',
        deleteItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.DeleteItemRequest.fromBuffer(value),
        ($6.DeleteItemResponse value) => value.writeToBuffer()));
  }

  $async.Future<$6.GetItemResponse> getItem_Pre(
      $grpc.ServiceCall call, $async.Future<$6.GetItemRequest> request) async {
    return getItem(call, await request);
  }

  $async.Future<$6.SearchResponse> search_Pre(
      $grpc.ServiceCall call, $async.Future<$6.SearchRequest> request) async {
    return search(call, await request);
  }

  $async.Future<$6.InsertItemResponse> insertItem_Pre($grpc.ServiceCall call,
      $async.Future<$6.InsertItemRequest> request) async {
    return insertItem(call, await request);
  }

  $async.Future<$6.UpdateItemResponse> updateItem_Pre($grpc.ServiceCall call,
      $async.Future<$6.UpdateItemRequest> request) async {
    return updateItem(call, await request);
  }

  $async.Future<$6.DeleteItemResponse> deleteItem_Pre($grpc.ServiceCall call,
      $async.Future<$6.DeleteItemRequest> request) async {
    return deleteItem(call, await request);
  }

  $async.Future<$6.GetItemResponse> getItem(
      $grpc.ServiceCall call, $6.GetItemRequest request);
  $async.Future<$6.SearchResponse> search(
      $grpc.ServiceCall call, $6.SearchRequest request);
  $async.Future<$6.InsertItemResponse> insertItem(
      $grpc.ServiceCall call, $6.InsertItemRequest request);
  $async.Future<$6.UpdateItemResponse> updateItem(
      $grpc.ServiceCall call, $6.UpdateItemRequest request);
  $async.Future<$6.DeleteItemResponse> deleteItem(
      $grpc.ServiceCall call, $6.DeleteItemRequest request);
}
