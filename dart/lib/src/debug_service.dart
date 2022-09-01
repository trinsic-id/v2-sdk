import 'package:trinsic_dart/src/proto/google/protobuf/empty.pb.dart';
import 'package:trinsic_dart/src/proto/sdk/options/v1/options.pb.dart';
import 'package:trinsic_dart/src/proto/services/debug/v1/debug.pbgrpc.dart';
import 'package:trinsic_dart/src/service_base.dart';

class DebugService extends ServiceBase {
  late DebuggingClient client;

  DebugService(ServiceOptions? serverOptions) : super(serverOptions) {
    client = DebuggingClient(super.channel);
  }
// BEGIN Code generated by protoc-gen-trinsic. DO NOT EDIT.
// target: C:\work\sdk\dart\lib\src\debug_service.dart

  Future<Empty> callEmpty(Empty request) async {
    return await client.callEmpty(request,
        options: buildMetadata(request: request));
  }

  Future<Empty> callEmptyAuth(Empty request) async {
    return await client.callEmptyAuth(request,
        options: buildMetadata(request: request));
  }
// END Code generated by protoc-gen-trinsic. DO NOT EDIT.
}