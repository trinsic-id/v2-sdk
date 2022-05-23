///
//  Generated code. Do not modify.
//  source: services/provider/v1/provider.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core;
import 'provider.pb.dart' as $2;
import 'provider.pbjson.dart';

export 'provider.pb.dart';

abstract class ProviderServiceBase extends $pb.GeneratedService {
  $async.Future<$2.CreateEcosystemResponse> createEcosystem($pb.ServerContext ctx, $2.CreateEcosystemRequest request);
  $async.Future<$2.GenerateTokenResponse> generateToken($pb.ServerContext ctx, $2.GenerateTokenRequest request);
  $async.Future<$2.InviteResponse> invite($pb.ServerContext ctx, $2.InviteRequest request);
  $async.Future<$2.InvitationStatusResponse> invitationStatus($pb.ServerContext ctx, $2.InvitationStatusRequest request);
  $async.Future<$2.GetOberonKeyResponse> getOberonKey($pb.ServerContext ctx, $2.GetOberonKeyRequest request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'CreateEcosystem': return $2.CreateEcosystemRequest();
      case 'GenerateToken': return $2.GenerateTokenRequest();
      case 'Invite': return $2.InviteRequest();
      case 'InvitationStatus': return $2.InvitationStatusRequest();
      case 'GetOberonKey': return $2.GetOberonKeyRequest();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'CreateEcosystem': return this.createEcosystem(ctx, request as $2.CreateEcosystemRequest);
      case 'GenerateToken': return this.generateToken(ctx, request as $2.GenerateTokenRequest);
      case 'Invite': return this.invite(ctx, request as $2.InviteRequest);
      case 'InvitationStatus': return this.invitationStatus(ctx, request as $2.InvitationStatusRequest);
      case 'GetOberonKey': return this.getOberonKey(ctx, request as $2.GetOberonKeyRequest);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => ProviderServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => ProviderServiceBase$messageJson;
}

