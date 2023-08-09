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

  var trinsicOptions = TrinsicOptions();
  trinsicOptions.authToken = authToken;
  trinsicOptions.serverEndpoint = endpoint;
  trinsicOptions.serverPort = int.parse(port);
  trinsicOptions.serverUseTls = useTls.toLowerCase() != "false";
  return trinsicOptions;
}

String getSdkVersion() {
  const sdkVersion = "1.11.0";
  return sdkVersion;
}
