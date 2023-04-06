///
//  Generated code. Do not modify.
//  source: services/file-management/v1/file-management.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'file-management.pb.dart' as $4;
export 'file-management.pb.dart';

class FileManagementClient extends $grpc.Client {
  static final _$uploadFile =
      $grpc.ClientMethod<$4.UploadFileRequest, $4.UploadFileResponse>(
          '/services.filemanagement.v1.FileManagement/UploadFile',
          ($4.UploadFileRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.UploadFileResponse.fromBuffer(value));
  static final _$getFile =
      $grpc.ClientMethod<$4.GetFileRequest, $4.GetFileResponse>(
          '/services.filemanagement.v1.FileManagement/GetFile',
          ($4.GetFileRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.GetFileResponse.fromBuffer(value));
  static final _$deleteFile =
      $grpc.ClientMethod<$4.DeleteFileRequest, $4.DeleteFileResponse>(
          '/services.filemanagement.v1.FileManagement/DeleteFile',
          ($4.DeleteFileRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.DeleteFileResponse.fromBuffer(value));
  static final _$listFiles =
      $grpc.ClientMethod<$4.ListFilesRequest, $4.ListFilesResponse>(
          '/services.filemanagement.v1.FileManagement/ListFiles',
          ($4.ListFilesRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.ListFilesResponse.fromBuffer(value));
  static final _$getStorageStats =
      $grpc.ClientMethod<$4.GetStorageStatsRequest, $4.GetStorageStatsResponse>(
          '/services.filemanagement.v1.FileManagement/GetStorageStats',
          ($4.GetStorageStatsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.GetStorageStatsResponse.fromBuffer(value));

  FileManagementClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$4.UploadFileResponse> uploadFile(
      $4.UploadFileRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$uploadFile, request, options: options);
  }

  $grpc.ResponseFuture<$4.GetFileResponse> getFile($4.GetFileRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getFile, request, options: options);
  }

  $grpc.ResponseFuture<$4.DeleteFileResponse> deleteFile(
      $4.DeleteFileRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteFile, request, options: options);
  }

  $grpc.ResponseFuture<$4.ListFilesResponse> listFiles(
      $4.ListFilesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listFiles, request, options: options);
  }

  $grpc.ResponseFuture<$4.GetStorageStatsResponse> getStorageStats(
      $4.GetStorageStatsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getStorageStats, request, options: options);
  }
}

abstract class FileManagementServiceBase extends $grpc.Service {
  $core.String get $name => 'services.filemanagement.v1.FileManagement';

  FileManagementServiceBase() {
    $addMethod($grpc.ServiceMethod<$4.UploadFileRequest, $4.UploadFileResponse>(
        'UploadFile',
        uploadFile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.UploadFileRequest.fromBuffer(value),
        ($4.UploadFileResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.GetFileRequest, $4.GetFileResponse>(
        'GetFile',
        getFile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.GetFileRequest.fromBuffer(value),
        ($4.GetFileResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.DeleteFileRequest, $4.DeleteFileResponse>(
        'DeleteFile',
        deleteFile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.DeleteFileRequest.fromBuffer(value),
        ($4.DeleteFileResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.ListFilesRequest, $4.ListFilesResponse>(
        'ListFiles',
        listFiles_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.ListFilesRequest.fromBuffer(value),
        ($4.ListFilesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.GetStorageStatsRequest,
            $4.GetStorageStatsResponse>(
        'GetStorageStats',
        getStorageStats_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.GetStorageStatsRequest.fromBuffer(value),
        ($4.GetStorageStatsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$4.UploadFileResponse> uploadFile_Pre($grpc.ServiceCall call,
      $async.Future<$4.UploadFileRequest> request) async {
    return uploadFile(call, await request);
  }

  $async.Future<$4.GetFileResponse> getFile_Pre(
      $grpc.ServiceCall call, $async.Future<$4.GetFileRequest> request) async {
    return getFile(call, await request);
  }

  $async.Future<$4.DeleteFileResponse> deleteFile_Pre($grpc.ServiceCall call,
      $async.Future<$4.DeleteFileRequest> request) async {
    return deleteFile(call, await request);
  }

  $async.Future<$4.ListFilesResponse> listFiles_Pre($grpc.ServiceCall call,
      $async.Future<$4.ListFilesRequest> request) async {
    return listFiles(call, await request);
  }

  $async.Future<$4.GetStorageStatsResponse> getStorageStats_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.GetStorageStatsRequest> request) async {
    return getStorageStats(call, await request);
  }

  $async.Future<$4.UploadFileResponse> uploadFile(
      $grpc.ServiceCall call, $4.UploadFileRequest request);
  $async.Future<$4.GetFileResponse> getFile(
      $grpc.ServiceCall call, $4.GetFileRequest request);
  $async.Future<$4.DeleteFileResponse> deleteFile(
      $grpc.ServiceCall call, $4.DeleteFileRequest request);
  $async.Future<$4.ListFilesResponse> listFiles(
      $grpc.ServiceCall call, $4.ListFilesRequest request);
  $async.Future<$4.GetStorageStatsResponse> getStorageStats(
      $grpc.ServiceCall call, $4.GetStorageStatsRequest request);
}
