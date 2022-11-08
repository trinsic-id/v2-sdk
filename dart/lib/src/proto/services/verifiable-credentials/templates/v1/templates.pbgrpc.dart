///
//  Generated code. Do not modify.
//  source: services/verifiable-credentials/templates/v1/templates.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'templates.pb.dart' as $4;
export 'templates.pb.dart';

class CredentialTemplatesClient extends $grpc.Client {
  static final _$create = $grpc.ClientMethod<$4.CreateCredentialTemplateRequest,
          $4.CreateCredentialTemplateResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/Create',
      ($4.CreateCredentialTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $4.CreateCredentialTemplateResponse.fromBuffer(value));
  static final _$get = $grpc.ClientMethod<$4.GetCredentialTemplateRequest,
          $4.GetCredentialTemplateResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/Get',
      ($4.GetCredentialTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $4.GetCredentialTemplateResponse.fromBuffer(value));
  static final _$list = $grpc.ClientMethod<$4.ListCredentialTemplatesRequest,
          $4.ListCredentialTemplatesResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/List',
      ($4.ListCredentialTemplatesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $4.ListCredentialTemplatesResponse.fromBuffer(value));
  static final _$search = $grpc.ClientMethod<
          $4.SearchCredentialTemplatesRequest,
          $4.SearchCredentialTemplatesResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/Search',
      ($4.SearchCredentialTemplatesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $4.SearchCredentialTemplatesResponse.fromBuffer(value));
  static final _$delete = $grpc.ClientMethod<$4.DeleteCredentialTemplateRequest,
          $4.DeleteCredentialTemplateResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/Delete',
      ($4.DeleteCredentialTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $4.DeleteCredentialTemplateResponse.fromBuffer(value));

  CredentialTemplatesClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$4.CreateCredentialTemplateResponse> create(
      $4.CreateCredentialTemplateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$4.GetCredentialTemplateResponse> get(
      $4.GetCredentialTemplateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$get, request, options: options);
  }

  $grpc.ResponseFuture<$4.ListCredentialTemplatesResponse> list(
      $4.ListCredentialTemplatesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$list, request, options: options);
  }

  $grpc.ResponseFuture<$4.SearchCredentialTemplatesResponse> search(
      $4.SearchCredentialTemplatesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$search, request, options: options);
  }

  $grpc.ResponseFuture<$4.DeleteCredentialTemplateResponse> delete(
      $4.DeleteCredentialTemplateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete, request, options: options);
  }
}

abstract class CredentialTemplatesServiceBase extends $grpc.Service {
  $core.String get $name =>
      'services.verifiablecredentials.templates.v1.CredentialTemplates';

  CredentialTemplatesServiceBase() {
    $addMethod($grpc.ServiceMethod<$4.CreateCredentialTemplateRequest,
            $4.CreateCredentialTemplateResponse>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.CreateCredentialTemplateRequest.fromBuffer(value),
        ($4.CreateCredentialTemplateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.GetCredentialTemplateRequest,
            $4.GetCredentialTemplateResponse>(
        'Get',
        get_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.GetCredentialTemplateRequest.fromBuffer(value),
        ($4.GetCredentialTemplateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.ListCredentialTemplatesRequest,
            $4.ListCredentialTemplatesResponse>(
        'List',
        list_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.ListCredentialTemplatesRequest.fromBuffer(value),
        ($4.ListCredentialTemplatesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.SearchCredentialTemplatesRequest,
            $4.SearchCredentialTemplatesResponse>(
        'Search',
        search_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.SearchCredentialTemplatesRequest.fromBuffer(value),
        ($4.SearchCredentialTemplatesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.DeleteCredentialTemplateRequest,
            $4.DeleteCredentialTemplateResponse>(
        'Delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.DeleteCredentialTemplateRequest.fromBuffer(value),
        ($4.DeleteCredentialTemplateResponse value) => value.writeToBuffer()));
  }

  $async.Future<$4.CreateCredentialTemplateResponse> create_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.CreateCredentialTemplateRequest> request) async {
    return create(call, await request);
  }

  $async.Future<$4.GetCredentialTemplateResponse> get_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.GetCredentialTemplateRequest> request) async {
    return get(call, await request);
  }

  $async.Future<$4.ListCredentialTemplatesResponse> list_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.ListCredentialTemplatesRequest> request) async {
    return list(call, await request);
  }

  $async.Future<$4.SearchCredentialTemplatesResponse> search_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.SearchCredentialTemplatesRequest> request) async {
    return search(call, await request);
  }

  $async.Future<$4.DeleteCredentialTemplateResponse> delete_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.DeleteCredentialTemplateRequest> request) async {
    return delete(call, await request);
  }

  $async.Future<$4.CreateCredentialTemplateResponse> create(
      $grpc.ServiceCall call, $4.CreateCredentialTemplateRequest request);
  $async.Future<$4.GetCredentialTemplateResponse> get(
      $grpc.ServiceCall call, $4.GetCredentialTemplateRequest request);
  $async.Future<$4.ListCredentialTemplatesResponse> list(
      $grpc.ServiceCall call, $4.ListCredentialTemplatesRequest request);
  $async.Future<$4.SearchCredentialTemplatesResponse> search(
      $grpc.ServiceCall call, $4.SearchCredentialTemplatesRequest request);
  $async.Future<$4.DeleteCredentialTemplateResponse> delete(
      $grpc.ServiceCall call, $4.DeleteCredentialTemplateRequest request);
}
