///
//  Generated code. Do not modify.
//  source: services/verifiable-credentials/v1/verifiable-credentials.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'verifiable-credentials.pb.dart' as $1;
export 'verifiable-credentials.pb.dart';

class VerifiableCredentialClient extends $grpc.Client {
  static final _$issue = $grpc.ClientMethod<$1.IssueRequest, $1.IssueResponse>(
      '/services.verifiablecredentials.v1.VerifiableCredential/Issue',
      ($1.IssueRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.IssueResponse.fromBuffer(value));
  static final _$issueFromTemplate = $grpc.ClientMethod<
          $1.IssueFromTemplateRequest, $1.IssueFromTemplateResponse>(
      '/services.verifiablecredentials.v1.VerifiableCredential/IssueFromTemplate',
      ($1.IssueFromTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.IssueFromTemplateResponse.fromBuffer(value));
  static final _$checkStatus =
      $grpc.ClientMethod<$1.CheckStatusRequest, $1.CheckStatusResponse>(
          '/services.verifiablecredentials.v1.VerifiableCredential/CheckStatus',
          ($1.CheckStatusRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.CheckStatusResponse.fromBuffer(value));
  static final _$updateStatus = $grpc.ClientMethod<$1.UpdateStatusRequest,
          $1.UpdateStatusResponse>(
      '/services.verifiablecredentials.v1.VerifiableCredential/UpdateStatus',
      ($1.UpdateStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.UpdateStatusResponse.fromBuffer(value));
  static final _$createProof =
      $grpc.ClientMethod<$1.CreateProofRequest, $1.CreateProofResponse>(
          '/services.verifiablecredentials.v1.VerifiableCredential/CreateProof',
          ($1.CreateProofRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.CreateProofResponse.fromBuffer(value));
  static final _$verifyProof =
      $grpc.ClientMethod<$1.VerifyProofRequest, $1.VerifyProofResponse>(
          '/services.verifiablecredentials.v1.VerifiableCredential/VerifyProof',
          ($1.VerifyProofRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.VerifyProofResponse.fromBuffer(value));
  static final _$send = $grpc.ClientMethod<$1.SendRequest, $1.SendResponse>(
      '/services.verifiablecredentials.v1.VerifiableCredential/Send',
      ($1.SendRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.SendResponse.fromBuffer(value));

  VerifiableCredentialClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.IssueResponse> issue($1.IssueRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$issue, request, options: options);
  }

  $grpc.ResponseFuture<$1.IssueFromTemplateResponse> issueFromTemplate(
      $1.IssueFromTemplateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$issueFromTemplate, request, options: options);
  }

  $grpc.ResponseFuture<$1.CheckStatusResponse> checkStatus(
      $1.CheckStatusRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$checkStatus, request, options: options);
  }

  $grpc.ResponseFuture<$1.UpdateStatusResponse> updateStatus(
      $1.UpdateStatusRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateStatus, request, options: options);
  }

  $grpc.ResponseFuture<$1.CreateProofResponse> createProof(
      $1.CreateProofRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createProof, request, options: options);
  }

  $grpc.ResponseFuture<$1.VerifyProofResponse> verifyProof(
      $1.VerifyProofRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$verifyProof, request, options: options);
  }

  $grpc.ResponseFuture<$1.SendResponse> send($1.SendRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$send, request, options: options);
  }
}

abstract class VerifiableCredentialServiceBase extends $grpc.Service {
  $core.String get $name =>
      'services.verifiablecredentials.v1.VerifiableCredential';

  VerifiableCredentialServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.IssueRequest, $1.IssueResponse>(
        'Issue',
        issue_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.IssueRequest.fromBuffer(value),
        ($1.IssueResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.IssueFromTemplateRequest,
            $1.IssueFromTemplateResponse>(
        'IssueFromTemplate',
        issueFromTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.IssueFromTemplateRequest.fromBuffer(value),
        ($1.IssueFromTemplateResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.CheckStatusRequest, $1.CheckStatusResponse>(
            'CheckStatus',
            checkStatus_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.CheckStatusRequest.fromBuffer(value),
            ($1.CheckStatusResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.UpdateStatusRequest, $1.UpdateStatusResponse>(
            'UpdateStatus',
            updateStatus_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.UpdateStatusRequest.fromBuffer(value),
            ($1.UpdateStatusResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.CreateProofRequest, $1.CreateProofResponse>(
            'CreateProof',
            createProof_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.CreateProofRequest.fromBuffer(value),
            ($1.CreateProofResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.VerifyProofRequest, $1.VerifyProofResponse>(
            'VerifyProof',
            verifyProof_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.VerifyProofRequest.fromBuffer(value),
            ($1.VerifyProofResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.SendRequest, $1.SendResponse>(
        'Send',
        send_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.SendRequest.fromBuffer(value),
        ($1.SendResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.IssueResponse> issue_Pre(
      $grpc.ServiceCall call, $async.Future<$1.IssueRequest> request) async {
    return issue(call, await request);
  }

  $async.Future<$1.IssueFromTemplateResponse> issueFromTemplate_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.IssueFromTemplateRequest> request) async {
    return issueFromTemplate(call, await request);
  }

  $async.Future<$1.CheckStatusResponse> checkStatus_Pre($grpc.ServiceCall call,
      $async.Future<$1.CheckStatusRequest> request) async {
    return checkStatus(call, await request);
  }

  $async.Future<$1.UpdateStatusResponse> updateStatus_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.UpdateStatusRequest> request) async {
    return updateStatus(call, await request);
  }

  $async.Future<$1.CreateProofResponse> createProof_Pre($grpc.ServiceCall call,
      $async.Future<$1.CreateProofRequest> request) async {
    return createProof(call, await request);
  }

  $async.Future<$1.VerifyProofResponse> verifyProof_Pre($grpc.ServiceCall call,
      $async.Future<$1.VerifyProofRequest> request) async {
    return verifyProof(call, await request);
  }

  $async.Future<$1.SendResponse> send_Pre(
      $grpc.ServiceCall call, $async.Future<$1.SendRequest> request) async {
    return send(call, await request);
  }

  $async.Future<$1.IssueResponse> issue(
      $grpc.ServiceCall call, $1.IssueRequest request);
  $async.Future<$1.IssueFromTemplateResponse> issueFromTemplate(
      $grpc.ServiceCall call, $1.IssueFromTemplateRequest request);
  $async.Future<$1.CheckStatusResponse> checkStatus(
      $grpc.ServiceCall call, $1.CheckStatusRequest request);
  $async.Future<$1.UpdateStatusResponse> updateStatus(
      $grpc.ServiceCall call, $1.UpdateStatusRequest request);
  $async.Future<$1.CreateProofResponse> createProof(
      $grpc.ServiceCall call, $1.CreateProofRequest request);
  $async.Future<$1.VerifyProofResponse> verifyProof(
      $grpc.ServiceCall call, $1.VerifyProofRequest request);
  $async.Future<$1.SendResponse> send(
      $grpc.ServiceCall call, $1.SendRequest request);
}
