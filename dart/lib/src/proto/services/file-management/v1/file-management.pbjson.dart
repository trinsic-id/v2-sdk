///
//  Generated code. Do not modify.
//  source: services/file-management/v1/file-management.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use fileDescriptor instead')
const File$json = const {
  '1': 'File',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'uploader_id', '3': 2, '4': 1, '5': 9, '10': 'uploaderId'},
    const {'1': 'size', '3': 3, '4': 1, '5': 13, '10': 'size'},
    const {'1': 'mime_type', '3': 4, '4': 1, '5': 9, '10': 'mimeType'},
    const {'1': 'uploaded', '3': 5, '4': 1, '5': 9, '10': 'uploaded'},
    const {'1': 'url', '3': 6, '4': 1, '5': 9, '10': 'url'},
  ],
};

/// Descriptor for `File`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fileDescriptor = $convert.base64Decode(
    'CgRGaWxlEg4KAmlkGAEgASgJUgJpZBIfCgt1cGxvYWRlcl9pZBgCIAEoCVIKdXBsb2FkZXJJZBISCgRzaXplGAMgASgNUgRzaXplEhsKCW1pbWVfdHlwZRgEIAEoCVIIbWltZVR5cGUSGgoIdXBsb2FkZWQYBSABKAlSCHVwbG9hZGVkEhAKA3VybBgGIAEoCVIDdXJs');
@$core.Deprecated('Use storageStatsDescriptor instead')
const StorageStats$json = const {
  '1': 'StorageStats',
  '2': const [
    const {'1': 'num_files', '3': 1, '4': 1, '5': 13, '10': 'numFiles'},
    const {'1': 'total_size', '3': 2, '4': 1, '5': 4, '10': 'totalSize'},
  ],
};

/// Descriptor for `StorageStats`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List storageStatsDescriptor = $convert.base64Decode(
    'CgxTdG9yYWdlU3RhdHMSGwoJbnVtX2ZpbGVzGAEgASgNUghudW1GaWxlcxIdCgp0b3RhbF9zaXplGAIgASgEUgl0b3RhbFNpemU=');
@$core.Deprecated('Use uploadFileRequestDescriptor instead')
const UploadFileRequest$json = const {
  '1': 'UploadFileRequest',
  '2': const [
    const {'1': 'contents', '3': 1, '4': 1, '5': 12, '10': 'contents'},
    const {'1': 'mime_type', '3': 2, '4': 1, '5': 9, '10': 'mimeType'},
  ],
};

/// Descriptor for `UploadFileRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uploadFileRequestDescriptor = $convert.base64Decode(
    'ChFVcGxvYWRGaWxlUmVxdWVzdBIaCghjb250ZW50cxgBIAEoDFIIY29udGVudHMSGwoJbWltZV90eXBlGAIgASgJUghtaW1lVHlwZQ==');
@$core.Deprecated('Use uploadFileResponseDescriptor instead')
const UploadFileResponse$json = const {
  '1': 'UploadFileResponse',
  '2': const [
    const {
      '1': 'uploaded_file',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.services.filemanagement.v1.File',
      '10': 'uploadedFile'
    },
  ],
};

/// Descriptor for `UploadFileResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uploadFileResponseDescriptor = $convert.base64Decode(
    'ChJVcGxvYWRGaWxlUmVzcG9uc2USRQoNdXBsb2FkZWRfZmlsZRgBIAEoCzIgLnNlcnZpY2VzLmZpbGVtYW5hZ2VtZW50LnYxLkZpbGVSDHVwbG9hZGVkRmlsZQ==');
@$core.Deprecated('Use getFileRequestDescriptor instead')
const GetFileRequest$json = const {
  '1': 'GetFileRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetFileRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getFileRequestDescriptor =
    $convert.base64Decode('Cg5HZXRGaWxlUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');
@$core.Deprecated('Use getFileResponseDescriptor instead')
const GetFileResponse$json = const {
  '1': 'GetFileResponse',
  '2': const [
    const {
      '1': 'file',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.services.filemanagement.v1.File',
      '10': 'file'
    },
  ],
};

/// Descriptor for `GetFileResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getFileResponseDescriptor = $convert.base64Decode(
    'Cg9HZXRGaWxlUmVzcG9uc2USNAoEZmlsZRgBIAEoCzIgLnNlcnZpY2VzLmZpbGVtYW5hZ2VtZW50LnYxLkZpbGVSBGZpbGU=');
@$core.Deprecated('Use deleteFileRequestDescriptor instead')
const DeleteFileRequest$json = const {
  '1': 'DeleteFileRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeleteFileRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteFileRequestDescriptor =
    $convert.base64Decode('ChFEZWxldGVGaWxlUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');
@$core.Deprecated('Use deleteFileResponseDescriptor instead')
const DeleteFileResponse$json = const {
  '1': 'DeleteFileResponse',
};

/// Descriptor for `DeleteFileResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteFileResponseDescriptor =
    $convert.base64Decode('ChJEZWxldGVGaWxlUmVzcG9uc2U=');
@$core.Deprecated('Use listFilesRequestDescriptor instead')
const ListFilesRequest$json = const {
  '1': 'ListFilesRequest',
  '2': const [
    const {'1': 'query', '3': 1, '4': 1, '5': 9, '10': 'query'},
    const {
      '1': 'continuation_token',
      '3': 2,
      '4': 1,
      '5': 9,
      '8': const {},
      '10': 'continuationToken'
    },
  ],
};

/// Descriptor for `ListFilesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listFilesRequestDescriptor = $convert.base64Decode(
    'ChBMaXN0RmlsZXNSZXF1ZXN0EhQKBXF1ZXJ5GAEgASgJUgVxdWVyeRIzChJjb250aW51YXRpb25fdG9rZW4YAiABKAlCBICmHQFSEWNvbnRpbnVhdGlvblRva2Vu');
@$core.Deprecated('Use listFilesResponseDescriptor instead')
const ListFilesResponse$json = const {
  '1': 'ListFilesResponse',
  '2': const [
    const {
      '1': 'files',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.services.filemanagement.v1.File',
      '10': 'files'
    },
    const {
      '1': 'has_more_results',
      '3': 2,
      '4': 1,
      '5': 8,
      '10': 'hasMoreResults'
    },
    const {
      '1': 'continuation_token',
      '3': 3,
      '4': 1,
      '5': 9,
      '10': 'continuationToken'
    },
  ],
};

/// Descriptor for `ListFilesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listFilesResponseDescriptor = $convert.base64Decode(
    'ChFMaXN0RmlsZXNSZXNwb25zZRI2CgVmaWxlcxgBIAMoCzIgLnNlcnZpY2VzLmZpbGVtYW5hZ2VtZW50LnYxLkZpbGVSBWZpbGVzEigKEGhhc19tb3JlX3Jlc3VsdHMYAiABKAhSDmhhc01vcmVSZXN1bHRzEi0KEmNvbnRpbnVhdGlvbl90b2tlbhgDIAEoCVIRY29udGludWF0aW9uVG9rZW4=');
@$core.Deprecated('Use getStorageStatsRequestDescriptor instead')
const GetStorageStatsRequest$json = const {
  '1': 'GetStorageStatsRequest',
};

/// Descriptor for `GetStorageStatsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getStorageStatsRequestDescriptor =
    $convert.base64Decode('ChZHZXRTdG9yYWdlU3RhdHNSZXF1ZXN0');
@$core.Deprecated('Use getStorageStatsResponseDescriptor instead')
const GetStorageStatsResponse$json = const {
  '1': 'GetStorageStatsResponse',
  '2': const [
    const {
      '1': 'stats',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.services.filemanagement.v1.StorageStats',
      '10': 'stats'
    },
  ],
};

/// Descriptor for `GetStorageStatsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getStorageStatsResponseDescriptor =
    $convert.base64Decode(
        'ChdHZXRTdG9yYWdlU3RhdHNSZXNwb25zZRI+CgVzdGF0cxgBIAEoCzIoLnNlcnZpY2VzLmZpbGVtYW5hZ2VtZW50LnYxLlN0b3JhZ2VTdGF0c1IFc3RhdHM=');
