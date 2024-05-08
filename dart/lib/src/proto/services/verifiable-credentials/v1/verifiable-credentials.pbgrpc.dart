//
//  Generated code. Do not modify.
//  source: services/verifiable-credentials/v1/verifiable-credentials.proto
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

import 'verifiable-credentials.pb.dart' as $0;

export 'verifiable-credentials.pb.dart';

@$pb.GrpcServiceName('services.verifiablecredentials.v1.VerifiableCredential')
class VerifiableCredentialClient extends $grpc.Client {
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
  static final _$createCredentialOffer = $grpc.ClientMethod<
          $0.CreateCredentialOfferRequest, $0.CreateCredentialOfferResponse>(
      '/services.verifiablecredentials.v1.VerifiableCredential/CreateCredentialOffer',
      ($0.CreateCredentialOfferRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.CreateCredentialOfferResponse.fromBuffer(value));
  static final _$acceptCredential = $grpc.ClientMethod<
          $0.AcceptCredentialRequest, $0.AcceptCredentialResponse>(
      '/services.verifiablecredentials.v1.VerifiableCredential/AcceptCredential',
      ($0.AcceptCredentialRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.AcceptCredentialResponse.fromBuffer(value));
  static final _$rejectCredential = $grpc.ClientMethod<
          $0.RejectCredentialRequest, $0.RejectCredentialResponse>(
      '/services.verifiablecredentials.v1.VerifiableCredential/RejectCredential',
      ($0.RejectCredentialRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.RejectCredentialResponse.fromBuffer(value));

  VerifiableCredentialClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

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

  $grpc.ResponseFuture<$0.CreateCredentialOfferResponse> createCredentialOffer(
      $0.CreateCredentialOfferRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createCredentialOffer, request, options: options);
  }

  $grpc.ResponseFuture<$0.AcceptCredentialResponse> acceptCredential(
      $0.AcceptCredentialRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$acceptCredential, request, options: options);
  }

  $grpc.ResponseFuture<$0.RejectCredentialResponse> rejectCredential(
      $0.RejectCredentialRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$rejectCredential, request, options: options);
  }
}

@$pb.GrpcServiceName('services.verifiablecredentials.v1.VerifiableCredential')
abstract class VerifiableCredentialServiceBase extends $grpc.Service {
  $core.String get $name =>
      'services.verifiablecredentials.v1.VerifiableCredential';

  VerifiableCredentialServiceBase() {
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
    $addMethod($grpc.ServiceMethod<$0.CreateCredentialOfferRequest,
            $0.CreateCredentialOfferResponse>(
        'CreateCredentialOffer',
        createCredentialOffer_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CreateCredentialOfferRequest.fromBuffer(value),
        ($0.CreateCredentialOfferResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AcceptCredentialRequest,
            $0.AcceptCredentialResponse>(
        'AcceptCredential',
        acceptCredential_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AcceptCredentialRequest.fromBuffer(value),
        ($0.AcceptCredentialResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RejectCredentialRequest,
            $0.RejectCredentialResponse>(
        'RejectCredential',
        rejectCredential_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.RejectCredentialRequest.fromBuffer(value),
        ($0.RejectCredentialResponse value) => value.writeToBuffer()));
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

  $async.Future<$0.CreateCredentialOfferResponse> createCredentialOffer_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.CreateCredentialOfferRequest> request) async {
    return createCredentialOffer(call, await request);
  }

  $async.Future<$0.AcceptCredentialResponse> acceptCredential_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AcceptCredentialRequest> request) async {
    return acceptCredential(call, await request);
  }

  $async.Future<$0.RejectCredentialResponse> rejectCredential_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.RejectCredentialRequest> request) async {
    return rejectCredential(call, await request);
  }

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
  $async.Future<$0.CreateCredentialOfferResponse> createCredentialOffer(
      $grpc.ServiceCall call, $0.CreateCredentialOfferRequest request);
  $async.Future<$0.AcceptCredentialResponse> acceptCredential(
      $grpc.ServiceCall call, $0.AcceptCredentialRequest request);
  $async.Future<$0.RejectCredentialResponse> rejectCredential(
      $grpc.ServiceCall call, $0.RejectCredentialRequest request);
}
