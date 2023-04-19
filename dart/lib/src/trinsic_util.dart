import 'dart:io';

import 'package:trinsic_dart/src/proto/sdk/options/v1/options.pb.dart';

TrinsicOptions trinsicConfig({String authToken = ""}) {
  String endpoint = "prod.trinsic.cloud";
  String port = "443";
  String useTls = "true";
  try {
    endpoint =
        Platform.environment["TEST_SERVER_ENDPOINT"] ?? "prod.trinsic.cloud";
    port = Platform.environment["TEST_SERVER_PORT"] ?? "443";
    useTls = Platform.environment["TEST_SERVER_USE_TLS"] ?? "true";
  } on Error {
    // unsupported operation happens in flutter, ignore it.
  }

  return TrinsicOptions(
      authToken: authToken,
      serverEndpoint: endpoint,
      serverPort: int.parse(port),
      serverUseTls: useTls.toLowerCase() != "false");
}

String getSdkVersion() {
  const sdkVersion = "1.11.0-rc4";
  return sdkVersion;
}
