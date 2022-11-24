///
//  Generated code. Do not modify.
//  source: services/verifiable-credentials/templates/v1/templates.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'templates.pb.dart' as $2;
export 'templates.pb.dart';

class CredentialTemplatesClient extends $grpc.Client {
  static final _$create = $grpc.ClientMethod<$2.CreateCredentialTemplateRequest,
          $2.CreateCredentialTemplateResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/Create',
      ($2.CreateCredentialTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.CreateCredentialTemplateResponse.fromBuffer(value));
  static final _$get = $grpc.ClientMethod<$2.GetCredentialTemplateRequest,
          $2.GetCredentialTemplateResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/Get',
      ($2.GetCredentialTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.GetCredentialTemplateResponse.fromBuffer(value));
  static final _$list = $grpc.ClientMethod<$2.ListCredentialTemplatesRequest,
          $2.ListCredentialTemplatesResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/List',
      ($2.ListCredentialTemplatesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.ListCredentialTemplatesResponse.fromBuffer(value));
  static final _$search = $grpc.ClientMethod<
          $2.SearchCredentialTemplatesRequest,
          $2.SearchCredentialTemplatesResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/Search',
      ($2.SearchCredentialTemplatesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.SearchCredentialTemplatesResponse.fromBuffer(value));
  static final _$delete = $grpc.ClientMethod<$2.DeleteCredentialTemplateRequest,
          $2.DeleteCredentialTemplateResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/Delete',
      ($2.DeleteCredentialTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.DeleteCredentialTemplateResponse.fromBuffer(value));

  CredentialTemplatesClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$2.CreateCredentialTemplateResponse> create(
      $2.CreateCredentialTemplateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$2.GetCredentialTemplateResponse> get(
      $2.GetCredentialTemplateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$get, request, options: options);
  }

  $grpc.ResponseFuture<$2.ListCredentialTemplatesResponse> list(
      $2.ListCredentialTemplatesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$list, request, options: options);
  }

  $grpc.ResponseFuture<$2.SearchCredentialTemplatesResponse> search(
      $2.SearchCredentialTemplatesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$search, request, options: options);
  }

  $grpc.ResponseFuture<$2.DeleteCredentialTemplateResponse> delete(
      $2.DeleteCredentialTemplateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete, request, options: options);
  }
}

abstract class CredentialTemplatesServiceBase extends $grpc.Service {
  $core.String get $name =>
      'services.verifiablecredentials.templates.v1.CredentialTemplates';

  CredentialTemplatesServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.CreateCredentialTemplateRequest,
            $2.CreateCredentialTemplateResponse>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.CreateCredentialTemplateRequest.fromBuffer(value),
        ($2.CreateCredentialTemplateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.GetCredentialTemplateRequest,
            $2.GetCredentialTemplateResponse>(
        'Get',
        get_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.GetCredentialTemplateRequest.fromBuffer(value),
        ($2.GetCredentialTemplateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ListCredentialTemplatesRequest,
            $2.ListCredentialTemplatesResponse>(
        'List',
        list_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.ListCredentialTemplatesRequest.fromBuffer(value),
        ($2.ListCredentialTemplatesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.SearchCredentialTemplatesRequest,
            $2.SearchCredentialTemplatesResponse>(
        'Search',
        search_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.SearchCredentialTemplatesRequest.fromBuffer(value),
        ($2.SearchCredentialTemplatesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.DeleteCredentialTemplateRequest,
            $2.DeleteCredentialTemplateResponse>(
        'Delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.DeleteCredentialTemplateRequest.fromBuffer(value),
        ($2.DeleteCredentialTemplateResponse value) => value.writeToBuffer()));
  }

  $async.Future<$2.CreateCredentialTemplateResponse> create_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.CreateCredentialTemplateRequest> request) async {
    return create(call, await request);
  }

  $async.Future<$2.GetCredentialTemplateResponse> get_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.GetCredentialTemplateRequest> request) async {
    return get(call, await request);
  }

  $async.Future<$2.ListCredentialTemplatesResponse> list_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.ListCredentialTemplatesRequest> request) async {
    return list(call, await request);
  }

  $async.Future<$2.SearchCredentialTemplatesResponse> search_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.SearchCredentialTemplatesRequest> request) async {
    return search(call, await request);
  }

  $async.Future<$2.DeleteCredentialTemplateResponse> delete_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.DeleteCredentialTemplateRequest> request) async {
    return delete(call, await request);
  }

  $async.Future<$2.CreateCredentialTemplateResponse> create(
      $grpc.ServiceCall call, $2.CreateCredentialTemplateRequest request);
  $async.Future<$2.GetCredentialTemplateResponse> get(
      $grpc.ServiceCall call, $2.GetCredentialTemplateRequest request);
  $async.Future<$2.ListCredentialTemplatesResponse> list(
      $grpc.ServiceCall call, $2.ListCredentialTemplatesRequest request);
  $async.Future<$2.SearchCredentialTemplatesResponse> search(
      $grpc.ServiceCall call, $2.SearchCredentialTemplatesRequest request);
  $async.Future<$2.DeleteCredentialTemplateResponse> delete(
      $grpc.ServiceCall call, $2.DeleteCredentialTemplateRequest request);
}
