///
//  Generated code. Do not modify.
//  source: services/file-management/v1/file-management.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'file-management.pb.dart' as $0;
export 'file-management.pb.dart';

class FileManagementClient extends $grpc.Client {
  static final _$uploadFile =
      $grpc.ClientMethod<$0.UploadFileRequest, $0.UploadFileResponse>(
          '/services.filemanagement.v1.FileManagement/UploadFile',
          ($0.UploadFileRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.UploadFileResponse.fromBuffer(value));
  static final _$getFile =
      $grpc.ClientMethod<$0.GetFileRequest, $0.GetFileResponse>(
          '/services.filemanagement.v1.FileManagement/GetFile',
          ($0.GetFileRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetFileResponse.fromBuffer(value));
  static final _$deleteFile =
      $grpc.ClientMethod<$0.DeleteFileRequest, $0.DeleteFileResponse>(
          '/services.filemanagement.v1.FileManagement/DeleteFile',
          ($0.DeleteFileRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.DeleteFileResponse.fromBuffer(value));
  static final _$listFiles =
      $grpc.ClientMethod<$0.ListFilesRequest, $0.ListFilesResponse>(
          '/services.filemanagement.v1.FileManagement/ListFiles',
          ($0.ListFilesRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ListFilesResponse.fromBuffer(value));
  static final _$getStorageStats =
      $grpc.ClientMethod<$0.GetStorageStatsRequest, $0.GetStorageStatsResponse>(
          '/services.filemanagement.v1.FileManagement/GetStorageStats',
          ($0.GetStorageStatsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetStorageStatsResponse.fromBuffer(value));

  FileManagementClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.UploadFileResponse> uploadFile(
      $0.UploadFileRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$uploadFile, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetFileResponse> getFile($0.GetFileRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getFile, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeleteFileResponse> deleteFile(
      $0.DeleteFileRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteFile, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListFilesResponse> listFiles(
      $0.ListFilesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listFiles, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetStorageStatsResponse> getStorageStats(
      $0.GetStorageStatsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getStorageStats, request, options: options);
  }
}

abstract class FileManagementServiceBase extends $grpc.Service {
  $core.String get $name => 'services.filemanagement.v1.FileManagement';

  FileManagementServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.UploadFileRequest, $0.UploadFileResponse>(
        'UploadFile',
        uploadFile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UploadFileRequest.fromBuffer(value),
        ($0.UploadFileResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetFileRequest, $0.GetFileResponse>(
        'GetFile',
        getFile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetFileRequest.fromBuffer(value),
        ($0.GetFileResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteFileRequest, $0.DeleteFileResponse>(
        'DeleteFile',
        deleteFile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeleteFileRequest.fromBuffer(value),
        ($0.DeleteFileResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListFilesRequest, $0.ListFilesResponse>(
        'ListFiles',
        listFiles_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListFilesRequest.fromBuffer(value),
        ($0.ListFilesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetStorageStatsRequest,
            $0.GetStorageStatsResponse>(
        'GetStorageStats',
        getStorageStats_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetStorageStatsRequest.fromBuffer(value),
        ($0.GetStorageStatsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.UploadFileResponse> uploadFile_Pre($grpc.ServiceCall call,
      $async.Future<$0.UploadFileRequest> request) async {
    return uploadFile(call, await request);
  }

  $async.Future<$0.GetFileResponse> getFile_Pre(
      $grpc.ServiceCall call, $async.Future<$0.GetFileRequest> request) async {
    return getFile(call, await request);
  }

  $async.Future<$0.DeleteFileResponse> deleteFile_Pre($grpc.ServiceCall call,
      $async.Future<$0.DeleteFileRequest> request) async {
    return deleteFile(call, await request);
  }

  $async.Future<$0.ListFilesResponse> listFiles_Pre($grpc.ServiceCall call,
      $async.Future<$0.ListFilesRequest> request) async {
    return listFiles(call, await request);
  }

  $async.Future<$0.GetStorageStatsResponse> getStorageStats_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetStorageStatsRequest> request) async {
    return getStorageStats(call, await request);
  }

  $async.Future<$0.UploadFileResponse> uploadFile(
      $grpc.ServiceCall call, $0.UploadFileRequest request);
  $async.Future<$0.GetFileResponse> getFile(
      $grpc.ServiceCall call, $0.GetFileRequest request);
  $async.Future<$0.DeleteFileResponse> deleteFile(
      $grpc.ServiceCall call, $0.DeleteFileRequest request);
  $async.Future<$0.ListFilesResponse> listFiles(
      $grpc.ServiceCall call, $0.ListFilesRequest request);
  $async.Future<$0.GetStorageStatsResponse> getStorageStats(
      $grpc.ServiceCall call, $0.GetStorageStatsRequest request);
}
