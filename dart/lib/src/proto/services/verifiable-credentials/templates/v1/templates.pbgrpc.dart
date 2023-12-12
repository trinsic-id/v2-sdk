//
//  Generated code. Do not modify.
//  source: services/verifiable-credentials/templates/v1/templates.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'templates.pb.dart' as $1;

export 'templates.pb.dart';

@$pb.GrpcServiceName(
    'services.verifiablecredentials.templates.v1.CredentialTemplates')
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
  static final _$update = $grpc.ClientMethod<$1.UpdateCredentialTemplateRequest,
          $1.UpdateCredentialTemplateResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/Update',
      ($1.UpdateCredentialTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.UpdateCredentialTemplateResponse.fromBuffer(value));
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
  static final _$createVerificationTemplate = $grpc.ClientMethod<
          $1.CreateVerificationTemplateRequest,
          $1.CreateVerificationTemplateResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/CreateVerificationTemplate',
      ($1.CreateVerificationTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.CreateVerificationTemplateResponse.fromBuffer(value));
  static final _$listVerificationTemplates = $grpc.ClientMethod<
          $1.ListVerificationTemplatesRequest,
          $1.ListVerificationTemplatesResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/ListVerificationTemplates',
      ($1.ListVerificationTemplatesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.ListVerificationTemplatesResponse.fromBuffer(value));
  static final _$getVerificationTemplate = $grpc.ClientMethod<
          $1.GetVerificationTemplateRequest,
          $1.GetVerificationTemplateResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/GetVerificationTemplate',
      ($1.GetVerificationTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.GetVerificationTemplateResponse.fromBuffer(value));
  static final _$updateVerificationTemplate = $grpc.ClientMethod<
          $1.UpdateVerificationTemplateRequest,
          $1.UpdateVerificationTemplateResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/UpdateVerificationTemplate',
      ($1.UpdateVerificationTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.UpdateVerificationTemplateResponse.fromBuffer(value));
  static final _$deleteVerificationTemplate = $grpc.ClientMethod<
          $1.DeleteVerificationTemplateRequest,
          $1.DeleteVerificationTemplateResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/DeleteVerificationTemplate',
      ($1.DeleteVerificationTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.DeleteVerificationTemplateResponse.fromBuffer(value));

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

  $grpc.ResponseFuture<$1.UpdateCredentialTemplateResponse> update(
      $1.UpdateCredentialTemplateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
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

  $grpc.ResponseFuture<$1.CreateVerificationTemplateResponse>
      createVerificationTemplate($1.CreateVerificationTemplateRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createVerificationTemplate, request,
        options: options);
  }

  $grpc.ResponseFuture<$1.ListVerificationTemplatesResponse>
      listVerificationTemplates($1.ListVerificationTemplatesRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listVerificationTemplates, request,
        options: options);
  }

  $grpc.ResponseFuture<$1.GetVerificationTemplateResponse>
      getVerificationTemplate($1.GetVerificationTemplateRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getVerificationTemplate, request,
        options: options);
  }

  $grpc.ResponseFuture<$1.UpdateVerificationTemplateResponse>
      updateVerificationTemplate($1.UpdateVerificationTemplateRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateVerificationTemplate, request,
        options: options);
  }

  $grpc.ResponseFuture<$1.DeleteVerificationTemplateResponse>
      deleteVerificationTemplate($1.DeleteVerificationTemplateRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteVerificationTemplate, request,
        options: options);
  }
}

@$pb.GrpcServiceName(
    'services.verifiablecredentials.templates.v1.CredentialTemplates')
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
    $addMethod($grpc.ServiceMethod<$1.UpdateCredentialTemplateRequest,
            $1.UpdateCredentialTemplateResponse>(
        'Update',
        update_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.UpdateCredentialTemplateRequest.fromBuffer(value),
        ($1.UpdateCredentialTemplateResponse value) => value.writeToBuffer()));
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
    $addMethod($grpc.ServiceMethod<$1.CreateVerificationTemplateRequest,
            $1.CreateVerificationTemplateResponse>(
        'CreateVerificationTemplate',
        createVerificationTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.CreateVerificationTemplateRequest.fromBuffer(value),
        ($1.CreateVerificationTemplateResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.ListVerificationTemplatesRequest,
            $1.ListVerificationTemplatesResponse>(
        'ListVerificationTemplates',
        listVerificationTemplates_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.ListVerificationTemplatesRequest.fromBuffer(value),
        ($1.ListVerificationTemplatesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetVerificationTemplateRequest,
            $1.GetVerificationTemplateResponse>(
        'GetVerificationTemplate',
        getVerificationTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.GetVerificationTemplateRequest.fromBuffer(value),
        ($1.GetVerificationTemplateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.UpdateVerificationTemplateRequest,
            $1.UpdateVerificationTemplateResponse>(
        'UpdateVerificationTemplate',
        updateVerificationTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.UpdateVerificationTemplateRequest.fromBuffer(value),
        ($1.UpdateVerificationTemplateResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.DeleteVerificationTemplateRequest,
            $1.DeleteVerificationTemplateResponse>(
        'DeleteVerificationTemplate',
        deleteVerificationTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.DeleteVerificationTemplateRequest.fromBuffer(value),
        ($1.DeleteVerificationTemplateResponse value) =>
            value.writeToBuffer()));
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

  $async.Future<$1.UpdateCredentialTemplateResponse> update_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.UpdateCredentialTemplateRequest> request) async {
    return update(call, await request);
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

  $async.Future<$1.CreateVerificationTemplateResponse>
      createVerificationTemplate_Pre($grpc.ServiceCall call,
          $async.Future<$1.CreateVerificationTemplateRequest> request) async {
    return createVerificationTemplate(call, await request);
  }

  $async.Future<$1.ListVerificationTemplatesResponse>
      listVerificationTemplates_Pre($grpc.ServiceCall call,
          $async.Future<$1.ListVerificationTemplatesRequest> request) async {
    return listVerificationTemplates(call, await request);
  }

  $async.Future<$1.GetVerificationTemplateResponse> getVerificationTemplate_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.GetVerificationTemplateRequest> request) async {
    return getVerificationTemplate(call, await request);
  }

  $async.Future<$1.UpdateVerificationTemplateResponse>
      updateVerificationTemplate_Pre($grpc.ServiceCall call,
          $async.Future<$1.UpdateVerificationTemplateRequest> request) async {
    return updateVerificationTemplate(call, await request);
  }

  $async.Future<$1.DeleteVerificationTemplateResponse>
      deleteVerificationTemplate_Pre($grpc.ServiceCall call,
          $async.Future<$1.DeleteVerificationTemplateRequest> request) async {
    return deleteVerificationTemplate(call, await request);
  }

  $async.Future<$1.CreateCredentialTemplateResponse> create(
      $grpc.ServiceCall call, $1.CreateCredentialTemplateRequest request);
  $async.Future<$1.GetCredentialTemplateResponse> get(
      $grpc.ServiceCall call, $1.GetCredentialTemplateRequest request);
  $async.Future<$1.UpdateCredentialTemplateResponse> update(
      $grpc.ServiceCall call, $1.UpdateCredentialTemplateRequest request);
  $async.Future<$1.ListCredentialTemplatesResponse> list(
      $grpc.ServiceCall call, $1.ListCredentialTemplatesRequest request);
  $async.Future<$1.SearchCredentialTemplatesResponse> search(
      $grpc.ServiceCall call, $1.SearchCredentialTemplatesRequest request);
  $async.Future<$1.DeleteCredentialTemplateResponse> delete(
      $grpc.ServiceCall call, $1.DeleteCredentialTemplateRequest request);
  $async.Future<$1.CreateVerificationTemplateResponse>
      createVerificationTemplate(
          $grpc.ServiceCall call, $1.CreateVerificationTemplateRequest request);
  $async.Future<$1.ListVerificationTemplatesResponse> listVerificationTemplates(
      $grpc.ServiceCall call, $1.ListVerificationTemplatesRequest request);
  $async.Future<$1.GetVerificationTemplateResponse> getVerificationTemplate(
      $grpc.ServiceCall call, $1.GetVerificationTemplateRequest request);
  $async.Future<$1.UpdateVerificationTemplateResponse>
      updateVerificationTemplate(
          $grpc.ServiceCall call, $1.UpdateVerificationTemplateRequest request);
  $async.Future<$1.DeleteVerificationTemplateResponse>
      deleteVerificationTemplate(
          $grpc.ServiceCall call, $1.DeleteVerificationTemplateRequest request);
}
