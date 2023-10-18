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

import 'templates.pb.dart' as $3;

export 'templates.pb.dart';

@$pb.GrpcServiceName(
    'services.verifiablecredentials.templates.v1.CredentialTemplates')
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
  static final _$update = $grpc.ClientMethod<$3.UpdateCredentialTemplateRequest,
          $3.UpdateCredentialTemplateResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/Update',
      ($3.UpdateCredentialTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $3.UpdateCredentialTemplateResponse.fromBuffer(value));
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
  static final _$createVerificationTemplate = $grpc.ClientMethod<
          $3.CreateVerificationTemplateRequest,
          $3.CreateVerificationTemplateResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/CreateVerificationTemplate',
      ($3.CreateVerificationTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $3.CreateVerificationTemplateResponse.fromBuffer(value));
  static final _$listVerificationTemplates = $grpc.ClientMethod<
          $3.ListVerificationTemplatesRequest,
          $3.ListVerificationTemplatesResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/ListVerificationTemplates',
      ($3.ListVerificationTemplatesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $3.ListVerificationTemplatesResponse.fromBuffer(value));
  static final _$getVerificationTemplate = $grpc.ClientMethod<
          $3.GetVerificationTemplateRequest,
          $3.GetVerificationTemplateResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/GetVerificationTemplate',
      ($3.GetVerificationTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $3.GetVerificationTemplateResponse.fromBuffer(value));
  static final _$updateVerificationTemplate = $grpc.ClientMethod<
          $3.UpdateVerificationTemplateRequest,
          $3.UpdateVerificationTemplateResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/UpdateVerificationTemplate',
      ($3.UpdateVerificationTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $3.UpdateVerificationTemplateResponse.fromBuffer(value));
  static final _$deleteVerificationTemplate = $grpc.ClientMethod<
          $3.DeleteVerificationTemplateRequest,
          $3.DeleteVerificationTemplateResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/DeleteVerificationTemplate',
      ($3.DeleteVerificationTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $3.DeleteVerificationTemplateResponse.fromBuffer(value));

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

  $grpc.ResponseFuture<$3.UpdateCredentialTemplateResponse> update(
      $3.UpdateCredentialTemplateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
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

  $grpc.ResponseFuture<$3.CreateVerificationTemplateResponse>
      createVerificationTemplate($3.CreateVerificationTemplateRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createVerificationTemplate, request,
        options: options);
  }

  $grpc.ResponseFuture<$3.ListVerificationTemplatesResponse>
      listVerificationTemplates($3.ListVerificationTemplatesRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listVerificationTemplates, request,
        options: options);
  }

  $grpc.ResponseFuture<$3.GetVerificationTemplateResponse>
      getVerificationTemplate($3.GetVerificationTemplateRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getVerificationTemplate, request,
        options: options);
  }

  $grpc.ResponseFuture<$3.UpdateVerificationTemplateResponse>
      updateVerificationTemplate($3.UpdateVerificationTemplateRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateVerificationTemplate, request,
        options: options);
  }

  $grpc.ResponseFuture<$3.DeleteVerificationTemplateResponse>
      deleteVerificationTemplate($3.DeleteVerificationTemplateRequest request,
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
    $addMethod($grpc.ServiceMethod<$3.UpdateCredentialTemplateRequest,
            $3.UpdateCredentialTemplateResponse>(
        'Update',
        update_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $3.UpdateCredentialTemplateRequest.fromBuffer(value),
        ($3.UpdateCredentialTemplateResponse value) => value.writeToBuffer()));
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
    $addMethod($grpc.ServiceMethod<$3.CreateVerificationTemplateRequest,
            $3.CreateVerificationTemplateResponse>(
        'CreateVerificationTemplate',
        createVerificationTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $3.CreateVerificationTemplateRequest.fromBuffer(value),
        ($3.CreateVerificationTemplateResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.ListVerificationTemplatesRequest,
            $3.ListVerificationTemplatesResponse>(
        'ListVerificationTemplates',
        listVerificationTemplates_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $3.ListVerificationTemplatesRequest.fromBuffer(value),
        ($3.ListVerificationTemplatesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.GetVerificationTemplateRequest,
            $3.GetVerificationTemplateResponse>(
        'GetVerificationTemplate',
        getVerificationTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $3.GetVerificationTemplateRequest.fromBuffer(value),
        ($3.GetVerificationTemplateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.UpdateVerificationTemplateRequest,
            $3.UpdateVerificationTemplateResponse>(
        'UpdateVerificationTemplate',
        updateVerificationTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $3.UpdateVerificationTemplateRequest.fromBuffer(value),
        ($3.UpdateVerificationTemplateResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.DeleteVerificationTemplateRequest,
            $3.DeleteVerificationTemplateResponse>(
        'DeleteVerificationTemplate',
        deleteVerificationTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $3.DeleteVerificationTemplateRequest.fromBuffer(value),
        ($3.DeleteVerificationTemplateResponse value) =>
            value.writeToBuffer()));
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

  $async.Future<$3.UpdateCredentialTemplateResponse> update_Pre(
      $grpc.ServiceCall call,
      $async.Future<$3.UpdateCredentialTemplateRequest> request) async {
    return update(call, await request);
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

  $async.Future<$3.CreateVerificationTemplateResponse>
      createVerificationTemplate_Pre($grpc.ServiceCall call,
          $async.Future<$3.CreateVerificationTemplateRequest> request) async {
    return createVerificationTemplate(call, await request);
  }

  $async.Future<$3.ListVerificationTemplatesResponse>
      listVerificationTemplates_Pre($grpc.ServiceCall call,
          $async.Future<$3.ListVerificationTemplatesRequest> request) async {
    return listVerificationTemplates(call, await request);
  }

  $async.Future<$3.GetVerificationTemplateResponse> getVerificationTemplate_Pre(
      $grpc.ServiceCall call,
      $async.Future<$3.GetVerificationTemplateRequest> request) async {
    return getVerificationTemplate(call, await request);
  }

  $async.Future<$3.UpdateVerificationTemplateResponse>
      updateVerificationTemplate_Pre($grpc.ServiceCall call,
          $async.Future<$3.UpdateVerificationTemplateRequest> request) async {
    return updateVerificationTemplate(call, await request);
  }

  $async.Future<$3.DeleteVerificationTemplateResponse>
      deleteVerificationTemplate_Pre($grpc.ServiceCall call,
          $async.Future<$3.DeleteVerificationTemplateRequest> request) async {
    return deleteVerificationTemplate(call, await request);
  }

  $async.Future<$3.CreateCredentialTemplateResponse> create(
      $grpc.ServiceCall call, $3.CreateCredentialTemplateRequest request);
  $async.Future<$3.GetCredentialTemplateResponse> get(
      $grpc.ServiceCall call, $3.GetCredentialTemplateRequest request);
  $async.Future<$3.UpdateCredentialTemplateResponse> update(
      $grpc.ServiceCall call, $3.UpdateCredentialTemplateRequest request);
  $async.Future<$3.ListCredentialTemplatesResponse> list(
      $grpc.ServiceCall call, $3.ListCredentialTemplatesRequest request);
  $async.Future<$3.SearchCredentialTemplatesResponse> search(
      $grpc.ServiceCall call, $3.SearchCredentialTemplatesRequest request);
  $async.Future<$3.DeleteCredentialTemplateResponse> delete(
      $grpc.ServiceCall call, $3.DeleteCredentialTemplateRequest request);
  $async.Future<$3.CreateVerificationTemplateResponse>
      createVerificationTemplate(
          $grpc.ServiceCall call, $3.CreateVerificationTemplateRequest request);
  $async.Future<$3.ListVerificationTemplatesResponse> listVerificationTemplates(
      $grpc.ServiceCall call, $3.ListVerificationTemplatesRequest request);
  $async.Future<$3.GetVerificationTemplateResponse> getVerificationTemplate(
      $grpc.ServiceCall call, $3.GetVerificationTemplateRequest request);
  $async.Future<$3.UpdateVerificationTemplateResponse>
      updateVerificationTemplate(
          $grpc.ServiceCall call, $3.UpdateVerificationTemplateRequest request);
  $async.Future<$3.DeleteVerificationTemplateResponse>
      deleteVerificationTemplate(
          $grpc.ServiceCall call, $3.DeleteVerificationTemplateRequest request);
}
