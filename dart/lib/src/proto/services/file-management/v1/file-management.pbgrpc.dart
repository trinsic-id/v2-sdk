///
//  Generated code. Do not modify.
//  source: services/file-management/v1/file-management.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'file-management.pb.dart' as $7;
export 'file-management.pb.dart';

class FileManagementClient extends $grpc.Client {
  static final _$uploadFile =
      $grpc.ClientMethod<$7.UploadFileRequest, $7.UploadFileResponse>(
          '/services.filemanagement.v1.FileManagement/UploadFile',
          ($7.UploadFileRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $7.UploadFileResponse.fromBuffer(value));
  static final _$getFile =
      $grpc.ClientMethod<$7.GetFileRequest, $7.GetFileResponse>(
          '/services.filemanagement.v1.FileManagement/GetFile',
          ($7.GetFileRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $7.GetFileResponse.fromBuffer(value));
  static final _$deleteFile =
      $grpc.ClientMethod<$7.DeleteFileRequest, $7.DeleteFileResponse>(
          '/services.filemanagement.v1.FileManagement/DeleteFile',
          ($7.DeleteFileRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $7.DeleteFileResponse.fromBuffer(value));
  static final _$listFiles =
      $grpc.ClientMethod<$7.ListFilesRequest, $7.ListFilesResponse>(
          '/services.filemanagement.v1.FileManagement/ListFiles',
          ($7.ListFilesRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $7.ListFilesResponse.fromBuffer(value));
  static final _$getStorageStats =
      $grpc.ClientMethod<$7.GetStorageStatsRequest, $7.GetStorageStatsResponse>(
          '/services.filemanagement.v1.FileManagement/GetStorageStats',
          ($7.GetStorageStatsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $7.GetStorageStatsResponse.fromBuffer(value));

  FileManagementClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$7.UploadFileResponse> uploadFile(
      $7.UploadFileRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$uploadFile, request, options: options);
  }

  $grpc.ResponseFuture<$7.GetFileResponse> getFile($7.GetFileRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getFile, request, options: options);
  }

  $grpc.ResponseFuture<$7.DeleteFileResponse> deleteFile(
      $7.DeleteFileRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteFile, request, options: options);
  }

  $grpc.ResponseFuture<$7.ListFilesResponse> listFiles(
      $7.ListFilesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listFiles, request, options: options);
  }

  $grpc.ResponseFuture<$7.GetStorageStatsResponse> getStorageStats(
      $7.GetStorageStatsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getStorageStats, request, options: options);
  }
}

abstract class FileManagementServiceBase extends $grpc.Service {
  $core.String get $name => 'services.filemanagement.v1.FileManagement';

  FileManagementServiceBase() {
    $addMethod($grpc.ServiceMethod<$7.UploadFileRequest, $7.UploadFileResponse>(
        'UploadFile',
        uploadFile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.UploadFileRequest.fromBuffer(value),
        ($7.UploadFileResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.GetFileRequest, $7.GetFileResponse>(
        'GetFile',
        getFile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.GetFileRequest.fromBuffer(value),
        ($7.GetFileResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.DeleteFileRequest, $7.DeleteFileResponse>(
        'DeleteFile',
        deleteFile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.DeleteFileRequest.fromBuffer(value),
        ($7.DeleteFileResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.ListFilesRequest, $7.ListFilesResponse>(
        'ListFiles',
        listFiles_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.ListFilesRequest.fromBuffer(value),
        ($7.ListFilesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.GetStorageStatsRequest,
            $7.GetStorageStatsResponse>(
        'GetStorageStats',
        getStorageStats_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.GetStorageStatsRequest.fromBuffer(value),
        ($7.GetStorageStatsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$7.UploadFileResponse> uploadFile_Pre($grpc.ServiceCall call,
      $async.Future<$7.UploadFileRequest> request) async {
    return uploadFile(call, await request);
  }

  $async.Future<$7.GetFileResponse> getFile_Pre(
      $grpc.ServiceCall call, $async.Future<$7.GetFileRequest> request) async {
    return getFile(call, await request);
  }

  $async.Future<$7.DeleteFileResponse> deleteFile_Pre($grpc.ServiceCall call,
      $async.Future<$7.DeleteFileRequest> request) async {
    return deleteFile(call, await request);
  }

  $async.Future<$7.ListFilesResponse> listFiles_Pre($grpc.ServiceCall call,
      $async.Future<$7.ListFilesRequest> request) async {
    return listFiles(call, await request);
  }

  $async.Future<$7.GetStorageStatsResponse> getStorageStats_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.GetStorageStatsRequest> request) async {
    return getStorageStats(call, await request);
  }

  $async.Future<$7.UploadFileResponse> uploadFile(
      $grpc.ServiceCall call, $7.UploadFileRequest request);
  $async.Future<$7.GetFileResponse> getFile(
      $grpc.ServiceCall call, $7.GetFileRequest request);
  $async.Future<$7.DeleteFileResponse> deleteFile(
      $grpc.ServiceCall call, $7.DeleteFileRequest request);
  $async.Future<$7.ListFilesResponse> listFiles(
      $grpc.ServiceCall call, $7.ListFilesRequest request);
  $async.Future<$7.GetStorageStatsResponse> getStorageStats(
      $grpc.ServiceCall call, $7.GetStorageStatsRequest request);
}
