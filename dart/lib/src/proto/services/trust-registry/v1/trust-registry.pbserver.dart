///
//  Generated code. Do not modify.
//  source: services/trust-registry/v1/trust-registry.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core;
import 'trust-registry.pb.dart' as $3;
import 'trust-registry.pbjson.dart';

export 'trust-registry.pb.dart';

abstract class TrustRegistryServiceBase extends $pb.GeneratedService {
  $async.Future<$3.AddFrameworkResponse> addFramework($pb.ServerContext ctx, $3.AddFrameworkRequest request);
  $async.Future<$3.RemoveFrameworkResponse> removeFramework($pb.ServerContext ctx, $3.RemoveFrameworkRequest request);
  $async.Future<$3.SearchRegistryResponse> searchRegistry($pb.ServerContext ctx, $3.SearchRegistryRequest request);
  $async.Future<$3.RegisterMemberResponse> registerMember($pb.ServerContext ctx, $3.RegisterMemberRequest request);
  $async.Future<$3.UnregisterMemberResponse> unregisterMember($pb.ServerContext ctx, $3.UnregisterMemberRequest request);
  $async.Future<$3.GetMembershipStatusResponse> getMembershipStatus($pb.ServerContext ctx, $3.GetMembershipStatusRequest request);
  $async.Future<$3.FetchDataResponse> fetchData($pb.ServerContext ctx, $3.FetchDataRequest request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'AddFramework': return $3.AddFrameworkRequest();
      case 'RemoveFramework': return $3.RemoveFrameworkRequest();
      case 'SearchRegistry': return $3.SearchRegistryRequest();
      case 'RegisterMember': return $3.RegisterMemberRequest();
      case 'UnregisterMember': return $3.UnregisterMemberRequest();
      case 'GetMembershipStatus': return $3.GetMembershipStatusRequest();
      case 'FetchData': return $3.FetchDataRequest();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'AddFramework': return this.addFramework(ctx, request as $3.AddFrameworkRequest);
      case 'RemoveFramework': return this.removeFramework(ctx, request as $3.RemoveFrameworkRequest);
      case 'SearchRegistry': return this.searchRegistry(ctx, request as $3.SearchRegistryRequest);
      case 'RegisterMember': return this.registerMember(ctx, request as $3.RegisterMemberRequest);
      case 'UnregisterMember': return this.unregisterMember(ctx, request as $3.UnregisterMemberRequest);
      case 'GetMembershipStatus': return this.getMembershipStatus(ctx, request as $3.GetMembershipStatusRequest);
      case 'FetchData': return this.fetchData(ctx, request as $3.FetchDataRequest);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => TrustRegistryServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => TrustRegistryServiceBase$messageJson;
}

