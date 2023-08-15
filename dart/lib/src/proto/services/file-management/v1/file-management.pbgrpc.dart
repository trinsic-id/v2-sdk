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

import 'file-management.pb.dart' as $6;

export 'file-management.pb.dart';

@$pb.GrpcServiceName('services.filemanagement.v1.FileManagement')
class FileManagementClient extends $grpc.Client {
  static final _$uploadFile =
      $grpc.ClientMethod<$6.UploadFileRequest, $6.UploadFileResponse>(
          '/services.filemanagement.v1.FileManagement/UploadFile',
          ($6.UploadFileRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $6.UploadFileResponse.fromBuffer(value));
  static final _$getFile =
      $grpc.ClientMethod<$6.GetFileRequest, $6.GetFileResponse>(
          '/services.filemanagement.v1.FileManagement/GetFile',
          ($6.GetFileRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $6.GetFileResponse.fromBuffer(value));
  static final _$deleteFile =
      $grpc.ClientMethod<$6.DeleteFileRequest, $6.DeleteFileResponse>(
          '/services.filemanagement.v1.FileManagement/DeleteFile',
          ($6.DeleteFileRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $6.DeleteFileResponse.fromBuffer(value));
  static final _$listFiles =
      $grpc.ClientMethod<$6.ListFilesRequest, $6.ListFilesResponse>(
          '/services.filemanagement.v1.FileManagement/ListFiles',
          ($6.ListFilesRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $6.ListFilesResponse.fromBuffer(value));
  static final _$getStorageStats =
      $grpc.ClientMethod<$6.GetStorageStatsRequest, $6.GetStorageStatsResponse>(
          '/services.filemanagement.v1.FileManagement/GetStorageStats',
          ($6.GetStorageStatsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $6.GetStorageStatsResponse.fromBuffer(value));

  FileManagementClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$6.UploadFileResponse> uploadFile(
      $6.UploadFileRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$uploadFile, request, options: options);
  }

  $grpc.ResponseFuture<$6.GetFileResponse> getFile($6.GetFileRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getFile, request, options: options);
  }

  $grpc.ResponseFuture<$6.DeleteFileResponse> deleteFile(
      $6.DeleteFileRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteFile, request, options: options);
  }

  $grpc.ResponseFuture<$6.ListFilesResponse> listFiles(
      $6.ListFilesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listFiles, request, options: options);
  }

  $grpc.ResponseFuture<$6.GetStorageStatsResponse> getStorageStats(
      $6.GetStorageStatsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getStorageStats, request, options: options);
  }
}

@$pb.GrpcServiceName('services.filemanagement.v1.FileManagement')
abstract class FileManagementServiceBase extends $grpc.Service {
  $core.String get $name => 'services.filemanagement.v1.FileManagement';

  FileManagementServiceBase() {
    $addMethod($grpc.ServiceMethod<$6.UploadFileRequest, $6.UploadFileResponse>(
        'UploadFile',
        uploadFile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.UploadFileRequest.fromBuffer(value),
        ($6.UploadFileResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.GetFileRequest, $6.GetFileResponse>(
        'GetFile',
        getFile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.GetFileRequest.fromBuffer(value),
        ($6.GetFileResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.DeleteFileRequest, $6.DeleteFileResponse>(
        'DeleteFile',
        deleteFile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.DeleteFileRequest.fromBuffer(value),
        ($6.DeleteFileResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.ListFilesRequest, $6.ListFilesResponse>(
        'ListFiles',
        listFiles_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.ListFilesRequest.fromBuffer(value),
        ($6.ListFilesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.GetStorageStatsRequest,
            $6.GetStorageStatsResponse>(
        'GetStorageStats',
        getStorageStats_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.GetStorageStatsRequest.fromBuffer(value),
        ($6.GetStorageStatsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$6.UploadFileResponse> uploadFile_Pre($grpc.ServiceCall call,
      $async.Future<$6.UploadFileRequest> request) async {
    return uploadFile(call, await request);
  }

  $async.Future<$6.GetFileResponse> getFile_Pre(
      $grpc.ServiceCall call, $async.Future<$6.GetFileRequest> request) async {
    return getFile(call, await request);
  }

  $async.Future<$6.DeleteFileResponse> deleteFile_Pre($grpc.ServiceCall call,
      $async.Future<$6.DeleteFileRequest> request) async {
    return deleteFile(call, await request);
  }

  $async.Future<$6.ListFilesResponse> listFiles_Pre($grpc.ServiceCall call,
      $async.Future<$6.ListFilesRequest> request) async {
    return listFiles(call, await request);
  }

  $async.Future<$6.GetStorageStatsResponse> getStorageStats_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.GetStorageStatsRequest> request) async {
    return getStorageStats(call, await request);
  }

  $async.Future<$6.UploadFileResponse> uploadFile(
      $grpc.ServiceCall call, $6.UploadFileRequest request);
  $async.Future<$6.GetFileResponse> getFile(
      $grpc.ServiceCall call, $6.GetFileRequest request);
  $async.Future<$6.DeleteFileResponse> deleteFile(
      $grpc.ServiceCall call, $6.DeleteFileRequest request);
  $async.Future<$6.ListFilesResponse> listFiles(
      $grpc.ServiceCall call, $6.ListFilesRequest request);
  $async.Future<$6.GetStorageStatsResponse> getStorageStats(
      $grpc.ServiceCall call, $6.GetStorageStatsRequest request);
}
