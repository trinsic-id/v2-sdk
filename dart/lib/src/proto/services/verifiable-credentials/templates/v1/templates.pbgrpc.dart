///
//  Generated code. Do not modify.
//  source: services/verifiable-credentials/templates/v1/templates.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'templates.pb.dart' as $3;
export 'templates.pb.dart';

class CredentialTemplatesClient extends $grpc.Client {
  static final _$create = $grpc.ClientMethod<$3.CreateCredentialTemplateRequest,
          $3.CreateCredentialTemplateResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/Create',
      ($3.CreateCredentialTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $3.CreateCredentialTemplateResponse.fromBuffer(value));
  static final _$get = $grpc.ClientMethod<$3.GetCredentialTemplateRequest,
          $3.GetCredentialTemplateResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/Get',
      ($3.GetCredentialTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $3.GetCredentialTemplateResponse.fromBuffer(value));
  static final _$list = $grpc.ClientMethod<$3.ListCredentialTemplatesRequest,
          $3.ListCredentialTemplatesResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/List',
      ($3.ListCredentialTemplatesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $3.ListCredentialTemplatesResponse.fromBuffer(value));
  static final _$search = $grpc.ClientMethod<
          $3.SearchCredentialTemplatesRequest,
          $3.SearchCredentialTemplatesResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/Search',
      ($3.SearchCredentialTemplatesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $3.SearchCredentialTemplatesResponse.fromBuffer(value));
  static final _$delete = $grpc.ClientMethod<$3.DeleteCredentialTemplateRequest,
          $3.DeleteCredentialTemplateResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/Delete',
      ($3.DeleteCredentialTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $3.DeleteCredentialTemplateResponse.fromBuffer(value));

  CredentialTemplatesClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$3.CreateCredentialTemplateResponse> create(
      $3.CreateCredentialTemplateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$3.GetCredentialTemplateResponse> get(
      $3.GetCredentialTemplateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$get, request, options: options);
  }

  $grpc.ResponseFuture<$3.ListCredentialTemplatesResponse> list(
      $3.ListCredentialTemplatesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$list, request, options: options);
  }

  $grpc.ResponseFuture<$3.SearchCredentialTemplatesResponse> search(
      $3.SearchCredentialTemplatesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$search, request, options: options);
  }

  $grpc.ResponseFuture<$3.DeleteCredentialTemplateResponse> delete(
      $3.DeleteCredentialTemplateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete, request, options: options);
  }
}

abstract class CredentialTemplatesServiceBase extends $grpc.Service {
  $core.String get $name =>
      'services.verifiablecredentials.templates.v1.CredentialTemplates';

  CredentialTemplatesServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.CreateCredentialTemplateRequest,
            $3.CreateCredentialTemplateResponse>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $3.CreateCredentialTemplateRequest.fromBuffer(value),
        ($3.CreateCredentialTemplateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.GetCredentialTemplateRequest,
            $3.GetCredentialTemplateResponse>(
        'Get',
        get_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $3.GetCredentialTemplateRequest.fromBuffer(value),
        ($3.GetCredentialTemplateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.ListCredentialTemplatesRequest,
            $3.ListCredentialTemplatesResponse>(
        'List',
        list_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $3.ListCredentialTemplatesRequest.fromBuffer(value),
        ($3.ListCredentialTemplatesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.SearchCredentialTemplatesRequest,
            $3.SearchCredentialTemplatesResponse>(
        'Search',
        search_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $3.SearchCredentialTemplatesRequest.fromBuffer(value),
        ($3.SearchCredentialTemplatesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.DeleteCredentialTemplateRequest,
            $3.DeleteCredentialTemplateResponse>(
        'Delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $3.DeleteCredentialTemplateRequest.fromBuffer(value),
        ($3.DeleteCredentialTemplateResponse value) => value.writeToBuffer()));
  }

  $async.Future<$3.CreateCredentialTemplateResponse> create_Pre(
      $grpc.ServiceCall call,
      $async.Future<$3.CreateCredentialTemplateRequest> request) async {
    return create(call, await request);
  }

  $async.Future<$3.GetCredentialTemplateResponse> get_Pre(
      $grpc.ServiceCall call,
      $async.Future<$3.GetCredentialTemplateRequest> request) async {
    return get(call, await request);
  }

  $async.Future<$3.ListCredentialTemplatesResponse> list_Pre(
      $grpc.ServiceCall call,
      $async.Future<$3.ListCredentialTemplatesRequest> request) async {
    return list(call, await request);
  }

  $async.Future<$3.SearchCredentialTemplatesResponse> search_Pre(
      $grpc.ServiceCall call,
      $async.Future<$3.SearchCredentialTemplatesRequest> request) async {
    return search(call, await request);
  }

  $async.Future<$3.DeleteCredentialTemplateResponse> delete_Pre(
      $grpc.ServiceCall call,
      $async.Future<$3.DeleteCredentialTemplateRequest> request) async {
    return delete(call, await request);
  }

  $async.Future<$3.CreateCredentialTemplateResponse> create(
      $grpc.ServiceCall call, $3.CreateCredentialTemplateRequest request);
  $async.Future<$3.GetCredentialTemplateResponse> get(
      $grpc.ServiceCall call, $3.GetCredentialTemplateRequest request);
  $async.Future<$3.ListCredentialTemplatesResponse> list(
      $grpc.ServiceCall call, $3.ListCredentialTemplatesRequest request);
  $async.Future<$3.SearchCredentialTemplatesResponse> search(
      $grpc.ServiceCall call, $3.SearchCredentialTemplatesRequest request);
  $async.Future<$3.DeleteCredentialTemplateResponse> delete(
      $grpc.ServiceCall call, $3.DeleteCredentialTemplateRequest request);
}
