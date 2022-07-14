import 'dart:async';
import 'dart:convert';

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:grpc/grpc.dart';
import 'package:okapi_dart/okapi.dart' as okapi;
import 'package:okapi_dart/proto/okapi/hashing/v1/hashing.pb.dart';
import 'package:okapi_dart/proto/okapi/security/v1/security.pb.dart';
import 'package:protobuf/protobuf.dart' as $pb;
import 'package:trinsic_dart/src/proto/sdk/options/v1/options.pb.dart';
import 'package:trinsic_dart/src/proto/services/account/v1/account.pb.dart';
import 'package:trinsic_dart/src/proto/services/common/v1/common.pb.dart';
import 'package:trinsic_dart/src/trinsic_util.dart';

class ServiceBase {
  late ServiceOptions serviceOptions;
  final ISecurityProvider _securityProvider = OberonSecurityProvider();
  late ClientChannel channel;

  ServiceBase(ServiceOptions? serverOptions) {
    serviceOptions = serverOptions ?? trinsicConfig();
    channel = ClientChannel(serviceOptions.serverEndpoint,
        port: serviceOptions.serverPort,
        options: ChannelOptions(
          credentials: serviceOptions.serverUseTls
              ? ChannelCredentials.secure()
              : ChannelCredentials.insecure(),
        ));
  }

  void close() {
    throw UnsupportedError("Closing the channel not yet supported");
  }

  CallOptions buildMetadata({$pb.GeneratedMessage? request}) {
    var metadata = <String, String>{};
    metadata['TrinsicOkapiVersion'] = okapi.Metadata.getMetadata().version;
    metadata['TrinsicSDKLanguage'] = "dart";
    metadata['TrinsicSDKVersion'] = getSdkVersion();

    if (request != null) {
      if (serviceOptions.authToken == "") {
        throw Exception(
            "cannot call authenticated endpoint: auth token must be set in service options");
      }
      metadata['authorization'] = _securityProvider.getAuthHeader(
          AccountProfile.fromBuffer(
              Base64Decoder().convert(serviceOptions.authToken)),
          request);
    }
    return CallOptions(metadata: metadata);
  }

  void setAuthToken(String authToken) {
    serviceOptions.authToken = authToken;
  }
}

abstract class ISecurityProvider {
  String getAuthHeader(AccountProfile profile, $pb.GeneratedMessage message);
}

class OberonSecurityProvider implements ISecurityProvider {
  @override
  String getAuthHeader(AccountProfile profile, $pb.GeneratedMessage message) {
    if (profile.protection.enabled) {
      throw Exception("Token must be unprotected before use");
    }

    // Compute hash request and capture current timestamp
    var requestHash = okapi.Hashing.blake3Hash(
            Blake3HashRequest(data: message.writeToBuffer()))
        .digest;
    var nonce = Nonce(
        timestamp: $fixnum.Int64(DateTime.now().millisecondsSinceEpoch),
        requestHash: requestHash);
    var proof = okapi.Oberon.CreateProof(CreateOberonProofRequest(
        token: profile.authToken,
        data: profile.authData,
        nonce: nonce.writeToBuffer()));

    return "Oberon ver=${1},"
        "proof=${Base64Encoder.urlSafe().convert(proof.proof)},"
        "data=${Base64Encoder.urlSafe().convert(profile.authData)},"
        "nonce=${Base64Encoder.urlSafe().convert(nonce.writeToBuffer())}";
  }
}
