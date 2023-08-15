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

import 'templates.pb.dart' as $0;

export 'templates.pb.dart';

@$pb.GrpcServiceName(
    'services.verifiablecredentials.templates.v1.CredentialTemplates')
class CredentialTemplatesClient extends $grpc.Client {
  static final _$create = $grpc.ClientMethod<$0.CreateCredentialTemplateRequest,
          $0.CreateCredentialTemplateResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/Create',
      ($0.CreateCredentialTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.CreateCredentialTemplateResponse.fromBuffer(value));
  static final _$get = $grpc.ClientMethod<$0.GetCredentialTemplateRequest,
          $0.GetCredentialTemplateResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/Get',
      ($0.GetCredentialTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.GetCredentialTemplateResponse.fromBuffer(value));
  static final _$update = $grpc.ClientMethod<$0.UpdateCredentialTemplateRequest,
          $0.UpdateCredentialTemplateResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/Update',
      ($0.UpdateCredentialTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.UpdateCredentialTemplateResponse.fromBuffer(value));
  static final _$list = $grpc.ClientMethod<$0.ListCredentialTemplatesRequest,
          $0.ListCredentialTemplatesResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/List',
      ($0.ListCredentialTemplatesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.ListCredentialTemplatesResponse.fromBuffer(value));
  static final _$search = $grpc.ClientMethod<
          $0.SearchCredentialTemplatesRequest,
          $0.SearchCredentialTemplatesResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/Search',
      ($0.SearchCredentialTemplatesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.SearchCredentialTemplatesResponse.fromBuffer(value));
  static final _$delete = $grpc.ClientMethod<$0.DeleteCredentialTemplateRequest,
          $0.DeleteCredentialTemplateResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/Delete',
      ($0.DeleteCredentialTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.DeleteCredentialTemplateResponse.fromBuffer(value));
  static final _$createVerificationTemplate = $grpc.ClientMethod<
          $0.CreateVerificationTemplateRequest,
          $0.CreateVerificationTemplateResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/CreateVerificationTemplate',
      ($0.CreateVerificationTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.CreateVerificationTemplateResponse.fromBuffer(value));
  static final _$listVerificationTemplates = $grpc.ClientMethod<
          $0.ListVerificationTemplatesRequest,
          $0.ListVerificationTemplatesResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/ListVerificationTemplates',
      ($0.ListVerificationTemplatesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.ListVerificationTemplatesResponse.fromBuffer(value));
  static final _$getVerificationTemplate = $grpc.ClientMethod<
          $0.GetVerificationTemplateRequest,
          $0.GetVerificationTemplateResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/GetVerificationTemplate',
      ($0.GetVerificationTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.GetVerificationTemplateResponse.fromBuffer(value));
  static final _$updateVerificationTemplate = $grpc.ClientMethod<
          $0.UpdateVerificationTemplateRequest,
          $0.UpdateVerificationTemplateResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/UpdateVerificationTemplate',
      ($0.UpdateVerificationTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.UpdateVerificationTemplateResponse.fromBuffer(value));
  static final _$deleteVerificationTemplate = $grpc.ClientMethod<
          $0.DeleteVerificationTemplateRequest,
          $0.DeleteVerificationTemplateResponse>(
      '/services.verifiablecredentials.templates.v1.CredentialTemplates/DeleteVerificationTemplate',
      ($0.DeleteVerificationTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.DeleteVerificationTemplateResponse.fromBuffer(value));

  CredentialTemplatesClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.CreateCredentialTemplateResponse> create(
      $0.CreateCredentialTemplateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetCredentialTemplateResponse> get(
      $0.GetCredentialTemplateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$get, request, options: options);
  }

  $grpc.ResponseFuture<$0.UpdateCredentialTemplateResponse> update(
      $0.UpdateCredentialTemplateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListCredentialTemplatesResponse> list(
      $0.ListCredentialTemplatesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$list, request, options: options);
  }

  $grpc.ResponseFuture<$0.SearchCredentialTemplatesResponse> search(
      $0.SearchCredentialTemplatesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$search, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeleteCredentialTemplateResponse> delete(
      $0.DeleteCredentialTemplateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete, request, options: options);
  }

  $grpc.ResponseFuture<$0.CreateVerificationTemplateResponse>
      createVerificationTemplate($0.CreateVerificationTemplateRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createVerificationTemplate, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.ListVerificationTemplatesResponse>
      listVerificationTemplates($0.ListVerificationTemplatesRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listVerificationTemplates, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.GetVerificationTemplateResponse>
      getVerificationTemplate($0.GetVerificationTemplateRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getVerificationTemplate, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.UpdateVerificationTemplateResponse>
      updateVerificationTemplate($0.UpdateVerificationTemplateRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateVerificationTemplate, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.DeleteVerificationTemplateResponse>
      deleteVerificationTemplate($0.DeleteVerificationTemplateRequest request,
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
    $addMethod($grpc.ServiceMethod<$0.CreateCredentialTemplateRequest,
            $0.CreateCredentialTemplateResponse>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CreateCredentialTemplateRequest.fromBuffer(value),
        ($0.CreateCredentialTemplateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetCredentialTemplateRequest,
            $0.GetCredentialTemplateResponse>(
        'Get',
        get_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetCredentialTemplateRequest.fromBuffer(value),
        ($0.GetCredentialTemplateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateCredentialTemplateRequest,
            $0.UpdateCredentialTemplateResponse>(
        'Update',
        update_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.UpdateCredentialTemplateRequest.fromBuffer(value),
        ($0.UpdateCredentialTemplateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListCredentialTemplatesRequest,
            $0.ListCredentialTemplatesResponse>(
        'List',
        list_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ListCredentialTemplatesRequest.fromBuffer(value),
        ($0.ListCredentialTemplatesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SearchCredentialTemplatesRequest,
            $0.SearchCredentialTemplatesResponse>(
        'Search',
        search_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.SearchCredentialTemplatesRequest.fromBuffer(value),
        ($0.SearchCredentialTemplatesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteCredentialTemplateRequest,
            $0.DeleteCredentialTemplateResponse>(
        'Delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.DeleteCredentialTemplateRequest.fromBuffer(value),
        ($0.DeleteCredentialTemplateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CreateVerificationTemplateRequest,
            $0.CreateVerificationTemplateResponse>(
        'CreateVerificationTemplate',
        createVerificationTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CreateVerificationTemplateRequest.fromBuffer(value),
        ($0.CreateVerificationTemplateResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListVerificationTemplatesRequest,
            $0.ListVerificationTemplatesResponse>(
        'ListVerificationTemplates',
        listVerificationTemplates_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ListVerificationTemplatesRequest.fromBuffer(value),
        ($0.ListVerificationTemplatesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetVerificationTemplateRequest,
            $0.GetVerificationTemplateResponse>(
        'GetVerificationTemplate',
        getVerificationTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetVerificationTemplateRequest.fromBuffer(value),
        ($0.GetVerificationTemplateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateVerificationTemplateRequest,
            $0.UpdateVerificationTemplateResponse>(
        'UpdateVerificationTemplate',
        updateVerificationTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.UpdateVerificationTemplateRequest.fromBuffer(value),
        ($0.UpdateVerificationTemplateResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteVerificationTemplateRequest,
            $0.DeleteVerificationTemplateResponse>(
        'DeleteVerificationTemplate',
        deleteVerificationTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.DeleteVerificationTemplateRequest.fromBuffer(value),
        ($0.DeleteVerificationTemplateResponse value) =>
            value.writeToBuffer()));
  }

  $async.Future<$0.CreateCredentialTemplateResponse> create_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.CreateCredentialTemplateRequest> request) async {
    return create(call, await request);
  }

  $async.Future<$0.GetCredentialTemplateResponse> get_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetCredentialTemplateRequest> request) async {
    return get(call, await request);
  }

  $async.Future<$0.UpdateCredentialTemplateResponse> update_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.UpdateCredentialTemplateRequest> request) async {
    return update(call, await request);
  }

  $async.Future<$0.ListCredentialTemplatesResponse> list_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ListCredentialTemplatesRequest> request) async {
    return list(call, await request);
  }

  $async.Future<$0.SearchCredentialTemplatesResponse> search_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.SearchCredentialTemplatesRequest> request) async {
    return search(call, await request);
  }

  $async.Future<$0.DeleteCredentialTemplateResponse> delete_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.DeleteCredentialTemplateRequest> request) async {
    return delete(call, await request);
  }

  $async.Future<$0.CreateVerificationTemplateResponse>
      createVerificationTemplate_Pre($grpc.ServiceCall call,
          $async.Future<$0.CreateVerificationTemplateRequest> request) async {
    return createVerificationTemplate(call, await request);
  }

  $async.Future<$0.ListVerificationTemplatesResponse>
      listVerificationTemplates_Pre($grpc.ServiceCall call,
          $async.Future<$0.ListVerificationTemplatesRequest> request) async {
    return listVerificationTemplates(call, await request);
  }

  $async.Future<$0.GetVerificationTemplateResponse> getVerificationTemplate_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetVerificationTemplateRequest> request) async {
    return getVerificationTemplate(call, await request);
  }

  $async.Future<$0.UpdateVerificationTemplateResponse>
      updateVerificationTemplate_Pre($grpc.ServiceCall call,
          $async.Future<$0.UpdateVerificationTemplateRequest> request) async {
    return updateVerificationTemplate(call, await request);
  }

  $async.Future<$0.DeleteVerificationTemplateResponse>
      deleteVerificationTemplate_Pre($grpc.ServiceCall call,
          $async.Future<$0.DeleteVerificationTemplateRequest> request) async {
    return deleteVerificationTemplate(call, await request);
  }

  $async.Future<$0.CreateCredentialTemplateResponse> create(
      $grpc.ServiceCall call, $0.CreateCredentialTemplateRequest request);
  $async.Future<$0.GetCredentialTemplateResponse> get(
      $grpc.ServiceCall call, $0.GetCredentialTemplateRequest request);
  $async.Future<$0.UpdateCredentialTemplateResponse> update(
      $grpc.ServiceCall call, $0.UpdateCredentialTemplateRequest request);
  $async.Future<$0.ListCredentialTemplatesResponse> list(
      $grpc.ServiceCall call, $0.ListCredentialTemplatesRequest request);
  $async.Future<$0.SearchCredentialTemplatesResponse> search(
      $grpc.ServiceCall call, $0.SearchCredentialTemplatesRequest request);
  $async.Future<$0.DeleteCredentialTemplateResponse> delete(
      $grpc.ServiceCall call, $0.DeleteCredentialTemplateRequest request);
  $async.Future<$0.CreateVerificationTemplateResponse>
      createVerificationTemplate(
          $grpc.ServiceCall call, $0.CreateVerificationTemplateRequest request);
  $async.Future<$0.ListVerificationTemplatesResponse> listVerificationTemplates(
      $grpc.ServiceCall call, $0.ListVerificationTemplatesRequest request);
  $async.Future<$0.GetVerificationTemplateResponse> getVerificationTemplate(
      $grpc.ServiceCall call, $0.GetVerificationTemplateRequest request);
  $async.Future<$0.UpdateVerificationTemplateResponse>
      updateVerificationTemplate(
          $grpc.ServiceCall call, $0.UpdateVerificationTemplateRequest request);
  $async.Future<$0.DeleteVerificationTemplateResponse>
      deleteVerificationTemplate(
          $grpc.ServiceCall call, $0.DeleteVerificationTemplateRequest request);
}
