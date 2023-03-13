import 'package:trinsic_dart/src/proto/sdk/options/v1/options.pb.dart';
import 'package:trinsic_dart/src/proto/services/file-management/v1/file-management.pbgrpc.dart';
import 'package:trinsic_dart/src/service_base.dart';
import 'package:trinsic_dart/src/storage/token_provider.dart';

class FileManagementService extends ServiceBase {
  late FileManagementClient client;

  FileManagementService(
      ServiceOptions? serverOptions, ITokenProvider? tokenProvider)
      : super(serverOptions, tokenProvider) {
    client = FileManagementClient(super.channel);
  }
// BEGIN Code generated by protoc-gen-trinsic. DO NOT EDIT.
// target: /home/runner/work/sdk/sdk/dart/lib/src/file_management_service.dart

  @Deprecated('This method is experimental')
  Future<UploadFileResponse> uploadFile(UploadFileRequest request) async {
    /// This method is experimental
    /// Upload a file to Trinsic's CDN

    return client.uploadFile(request,
        options: await buildMetadata(request: request));
  }

  @Deprecated('This method is experimental')
  Future<GetFileResponse> getFile(GetFileRequest request) async {
    /// This method is experimental
    /// Fetch information about a file by its ID

    return client.getFile(request,
        options: await buildMetadata(request: request));
  }

  @Deprecated('This method is experimental')
  Future<DeleteFileResponse> deleteFile(DeleteFileRequest request) async {
    /// This method is experimental
    /// Delete a file by its ID

    return client.deleteFile(request,
        options: await buildMetadata(request: request));
  }

  @Deprecated('This method is experimental')
  Future<ListFilesResponse> listFiles(ListFilesRequest request) async {
    /// This method is experimental
    /// List files the calling account has uploaded

    return client.listFiles(request,
        options: await buildMetadata(request: request));
  }

  @Deprecated('This method is experimental')
  Future<GetStorageStatsResponse> getStorageStats() async {
    /// This method is experimental
    /// Get statistics about files uploaded by the calling account
    var request = GetStorageStatsRequest();
    return client.getStorageStats(request,
        options: await buildMetadata(request: request));
  }
// END Code generated by protoc-gen-trinsic. DO NOT EDIT.
}
