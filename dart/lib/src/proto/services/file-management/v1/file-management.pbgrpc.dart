//
//  Generated code. Do not modify.
//  source: services/file-management/v1/file-management.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'file-management.pb.dart' as $1;

export 'file-management.pb.dart';

@$pb.GrpcServiceName('services.filemanagement.v1.FileManagement')
class FileManagementClient extends $grpc.Client {
  static final _$uploadFile =
      $grpc.ClientMethod<$1.UploadFileRequest, $1.UploadFileResponse>(
          '/services.filemanagement.v1.FileManagement/UploadFile',
          ($1.UploadFileRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.UploadFileResponse.fromBuffer(value));
  static final _$getFile =
      $grpc.ClientMethod<$1.GetFileRequest, $1.GetFileResponse>(
          '/services.filemanagement.v1.FileManagement/GetFile',
          ($1.GetFileRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.GetFileResponse.fromBuffer(value));
  static final _$deleteFile =
      $grpc.ClientMethod<$1.DeleteFileRequest, $1.DeleteFileResponse>(
          '/services.filemanagement.v1.FileManagement/DeleteFile',
          ($1.DeleteFileRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.DeleteFileResponse.fromBuffer(value));
  static final _$listFiles =
      $grpc.ClientMethod<$1.ListFilesRequest, $1.ListFilesResponse>(
          '/services.filemanagement.v1.FileManagement/ListFiles',
          ($1.ListFilesRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.ListFilesResponse.fromBuffer(value));
  static final _$getStorageStats =
      $grpc.ClientMethod<$1.GetStorageStatsRequest, $1.GetStorageStatsResponse>(
          '/services.filemanagement.v1.FileManagement/GetStorageStats',
          ($1.GetStorageStatsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.GetStorageStatsResponse.fromBuffer(value));

  FileManagementClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.UploadFileResponse> uploadFile(
      $1.UploadFileRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$uploadFile, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetFileResponse> getFile($1.GetFileRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getFile, request, options: options);
  }

  $grpc.ResponseFuture<$1.DeleteFileResponse> deleteFile(
      $1.DeleteFileRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteFile, request, options: options);
  }

  $grpc.ResponseFuture<$1.ListFilesResponse> listFiles(
      $1.ListFilesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listFiles, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetStorageStatsResponse> getStorageStats(
      $1.GetStorageStatsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getStorageStats, request, options: options);
  }
}

@$pb.GrpcServiceName('services.filemanagement.v1.FileManagement')
abstract class FileManagementServiceBase extends $grpc.Service {
  $core.String get $name => 'services.filemanagement.v1.FileManagement';

  FileManagementServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.UploadFileRequest, $1.UploadFileResponse>(
        'UploadFile',
        uploadFile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.UploadFileRequest.fromBuffer(value),
        ($1.UploadFileResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetFileRequest, $1.GetFileResponse>(
        'GetFile',
        getFile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetFileRequest.fromBuffer(value),
        ($1.GetFileResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.DeleteFileRequest, $1.DeleteFileResponse>(
        'DeleteFile',
        deleteFile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.DeleteFileRequest.fromBuffer(value),
        ($1.DeleteFileResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.ListFilesRequest, $1.ListFilesResponse>(
        'ListFiles',
        listFiles_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.ListFilesRequest.fromBuffer(value),
        ($1.ListFilesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetStorageStatsRequest,
            $1.GetStorageStatsResponse>(
        'GetStorageStats',
        getStorageStats_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.GetStorageStatsRequest.fromBuffer(value),
        ($1.GetStorageStatsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.UploadFileResponse> uploadFile_Pre($grpc.ServiceCall call,
      $async.Future<$1.UploadFileRequest> request) async {
    return uploadFile(call, await request);
  }

  $async.Future<$1.GetFileResponse> getFile_Pre(
      $grpc.ServiceCall call, $async.Future<$1.GetFileRequest> request) async {
    return getFile(call, await request);
  }

  $async.Future<$1.DeleteFileResponse> deleteFile_Pre($grpc.ServiceCall call,
      $async.Future<$1.DeleteFileRequest> request) async {
    return deleteFile(call, await request);
  }

  $async.Future<$1.ListFilesResponse> listFiles_Pre($grpc.ServiceCall call,
      $async.Future<$1.ListFilesRequest> request) async {
    return listFiles(call, await request);
  }

  $async.Future<$1.GetStorageStatsResponse> getStorageStats_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.GetStorageStatsRequest> request) async {
    return getStorageStats(call, await request);
  }

  $async.Future<$1.UploadFileResponse> uploadFile(
      $grpc.ServiceCall call, $1.UploadFileRequest request);
  $async.Future<$1.GetFileResponse> getFile(
      $grpc.ServiceCall call, $1.GetFileRequest request);
  $async.Future<$1.DeleteFileResponse> deleteFile(
      $grpc.ServiceCall call, $1.DeleteFileRequest request);
  $async.Future<$1.ListFilesResponse> listFiles(
      $grpc.ServiceCall call, $1.ListFilesRequest request);
  $async.Future<$1.GetStorageStatsResponse> getStorageStats(
      $grpc.ServiceCall call, $1.GetStorageStatsRequest request);
}
