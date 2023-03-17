///
//  Generated code. Do not modify.
//  source: services/verifiable-credentials/templates/v1/templates.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'templates.pb.dart' as $7;
export 'templates.pb.dart';

class CredentialTemplatesClient extends $grpc.Client {
  static final _$create = $grpc.ClientMethod<$7.CreateCredentialTemplateRequest,
          $7.CreateCredentialTemplateResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/Create',
      ($7.CreateCredentialTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $7.CreateCredentialTemplateResponse.fromBuffer(value));
  static final _$get = $grpc.ClientMethod<$7.GetCredentialTemplateRequest,
          $7.GetCredentialTemplateResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/Get',
      ($7.GetCredentialTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $7.GetCredentialTemplateResponse.fromBuffer(value));
  static final _$update = $grpc.ClientMethod<$7.UpdateCredentialTemplateRequest,
          $7.UpdateCredentialTemplateResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/Update',
      ($7.UpdateCredentialTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $7.UpdateCredentialTemplateResponse.fromBuffer(value));
  static final _$list = $grpc.ClientMethod<$7.ListCredentialTemplatesRequest,
          $7.ListCredentialTemplatesResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/List',
      ($7.ListCredentialTemplatesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $7.ListCredentialTemplatesResponse.fromBuffer(value));
  static final _$search = $grpc.ClientMethod<
          $7.SearchCredentialTemplatesRequest,
          $7.SearchCredentialTemplatesResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/Search',
      ($7.SearchCredentialTemplatesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $7.SearchCredentialTemplatesResponse.fromBuffer(value));
  static final _$delete = $grpc.ClientMethod<$7.DeleteCredentialTemplateRequest,
          $7.DeleteCredentialTemplateResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/Delete',
      ($7.DeleteCredentialTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $7.DeleteCredentialTemplateResponse.fromBuffer(value));

  CredentialTemplatesClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$7.CreateCredentialTemplateResponse> create(
      $7.CreateCredentialTemplateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$7.GetCredentialTemplateResponse> get(
      $7.GetCredentialTemplateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$get, request, options: options);
  }

  $grpc.ResponseFuture<$7.UpdateCredentialTemplateResponse> update(
      $7.UpdateCredentialTemplateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
  }

  $grpc.ResponseFuture<$7.ListCredentialTemplatesResponse> list(
      $7.ListCredentialTemplatesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$list, request, options: options);
  }

  $grpc.ResponseFuture<$7.SearchCredentialTemplatesResponse> search(
      $7.SearchCredentialTemplatesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$search, request, options: options);
  }

  $grpc.ResponseFuture<$7.DeleteCredentialTemplateResponse> delete(
      $7.DeleteCredentialTemplateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete, request, options: options);
  }
}

abstract class CredentialTemplatesServiceBase extends $grpc.Service {
  $core.String get $name =>
      'services.verifiablecredentials.templates.v1.CredentialTemplates';

  CredentialTemplatesServiceBase() {
    $addMethod($grpc.ServiceMethod<$7.CreateCredentialTemplateRequest,
            $7.CreateCredentialTemplateResponse>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.CreateCredentialTemplateRequest.fromBuffer(value),
        ($7.CreateCredentialTemplateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.GetCredentialTemplateRequest,
            $7.GetCredentialTemplateResponse>(
        'Get',
        get_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.GetCredentialTemplateRequest.fromBuffer(value),
        ($7.GetCredentialTemplateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.UpdateCredentialTemplateRequest,
            $7.UpdateCredentialTemplateResponse>(
        'Update',
        update_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.UpdateCredentialTemplateRequest.fromBuffer(value),
        ($7.UpdateCredentialTemplateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.ListCredentialTemplatesRequest,
            $7.ListCredentialTemplatesResponse>(
        'List',
        list_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.ListCredentialTemplatesRequest.fromBuffer(value),
        ($7.ListCredentialTemplatesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.SearchCredentialTemplatesRequest,
            $7.SearchCredentialTemplatesResponse>(
        'Search',
        search_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.SearchCredentialTemplatesRequest.fromBuffer(value),
        ($7.SearchCredentialTemplatesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.DeleteCredentialTemplateRequest,
            $7.DeleteCredentialTemplateResponse>(
        'Delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.DeleteCredentialTemplateRequest.fromBuffer(value),
        ($7.DeleteCredentialTemplateResponse value) => value.writeToBuffer()));
  }

  $async.Future<$7.CreateCredentialTemplateResponse> create_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.CreateCredentialTemplateRequest> request) async {
    return create(call, await request);
  }

  $async.Future<$7.GetCredentialTemplateResponse> get_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.GetCredentialTemplateRequest> request) async {
    return get(call, await request);
  }

  $async.Future<$7.UpdateCredentialTemplateResponse> update_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.UpdateCredentialTemplateRequest> request) async {
    return update(call, await request);
  }

  $async.Future<$7.ListCredentialTemplatesResponse> list_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.ListCredentialTemplatesRequest> request) async {
    return list(call, await request);
  }

  $async.Future<$7.SearchCredentialTemplatesResponse> search_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.SearchCredentialTemplatesRequest> request) async {
    return search(call, await request);
  }

  $async.Future<$7.DeleteCredentialTemplateResponse> delete_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.DeleteCredentialTemplateRequest> request) async {
    return delete(call, await request);
  }

  $async.Future<$7.CreateCredentialTemplateResponse> create(
      $grpc.ServiceCall call, $7.CreateCredentialTemplateRequest request);
  $async.Future<$7.GetCredentialTemplateResponse> get(
      $grpc.ServiceCall call, $7.GetCredentialTemplateRequest request);
  $async.Future<$7.UpdateCredentialTemplateResponse> update(
      $grpc.ServiceCall call, $7.UpdateCredentialTemplateRequest request);
  $async.Future<$7.ListCredentialTemplatesResponse> list(
      $grpc.ServiceCall call, $7.ListCredentialTemplatesRequest request);
  $async.Future<$7.SearchCredentialTemplatesResponse> search(
      $grpc.ServiceCall call, $7.SearchCredentialTemplatesRequest request);
  $async.Future<$7.DeleteCredentialTemplateResponse> delete(
      $grpc.ServiceCall call, $7.DeleteCredentialTemplateRequest request);
}
