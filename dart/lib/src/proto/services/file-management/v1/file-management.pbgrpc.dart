//
//  Generated code. Do not modify.
//  source: services/file-management/v1/file-management.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'file-management.pb.dart' as $2;

export 'file-management.pb.dart';

@$pb.GrpcServiceName('services.filemanagement.v1.FileManagement')
class FileManagementClient extends $grpc.Client {
  static final _$uploadFile =
      $grpc.ClientMethod<$2.UploadFileRequest, $2.UploadFileResponse>(
          '/services.filemanagement.v1.FileManagement/UploadFile',
          ($2.UploadFileRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.UploadFileResponse.fromBuffer(value));
  static final _$getFile =
      $grpc.ClientMethod<$2.GetFileRequest, $2.GetFileResponse>(
          '/services.filemanagement.v1.FileManagement/GetFile',
          ($2.GetFileRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.GetFileResponse.fromBuffer(value));
  static final _$deleteFile =
      $grpc.ClientMethod<$2.DeleteFileRequest, $2.DeleteFileResponse>(
          '/services.filemanagement.v1.FileManagement/DeleteFile',
          ($2.DeleteFileRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.DeleteFileResponse.fromBuffer(value));
  static final _$listFiles =
      $grpc.ClientMethod<$2.ListFilesRequest, $2.ListFilesResponse>(
          '/services.filemanagement.v1.FileManagement/ListFiles',
          ($2.ListFilesRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.ListFilesResponse.fromBuffer(value));
  static final _$getStorageStats =
      $grpc.ClientMethod<$2.GetStorageStatsRequest, $2.GetStorageStatsResponse>(
          '/services.filemanagement.v1.FileManagement/GetStorageStats',
          ($2.GetStorageStatsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.GetStorageStatsResponse.fromBuffer(value));

  FileManagementClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$2.UploadFileResponse> uploadFile(
      $2.UploadFileRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$uploadFile, request, options: options);
  }

  $grpc.ResponseFuture<$2.GetFileResponse> getFile($2.GetFileRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getFile, request, options: options);
  }

  $grpc.ResponseFuture<$2.DeleteFileResponse> deleteFile(
      $2.DeleteFileRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteFile, request, options: options);
  }

  $grpc.ResponseFuture<$2.ListFilesResponse> listFiles(
      $2.ListFilesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listFiles, request, options: options);
  }

  $grpc.ResponseFuture<$2.GetStorageStatsResponse> getStorageStats(
      $2.GetStorageStatsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getStorageStats, request, options: options);
  }
}

@$pb.GrpcServiceName('services.filemanagement.v1.FileManagement')
abstract class FileManagementServiceBase extends $grpc.Service {
  $core.String get $name => 'services.filemanagement.v1.FileManagement';

  FileManagementServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.UploadFileRequest, $2.UploadFileResponse>(
        'UploadFile',
        uploadFile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.UploadFileRequest.fromBuffer(value),
        ($2.UploadFileResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.GetFileRequest, $2.GetFileResponse>(
        'GetFile',
        getFile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.GetFileRequest.fromBuffer(value),
        ($2.GetFileResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.DeleteFileRequest, $2.DeleteFileResponse>(
        'DeleteFile',
        deleteFile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.DeleteFileRequest.fromBuffer(value),
        ($2.DeleteFileResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ListFilesRequest, $2.ListFilesResponse>(
        'ListFiles',
        listFiles_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.ListFilesRequest.fromBuffer(value),
        ($2.ListFilesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.GetStorageStatsRequest,
            $2.GetStorageStatsResponse>(
        'GetStorageStats',
        getStorageStats_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.GetStorageStatsRequest.fromBuffer(value),
        ($2.GetStorageStatsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$2.UploadFileResponse> uploadFile_Pre($grpc.ServiceCall call,
      $async.Future<$2.UploadFileRequest> request) async {
    return uploadFile(call, await request);
  }

  $async.Future<$2.GetFileResponse> getFile_Pre(
      $grpc.ServiceCall call, $async.Future<$2.GetFileRequest> request) async {
    return getFile(call, await request);
  }

  $async.Future<$2.DeleteFileResponse> deleteFile_Pre($grpc.ServiceCall call,
      $async.Future<$2.DeleteFileRequest> request) async {
    return deleteFile(call, await request);
  }

  $async.Future<$2.ListFilesResponse> listFiles_Pre($grpc.ServiceCall call,
      $async.Future<$2.ListFilesRequest> request) async {
    return listFiles(call, await request);
  }

  $async.Future<$2.GetStorageStatsResponse> getStorageStats_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.GetStorageStatsRequest> request) async {
    return getStorageStats(call, await request);
  }

  $async.Future<$2.UploadFileResponse> uploadFile(
      $grpc.ServiceCall call, $2.UploadFileRequest request);
  $async.Future<$2.GetFileResponse> getFile(
      $grpc.ServiceCall call, $2.GetFileRequest request);
  $async.Future<$2.DeleteFileResponse> deleteFile(
      $grpc.ServiceCall call, $2.DeleteFileRequest request);
  $async.Future<$2.ListFilesResponse> listFiles(
      $grpc.ServiceCall call, $2.ListFilesRequest request);
  $async.Future<$2.GetStorageStatsResponse> getStorageStats(
      $grpc.ServiceCall call, $2.GetStorageStatsRequest request);
}
