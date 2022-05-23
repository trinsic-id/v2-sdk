///
//  Generated code. Do not modify.
//  source: services/verifiable-credentials/v1/verifiable-credentials.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core;
import 'verifiable-credentials.pb.dart' as $6;
import 'verifiable-credentials.pbjson.dart';

export 'verifiable-credentials.pb.dart';

abstract class VerifiableCredentialServiceBase extends $pb.GeneratedService {
  $async.Future<$6.IssueResponse> issue($pb.ServerContext ctx, $6.IssueRequest request);
  $async.Future<$6.IssueFromTemplateResponse> issueFromTemplate($pb.ServerContext ctx, $6.IssueFromTemplateRequest request);
  $async.Future<$6.CheckStatusResponse> checkStatus($pb.ServerContext ctx, $6.CheckStatusRequest request);
  $async.Future<$6.UpdateStatusResponse> updateStatus($pb.ServerContext ctx, $6.UpdateStatusRequest request);
  $async.Future<$6.CreateProofResponse> createProof($pb.ServerContext ctx, $6.CreateProofRequest request);
  $async.Future<$6.VerifyProofResponse> verifyProof($pb.ServerContext ctx, $6.VerifyProofRequest request);
  $async.Future<$6.SendResponse> send($pb.ServerContext ctx, $6.SendRequest request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'Issue': return $6.IssueRequest();
      case 'IssueFromTemplate': return $6.IssueFromTemplateRequest();
      case 'CheckStatus': return $6.CheckStatusRequest();
      case 'UpdateStatus': return $6.UpdateStatusRequest();
      case 'CreateProof': return $6.CreateProofRequest();
      case 'VerifyProof': return $6.VerifyProofRequest();
      case 'Send': return $6.SendRequest();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'Issue': return this.issue(ctx, request as $6.IssueRequest);
      case 'IssueFromTemplate': return this.issueFromTemplate(ctx, request as $6.IssueFromTemplateRequest);
      case 'CheckStatus': return this.checkStatus(ctx, request as $6.CheckStatusRequest);
      case 'UpdateStatus': return this.updateStatus(ctx, request as $6.UpdateStatusRequest);
      case 'CreateProof': return this.createProof(ctx, request as $6.CreateProofRequest);
      case 'VerifyProof': return this.verifyProof(ctx, request as $6.VerifyProofRequest);
      case 'Send': return this.send(ctx, request as $6.SendRequest);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => VerifiableCredentialServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => VerifiableCredentialServiceBase$messageJson;
}

