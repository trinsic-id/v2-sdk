import 'package:grpc/grpc.dart';
import 'package:protobuf/protobuf.dart' as $pb;
import 'package:trinsic_dart/src/proto/sdk/options/v1/options.pb.dart';
import 'package:trinsic_dart/src/trinsic_util.dart';

class ServiceBase {
  late TrinsicOptions serviceOptions;
  late ClientChannel channel;

  ServiceBase(TrinsicOptions? serverOptions) {
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
