///
//  Generated code. Do not modify.
//  source: services/verifiable-credentials/templates/v1/templates.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'templates.pb.dart' as $1;
export 'templates.pb.dart';

class CredentialTemplatesClient extends $grpc.Client {
  static final _$create = $grpc.ClientMethod<$1.CreateCredentialTemplateRequest,
          $1.CreateCredentialTemplateResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/Create',
      ($1.CreateCredentialTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.CreateCredentialTemplateResponse.fromBuffer(value));
  static final _$get = $grpc.ClientMethod<$1.GetCredentialTemplateRequest,
          $1.GetCredentialTemplateResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/Get',
      ($1.GetCredentialTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.GetCredentialTemplateResponse.fromBuffer(value));
  static final _$list = $grpc.ClientMethod<$1.ListCredentialTemplatesRequest,
          $1.ListCredentialTemplatesResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/List',
      ($1.ListCredentialTemplatesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.ListCredentialTemplatesResponse.fromBuffer(value));
  static final _$search = $grpc.ClientMethod<
          $1.SearchCredentialTemplatesRequest,
          $1.SearchCredentialTemplatesResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/Search',
      ($1.SearchCredentialTemplatesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.SearchCredentialTemplatesResponse.fromBuffer(value));
  static final _$delete = $grpc.ClientMethod<$1.DeleteCredentialTemplateRequest,
          $1.DeleteCredentialTemplateResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/Delete',
      ($1.DeleteCredentialTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.DeleteCredentialTemplateResponse.fromBuffer(value));

  CredentialTemplatesClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.CreateCredentialTemplateResponse> create(
      $1.CreateCredentialTemplateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetCredentialTemplateResponse> get(
      $1.GetCredentialTemplateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$get, request, options: options);
  }

  $grpc.ResponseFuture<$1.ListCredentialTemplatesResponse> list(
      $1.ListCredentialTemplatesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$list, request, options: options);
  }

  $grpc.ResponseFuture<$1.SearchCredentialTemplatesResponse> search(
      $1.SearchCredentialTemplatesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$search, request, options: options);
  }

  $grpc.ResponseFuture<$1.DeleteCredentialTemplateResponse> delete(
      $1.DeleteCredentialTemplateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete, request, options: options);
  }
}

abstract class CredentialTemplatesServiceBase extends $grpc.Service {
  $core.String get $name =>
      'services.verifiablecredentials.templates.v1.CredentialTemplates';

  CredentialTemplatesServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.CreateCredentialTemplateRequest,
            $1.CreateCredentialTemplateResponse>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.CreateCredentialTemplateRequest.fromBuffer(value),
        ($1.CreateCredentialTemplateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetCredentialTemplateRequest,
            $1.GetCredentialTemplateResponse>(
        'Get',
        get_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.GetCredentialTemplateRequest.fromBuffer(value),
        ($1.GetCredentialTemplateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.ListCredentialTemplatesRequest,
            $1.ListCredentialTemplatesResponse>(
        'List',
        list_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.ListCredentialTemplatesRequest.fromBuffer(value),
        ($1.ListCredentialTemplatesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.SearchCredentialTemplatesRequest,
            $1.SearchCredentialTemplatesResponse>(
        'Search',
        search_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.SearchCredentialTemplatesRequest.fromBuffer(value),
        ($1.SearchCredentialTemplatesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.DeleteCredentialTemplateRequest,
            $1.DeleteCredentialTemplateResponse>(
        'Delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.DeleteCredentialTemplateRequest.fromBuffer(value),
        ($1.DeleteCredentialTemplateResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.CreateCredentialTemplateResponse> create_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.CreateCredentialTemplateRequest> request) async {
    return create(call, await request);
  }

  $async.Future<$1.GetCredentialTemplateResponse> get_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.GetCredentialTemplateRequest> request) async {
    return get(call, await request);
  }

  $async.Future<$1.ListCredentialTemplatesResponse> list_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.ListCredentialTemplatesRequest> request) async {
    return list(call, await request);
  }

  $async.Future<$1.SearchCredentialTemplatesResponse> search_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.SearchCredentialTemplatesRequest> request) async {
    return search(call, await request);
  }

  $async.Future<$1.DeleteCredentialTemplateResponse> delete_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.DeleteCredentialTemplateRequest> request) async {
    return delete(call, await request);
  }

  $async.Future<$1.CreateCredentialTemplateResponse> create(
      $grpc.ServiceCall call, $1.CreateCredentialTemplateRequest request);
  $async.Future<$1.GetCredentialTemplateResponse> get(
      $grpc.ServiceCall call, $1.GetCredentialTemplateRequest request);
  $async.Future<$1.ListCredentialTemplatesResponse> list(
      $grpc.ServiceCall call, $1.ListCredentialTemplatesRequest request);
  $async.Future<$1.SearchCredentialTemplatesResponse> search(
      $grpc.ServiceCall call, $1.SearchCredentialTemplatesRequest request);
  $async.Future<$1.DeleteCredentialTemplateResponse> delete(
      $grpc.ServiceCall call, $1.DeleteCredentialTemplateRequest request);
}
