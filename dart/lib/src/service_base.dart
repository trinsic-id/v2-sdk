import 'package:grpc/grpc_or_grpcweb.dart';
import 'package:protobuf/protobuf.dart' as $pb;
import 'package:trinsic_dart/src/proto/sdk/options/v1/options.pb.dart';
import 'package:trinsic_dart/src/trinsic_util.dart';

class ServiceBase {
  late TrinsicOptions serviceOptions;
  late GrpcOrGrpcWebClientChannel channel;

  ServiceBase(TrinsicOptions? serverOptions) {
    serviceOptions = serverOptions ?? trinsicConfig();

    channel = GrpcOrGrpcWebClientChannel.toSingleEndpoint(
        host: serviceOptions.serverEndpoint,
        port: serviceOptions.serverPort,
        transportSecure: serviceOptions.serverUseTls);
  }

  void close() {
    throw UnsupportedError("Closing the channel not yet supported");
  }

  Future<CallOptions> buildMetadata({$pb.GeneratedMessage? request}) async {
    var metadata = <String, String>{};
    metadata['TrinsicSDKLanguage'] = "dart";
    metadata['TrinsicSDKVersion'] = getSdkVersion();

    if (request != null) {
      var authToken = serviceOptions.authToken;
      metadata['authorization'] = "Bearer $authToken";
    }
    return CallOptions(metadata: metadata);
  }
}
