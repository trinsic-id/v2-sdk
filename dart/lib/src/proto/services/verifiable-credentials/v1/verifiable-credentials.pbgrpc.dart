///
//  Generated code. Do not modify.
//  source: services/verifiable-credentials/v1/verifiable-credentials.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'verifiable-credentials.pb.dart' as $3;
export 'verifiable-credentials.pb.dart';

class VerifiableCredentialClient extends $grpc.Client {
  static final _$issue = $grpc.ClientMethod<$3.IssueRequest, $3.IssueResponse>(
      '/services.verifiablecredentials.v1.VerifiableCredential/Issue',
      ($3.IssueRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.IssueResponse.fromBuffer(value));
  static final _$issueFromTemplate = $grpc.ClientMethod<
          $3.IssueFromTemplateRequest, $3.IssueFromTemplateResponse>(
      '/services.verifiablecredentials.v1.VerifiableCredential/IssueFromTemplate',
      ($3.IssueFromTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $3.IssueFromTemplateResponse.fromBuffer(value));
  static final _$checkStatus =
      $grpc.ClientMethod<$3.CheckStatusRequest, $3.CheckStatusResponse>(
          '/services.verifiablecredentials.v1.VerifiableCredential/CheckStatus',
          ($3.CheckStatusRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.CheckStatusResponse.fromBuffer(value));
  static final _$updateStatus = $grpc.ClientMethod<$3.UpdateStatusRequest,
          $3.UpdateStatusResponse>(
      '/services.verifiablecredentials.v1.VerifiableCredential/UpdateStatus',
      ($3.UpdateStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $3.UpdateStatusResponse.fromBuffer(value));
  static final _$createProof =
      $grpc.ClientMethod<$3.CreateProofRequest, $3.CreateProofResponse>(
          '/services.verifiablecredentials.v1.VerifiableCredential/CreateProof',
          ($3.CreateProofRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.CreateProofResponse.fromBuffer(value));
  static final _$verifyProof =
      $grpc.ClientMethod<$3.VerifyProofRequest, $3.VerifyProofResponse>(
          '/services.verifiablecredentials.v1.VerifiableCredential/VerifyProof',
          ($3.VerifyProofRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.VerifyProofResponse.fromBuffer(value));
  static final _$send = $grpc.ClientMethod<$3.SendRequest, $3.SendResponse>(
      '/services.verifiablecredentials.v1.VerifiableCredential/Send',
      ($3.SendRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.SendResponse.fromBuffer(value));

  VerifiableCredentialClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$3.IssueResponse> issue($3.IssueRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$issue, request, options: options);
  }

  $grpc.ResponseFuture<$3.IssueFromTemplateResponse> issueFromTemplate(
      $3.IssueFromTemplateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$issueFromTemplate, request, options: options);
  }

  $grpc.ResponseFuture<$3.CheckStatusResponse> checkStatus(
      $3.CheckStatusRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$checkStatus, request, options: options);
  }

  $grpc.ResponseFuture<$3.UpdateStatusResponse> updateStatus(
      $3.UpdateStatusRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateStatus, request, options: options);
  }

  $grpc.ResponseFuture<$3.CreateProofResponse> createProof(
      $3.CreateProofRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createProof, request, options: options);
  }

  $grpc.ResponseFuture<$3.VerifyProofResponse> verifyProof(
      $3.VerifyProofRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$verifyProof, request, options: options);
  }

  $grpc.ResponseFuture<$3.SendResponse> send($3.SendRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$send, request, options: options);
  }
}

abstract class VerifiableCredentialServiceBase extends $grpc.Service {
  $core.String get $name =>
      'services.verifiablecredentials.v1.VerifiableCredential';

  VerifiableCredentialServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.IssueRequest, $3.IssueResponse>(
        'Issue',
        issue_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.IssueRequest.fromBuffer(value),
        ($3.IssueResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.IssueFromTemplateRequest,
            $3.IssueFromTemplateResponse>(
        'IssueFromTemplate',
        issueFromTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $3.IssueFromTemplateRequest.fromBuffer(value),
        ($3.IssueFromTemplateResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$3.CheckStatusRequest, $3.CheckStatusResponse>(
            'CheckStatus',
            checkStatus_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $3.CheckStatusRequest.fromBuffer(value),
            ($3.CheckStatusResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$3.UpdateStatusRequest, $3.UpdateStatusResponse>(
            'UpdateStatus',
            updateStatus_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $3.UpdateStatusRequest.fromBuffer(value),
            ($3.UpdateStatusResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$3.CreateProofRequest, $3.CreateProofResponse>(
            'CreateProof',
            createProof_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $3.CreateProofRequest.fromBuffer(value),
            ($3.CreateProofResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$3.VerifyProofRequest, $3.VerifyProofResponse>(
            'VerifyProof',
            verifyProof_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $3.VerifyProofRequest.fromBuffer(value),
            ($3.VerifyProofResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.SendRequest, $3.SendResponse>(
        'Send',
        send_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.SendRequest.fromBuffer(value),
        ($3.SendResponse value) => value.writeToBuffer()));
  }

  $async.Future<$3.IssueResponse> issue_Pre(
      $grpc.ServiceCall call, $async.Future<$3.IssueRequest> request) async {
    return issue(call, await request);
  }

  $async.Future<$3.IssueFromTemplateResponse> issueFromTemplate_Pre(
      $grpc.ServiceCall call,
      $async.Future<$3.IssueFromTemplateRequest> request) async {
    return issueFromTemplate(call, await request);
  }

  $async.Future<$3.CheckStatusResponse> checkStatus_Pre($grpc.ServiceCall call,
      $async.Future<$3.CheckStatusRequest> request) async {
    return checkStatus(call, await request);
  }

  $async.Future<$3.UpdateStatusResponse> updateStatus_Pre(
      $grpc.ServiceCall call,
      $async.Future<$3.UpdateStatusRequest> request) async {
    return updateStatus(call, await request);
  }

  $async.Future<$3.CreateProofResponse> createProof_Pre($grpc.ServiceCall call,
      $async.Future<$3.CreateProofRequest> request) async {
    return createProof(call, await request);
  }

  $async.Future<$3.VerifyProofResponse> verifyProof_Pre($grpc.ServiceCall call,
      $async.Future<$3.VerifyProofRequest> request) async {
    return verifyProof(call, await request);
  }

  $async.Future<$3.SendResponse> send_Pre(
      $grpc.ServiceCall call, $async.Future<$3.SendRequest> request) async {
    return send(call, await request);
  }

  $async.Future<$3.IssueResponse> issue(
      $grpc.ServiceCall call, $3.IssueRequest request);
  $async.Future<$3.IssueFromTemplateResponse> issueFromTemplate(
      $grpc.ServiceCall call, $3.IssueFromTemplateRequest request);
  $async.Future<$3.CheckStatusResponse> checkStatus(
      $grpc.ServiceCall call, $3.CheckStatusRequest request);
  $async.Future<$3.UpdateStatusResponse> updateStatus(
      $grpc.ServiceCall call, $3.UpdateStatusRequest request);
  $async.Future<$3.CreateProofResponse> createProof(
      $grpc.ServiceCall call, $3.CreateProofRequest request);
  $async.Future<$3.VerifyProofResponse> verifyProof(
      $grpc.ServiceCall call, $3.VerifyProofRequest request);
  $async.Future<$3.SendResponse> send(
      $grpc.ServiceCall call, $3.SendRequest request);
}
