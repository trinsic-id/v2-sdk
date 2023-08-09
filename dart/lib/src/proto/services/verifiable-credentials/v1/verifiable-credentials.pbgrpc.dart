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

import 'verifiable-credentials.pb.dart' as $7;

export 'verifiable-credentials.pb.dart';

@$pb.GrpcServiceName('services.verifiablecredentials.v1.VerifiableCredential')
class VerifiableCredentialClient extends $grpc.Client {
  static final _$issueFromTemplate = $grpc.ClientMethod<
          $7.IssueFromTemplateRequest, $7.IssueFromTemplateResponse>(
      '/services.verifiablecredentials.v1.VerifiableCredential/IssueFromTemplate',
      ($7.IssueFromTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $7.IssueFromTemplateResponse.fromBuffer(value));
  static final _$checkStatus =
      $grpc.ClientMethod<$7.CheckStatusRequest, $7.CheckStatusResponse>(
          '/services.verifiablecredentials.v1.VerifiableCredential/CheckStatus',
          ($7.CheckStatusRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $7.CheckStatusResponse.fromBuffer(value));
  static final _$updateStatus = $grpc.ClientMethod<$7.UpdateStatusRequest,
          $7.UpdateStatusResponse>(
      '/services.verifiablecredentials.v1.VerifiableCredential/UpdateStatus',
      ($7.UpdateStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $7.UpdateStatusResponse.fromBuffer(value));
  static final _$createProof =
      $grpc.ClientMethod<$7.CreateProofRequest, $7.CreateProofResponse>(
          '/services.verifiablecredentials.v1.VerifiableCredential/CreateProof',
          ($7.CreateProofRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $7.CreateProofResponse.fromBuffer(value));
  static final _$verifyProof =
      $grpc.ClientMethod<$7.VerifyProofRequest, $7.VerifyProofResponse>(
          '/services.verifiablecredentials.v1.VerifiableCredential/VerifyProof',
          ($7.VerifyProofRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $7.VerifyProofResponse.fromBuffer(value));
  static final _$send = $grpc.ClientMethod<$7.SendRequest, $7.SendResponse>(
      '/services.verifiablecredentials.v1.VerifiableCredential/Send',
      ($7.SendRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.SendResponse.fromBuffer(value));
  static final _$createCredentialOffer = $grpc.ClientMethod<
          $7.CreateCredentialOfferRequest, $7.CreateCredentialOfferResponse>(
      '/services.verifiablecredentials.v1.VerifiableCredential/CreateCredentialOffer',
      ($7.CreateCredentialOfferRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $7.CreateCredentialOfferResponse.fromBuffer(value));
  static final _$acceptCredential = $grpc.ClientMethod<
          $7.AcceptCredentialRequest, $7.AcceptCredentialResponse>(
      '/services.verifiablecredentials.v1.VerifiableCredential/AcceptCredential',
      ($7.AcceptCredentialRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $7.AcceptCredentialResponse.fromBuffer(value));
  static final _$rejectCredential = $grpc.ClientMethod<
          $7.RejectCredentialRequest, $7.RejectCredentialResponse>(
      '/services.verifiablecredentials.v1.VerifiableCredential/RejectCredential',
      ($7.RejectCredentialRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $7.RejectCredentialResponse.fromBuffer(value));

  VerifiableCredentialClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$7.IssueFromTemplateResponse> issueFromTemplate(
      $7.IssueFromTemplateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$issueFromTemplate, request, options: options);
  }

  $grpc.ResponseFuture<$7.CheckStatusResponse> checkStatus(
      $7.CheckStatusRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$checkStatus, request, options: options);
  }

  $grpc.ResponseFuture<$7.UpdateStatusResponse> updateStatus(
      $7.UpdateStatusRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateStatus, request, options: options);
  }

  $grpc.ResponseFuture<$7.CreateProofResponse> createProof(
      $7.CreateProofRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createProof, request, options: options);
  }

  $grpc.ResponseFuture<$7.VerifyProofResponse> verifyProof(
      $7.VerifyProofRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$verifyProof, request, options: options);
  }

  $grpc.ResponseFuture<$7.SendResponse> send($7.SendRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$send, request, options: options);
  }

  $grpc.ResponseFuture<$7.CreateCredentialOfferResponse> createCredentialOffer(
      $7.CreateCredentialOfferRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createCredentialOffer, request, options: options);
  }

  $grpc.ResponseFuture<$7.AcceptCredentialResponse> acceptCredential(
      $7.AcceptCredentialRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$acceptCredential, request, options: options);
  }

  $grpc.ResponseFuture<$7.RejectCredentialResponse> rejectCredential(
      $7.RejectCredentialRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$rejectCredential, request, options: options);
  }
}

@$pb.GrpcServiceName('services.verifiablecredentials.v1.VerifiableCredential')
abstract class VerifiableCredentialServiceBase extends $grpc.Service {
  $core.String get $name =>
      'services.verifiablecredentials.v1.VerifiableCredential';

  VerifiableCredentialServiceBase() {
    $addMethod($grpc.ServiceMethod<$7.IssueFromTemplateRequest,
            $7.IssueFromTemplateResponse>(
        'IssueFromTemplate',
        issueFromTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.IssueFromTemplateRequest.fromBuffer(value),
        ($7.IssueFromTemplateResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$7.CheckStatusRequest, $7.CheckStatusResponse>(
            'CheckStatus',
            checkStatus_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $7.CheckStatusRequest.fromBuffer(value),
            ($7.CheckStatusResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$7.UpdateStatusRequest, $7.UpdateStatusResponse>(
            'UpdateStatus',
            updateStatus_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $7.UpdateStatusRequest.fromBuffer(value),
            ($7.UpdateStatusResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$7.CreateProofRequest, $7.CreateProofResponse>(
            'CreateProof',
            createProof_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $7.CreateProofRequest.fromBuffer(value),
            ($7.CreateProofResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$7.VerifyProofRequest, $7.VerifyProofResponse>(
            'VerifyProof',
            verifyProof_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $7.VerifyProofRequest.fromBuffer(value),
            ($7.VerifyProofResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.SendRequest, $7.SendResponse>(
        'Send',
        send_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.SendRequest.fromBuffer(value),
        ($7.SendResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.CreateCredentialOfferRequest,
            $7.CreateCredentialOfferResponse>(
        'CreateCredentialOffer',
        createCredentialOffer_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.CreateCredentialOfferRequest.fromBuffer(value),
        ($7.CreateCredentialOfferResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.AcceptCredentialRequest,
            $7.AcceptCredentialResponse>(
        'AcceptCredential',
        acceptCredential_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.AcceptCredentialRequest.fromBuffer(value),
        ($7.AcceptCredentialResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.RejectCredentialRequest,
            $7.RejectCredentialResponse>(
        'RejectCredential',
        rejectCredential_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.RejectCredentialRequest.fromBuffer(value),
        ($7.RejectCredentialResponse value) => value.writeToBuffer()));
  }

  $async.Future<$7.IssueFromTemplateResponse> issueFromTemplate_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.IssueFromTemplateRequest> request) async {
    return issueFromTemplate(call, await request);
  }

  $async.Future<$7.CheckStatusResponse> checkStatus_Pre($grpc.ServiceCall call,
      $async.Future<$7.CheckStatusRequest> request) async {
    return checkStatus(call, await request);
  }

  $async.Future<$7.UpdateStatusResponse> updateStatus_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.UpdateStatusRequest> request) async {
    return updateStatus(call, await request);
  }

  $async.Future<$7.CreateProofResponse> createProof_Pre($grpc.ServiceCall call,
      $async.Future<$7.CreateProofRequest> request) async {
    return createProof(call, await request);
  }

  $async.Future<$7.VerifyProofResponse> verifyProof_Pre($grpc.ServiceCall call,
      $async.Future<$7.VerifyProofRequest> request) async {
    return verifyProof(call, await request);
  }

  $async.Future<$7.SendResponse> send_Pre(
      $grpc.ServiceCall call, $async.Future<$7.SendRequest> request) async {
    return send(call, await request);
  }

  $async.Future<$7.CreateCredentialOfferResponse> createCredentialOffer_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.CreateCredentialOfferRequest> request) async {
    return createCredentialOffer(call, await request);
  }

  $async.Future<$7.AcceptCredentialResponse> acceptCredential_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.AcceptCredentialRequest> request) async {
    return acceptCredential(call, await request);
  }

  $async.Future<$7.RejectCredentialResponse> rejectCredential_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.RejectCredentialRequest> request) async {
    return rejectCredential(call, await request);
  }

  $async.Future<$7.IssueFromTemplateResponse> issueFromTemplate(
      $grpc.ServiceCall call, $7.IssueFromTemplateRequest request);
  $async.Future<$7.CheckStatusResponse> checkStatus(
      $grpc.ServiceCall call, $7.CheckStatusRequest request);
  $async.Future<$7.UpdateStatusResponse> updateStatus(
      $grpc.ServiceCall call, $7.UpdateStatusRequest request);
  $async.Future<$7.CreateProofResponse> createProof(
      $grpc.ServiceCall call, $7.CreateProofRequest request);
  $async.Future<$7.VerifyProofResponse> verifyProof(
      $grpc.ServiceCall call, $7.VerifyProofRequest request);
  $async.Future<$7.SendResponse> send(
      $grpc.ServiceCall call, $7.SendRequest request);
  $async.Future<$7.CreateCredentialOfferResponse> createCredentialOffer(
      $grpc.ServiceCall call, $7.CreateCredentialOfferRequest request);
  $async.Future<$7.AcceptCredentialResponse> acceptCredential(
      $grpc.ServiceCall call, $7.AcceptCredentialRequest request);
  $async.Future<$7.RejectCredentialResponse> rejectCredential(
      $grpc.ServiceCall call, $7.RejectCredentialRequest request);
}
