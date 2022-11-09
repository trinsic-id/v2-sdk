///
//  Generated code. Do not modify.
//  source: services/verifiable-credentials/v1/verifiable-credentials.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'verifiable-credentials.pb.dart' as $5;
export 'verifiable-credentials.pb.dart';

class VerifiableCredentialClient extends $grpc.Client {
  static final _$issue = $grpc.ClientMethod<$5.IssueRequest, $5.IssueResponse>(
      '/services.verifiablecredentials.v1.VerifiableCredential/Issue',
      ($5.IssueRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.IssueResponse.fromBuffer(value));
  static final _$issueFromTemplate = $grpc.ClientMethod<
          $5.IssueFromTemplateRequest, $5.IssueFromTemplateResponse>(
      '/services.verifiablecredentials.v1.VerifiableCredential/IssueFromTemplate',
      ($5.IssueFromTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.IssueFromTemplateResponse.fromBuffer(value));
  static final _$checkStatus =
      $grpc.ClientMethod<$5.CheckStatusRequest, $5.CheckStatusResponse>(
          '/services.verifiablecredentials.v1.VerifiableCredential/CheckStatus',
          ($5.CheckStatusRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.CheckStatusResponse.fromBuffer(value));
  static final _$updateStatus = $grpc.ClientMethod<$5.UpdateStatusRequest,
          $5.UpdateStatusResponse>(
      '/services.verifiablecredentials.v1.VerifiableCredential/UpdateStatus',
      ($5.UpdateStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.UpdateStatusResponse.fromBuffer(value));
  static final _$createProof =
      $grpc.ClientMethod<$5.CreateProofRequest, $5.CreateProofResponse>(
          '/services.verifiablecredentials.v1.VerifiableCredential/CreateProof',
          ($5.CreateProofRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.CreateProofResponse.fromBuffer(value));
  static final _$verifyProof =
      $grpc.ClientMethod<$5.VerifyProofRequest, $5.VerifyProofResponse>(
          '/services.verifiablecredentials.v1.VerifiableCredential/VerifyProof',
          ($5.VerifyProofRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.VerifyProofResponse.fromBuffer(value));
  static final _$send = $grpc.ClientMethod<$5.SendRequest, $5.SendResponse>(
      '/services.verifiablecredentials.v1.VerifiableCredential/Send',
      ($5.SendRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.SendResponse.fromBuffer(value));

  VerifiableCredentialClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$5.IssueResponse> issue($5.IssueRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$issue, request, options: options);
  }

  $grpc.ResponseFuture<$5.IssueFromTemplateResponse> issueFromTemplate(
      $5.IssueFromTemplateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$issueFromTemplate, request, options: options);
  }

  $grpc.ResponseFuture<$5.CheckStatusResponse> checkStatus(
      $5.CheckStatusRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$checkStatus, request, options: options);
  }

  $grpc.ResponseFuture<$5.UpdateStatusResponse> updateStatus(
      $5.UpdateStatusRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateStatus, request, options: options);
  }

  $grpc.ResponseFuture<$5.CreateProofResponse> createProof(
      $5.CreateProofRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createProof, request, options: options);
  }

  $grpc.ResponseFuture<$5.VerifyProofResponse> verifyProof(
      $5.VerifyProofRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$verifyProof, request, options: options);
  }

  $grpc.ResponseFuture<$5.SendResponse> send($5.SendRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$send, request, options: options);
  }
}

abstract class VerifiableCredentialServiceBase extends $grpc.Service {
  $core.String get $name =>
      'services.verifiablecredentials.v1.VerifiableCredential';

  VerifiableCredentialServiceBase() {
    $addMethod($grpc.ServiceMethod<$5.IssueRequest, $5.IssueResponse>(
        'Issue',
        issue_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.IssueRequest.fromBuffer(value),
        ($5.IssueResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.IssueFromTemplateRequest,
            $5.IssueFromTemplateResponse>(
        'IssueFromTemplate',
        issueFromTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.IssueFromTemplateRequest.fromBuffer(value),
        ($5.IssueFromTemplateResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$5.CheckStatusRequest, $5.CheckStatusResponse>(
            'CheckStatus',
            checkStatus_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $5.CheckStatusRequest.fromBuffer(value),
            ($5.CheckStatusResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$5.UpdateStatusRequest, $5.UpdateStatusResponse>(
            'UpdateStatus',
            updateStatus_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $5.UpdateStatusRequest.fromBuffer(value),
            ($5.UpdateStatusResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$5.CreateProofRequest, $5.CreateProofResponse>(
            'CreateProof',
            createProof_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $5.CreateProofRequest.fromBuffer(value),
            ($5.CreateProofResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$5.VerifyProofRequest, $5.VerifyProofResponse>(
            'VerifyProof',
            verifyProof_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $5.VerifyProofRequest.fromBuffer(value),
            ($5.VerifyProofResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.SendRequest, $5.SendResponse>(
        'Send',
        send_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.SendRequest.fromBuffer(value),
        ($5.SendResponse value) => value.writeToBuffer()));
  }

  $async.Future<$5.IssueResponse> issue_Pre(
      $grpc.ServiceCall call, $async.Future<$5.IssueRequest> request) async {
    return issue(call, await request);
  }

  $async.Future<$5.IssueFromTemplateResponse> issueFromTemplate_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.IssueFromTemplateRequest> request) async {
    return issueFromTemplate(call, await request);
  }

  $async.Future<$5.CheckStatusResponse> checkStatus_Pre($grpc.ServiceCall call,
      $async.Future<$5.CheckStatusRequest> request) async {
    return checkStatus(call, await request);
  }

  $async.Future<$5.UpdateStatusResponse> updateStatus_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.UpdateStatusRequest> request) async {
    return updateStatus(call, await request);
  }

  $async.Future<$5.CreateProofResponse> createProof_Pre($grpc.ServiceCall call,
      $async.Future<$5.CreateProofRequest> request) async {
    return createProof(call, await request);
  }

  $async.Future<$5.VerifyProofResponse> verifyProof_Pre($grpc.ServiceCall call,
      $async.Future<$5.VerifyProofRequest> request) async {
    return verifyProof(call, await request);
  }

  $async.Future<$5.SendResponse> send_Pre(
      $grpc.ServiceCall call, $async.Future<$5.SendRequest> request) async {
    return send(call, await request);
  }

  $async.Future<$5.IssueResponse> issue(
      $grpc.ServiceCall call, $5.IssueRequest request);
  $async.Future<$5.IssueFromTemplateResponse> issueFromTemplate(
      $grpc.ServiceCall call, $5.IssueFromTemplateRequest request);
  $async.Future<$5.CheckStatusResponse> checkStatus(
      $grpc.ServiceCall call, $5.CheckStatusRequest request);
  $async.Future<$5.UpdateStatusResponse> updateStatus(
      $grpc.ServiceCall call, $5.UpdateStatusRequest request);
  $async.Future<$5.CreateProofResponse> createProof(
      $grpc.ServiceCall call, $5.CreateProofRequest request);
  $async.Future<$5.VerifyProofResponse> verifyProof(
      $grpc.ServiceCall call, $5.VerifyProofRequest request);
  $async.Future<$5.SendResponse> send(
      $grpc.ServiceCall call, $5.SendRequest request);
}
