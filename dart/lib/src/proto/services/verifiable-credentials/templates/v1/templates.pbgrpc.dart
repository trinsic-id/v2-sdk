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

import 'templates.pb.dart' as $5;

export 'templates.pb.dart';

@$pb.GrpcServiceName(
    'services.verifiablecredentials.templates.v1.CredentialTemplates')
class CredentialTemplatesClient extends $grpc.Client {
  static final _$create = $grpc.ClientMethod<$5.CreateCredentialTemplateRequest,
          $5.CreateCredentialTemplateResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/Create',
      ($5.CreateCredentialTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.CreateCredentialTemplateResponse.fromBuffer(value));
  static final _$get = $grpc.ClientMethod<$5.GetCredentialTemplateRequest,
          $5.GetCredentialTemplateResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/Get',
      ($5.GetCredentialTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.GetCredentialTemplateResponse.fromBuffer(value));
  static final _$update = $grpc.ClientMethod<$5.UpdateCredentialTemplateRequest,
          $5.UpdateCredentialTemplateResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/Update',
      ($5.UpdateCredentialTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.UpdateCredentialTemplateResponse.fromBuffer(value));
  static final _$list = $grpc.ClientMethod<$5.ListCredentialTemplatesRequest,
          $5.ListCredentialTemplatesResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/List',
      ($5.ListCredentialTemplatesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.ListCredentialTemplatesResponse.fromBuffer(value));
  static final _$search = $grpc.ClientMethod<
          $5.SearchCredentialTemplatesRequest,
          $5.SearchCredentialTemplatesResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/Search',
      ($5.SearchCredentialTemplatesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.SearchCredentialTemplatesResponse.fromBuffer(value));
  static final _$delete = $grpc.ClientMethod<$5.DeleteCredentialTemplateRequest,
          $5.DeleteCredentialTemplateResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/Delete',
      ($5.DeleteCredentialTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.DeleteCredentialTemplateResponse.fromBuffer(value));
  static final _$createVerificationTemplate = $grpc.ClientMethod<
          $5.CreateVerificationTemplateRequest,
          $5.CreateVerificationTemplateResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/CreateVerificationTemplate',
      ($5.CreateVerificationTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.CreateVerificationTemplateResponse.fromBuffer(value));
  static final _$listVerificationTemplate = $grpc.ClientMethod<
          $5.ListVerificationTemplatesRequest,
          $5.ListVerificationTemplatesResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/ListVerificationTemplate',
      ($5.ListVerificationTemplatesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.ListVerificationTemplatesResponse.fromBuffer(value));
  static final _$updateVerificationTemplate = $grpc.ClientMethod<
          $5.UpdateVerificationTemplateRequest,
          $5.UpdateVerificationTemplateResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/UpdateVerificationTemplate',
      ($5.UpdateVerificationTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.UpdateVerificationTemplateResponse.fromBuffer(value));
  static final _$deleteVerificationTemplate = $grpc.ClientMethod<
          $5.DeleteVerificationTemplateRequest,
          $5.DeleteVerificationTemplateResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/DeleteVerificationTemplate',
      ($5.DeleteVerificationTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.DeleteVerificationTemplateResponse.fromBuffer(value));

  CredentialTemplatesClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$5.CreateCredentialTemplateResponse> create(
      $5.CreateCredentialTemplateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$5.GetCredentialTemplateResponse> get(
      $5.GetCredentialTemplateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$get, request, options: options);
  }

  $grpc.ResponseFuture<$5.UpdateCredentialTemplateResponse> update(
      $5.UpdateCredentialTemplateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
  }

  $grpc.ResponseFuture<$5.ListCredentialTemplatesResponse> list(
      $5.ListCredentialTemplatesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$list, request, options: options);
  }

  $grpc.ResponseFuture<$5.SearchCredentialTemplatesResponse> search(
      $5.SearchCredentialTemplatesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$search, request, options: options);
  }

  $grpc.ResponseFuture<$5.DeleteCredentialTemplateResponse> delete(
      $5.DeleteCredentialTemplateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete, request, options: options);
  }

  $grpc.ResponseFuture<$5.CreateVerificationTemplateResponse>
      createVerificationTemplate($5.CreateVerificationTemplateRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createVerificationTemplate, request,
        options: options);
  }

  $grpc.ResponseFuture<$5.ListVerificationTemplatesResponse>
      listVerificationTemplate($5.ListVerificationTemplatesRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listVerificationTemplate, request,
        options: options);
  }

  $grpc.ResponseFuture<$5.UpdateVerificationTemplateResponse>
      updateVerificationTemplate($5.UpdateVerificationTemplateRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateVerificationTemplate, request,
        options: options);
  }

  $grpc.ResponseFuture<$5.DeleteVerificationTemplateResponse>
      deleteVerificationTemplate($5.DeleteVerificationTemplateRequest request,
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
    $addMethod($grpc.ServiceMethod<$5.CreateCredentialTemplateRequest,
            $5.CreateCredentialTemplateResponse>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.CreateCredentialTemplateRequest.fromBuffer(value),
        ($5.CreateCredentialTemplateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.GetCredentialTemplateRequest,
            $5.GetCredentialTemplateResponse>(
        'Get',
        get_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.GetCredentialTemplateRequest.fromBuffer(value),
        ($5.GetCredentialTemplateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UpdateCredentialTemplateRequest,
            $5.UpdateCredentialTemplateResponse>(
        'Update',
        update_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.UpdateCredentialTemplateRequest.fromBuffer(value),
        ($5.UpdateCredentialTemplateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.ListCredentialTemplatesRequest,
            $5.ListCredentialTemplatesResponse>(
        'List',
        list_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.ListCredentialTemplatesRequest.fromBuffer(value),
        ($5.ListCredentialTemplatesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.SearchCredentialTemplatesRequest,
            $5.SearchCredentialTemplatesResponse>(
        'Search',
        search_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.SearchCredentialTemplatesRequest.fromBuffer(value),
        ($5.SearchCredentialTemplatesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.DeleteCredentialTemplateRequest,
            $5.DeleteCredentialTemplateResponse>(
        'Delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.DeleteCredentialTemplateRequest.fromBuffer(value),
        ($5.DeleteCredentialTemplateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.CreateVerificationTemplateRequest,
            $5.CreateVerificationTemplateResponse>(
        'CreateVerificationTemplate',
        createVerificationTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.CreateVerificationTemplateRequest.fromBuffer(value),
        ($5.CreateVerificationTemplateResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.ListVerificationTemplatesRequest,
            $5.ListVerificationTemplatesResponse>(
        'ListVerificationTemplate',
        listVerificationTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.ListVerificationTemplatesRequest.fromBuffer(value),
        ($5.ListVerificationTemplatesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UpdateVerificationTemplateRequest,
            $5.UpdateVerificationTemplateResponse>(
        'UpdateVerificationTemplate',
        updateVerificationTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.UpdateVerificationTemplateRequest.fromBuffer(value),
        ($5.UpdateVerificationTemplateResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.DeleteVerificationTemplateRequest,
            $5.DeleteVerificationTemplateResponse>(
        'DeleteVerificationTemplate',
        deleteVerificationTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.DeleteVerificationTemplateRequest.fromBuffer(value),
        ($5.DeleteVerificationTemplateResponse value) =>
            value.writeToBuffer()));
  }

  $async.Future<$5.CreateCredentialTemplateResponse> create_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.CreateCredentialTemplateRequest> request) async {
    return create(call, await request);
  }

  $async.Future<$5.GetCredentialTemplateResponse> get_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.GetCredentialTemplateRequest> request) async {
    return get(call, await request);
  }

  $async.Future<$5.UpdateCredentialTemplateResponse> update_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.UpdateCredentialTemplateRequest> request) async {
    return update(call, await request);
  }

  $async.Future<$5.ListCredentialTemplatesResponse> list_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.ListCredentialTemplatesRequest> request) async {
    return list(call, await request);
  }

  $async.Future<$5.SearchCredentialTemplatesResponse> search_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.SearchCredentialTemplatesRequest> request) async {
    return search(call, await request);
  }

  $async.Future<$5.DeleteCredentialTemplateResponse> delete_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.DeleteCredentialTemplateRequest> request) async {
    return delete(call, await request);
  }

  $async.Future<$5.CreateVerificationTemplateResponse>
      createVerificationTemplate_Pre($grpc.ServiceCall call,
          $async.Future<$5.CreateVerificationTemplateRequest> request) async {
    return createVerificationTemplate(call, await request);
  }

  $async.Future<$5.ListVerificationTemplatesResponse>
      listVerificationTemplate_Pre($grpc.ServiceCall call,
          $async.Future<$5.ListVerificationTemplatesRequest> request) async {
    return listVerificationTemplate(call, await request);
  }

  $async.Future<$5.UpdateVerificationTemplateResponse>
      updateVerificationTemplate_Pre($grpc.ServiceCall call,
          $async.Future<$5.UpdateVerificationTemplateRequest> request) async {
    return updateVerificationTemplate(call, await request);
  }

  $async.Future<$5.DeleteVerificationTemplateResponse>
      deleteVerificationTemplate_Pre($grpc.ServiceCall call,
          $async.Future<$5.DeleteVerificationTemplateRequest> request) async {
    return deleteVerificationTemplate(call, await request);
  }

  $async.Future<$5.CreateCredentialTemplateResponse> create(
      $grpc.ServiceCall call, $5.CreateCredentialTemplateRequest request);
  $async.Future<$5.GetCredentialTemplateResponse> get(
      $grpc.ServiceCall call, $5.GetCredentialTemplateRequest request);
  $async.Future<$5.UpdateCredentialTemplateResponse> update(
      $grpc.ServiceCall call, $5.UpdateCredentialTemplateRequest request);
  $async.Future<$5.ListCredentialTemplatesResponse> list(
      $grpc.ServiceCall call, $5.ListCredentialTemplatesRequest request);
  $async.Future<$5.SearchCredentialTemplatesResponse> search(
      $grpc.ServiceCall call, $5.SearchCredentialTemplatesRequest request);
  $async.Future<$5.DeleteCredentialTemplateResponse> delete(
      $grpc.ServiceCall call, $5.DeleteCredentialTemplateRequest request);
  $async.Future<$5.CreateVerificationTemplateResponse>
      createVerificationTemplate(
          $grpc.ServiceCall call, $5.CreateVerificationTemplateRequest request);
  $async.Future<$5.ListVerificationTemplatesResponse> listVerificationTemplate(
      $grpc.ServiceCall call, $5.ListVerificationTemplatesRequest request);
  $async.Future<$5.UpdateVerificationTemplateResponse>
      updateVerificationTemplate(
          $grpc.ServiceCall call, $5.UpdateVerificationTemplateRequest request);
  $async.Future<$5.DeleteVerificationTemplateResponse>
      deleteVerificationTemplate(
          $grpc.ServiceCall call, $5.DeleteVerificationTemplateRequest request);
}
