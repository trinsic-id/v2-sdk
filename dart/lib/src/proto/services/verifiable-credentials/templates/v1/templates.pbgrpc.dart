//
//  Generated code. Do not modify.
//  source: services/verifiable-credentials/templates/v1/templates.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'templates.pb.dart' as $6;

export 'templates.pb.dart';

@$pb.GrpcServiceName(
    'services.verifiablecredentials.templates.v1.CredentialTemplates')
class CredentialTemplatesClient extends $grpc.Client {
  static final _$create = $grpc.ClientMethod<$6.CreateCredentialTemplateRequest,
          $6.CreateCredentialTemplateResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/Create',
      ($6.CreateCredentialTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.CreateCredentialTemplateResponse.fromBuffer(value));
  static final _$get = $grpc.ClientMethod<$6.GetCredentialTemplateRequest,
          $6.GetCredentialTemplateResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/Get',
      ($6.GetCredentialTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.GetCredentialTemplateResponse.fromBuffer(value));
  static final _$update = $grpc.ClientMethod<$6.UpdateCredentialTemplateRequest,
          $6.UpdateCredentialTemplateResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/Update',
      ($6.UpdateCredentialTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.UpdateCredentialTemplateResponse.fromBuffer(value));
  static final _$list = $grpc.ClientMethod<$6.ListCredentialTemplatesRequest,
          $6.ListCredentialTemplatesResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/List',
      ($6.ListCredentialTemplatesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.ListCredentialTemplatesResponse.fromBuffer(value));
  static final _$search = $grpc.ClientMethod<
          $6.SearchCredentialTemplatesRequest,
          $6.SearchCredentialTemplatesResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/Search',
      ($6.SearchCredentialTemplatesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.SearchCredentialTemplatesResponse.fromBuffer(value));
  static final _$delete = $grpc.ClientMethod<$6.DeleteCredentialTemplateRequest,
          $6.DeleteCredentialTemplateResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/Delete',
      ($6.DeleteCredentialTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.DeleteCredentialTemplateResponse.fromBuffer(value));
  static final _$createVerificationTemplate = $grpc.ClientMethod<
          $6.CreateVerificationTemplateRequest,
          $6.CreateVerificationTemplateResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/CreateVerificationTemplate',
      ($6.CreateVerificationTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.CreateVerificationTemplateResponse.fromBuffer(value));
  static final _$listVerificationTemplates = $grpc.ClientMethod<
          $6.ListVerificationTemplatesRequest,
          $6.ListVerificationTemplatesResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/ListVerificationTemplates',
      ($6.ListVerificationTemplatesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.ListVerificationTemplatesResponse.fromBuffer(value));
  static final _$getVerificationTemplate = $grpc.ClientMethod<
          $6.GetVerificationTemplateRequest,
          $6.GetVerificationTemplateResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/GetVerificationTemplate',
      ($6.GetVerificationTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.GetVerificationTemplateResponse.fromBuffer(value));
  static final _$updateVerificationTemplate = $grpc.ClientMethod<
          $6.UpdateVerificationTemplateRequest,
          $6.UpdateVerificationTemplateResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/UpdateVerificationTemplate',
      ($6.UpdateVerificationTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.UpdateVerificationTemplateResponse.fromBuffer(value));
  static final _$deleteVerificationTemplate = $grpc.ClientMethod<
          $6.DeleteVerificationTemplateRequest,
          $6.DeleteVerificationTemplateResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/DeleteVerificationTemplate',
      ($6.DeleteVerificationTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.DeleteVerificationTemplateResponse.fromBuffer(value));

  CredentialTemplatesClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$6.CreateCredentialTemplateResponse> create(
      $6.CreateCredentialTemplateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$6.GetCredentialTemplateResponse> get(
      $6.GetCredentialTemplateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$get, request, options: options);
  }

  $grpc.ResponseFuture<$6.UpdateCredentialTemplateResponse> update(
      $6.UpdateCredentialTemplateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
  }

  $grpc.ResponseFuture<$6.ListCredentialTemplatesResponse> list(
      $6.ListCredentialTemplatesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$list, request, options: options);
  }

  $grpc.ResponseFuture<$6.SearchCredentialTemplatesResponse> search(
      $6.SearchCredentialTemplatesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$search, request, options: options);
  }

  $grpc.ResponseFuture<$6.DeleteCredentialTemplateResponse> delete(
      $6.DeleteCredentialTemplateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete, request, options: options);
  }

  $grpc.ResponseFuture<$6.CreateVerificationTemplateResponse>
      createVerificationTemplate($6.CreateVerificationTemplateRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createVerificationTemplate, request,
        options: options);
  }

  $grpc.ResponseFuture<$6.ListVerificationTemplatesResponse>
      listVerificationTemplates($6.ListVerificationTemplatesRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listVerificationTemplates, request,
        options: options);
  }

  $grpc.ResponseFuture<$6.GetVerificationTemplateResponse>
      getVerificationTemplate($6.GetVerificationTemplateRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getVerificationTemplate, request,
        options: options);
  }

  $grpc.ResponseFuture<$6.UpdateVerificationTemplateResponse>
      updateVerificationTemplate($6.UpdateVerificationTemplateRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateVerificationTemplate, request,
        options: options);
  }

  $grpc.ResponseFuture<$6.DeleteVerificationTemplateResponse>
      deleteVerificationTemplate($6.DeleteVerificationTemplateRequest request,
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
    $addMethod($grpc.ServiceMethod<$6.CreateCredentialTemplateRequest,
            $6.CreateCredentialTemplateResponse>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.CreateCredentialTemplateRequest.fromBuffer(value),
        ($6.CreateCredentialTemplateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.GetCredentialTemplateRequest,
            $6.GetCredentialTemplateResponse>(
        'Get',
        get_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.GetCredentialTemplateRequest.fromBuffer(value),
        ($6.GetCredentialTemplateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.UpdateCredentialTemplateRequest,
            $6.UpdateCredentialTemplateResponse>(
        'Update',
        update_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.UpdateCredentialTemplateRequest.fromBuffer(value),
        ($6.UpdateCredentialTemplateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.ListCredentialTemplatesRequest,
            $6.ListCredentialTemplatesResponse>(
        'List',
        list_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.ListCredentialTemplatesRequest.fromBuffer(value),
        ($6.ListCredentialTemplatesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.SearchCredentialTemplatesRequest,
            $6.SearchCredentialTemplatesResponse>(
        'Search',
        search_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.SearchCredentialTemplatesRequest.fromBuffer(value),
        ($6.SearchCredentialTemplatesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.DeleteCredentialTemplateRequest,
            $6.DeleteCredentialTemplateResponse>(
        'Delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.DeleteCredentialTemplateRequest.fromBuffer(value),
        ($6.DeleteCredentialTemplateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.CreateVerificationTemplateRequest,
            $6.CreateVerificationTemplateResponse>(
        'CreateVerificationTemplate',
        createVerificationTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.CreateVerificationTemplateRequest.fromBuffer(value),
        ($6.CreateVerificationTemplateResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.ListVerificationTemplatesRequest,
            $6.ListVerificationTemplatesResponse>(
        'ListVerificationTemplates',
        listVerificationTemplates_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.ListVerificationTemplatesRequest.fromBuffer(value),
        ($6.ListVerificationTemplatesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.GetVerificationTemplateRequest,
            $6.GetVerificationTemplateResponse>(
        'GetVerificationTemplate',
        getVerificationTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.GetVerificationTemplateRequest.fromBuffer(value),
        ($6.GetVerificationTemplateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.UpdateVerificationTemplateRequest,
            $6.UpdateVerificationTemplateResponse>(
        'UpdateVerificationTemplate',
        updateVerificationTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.UpdateVerificationTemplateRequest.fromBuffer(value),
        ($6.UpdateVerificationTemplateResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.DeleteVerificationTemplateRequest,
            $6.DeleteVerificationTemplateResponse>(
        'DeleteVerificationTemplate',
        deleteVerificationTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.DeleteVerificationTemplateRequest.fromBuffer(value),
        ($6.DeleteVerificationTemplateResponse value) =>
            value.writeToBuffer()));
  }

  $async.Future<$6.CreateCredentialTemplateResponse> create_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.CreateCredentialTemplateRequest> request) async {
    return create(call, await request);
  }

  $async.Future<$6.GetCredentialTemplateResponse> get_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.GetCredentialTemplateRequest> request) async {
    return get(call, await request);
  }

  $async.Future<$6.UpdateCredentialTemplateResponse> update_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.UpdateCredentialTemplateRequest> request) async {
    return update(call, await request);
  }

  $async.Future<$6.ListCredentialTemplatesResponse> list_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.ListCredentialTemplatesRequest> request) async {
    return list(call, await request);
  }

  $async.Future<$6.SearchCredentialTemplatesResponse> search_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.SearchCredentialTemplatesRequest> request) async {
    return search(call, await request);
  }

  $async.Future<$6.DeleteCredentialTemplateResponse> delete_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.DeleteCredentialTemplateRequest> request) async {
    return delete(call, await request);
  }

  $async.Future<$6.CreateVerificationTemplateResponse>
      createVerificationTemplate_Pre($grpc.ServiceCall call,
          $async.Future<$6.CreateVerificationTemplateRequest> request) async {
    return createVerificationTemplate(call, await request);
  }

  $async.Future<$6.ListVerificationTemplatesResponse>
      listVerificationTemplates_Pre($grpc.ServiceCall call,
          $async.Future<$6.ListVerificationTemplatesRequest> request) async {
    return listVerificationTemplates(call, await request);
  }

  $async.Future<$6.GetVerificationTemplateResponse> getVerificationTemplate_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.GetVerificationTemplateRequest> request) async {
    return getVerificationTemplate(call, await request);
  }

  $async.Future<$6.UpdateVerificationTemplateResponse>
      updateVerificationTemplate_Pre($grpc.ServiceCall call,
          $async.Future<$6.UpdateVerificationTemplateRequest> request) async {
    return updateVerificationTemplate(call, await request);
  }

  $async.Future<$6.DeleteVerificationTemplateResponse>
      deleteVerificationTemplate_Pre($grpc.ServiceCall call,
          $async.Future<$6.DeleteVerificationTemplateRequest> request) async {
    return deleteVerificationTemplate(call, await request);
  }

  $async.Future<$6.CreateCredentialTemplateResponse> create(
      $grpc.ServiceCall call, $6.CreateCredentialTemplateRequest request);
  $async.Future<$6.GetCredentialTemplateResponse> get(
      $grpc.ServiceCall call, $6.GetCredentialTemplateRequest request);
  $async.Future<$6.UpdateCredentialTemplateResponse> update(
      $grpc.ServiceCall call, $6.UpdateCredentialTemplateRequest request);
  $async.Future<$6.ListCredentialTemplatesResponse> list(
      $grpc.ServiceCall call, $6.ListCredentialTemplatesRequest request);
  $async.Future<$6.SearchCredentialTemplatesResponse> search(
      $grpc.ServiceCall call, $6.SearchCredentialTemplatesRequest request);
  $async.Future<$6.DeleteCredentialTemplateResponse> delete(
      $grpc.ServiceCall call, $6.DeleteCredentialTemplateRequest request);
  $async.Future<$6.CreateVerificationTemplateResponse>
      createVerificationTemplate(
          $grpc.ServiceCall call, $6.CreateVerificationTemplateRequest request);
  $async.Future<$6.ListVerificationTemplatesResponse> listVerificationTemplates(
      $grpc.ServiceCall call, $6.ListVerificationTemplatesRequest request);
  $async.Future<$6.GetVerificationTemplateResponse> getVerificationTemplate(
      $grpc.ServiceCall call, $6.GetVerificationTemplateRequest request);
  $async.Future<$6.UpdateVerificationTemplateResponse>
      updateVerificationTemplate(
          $grpc.ServiceCall call, $6.UpdateVerificationTemplateRequest request);
  $async.Future<$6.DeleteVerificationTemplateResponse>
      deleteVerificationTemplate(
          $grpc.ServiceCall call, $6.DeleteVerificationTemplateRequest request);
}
