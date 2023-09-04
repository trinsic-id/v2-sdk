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

import 'templates.pb.dart' as $4;

export 'templates.pb.dart';

@$pb.GrpcServiceName(
    'services.verifiablecredentials.templates.v1.CredentialTemplates')
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
  static final _$update = $grpc.ClientMethod<$4.UpdateCredentialTemplateRequest,
          $4.UpdateCredentialTemplateResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/Update',
      ($4.UpdateCredentialTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $4.UpdateCredentialTemplateResponse.fromBuffer(value));
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
  static final _$createVerificationTemplate = $grpc.ClientMethod<
          $4.CreateVerificationTemplateRequest,
          $4.CreateVerificationTemplateResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/CreateVerificationTemplate',
      ($4.CreateVerificationTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $4.CreateVerificationTemplateResponse.fromBuffer(value));
  static final _$listVerificationTemplates = $grpc.ClientMethod<
          $4.ListVerificationTemplatesRequest,
          $4.ListVerificationTemplatesResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/ListVerificationTemplates',
      ($4.ListVerificationTemplatesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $4.ListVerificationTemplatesResponse.fromBuffer(value));
  static final _$getVerificationTemplate = $grpc.ClientMethod<
          $4.GetVerificationTemplateRequest,
          $4.GetVerificationTemplateResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/GetVerificationTemplate',
      ($4.GetVerificationTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $4.GetVerificationTemplateResponse.fromBuffer(value));
  static final _$updateVerificationTemplate = $grpc.ClientMethod<
          $4.UpdateVerificationTemplateRequest,
          $4.UpdateVerificationTemplateResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/UpdateVerificationTemplate',
      ($4.UpdateVerificationTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $4.UpdateVerificationTemplateResponse.fromBuffer(value));
  static final _$deleteVerificationTemplate = $grpc.ClientMethod<
          $4.DeleteVerificationTemplateRequest,
          $4.DeleteVerificationTemplateResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/DeleteVerificationTemplate',
      ($4.DeleteVerificationTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $4.DeleteVerificationTemplateResponse.fromBuffer(value));

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

  $grpc.ResponseFuture<$4.UpdateCredentialTemplateResponse> update(
      $4.UpdateCredentialTemplateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
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

  $grpc.ResponseFuture<$4.CreateVerificationTemplateResponse>
      createVerificationTemplate($4.CreateVerificationTemplateRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createVerificationTemplate, request,
        options: options);
  }

  $grpc.ResponseFuture<$4.ListVerificationTemplatesResponse>
      listVerificationTemplates($4.ListVerificationTemplatesRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listVerificationTemplates, request,
        options: options);
  }

  $grpc.ResponseFuture<$4.GetVerificationTemplateResponse>
      getVerificationTemplate($4.GetVerificationTemplateRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getVerificationTemplate, request,
        options: options);
  }

  $grpc.ResponseFuture<$4.UpdateVerificationTemplateResponse>
      updateVerificationTemplate($4.UpdateVerificationTemplateRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateVerificationTemplate, request,
        options: options);
  }

  $grpc.ResponseFuture<$4.DeleteVerificationTemplateResponse>
      deleteVerificationTemplate($4.DeleteVerificationTemplateRequest request,
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
    $addMethod($grpc.ServiceMethod<$4.UpdateCredentialTemplateRequest,
            $4.UpdateCredentialTemplateResponse>(
        'Update',
        update_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.UpdateCredentialTemplateRequest.fromBuffer(value),
        ($4.UpdateCredentialTemplateResponse value) => value.writeToBuffer()));
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
    $addMethod($grpc.ServiceMethod<$4.CreateVerificationTemplateRequest,
            $4.CreateVerificationTemplateResponse>(
        'CreateVerificationTemplate',
        createVerificationTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.CreateVerificationTemplateRequest.fromBuffer(value),
        ($4.CreateVerificationTemplateResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.ListVerificationTemplatesRequest,
            $4.ListVerificationTemplatesResponse>(
        'ListVerificationTemplates',
        listVerificationTemplates_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.ListVerificationTemplatesRequest.fromBuffer(value),
        ($4.ListVerificationTemplatesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.GetVerificationTemplateRequest,
            $4.GetVerificationTemplateResponse>(
        'GetVerificationTemplate',
        getVerificationTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.GetVerificationTemplateRequest.fromBuffer(value),
        ($4.GetVerificationTemplateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.UpdateVerificationTemplateRequest,
            $4.UpdateVerificationTemplateResponse>(
        'UpdateVerificationTemplate',
        updateVerificationTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.UpdateVerificationTemplateRequest.fromBuffer(value),
        ($4.UpdateVerificationTemplateResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.DeleteVerificationTemplateRequest,
            $4.DeleteVerificationTemplateResponse>(
        'DeleteVerificationTemplate',
        deleteVerificationTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.DeleteVerificationTemplateRequest.fromBuffer(value),
        ($4.DeleteVerificationTemplateResponse value) =>
            value.writeToBuffer()));
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

  $async.Future<$4.UpdateCredentialTemplateResponse> update_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.UpdateCredentialTemplateRequest> request) async {
    return update(call, await request);
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

  $async.Future<$4.CreateVerificationTemplateResponse>
      createVerificationTemplate_Pre($grpc.ServiceCall call,
          $async.Future<$4.CreateVerificationTemplateRequest> request) async {
    return createVerificationTemplate(call, await request);
  }

  $async.Future<$4.ListVerificationTemplatesResponse>
      listVerificationTemplates_Pre($grpc.ServiceCall call,
          $async.Future<$4.ListVerificationTemplatesRequest> request) async {
    return listVerificationTemplates(call, await request);
  }

  $async.Future<$4.GetVerificationTemplateResponse> getVerificationTemplate_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.GetVerificationTemplateRequest> request) async {
    return getVerificationTemplate(call, await request);
  }

  $async.Future<$4.UpdateVerificationTemplateResponse>
      updateVerificationTemplate_Pre($grpc.ServiceCall call,
          $async.Future<$4.UpdateVerificationTemplateRequest> request) async {
    return updateVerificationTemplate(call, await request);
  }

  $async.Future<$4.DeleteVerificationTemplateResponse>
      deleteVerificationTemplate_Pre($grpc.ServiceCall call,
          $async.Future<$4.DeleteVerificationTemplateRequest> request) async {
    return deleteVerificationTemplate(call, await request);
  }

  $async.Future<$4.CreateCredentialTemplateResponse> create(
      $grpc.ServiceCall call, $4.CreateCredentialTemplateRequest request);
  $async.Future<$4.GetCredentialTemplateResponse> get(
      $grpc.ServiceCall call, $4.GetCredentialTemplateRequest request);
  $async.Future<$4.UpdateCredentialTemplateResponse> update(
      $grpc.ServiceCall call, $4.UpdateCredentialTemplateRequest request);
  $async.Future<$4.ListCredentialTemplatesResponse> list(
      $grpc.ServiceCall call, $4.ListCredentialTemplatesRequest request);
  $async.Future<$4.SearchCredentialTemplatesResponse> search(
      $grpc.ServiceCall call, $4.SearchCredentialTemplatesRequest request);
  $async.Future<$4.DeleteCredentialTemplateResponse> delete(
      $grpc.ServiceCall call, $4.DeleteCredentialTemplateRequest request);
  $async.Future<$4.CreateVerificationTemplateResponse>
      createVerificationTemplate(
          $grpc.ServiceCall call, $4.CreateVerificationTemplateRequest request);
  $async.Future<$4.ListVerificationTemplatesResponse> listVerificationTemplates(
      $grpc.ServiceCall call, $4.ListVerificationTemplatesRequest request);
  $async.Future<$4.GetVerificationTemplateResponse> getVerificationTemplate(
      $grpc.ServiceCall call, $4.GetVerificationTemplateRequest request);
  $async.Future<$4.UpdateVerificationTemplateResponse>
      updateVerificationTemplate(
          $grpc.ServiceCall call, $4.UpdateVerificationTemplateRequest request);
  $async.Future<$4.DeleteVerificationTemplateResponse>
      deleteVerificationTemplate(
          $grpc.ServiceCall call, $4.DeleteVerificationTemplateRequest request);
}
