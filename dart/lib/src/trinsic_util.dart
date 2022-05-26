import 'dart:io';

import 'package:trinsic_dart/src/proto/sdk/options/v1/options.pb.dart';

ServiceOptions trinsicConfig({String authToken = ""}) {
  String endpoint =
      Platform.environment["TEST_SERVER_ENDPOINT"] ?? "prod.trinsic.cloud";
  String port = Platform.environment["TEST_SERVER_PORT"] ?? "443";
  String useTls = Platform.environment["TEST_SERVER_USE_TLS"] ?? "true";
  String ecosystemName =
      Platform.environment["TEST_SERVER_ECOSYSTEM"] ?? "default";

  return ServiceOptions(
      authToken: authToken,
      defaultEcosystem: ecosystemName,
      serverEndpoint: endpoint,
      serverPort: int.parse(port),
      serverUseTls: useTls.toLowerCase() != "false");
}
