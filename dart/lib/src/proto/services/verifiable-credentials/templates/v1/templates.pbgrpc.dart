///
//  Generated code. Do not modify.
//  source: services/verifiable-credentials/templates/v1/templates.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'templates.pb.dart' as $0;
export 'templates.pb.dart';

class CredentialTemplatesClient extends $grpc.Client {
  static final _$create = $grpc.ClientMethod<$0.CreateCredentialTemplateRequest,
          $0.CreateCredentialTemplateResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/Create',
      ($0.CreateCredentialTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.CreateCredentialTemplateResponse.fromBuffer(value));
  static final _$get = $grpc.ClientMethod<$0.GetCredentialTemplateRequest,
          $0.GetCredentialTemplateResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/Get',
      ($0.GetCredentialTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.GetCredentialTemplateResponse.fromBuffer(value));
  static final _$list = $grpc.ClientMethod<$0.ListCredentialTemplatesRequest,
          $0.ListCredentialTemplatesResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/List',
      ($0.ListCredentialTemplatesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.ListCredentialTemplatesResponse.fromBuffer(value));
  static final _$search = $grpc.ClientMethod<
          $0.SearchCredentialTemplatesRequest,
          $0.SearchCredentialTemplatesResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/Search',
      ($0.SearchCredentialTemplatesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.SearchCredentialTemplatesResponse.fromBuffer(value));
  static final _$delete = $grpc.ClientMethod<$0.DeleteCredentialTemplateRequest,
          $0.DeleteCredentialTemplateResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/Delete',
      ($0.DeleteCredentialTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.DeleteCredentialTemplateResponse.fromBuffer(value));

  CredentialTemplatesClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.CreateCredentialTemplateResponse> create(
      $0.CreateCredentialTemplateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetCredentialTemplateResponse> get(
      $0.GetCredentialTemplateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$get, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListCredentialTemplatesResponse> list(
      $0.ListCredentialTemplatesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$list, request, options: options);
  }

  $grpc.ResponseFuture<$0.SearchCredentialTemplatesResponse> search(
      $0.SearchCredentialTemplatesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$search, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeleteCredentialTemplateResponse> delete(
      $0.DeleteCredentialTemplateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete, request, options: options);
  }
}

abstract class CredentialTemplatesServiceBase extends $grpc.Service {
  $core.String get $name =>
      'services.verifiablecredentials.templates.v1.CredentialTemplates';

  CredentialTemplatesServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CreateCredentialTemplateRequest,
            $0.CreateCredentialTemplateResponse>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CreateCredentialTemplateRequest.fromBuffer(value),
        ($0.CreateCredentialTemplateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetCredentialTemplateRequest,
            $0.GetCredentialTemplateResponse>(
        'Get',
        get_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetCredentialTemplateRequest.fromBuffer(value),
        ($0.GetCredentialTemplateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListCredentialTemplatesRequest,
            $0.ListCredentialTemplatesResponse>(
        'List',
        list_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ListCredentialTemplatesRequest.fromBuffer(value),
        ($0.ListCredentialTemplatesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SearchCredentialTemplatesRequest,
            $0.SearchCredentialTemplatesResponse>(
        'Search',
        search_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.SearchCredentialTemplatesRequest.fromBuffer(value),
        ($0.SearchCredentialTemplatesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteCredentialTemplateRequest,
            $0.DeleteCredentialTemplateResponse>(
        'Delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.DeleteCredentialTemplateRequest.fromBuffer(value),
        ($0.DeleteCredentialTemplateResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.CreateCredentialTemplateResponse> create_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.CreateCredentialTemplateRequest> request) async {
    return create(call, await request);
  }

  $async.Future<$0.GetCredentialTemplateResponse> get_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetCredentialTemplateRequest> request) async {
    return get(call, await request);
  }

  $async.Future<$0.ListCredentialTemplatesResponse> list_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ListCredentialTemplatesRequest> request) async {
    return list(call, await request);
  }

  $async.Future<$0.SearchCredentialTemplatesResponse> search_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.SearchCredentialTemplatesRequest> request) async {
    return search(call, await request);
  }

  $async.Future<$0.DeleteCredentialTemplateResponse> delete_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.DeleteCredentialTemplateRequest> request) async {
    return delete(call, await request);
  }

  $async.Future<$0.CreateCredentialTemplateResponse> create(
      $grpc.ServiceCall call, $0.CreateCredentialTemplateRequest request);
  $async.Future<$0.GetCredentialTemplateResponse> get(
      $grpc.ServiceCall call, $0.GetCredentialTemplateRequest request);
  $async.Future<$0.ListCredentialTemplatesResponse> list(
      $grpc.ServiceCall call, $0.ListCredentialTemplatesRequest request);
  $async.Future<$0.SearchCredentialTemplatesResponse> search(
      $grpc.ServiceCall call, $0.SearchCredentialTemplatesRequest request);
  $async.Future<$0.DeleteCredentialTemplateResponse> delete(
      $grpc.ServiceCall call, $0.DeleteCredentialTemplateRequest request);
}
