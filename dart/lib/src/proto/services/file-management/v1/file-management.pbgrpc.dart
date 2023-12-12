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

import 'file-management.pb.dart' as $3;

export 'file-management.pb.dart';

@$pb.GrpcServiceName('services.filemanagement.v1.FileManagement')
class FileManagementClient extends $grpc.Client {
  static final _$uploadFile =
      $grpc.ClientMethod<$3.UploadFileRequest, $3.UploadFileResponse>(
          '/services.filemanagement.v1.FileManagement/UploadFile',
          ($3.UploadFileRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.UploadFileResponse.fromBuffer(value));
  static final _$getFile =
      $grpc.ClientMethod<$3.GetFileRequest, $3.GetFileResponse>(
          '/services.filemanagement.v1.FileManagement/GetFile',
          ($3.GetFileRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.GetFileResponse.fromBuffer(value));
  static final _$deleteFile =
      $grpc.ClientMethod<$3.DeleteFileRequest, $3.DeleteFileResponse>(
          '/services.filemanagement.v1.FileManagement/DeleteFile',
          ($3.DeleteFileRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.DeleteFileResponse.fromBuffer(value));
  static final _$listFiles =
      $grpc.ClientMethod<$3.ListFilesRequest, $3.ListFilesResponse>(
          '/services.filemanagement.v1.FileManagement/ListFiles',
          ($3.ListFilesRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.ListFilesResponse.fromBuffer(value));
  static final _$getStorageStats =
      $grpc.ClientMethod<$3.GetStorageStatsRequest, $3.GetStorageStatsResponse>(
          '/services.filemanagement.v1.FileManagement/GetStorageStats',
          ($3.GetStorageStatsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.GetStorageStatsResponse.fromBuffer(value));

  FileManagementClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$3.UploadFileResponse> uploadFile(
      $3.UploadFileRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$uploadFile, request, options: options);
  }

  $grpc.ResponseFuture<$3.GetFileResponse> getFile($3.GetFileRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getFile, request, options: options);
  }

  $grpc.ResponseFuture<$3.DeleteFileResponse> deleteFile(
      $3.DeleteFileRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteFile, request, options: options);
  }

  $grpc.ResponseFuture<$3.ListFilesResponse> listFiles(
      $3.ListFilesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listFiles, request, options: options);
  }

  $grpc.ResponseFuture<$3.GetStorageStatsResponse> getStorageStats(
      $3.GetStorageStatsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getStorageStats, request, options: options);
  }
}

@$pb.GrpcServiceName('services.filemanagement.v1.FileManagement')
abstract class FileManagementServiceBase extends $grpc.Service {
  $core.String get $name => 'services.filemanagement.v1.FileManagement';

  FileManagementServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.UploadFileRequest, $3.UploadFileResponse>(
        'UploadFile',
        uploadFile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.UploadFileRequest.fromBuffer(value),
        ($3.UploadFileResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.GetFileRequest, $3.GetFileResponse>(
        'GetFile',
        getFile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.GetFileRequest.fromBuffer(value),
        ($3.GetFileResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.DeleteFileRequest, $3.DeleteFileResponse>(
        'DeleteFile',
        deleteFile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.DeleteFileRequest.fromBuffer(value),
        ($3.DeleteFileResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.ListFilesRequest, $3.ListFilesResponse>(
        'ListFiles',
        listFiles_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.ListFilesRequest.fromBuffer(value),
        ($3.ListFilesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.GetStorageStatsRequest,
            $3.GetStorageStatsResponse>(
        'GetStorageStats',
        getStorageStats_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $3.GetStorageStatsRequest.fromBuffer(value),
        ($3.GetStorageStatsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$3.UploadFileResponse> uploadFile_Pre($grpc.ServiceCall call,
      $async.Future<$3.UploadFileRequest> request) async {
    return uploadFile(call, await request);
  }

  $async.Future<$3.GetFileResponse> getFile_Pre(
      $grpc.ServiceCall call, $async.Future<$3.GetFileRequest> request) async {
    return getFile(call, await request);
  }

  $async.Future<$3.DeleteFileResponse> deleteFile_Pre($grpc.ServiceCall call,
      $async.Future<$3.DeleteFileRequest> request) async {
    return deleteFile(call, await request);
  }

  $async.Future<$3.ListFilesResponse> listFiles_Pre($grpc.ServiceCall call,
      $async.Future<$3.ListFilesRequest> request) async {
    return listFiles(call, await request);
  }

  $async.Future<$3.GetStorageStatsResponse> getStorageStats_Pre(
      $grpc.ServiceCall call,
      $async.Future<$3.GetStorageStatsRequest> request) async {
    return getStorageStats(call, await request);
  }

  $async.Future<$3.UploadFileResponse> uploadFile(
      $grpc.ServiceCall call, $3.UploadFileRequest request);
  $async.Future<$3.GetFileResponse> getFile(
      $grpc.ServiceCall call, $3.GetFileRequest request);
  $async.Future<$3.DeleteFileResponse> deleteFile(
      $grpc.ServiceCall call, $3.DeleteFileRequest request);
  $async.Future<$3.ListFilesResponse> listFiles(
      $grpc.ServiceCall call, $3.ListFilesRequest request);
  $async.Future<$3.GetStorageStatsResponse> getStorageStats(
      $grpc.ServiceCall call, $3.GetStorageStatsRequest request);
}
