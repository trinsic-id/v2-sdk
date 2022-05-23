///
//  Generated code. Do not modify.
//  source: services/verifiable-credentials/templates/v1/templates.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core;
import 'templates.pb.dart' as $5;
import 'templates.pbjson.dart';

export 'templates.pb.dart';

abstract class CredentialTemplatesServiceBase extends $pb.GeneratedService {
  $async.Future<$5.CreateCredentialTemplateResponse> create($pb.ServerContext ctx, $5.CreateCredentialTemplateRequest request);
  $async.Future<$5.GetCredentialTemplateResponse> get($pb.ServerContext ctx, $5.GetCredentialTemplateRequest request);
  $async.Future<$5.ListCredentialTemplatesResponse> list($pb.ServerContext ctx, $5.ListCredentialTemplatesRequest request);
  $async.Future<$5.SearchCredentialTemplatesResponse> search($pb.ServerContext ctx, $5.SearchCredentialTemplatesRequest request);
  $async.Future<$5.DeleteCredentialTemplateResponse> delete($pb.ServerContext ctx, $5.DeleteCredentialTemplateRequest request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'Create': return $5.CreateCredentialTemplateRequest();
      case 'Get': return $5.GetCredentialTemplateRequest();
      case 'List': return $5.ListCredentialTemplatesRequest();
      case 'Search': return $5.SearchCredentialTemplatesRequest();
      case 'Delete': return $5.DeleteCredentialTemplateRequest();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'Create': return this.create(ctx, request as $5.CreateCredentialTemplateRequest);
      case 'Get': return this.get(ctx, request as $5.GetCredentialTemplateRequest);
      case 'List': return this.list(ctx, request as $5.ListCredentialTemplatesRequest);
      case 'Search': return this.search(ctx, request as $5.SearchCredentialTemplatesRequest);
      case 'Delete': return this.delete(ctx, request as $5.DeleteCredentialTemplateRequest);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => CredentialTemplatesServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => CredentialTemplatesServiceBase$messageJson;
}

