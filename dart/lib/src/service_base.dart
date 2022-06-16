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

class MetadataInterceptor extends ClientInterceptor {
  static const skipRoutes = [
    "/services.account.v1.Account/SignIn",
    "/services.provider.v1.Provider/CreateEcosystem",
    "/services.provider.v1.Provider/LogIn",
    "/services.provider.v1.Provider/LogInConfirm",
  ];
  late ServiceBase serviceContext;
  MetadataInterceptor(ServiceBase base) {
    serviceContext = base;
  }

  FutureOr<void> addMetadataProvider(Map<String, String> metadata, String uri,
      $pb.GeneratedMessage request) async {}

  @override
  ResponseFuture<R> interceptUnary<Q, R>(
      ClientMethod<Q, R> method, Q request, CallOptions options, invoker) {
    FutureOr<void> _provider(Map<String, String> metadata, String uri) async {
      var buildMetadata = true;
      buildMetadata = !skipRoutes.any((element) => element == method.path) || options.metadata['authenticateCall']?.toLowerCase() != "false";
      if (buildMetadata) {
        metadata['authorization'] =
            serviceContext.buildMetadata(request as $pb.GeneratedMessage);
      }
    }

    return super.interceptUnary(method, request,
        options.mergedWith(CallOptions(providers: [_provider])), invoker);
  }
}

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

  String buildMetadata($pb.GeneratedMessage request) {
    if (serviceOptions.authToken == "") {
      throw Exception(
          "cannot call authenticated endpoint: auth token must be set in service options");
    }
    return _securityProvider.getAuthHeader(
        AccountProfile.fromBuffer(
            Base64Decoder().convert(serviceOptions.authToken)),
        request);
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
