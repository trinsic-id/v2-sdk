///
//  Generated code. Do not modify.
//  source: services/verifiable-credentials/v1/verifiable-credentials.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'verifiable-credentials.pb.dart' as $4;
export 'verifiable-credentials.pb.dart';

class VerifiableCredentialClient extends $grpc.Client {
  static final _$issue = $grpc.ClientMethod<$4.IssueRequest, $4.IssueResponse>(
      '/services.verifiablecredentials.v1.VerifiableCredential/Issue',
      ($4.IssueRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.IssueResponse.fromBuffer(value));
  static final _$issueFromTemplate = $grpc.ClientMethod<
          $4.IssueFromTemplateRequest, $4.IssueFromTemplateResponse>(
      '/services.verifiablecredentials.v1.VerifiableCredential/IssueFromTemplate',
      ($4.IssueFromTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $4.IssueFromTemplateResponse.fromBuffer(value));
  static final _$checkStatus =
      $grpc.ClientMethod<$4.CheckStatusRequest, $4.CheckStatusResponse>(
          '/services.verifiablecredentials.v1.VerifiableCredential/CheckStatus',
          ($4.CheckStatusRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.CheckStatusResponse.fromBuffer(value));
  static final _$updateStatus = $grpc.ClientMethod<$4.UpdateStatusRequest,
          $4.UpdateStatusResponse>(
      '/services.verifiablecredentials.v1.VerifiableCredential/UpdateStatus',
      ($4.UpdateStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $4.UpdateStatusResponse.fromBuffer(value));
  static final _$createProof =
      $grpc.ClientMethod<$4.CreateProofRequest, $4.CreateProofResponse>(
          '/services.verifiablecredentials.v1.VerifiableCredential/CreateProof',
          ($4.CreateProofRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.CreateProofResponse.fromBuffer(value));
  static final _$verifyProof =
      $grpc.ClientMethod<$4.VerifyProofRequest, $4.VerifyProofResponse>(
          '/services.verifiablecredentials.v1.VerifiableCredential/VerifyProof',
          ($4.VerifyProofRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.VerifyProofResponse.fromBuffer(value));
  static final _$send = $grpc.ClientMethod<$4.SendRequest, $4.SendResponse>(
      '/services.verifiablecredentials.v1.VerifiableCredential/Send',
      ($4.SendRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.SendResponse.fromBuffer(value));

  VerifiableCredentialClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$4.IssueResponse> issue($4.IssueRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$issue, request, options: options);
  }

  $grpc.ResponseFuture<$4.IssueFromTemplateResponse> issueFromTemplate(
      $4.IssueFromTemplateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$issueFromTemplate, request, options: options);
  }

  $grpc.ResponseFuture<$4.CheckStatusResponse> checkStatus(
      $4.CheckStatusRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$checkStatus, request, options: options);
  }

  $grpc.ResponseFuture<$4.UpdateStatusResponse> updateStatus(
      $4.UpdateStatusRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateStatus, request, options: options);
  }

  $grpc.ResponseFuture<$4.CreateProofResponse> createProof(
      $4.CreateProofRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createProof, request, options: options);
  }

  $grpc.ResponseFuture<$4.VerifyProofResponse> verifyProof(
      $4.VerifyProofRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$verifyProof, request, options: options);
  }

  $grpc.ResponseFuture<$4.SendResponse> send($4.SendRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$send, request, options: options);
  }
}

abstract class VerifiableCredentialServiceBase extends $grpc.Service {
  $core.String get $name =>
      'services.verifiablecredentials.v1.VerifiableCredential';

  VerifiableCredentialServiceBase() {
    $addMethod($grpc.ServiceMethod<$4.IssueRequest, $4.IssueResponse>(
        'Issue',
        issue_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.IssueRequest.fromBuffer(value),
        ($4.IssueResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.IssueFromTemplateRequest,
            $4.IssueFromTemplateResponse>(
        'IssueFromTemplate',
        issueFromTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.IssueFromTemplateRequest.fromBuffer(value),
        ($4.IssueFromTemplateResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$4.CheckStatusRequest, $4.CheckStatusResponse>(
            'CheckStatus',
            checkStatus_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $4.CheckStatusRequest.fromBuffer(value),
            ($4.CheckStatusResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$4.UpdateStatusRequest, $4.UpdateStatusResponse>(
            'UpdateStatus',
            updateStatus_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $4.UpdateStatusRequest.fromBuffer(value),
            ($4.UpdateStatusResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$4.CreateProofRequest, $4.CreateProofResponse>(
            'CreateProof',
            createProof_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $4.CreateProofRequest.fromBuffer(value),
            ($4.CreateProofResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$4.VerifyProofRequest, $4.VerifyProofResponse>(
            'VerifyProof',
            verifyProof_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $4.VerifyProofRequest.fromBuffer(value),
            ($4.VerifyProofResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.SendRequest, $4.SendResponse>(
        'Send',
        send_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.SendRequest.fromBuffer(value),
        ($4.SendResponse value) => value.writeToBuffer()));
  }

  $async.Future<$4.IssueResponse> issue_Pre(
      $grpc.ServiceCall call, $async.Future<$4.IssueRequest> request) async {
    return issue(call, await request);
  }

  $async.Future<$4.IssueFromTemplateResponse> issueFromTemplate_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.IssueFromTemplateRequest> request) async {
    return issueFromTemplate(call, await request);
  }

  $async.Future<$4.CheckStatusResponse> checkStatus_Pre($grpc.ServiceCall call,
      $async.Future<$4.CheckStatusRequest> request) async {
    return checkStatus(call, await request);
  }

  $async.Future<$4.UpdateStatusResponse> updateStatus_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.UpdateStatusRequest> request) async {
    return updateStatus(call, await request);
  }

  $async.Future<$4.CreateProofResponse> createProof_Pre($grpc.ServiceCall call,
      $async.Future<$4.CreateProofRequest> request) async {
    return createProof(call, await request);
  }

  $async.Future<$4.VerifyProofResponse> verifyProof_Pre($grpc.ServiceCall call,
      $async.Future<$4.VerifyProofRequest> request) async {
    return verifyProof(call, await request);
  }

  $async.Future<$4.SendResponse> send_Pre(
      $grpc.ServiceCall call, $async.Future<$4.SendRequest> request) async {
    return send(call, await request);
  }

  $async.Future<$4.IssueResponse> issue(
      $grpc.ServiceCall call, $4.IssueRequest request);
  $async.Future<$4.IssueFromTemplateResponse> issueFromTemplate(
      $grpc.ServiceCall call, $4.IssueFromTemplateRequest request);
  $async.Future<$4.CheckStatusResponse> checkStatus(
      $grpc.ServiceCall call, $4.CheckStatusRequest request);
  $async.Future<$4.UpdateStatusResponse> updateStatus(
      $grpc.ServiceCall call, $4.UpdateStatusRequest request);
  $async.Future<$4.CreateProofResponse> createProof(
      $grpc.ServiceCall call, $4.CreateProofRequest request);
  $async.Future<$4.VerifyProofResponse> verifyProof(
      $grpc.ServiceCall call, $4.VerifyProofRequest request);
  $async.Future<$4.SendResponse> send(
      $grpc.ServiceCall call, $4.SendRequest request);
}
