///
//  Generated code. Do not modify.
//  source: services/universal-wallet/v1/universal-wallet.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'universal-wallet.pb.dart' as $4;
export 'universal-wallet.pb.dart';

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
}

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
}
