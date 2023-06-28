//
//  Generated code. Do not modify.
//  source: services/verifiable-credentials/v1/verifiable-credentials.proto
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

import 'verifiable-credentials.pb.dart' as $2;

export 'verifiable-credentials.pb.dart';

@$pb.GrpcServiceName('services.verifiablecredentials.v1.VerifiableCredential')
class VerifiableCredentialClient extends $grpc.Client {
  static final _$issueFromTemplate = $grpc.ClientMethod<
          $2.IssueFromTemplateRequest, $2.IssueFromTemplateResponse>(
      '/services.verifiablecredentials.v1.VerifiableCredential/IssueFromTemplate',
      ($2.IssueFromTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.IssueFromTemplateResponse.fromBuffer(value));
  static final _$checkStatus =
      $grpc.ClientMethod<$2.CheckStatusRequest, $2.CheckStatusResponse>(
          '/services.verifiablecredentials.v1.VerifiableCredential/CheckStatus',
          ($2.CheckStatusRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.CheckStatusResponse.fromBuffer(value));
  static final _$updateStatus = $grpc.ClientMethod<$2.UpdateStatusRequest,
          $2.UpdateStatusResponse>(
      '/services.verifiablecredentials.v1.VerifiableCredential/UpdateStatus',
      ($2.UpdateStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.UpdateStatusResponse.fromBuffer(value));
  static final _$createProof =
      $grpc.ClientMethod<$2.CreateProofRequest, $2.CreateProofResponse>(
          '/services.verifiablecredentials.v1.VerifiableCredential/CreateProof',
          ($2.CreateProofRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.CreateProofResponse.fromBuffer(value));
  static final _$verifyProof =
      $grpc.ClientMethod<$2.VerifyProofRequest, $2.VerifyProofResponse>(
          '/services.verifiablecredentials.v1.VerifiableCredential/VerifyProof',
          ($2.VerifyProofRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.VerifyProofResponse.fromBuffer(value));
  static final _$send = $grpc.ClientMethod<$2.SendRequest, $2.SendResponse>(
      '/services.verifiablecredentials.v1.VerifiableCredential/Send',
      ($2.SendRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.SendResponse.fromBuffer(value));
  static final _$createCredentialOffer = $grpc.ClientMethod<
          $2.CreateCredentialOfferRequest, $2.CreateCredentialOfferResponse>(
      '/services.verifiablecredentials.v1.VerifiableCredential/CreateCredentialOffer',
      ($2.CreateCredentialOfferRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.CreateCredentialOfferResponse.fromBuffer(value));
  static final _$acceptCredential = $grpc.ClientMethod<
          $2.AcceptCredentialRequest, $2.AcceptCredentialResponse>(
      '/services.verifiablecredentials.v1.VerifiableCredential/AcceptCredential',
      ($2.AcceptCredentialRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.AcceptCredentialResponse.fromBuffer(value));
  static final _$rejectCredential = $grpc.ClientMethod<
          $2.RejectCredentialRequest, $2.RejectCredentialResponse>(
      '/services.verifiablecredentials.v1.VerifiableCredential/RejectCredential',
      ($2.RejectCredentialRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.RejectCredentialResponse.fromBuffer(value));

  VerifiableCredentialClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$2.IssueFromTemplateResponse> issueFromTemplate(
      $2.IssueFromTemplateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$issueFromTemplate, request, options: options);
  }

  $grpc.ResponseFuture<$2.CheckStatusResponse> checkStatus(
      $2.CheckStatusRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$checkStatus, request, options: options);
  }

  $grpc.ResponseFuture<$2.UpdateStatusResponse> updateStatus(
      $2.UpdateStatusRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateStatus, request, options: options);
  }

  $grpc.ResponseFuture<$2.CreateProofResponse> createProof(
      $2.CreateProofRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createProof, request, options: options);
  }

  $grpc.ResponseFuture<$2.VerifyProofResponse> verifyProof(
      $2.VerifyProofRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$verifyProof, request, options: options);
  }

  $grpc.ResponseFuture<$2.SendResponse> send($2.SendRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$send, request, options: options);
  }

  $grpc.ResponseFuture<$2.CreateCredentialOfferResponse> createCredentialOffer(
      $2.CreateCredentialOfferRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createCredentialOffer, request, options: options);
  }

  $grpc.ResponseFuture<$2.AcceptCredentialResponse> acceptCredential(
      $2.AcceptCredentialRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$acceptCredential, request, options: options);
  }

  $grpc.ResponseFuture<$2.RejectCredentialResponse> rejectCredential(
      $2.RejectCredentialRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$rejectCredential, request, options: options);
  }
}

@$pb.GrpcServiceName('services.verifiablecredentials.v1.VerifiableCredential')
abstract class VerifiableCredentialServiceBase extends $grpc.Service {
  $core.String get $name =>
      'services.verifiablecredentials.v1.VerifiableCredential';

  VerifiableCredentialServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.IssueFromTemplateRequest,
            $2.IssueFromTemplateResponse>(
        'IssueFromTemplate',
        issueFromTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.IssueFromTemplateRequest.fromBuffer(value),
        ($2.IssueFromTemplateResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.CheckStatusRequest, $2.CheckStatusResponse>(
            'CheckStatus',
            checkStatus_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.CheckStatusRequest.fromBuffer(value),
            ($2.CheckStatusResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.UpdateStatusRequest, $2.UpdateStatusResponse>(
            'UpdateStatus',
            updateStatus_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.UpdateStatusRequest.fromBuffer(value),
            ($2.UpdateStatusResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.CreateProofRequest, $2.CreateProofResponse>(
            'CreateProof',
            createProof_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.CreateProofRequest.fromBuffer(value),
            ($2.CreateProofResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.VerifyProofRequest, $2.VerifyProofResponse>(
            'VerifyProof',
            verifyProof_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.VerifyProofRequest.fromBuffer(value),
            ($2.VerifyProofResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.SendRequest, $2.SendResponse>(
        'Send',
        send_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.SendRequest.fromBuffer(value),
        ($2.SendResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.CreateCredentialOfferRequest,
            $2.CreateCredentialOfferResponse>(
        'CreateCredentialOffer',
        createCredentialOffer_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.CreateCredentialOfferRequest.fromBuffer(value),
        ($2.CreateCredentialOfferResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.AcceptCredentialRequest,
            $2.AcceptCredentialResponse>(
        'AcceptCredential',
        acceptCredential_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.AcceptCredentialRequest.fromBuffer(value),
        ($2.AcceptCredentialResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.RejectCredentialRequest,
            $2.RejectCredentialResponse>(
        'RejectCredential',
        rejectCredential_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.RejectCredentialRequest.fromBuffer(value),
        ($2.RejectCredentialResponse value) => value.writeToBuffer()));
  }

  $async.Future<$2.IssueFromTemplateResponse> issueFromTemplate_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.IssueFromTemplateRequest> request) async {
    return issueFromTemplate(call, await request);
  }

  $async.Future<$2.CheckStatusResponse> checkStatus_Pre($grpc.ServiceCall call,
      $async.Future<$2.CheckStatusRequest> request) async {
    return checkStatus(call, await request);
  }

  $async.Future<$2.UpdateStatusResponse> updateStatus_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.UpdateStatusRequest> request) async {
    return updateStatus(call, await request);
  }

  $async.Future<$2.CreateProofResponse> createProof_Pre($grpc.ServiceCall call,
      $async.Future<$2.CreateProofRequest> request) async {
    return createProof(call, await request);
  }

  $async.Future<$2.VerifyProofResponse> verifyProof_Pre($grpc.ServiceCall call,
      $async.Future<$2.VerifyProofRequest> request) async {
    return verifyProof(call, await request);
  }

  $async.Future<$2.SendResponse> send_Pre(
      $grpc.ServiceCall call, $async.Future<$2.SendRequest> request) async {
    return send(call, await request);
  }

  $async.Future<$2.CreateCredentialOfferResponse> createCredentialOffer_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.CreateCredentialOfferRequest> request) async {
    return createCredentialOffer(call, await request);
  }

  $async.Future<$2.AcceptCredentialResponse> acceptCredential_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.AcceptCredentialRequest> request) async {
    return acceptCredential(call, await request);
  }

  $async.Future<$2.RejectCredentialResponse> rejectCredential_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.RejectCredentialRequest> request) async {
    return rejectCredential(call, await request);
  }

  $async.Future<$2.IssueFromTemplateResponse> issueFromTemplate(
      $grpc.ServiceCall call, $2.IssueFromTemplateRequest request);
  $async.Future<$2.CheckStatusResponse> checkStatus(
      $grpc.ServiceCall call, $2.CheckStatusRequest request);
  $async.Future<$2.UpdateStatusResponse> updateStatus(
      $grpc.ServiceCall call, $2.UpdateStatusRequest request);
  $async.Future<$2.CreateProofResponse> createProof(
      $grpc.ServiceCall call, $2.CreateProofRequest request);
  $async.Future<$2.VerifyProofResponse> verifyProof(
      $grpc.ServiceCall call, $2.VerifyProofRequest request);
  $async.Future<$2.SendResponse> send(
      $grpc.ServiceCall call, $2.SendRequest request);
  $async.Future<$2.CreateCredentialOfferResponse> createCredentialOffer(
      $grpc.ServiceCall call, $2.CreateCredentialOfferRequest request);
  $async.Future<$2.AcceptCredentialResponse> acceptCredential(
      $grpc.ServiceCall call, $2.AcceptCredentialRequest request);
  $async.Future<$2.RejectCredentialResponse> rejectCredential(
      $grpc.ServiceCall call, $2.RejectCredentialRequest request);
}
