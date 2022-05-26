///
//  Generated code. Do not modify.
//  source: services/verifiable-credentials/v1/verifiable-credentials.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'verifiable-credentials.pb.dart' as $6;
export 'verifiable-credentials.pb.dart';

class VerifiableCredentialClient extends $grpc.Client {
  static final _$issue = $grpc.ClientMethod<$6.IssueRequest, $6.IssueResponse>(
      '/services.verifiablecredentials.v1.VerifiableCredential/Issue',
      ($6.IssueRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.IssueResponse.fromBuffer(value));
  static final _$issueFromTemplate = $grpc.ClientMethod<
          $6.IssueFromTemplateRequest, $6.IssueFromTemplateResponse>(
      '/services.verifiablecredentials.v1.VerifiableCredential/IssueFromTemplate',
      ($6.IssueFromTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.IssueFromTemplateResponse.fromBuffer(value));
  static final _$checkStatus =
      $grpc.ClientMethod<$6.CheckStatusRequest, $6.CheckStatusResponse>(
          '/services.verifiablecredentials.v1.VerifiableCredential/CheckStatus',
          ($6.CheckStatusRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $6.CheckStatusResponse.fromBuffer(value));
  static final _$updateStatus = $grpc.ClientMethod<$6.UpdateStatusRequest,
          $6.UpdateStatusResponse>(
      '/services.verifiablecredentials.v1.VerifiableCredential/UpdateStatus',
      ($6.UpdateStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.UpdateStatusResponse.fromBuffer(value));
  static final _$createProof =
      $grpc.ClientMethod<$6.CreateProofRequest, $6.CreateProofResponse>(
          '/services.verifiablecredentials.v1.VerifiableCredential/CreateProof',
          ($6.CreateProofRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $6.CreateProofResponse.fromBuffer(value));
  static final _$verifyProof =
      $grpc.ClientMethod<$6.VerifyProofRequest, $6.VerifyProofResponse>(
          '/services.verifiablecredentials.v1.VerifiableCredential/VerifyProof',
          ($6.VerifyProofRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $6.VerifyProofResponse.fromBuffer(value));
  static final _$send = $grpc.ClientMethod<$6.SendRequest, $6.SendResponse>(
      '/services.verifiablecredentials.v1.VerifiableCredential/Send',
      ($6.SendRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.SendResponse.fromBuffer(value));

  VerifiableCredentialClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$6.IssueResponse> issue($6.IssueRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$issue, request, options: options);
  }

  $grpc.ResponseFuture<$6.IssueFromTemplateResponse> issueFromTemplate(
      $6.IssueFromTemplateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$issueFromTemplate, request, options: options);
  }

  $grpc.ResponseFuture<$6.CheckStatusResponse> checkStatus(
      $6.CheckStatusRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$checkStatus, request, options: options);
  }

  $grpc.ResponseFuture<$6.UpdateStatusResponse> updateStatus(
      $6.UpdateStatusRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateStatus, request, options: options);
  }

  $grpc.ResponseFuture<$6.CreateProofResponse> createProof(
      $6.CreateProofRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createProof, request, options: options);
  }

  $grpc.ResponseFuture<$6.VerifyProofResponse> verifyProof(
      $6.VerifyProofRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$verifyProof, request, options: options);
  }

  $grpc.ResponseFuture<$6.SendResponse> send($6.SendRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$send, request, options: options);
  }
}

abstract class VerifiableCredentialServiceBase extends $grpc.Service {
  $core.String get $name =>
      'services.verifiablecredentials.v1.VerifiableCredential';

  VerifiableCredentialServiceBase() {
    $addMethod($grpc.ServiceMethod<$6.IssueRequest, $6.IssueResponse>(
        'Issue',
        issue_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.IssueRequest.fromBuffer(value),
        ($6.IssueResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.IssueFromTemplateRequest,
            $6.IssueFromTemplateResponse>(
        'IssueFromTemplate',
        issueFromTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.IssueFromTemplateRequest.fromBuffer(value),
        ($6.IssueFromTemplateResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$6.CheckStatusRequest, $6.CheckStatusResponse>(
            'CheckStatus',
            checkStatus_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $6.CheckStatusRequest.fromBuffer(value),
            ($6.CheckStatusResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$6.UpdateStatusRequest, $6.UpdateStatusResponse>(
            'UpdateStatus',
            updateStatus_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $6.UpdateStatusRequest.fromBuffer(value),
            ($6.UpdateStatusResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$6.CreateProofRequest, $6.CreateProofResponse>(
            'CreateProof',
            createProof_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $6.CreateProofRequest.fromBuffer(value),
            ($6.CreateProofResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$6.VerifyProofRequest, $6.VerifyProofResponse>(
            'VerifyProof',
            verifyProof_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $6.VerifyProofRequest.fromBuffer(value),
            ($6.VerifyProofResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.SendRequest, $6.SendResponse>(
        'Send',
        send_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.SendRequest.fromBuffer(value),
        ($6.SendResponse value) => value.writeToBuffer()));
  }

  $async.Future<$6.IssueResponse> issue_Pre(
      $grpc.ServiceCall call, $async.Future<$6.IssueRequest> request) async {
    return issue(call, await request);
  }

  $async.Future<$6.IssueFromTemplateResponse> issueFromTemplate_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.IssueFromTemplateRequest> request) async {
    return issueFromTemplate(call, await request);
  }

  $async.Future<$6.CheckStatusResponse> checkStatus_Pre($grpc.ServiceCall call,
      $async.Future<$6.CheckStatusRequest> request) async {
    return checkStatus(call, await request);
  }

  $async.Future<$6.UpdateStatusResponse> updateStatus_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.UpdateStatusRequest> request) async {
    return updateStatus(call, await request);
  }

  $async.Future<$6.CreateProofResponse> createProof_Pre($grpc.ServiceCall call,
      $async.Future<$6.CreateProofRequest> request) async {
    return createProof(call, await request);
  }

  $async.Future<$6.VerifyProofResponse> verifyProof_Pre($grpc.ServiceCall call,
      $async.Future<$6.VerifyProofRequest> request) async {
    return verifyProof(call, await request);
  }

  $async.Future<$6.SendResponse> send_Pre(
      $grpc.ServiceCall call, $async.Future<$6.SendRequest> request) async {
    return send(call, await request);
  }

  $async.Future<$6.IssueResponse> issue(
      $grpc.ServiceCall call, $6.IssueRequest request);
  $async.Future<$6.IssueFromTemplateResponse> issueFromTemplate(
      $grpc.ServiceCall call, $6.IssueFromTemplateRequest request);
  $async.Future<$6.CheckStatusResponse> checkStatus(
      $grpc.ServiceCall call, $6.CheckStatusRequest request);
  $async.Future<$6.UpdateStatusResponse> updateStatus(
      $grpc.ServiceCall call, $6.UpdateStatusRequest request);
  $async.Future<$6.CreateProofResponse> createProof(
      $grpc.ServiceCall call, $6.CreateProofRequest request);
  $async.Future<$6.VerifyProofResponse> verifyProof(
      $grpc.ServiceCall call, $6.VerifyProofRequest request);
  $async.Future<$6.SendResponse> send(
      $grpc.ServiceCall call, $6.SendRequest request);
}
