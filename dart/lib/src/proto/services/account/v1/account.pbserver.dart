///
//  Generated code. Do not modify.
//  source: services/account/v1/account.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core;
import 'account.pb.dart' as $0;
import 'account.pbjson.dart';

export 'account.pb.dart';

abstract class AccountServiceBase extends $pb.GeneratedService {
  $async.Future<$0.SignInResponse> signIn($pb.ServerContext ctx, $0.SignInRequest request);
  $async.Future<$0.InfoResponse> info($pb.ServerContext ctx, $0.InfoRequest request);
  $async.Future<$0.ListDevicesResponse> listDevices($pb.ServerContext ctx, $0.ListDevicesRequest request);
  $async.Future<$0.RevokeDeviceResponse> revokeDevice($pb.ServerContext ctx, $0.RevokeDeviceRequest request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'SignIn': return $0.SignInRequest();
      case 'Info': return $0.InfoRequest();
      case 'ListDevices': return $0.ListDevicesRequest();
      case 'RevokeDevice': return $0.RevokeDeviceRequest();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'SignIn': return this.signIn(ctx, request as $0.SignInRequest);
      case 'Info': return this.info(ctx, request as $0.InfoRequest);
      case 'ListDevices': return this.listDevices(ctx, request as $0.ListDevicesRequest);
      case 'RevokeDevice': return this.revokeDevice(ctx, request as $0.RevokeDeviceRequest);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => AccountServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => AccountServiceBase$messageJson;
}

