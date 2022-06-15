///
//  Generated code. Do not modify.
//  source: services/verifiable-credentials/v1/verifiable-credentials.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'verifiable-credentials.pb.dart' as $0;
export 'verifiable-credentials.pb.dart';

class VerifiableCredentialClient extends $grpc.Client {
  static final _$issue = $grpc.ClientMethod<$0.IssueRequest, $0.IssueResponse>(
      '/services.verifiablecredentials.v1.VerifiableCredential/Issue',
      ($0.IssueRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.IssueResponse.fromBuffer(value));
  static final _$issueFromTemplate = $grpc.ClientMethod<
          $0.IssueFromTemplateRequest, $0.IssueFromTemplateResponse>(
      '/services.verifiablecredentials.v1.VerifiableCredential/IssueFromTemplate',
      ($0.IssueFromTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.IssueFromTemplateResponse.fromBuffer(value));
  static final _$checkStatus =
      $grpc.ClientMethod<$0.CheckStatusRequest, $0.CheckStatusResponse>(
          '/services.verifiablecredentials.v1.VerifiableCredential/CheckStatus',
          ($0.CheckStatusRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.CheckStatusResponse.fromBuffer(value));
  static final _$updateStatus = $grpc.ClientMethod<$0.UpdateStatusRequest,
          $0.UpdateStatusResponse>(
      '/services.verifiablecredentials.v1.VerifiableCredential/UpdateStatus',
      ($0.UpdateStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.UpdateStatusResponse.fromBuffer(value));
  static final _$createProof =
      $grpc.ClientMethod<$0.CreateProofRequest, $0.CreateProofResponse>(
          '/services.verifiablecredentials.v1.VerifiableCredential/CreateProof',
          ($0.CreateProofRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.CreateProofResponse.fromBuffer(value));
  static final _$verifyProof =
      $grpc.ClientMethod<$0.VerifyProofRequest, $0.VerifyProofResponse>(
          '/services.verifiablecredentials.v1.VerifiableCredential/VerifyProof',
          ($0.VerifyProofRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.VerifyProofResponse.fromBuffer(value));
  static final _$send = $grpc.ClientMethod<$0.SendRequest, $0.SendResponse>(
      '/services.verifiablecredentials.v1.VerifiableCredential/Send',
      ($0.SendRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SendResponse.fromBuffer(value));

  VerifiableCredentialClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.IssueResponse> issue($0.IssueRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$issue, request, options: options);
  }

  $grpc.ResponseFuture<$0.IssueFromTemplateResponse> issueFromTemplate(
      $0.IssueFromTemplateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$issueFromTemplate, request, options: options);
  }

  $grpc.ResponseFuture<$0.CheckStatusResponse> checkStatus(
      $0.CheckStatusRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$checkStatus, request, options: options);
  }

  $grpc.ResponseFuture<$0.UpdateStatusResponse> updateStatus(
      $0.UpdateStatusRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateStatus, request, options: options);
  }

  $grpc.ResponseFuture<$0.CreateProofResponse> createProof(
      $0.CreateProofRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createProof, request, options: options);
  }

  $grpc.ResponseFuture<$0.VerifyProofResponse> verifyProof(
      $0.VerifyProofRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$verifyProof, request, options: options);
  }

  $grpc.ResponseFuture<$0.SendResponse> send($0.SendRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$send, request, options: options);
  }
}

abstract class VerifiableCredentialServiceBase extends $grpc.Service {
  $core.String get $name =>
      'services.verifiablecredentials.v1.VerifiableCredential';

  VerifiableCredentialServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.IssueRequest, $0.IssueResponse>(
        'Issue',
        issue_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.IssueRequest.fromBuffer(value),
        ($0.IssueResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.IssueFromTemplateRequest,
            $0.IssueFromTemplateResponse>(
        'IssueFromTemplate',
        issueFromTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.IssueFromTemplateRequest.fromBuffer(value),
        ($0.IssueFromTemplateResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.CheckStatusRequest, $0.CheckStatusResponse>(
            'CheckStatus',
            checkStatus_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.CheckStatusRequest.fromBuffer(value),
            ($0.CheckStatusResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.UpdateStatusRequest, $0.UpdateStatusResponse>(
            'UpdateStatus',
            updateStatus_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.UpdateStatusRequest.fromBuffer(value),
            ($0.UpdateStatusResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.CreateProofRequest, $0.CreateProofResponse>(
            'CreateProof',
            createProof_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.CreateProofRequest.fromBuffer(value),
            ($0.CreateProofResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.VerifyProofRequest, $0.VerifyProofResponse>(
            'VerifyProof',
            verifyProof_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.VerifyProofRequest.fromBuffer(value),
            ($0.VerifyProofResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SendRequest, $0.SendResponse>(
        'Send',
        send_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SendRequest.fromBuffer(value),
        ($0.SendResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.IssueResponse> issue_Pre(
      $grpc.ServiceCall call, $async.Future<$0.IssueRequest> request) async {
    return issue(call, await request);
  }

  $async.Future<$0.IssueFromTemplateResponse> issueFromTemplate_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.IssueFromTemplateRequest> request) async {
    return issueFromTemplate(call, await request);
  }

  $async.Future<$0.CheckStatusResponse> checkStatus_Pre($grpc.ServiceCall call,
      $async.Future<$0.CheckStatusRequest> request) async {
    return checkStatus(call, await request);
  }

  $async.Future<$0.UpdateStatusResponse> updateStatus_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.UpdateStatusRequest> request) async {
    return updateStatus(call, await request);
  }

  $async.Future<$0.CreateProofResponse> createProof_Pre($grpc.ServiceCall call,
      $async.Future<$0.CreateProofRequest> request) async {
    return createProof(call, await request);
  }

  $async.Future<$0.VerifyProofResponse> verifyProof_Pre($grpc.ServiceCall call,
      $async.Future<$0.VerifyProofRequest> request) async {
    return verifyProof(call, await request);
  }

  $async.Future<$0.SendResponse> send_Pre(
      $grpc.ServiceCall call, $async.Future<$0.SendRequest> request) async {
    return send(call, await request);
  }

  $async.Future<$0.IssueResponse> issue(
      $grpc.ServiceCall call, $0.IssueRequest request);
  $async.Future<$0.IssueFromTemplateResponse> issueFromTemplate(
      $grpc.ServiceCall call, $0.IssueFromTemplateRequest request);
  $async.Future<$0.CheckStatusResponse> checkStatus(
      $grpc.ServiceCall call, $0.CheckStatusRequest request);
  $async.Future<$0.UpdateStatusResponse> updateStatus(
      $grpc.ServiceCall call, $0.UpdateStatusRequest request);
  $async.Future<$0.CreateProofResponse> createProof(
      $grpc.ServiceCall call, $0.CreateProofRequest request);
  $async.Future<$0.VerifyProofResponse> verifyProof(
      $grpc.ServiceCall call, $0.VerifyProofRequest request);
  $async.Future<$0.SendResponse> send(
      $grpc.ServiceCall call, $0.SendRequest request);
}
