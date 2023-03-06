///
//  Generated code. Do not modify.
//  source: services/file-management/v1/file-management.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'file-management.pb.dart' as $5;
export 'file-management.pb.dart';

class FileManagementClient extends $grpc.Client {
  static final _$uploadFile =
      $grpc.ClientMethod<$5.UploadFileRequest, $5.UploadFileResponse>(
          '/services.filemanagement.v1.FileManagement/UploadFile',
          ($5.UploadFileRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.UploadFileResponse.fromBuffer(value));
  static final _$getFile =
      $grpc.ClientMethod<$5.GetFileRequest, $5.GetFileResponse>(
          '/services.filemanagement.v1.FileManagement/GetFile',
          ($5.GetFileRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.GetFileResponse.fromBuffer(value));
  static final _$deleteFile =
      $grpc.ClientMethod<$5.DeleteFileRequest, $5.DeleteFileResponse>(
          '/services.filemanagement.v1.FileManagement/DeleteFile',
          ($5.DeleteFileRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.DeleteFileResponse.fromBuffer(value));
  static final _$listFiles =
      $grpc.ClientMethod<$5.ListFilesRequest, $5.ListFilesResponse>(
          '/services.filemanagement.v1.FileManagement/ListFiles',
          ($5.ListFilesRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.ListFilesResponse.fromBuffer(value));
  static final _$getStorageStats =
      $grpc.ClientMethod<$5.GetStorageStatsRequest, $5.GetStorageStatsResponse>(
          '/services.filemanagement.v1.FileManagement/GetStorageStats',
          ($5.GetStorageStatsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.GetStorageStatsResponse.fromBuffer(value));

  FileManagementClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$5.UploadFileResponse> uploadFile(
      $5.UploadFileRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$uploadFile, request, options: options);
  }

  $grpc.ResponseFuture<$5.GetFileResponse> getFile($5.GetFileRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getFile, request, options: options);
  }

  $grpc.ResponseFuture<$5.DeleteFileResponse> deleteFile(
      $5.DeleteFileRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteFile, request, options: options);
  }

  $grpc.ResponseFuture<$5.ListFilesResponse> listFiles(
      $5.ListFilesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listFiles, request, options: options);
  }

  $grpc.ResponseFuture<$5.GetStorageStatsResponse> getStorageStats(
      $5.GetStorageStatsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getStorageStats, request, options: options);
  }
}

abstract class FileManagementServiceBase extends $grpc.Service {
  $core.String get $name => 'services.filemanagement.v1.FileManagement';

  FileManagementServiceBase() {
    $addMethod($grpc.ServiceMethod<$5.UploadFileRequest, $5.UploadFileResponse>(
        'UploadFile',
        uploadFile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.UploadFileRequest.fromBuffer(value),
        ($5.UploadFileResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.GetFileRequest, $5.GetFileResponse>(
        'GetFile',
        getFile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.GetFileRequest.fromBuffer(value),
        ($5.GetFileResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.DeleteFileRequest, $5.DeleteFileResponse>(
        'DeleteFile',
        deleteFile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.DeleteFileRequest.fromBuffer(value),
        ($5.DeleteFileResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.ListFilesRequest, $5.ListFilesResponse>(
        'ListFiles',
        listFiles_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.ListFilesRequest.fromBuffer(value),
        ($5.ListFilesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.GetStorageStatsRequest,
            $5.GetStorageStatsResponse>(
        'GetStorageStats',
        getStorageStats_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.GetStorageStatsRequest.fromBuffer(value),
        ($5.GetStorageStatsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$5.UploadFileResponse> uploadFile_Pre($grpc.ServiceCall call,
      $async.Future<$5.UploadFileRequest> request) async {
    return uploadFile(call, await request);
  }

  $async.Future<$5.GetFileResponse> getFile_Pre(
      $grpc.ServiceCall call, $async.Future<$5.GetFileRequest> request) async {
    return getFile(call, await request);
  }

  $async.Future<$5.DeleteFileResponse> deleteFile_Pre($grpc.ServiceCall call,
      $async.Future<$5.DeleteFileRequest> request) async {
    return deleteFile(call, await request);
  }

  $async.Future<$5.ListFilesResponse> listFiles_Pre($grpc.ServiceCall call,
      $async.Future<$5.ListFilesRequest> request) async {
    return listFiles(call, await request);
  }

  $async.Future<$5.GetStorageStatsResponse> getStorageStats_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.GetStorageStatsRequest> request) async {
    return getStorageStats(call, await request);
  }

  $async.Future<$5.UploadFileResponse> uploadFile(
      $grpc.ServiceCall call, $5.UploadFileRequest request);
  $async.Future<$5.GetFileResponse> getFile(
      $grpc.ServiceCall call, $5.GetFileRequest request);
  $async.Future<$5.DeleteFileResponse> deleteFile(
      $grpc.ServiceCall call, $5.DeleteFileRequest request);
  $async.Future<$5.ListFilesResponse> listFiles(
      $grpc.ServiceCall call, $5.ListFilesRequest request);
  $async.Future<$5.GetStorageStatsResponse> getStorageStats(
      $grpc.ServiceCall call, $5.GetStorageStatsRequest request);
}
