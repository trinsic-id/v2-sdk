///
//  Generated code. Do not modify.
//  source: services/universal-wallet/v1/universal-wallet.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core;
import 'universal-wallet.pb.dart' as $4;
import 'universal-wallet.pbjson.dart';

export 'universal-wallet.pb.dart';

abstract class UniversalWalletServiceBase extends $pb.GeneratedService {
  $async.Future<$4.GetItemResponse> getItem($pb.ServerContext ctx, $4.GetItemRequest request);
  $async.Future<$4.SearchResponse> search($pb.ServerContext ctx, $4.SearchRequest request);
  $async.Future<$4.InsertItemResponse> insertItem($pb.ServerContext ctx, $4.InsertItemRequest request);
  $async.Future<$4.UpdateItemResponse> updateItem($pb.ServerContext ctx, $4.UpdateItemRequest request);
  $async.Future<$4.DeleteItemResponse> deleteItem($pb.ServerContext ctx, $4.DeleteItemRequest request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'GetItem': return $4.GetItemRequest();
      case 'Search': return $4.SearchRequest();
      case 'InsertItem': return $4.InsertItemRequest();
      case 'UpdateItem': return $4.UpdateItemRequest();
      case 'DeleteItem': return $4.DeleteItemRequest();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'GetItem': return this.getItem(ctx, request as $4.GetItemRequest);
      case 'Search': return this.search(ctx, request as $4.SearchRequest);
      case 'InsertItem': return this.insertItem(ctx, request as $4.InsertItemRequest);
      case 'UpdateItem': return this.updateItem(ctx, request as $4.UpdateItemRequest);
      case 'DeleteItem': return this.deleteItem(ctx, request as $4.DeleteItemRequest);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => UniversalWalletServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => UniversalWalletServiceBase$messageJson;
}

