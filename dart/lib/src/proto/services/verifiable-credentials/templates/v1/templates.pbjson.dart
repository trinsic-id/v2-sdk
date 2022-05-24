///
//  Generated code. Do not modify.
//  source: services/verifiable-credentials/templates/v1/templates.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use fieldTypeDescriptor instead')
const FieldType$json = const {
  '1': 'FieldType',
  '2': const [
    const {'1': 'STRING', '2': 0},
    const {'1': 'NUMBER', '2': 1},
    const {'1': 'BOOL', '2': 2},
    const {'1': 'DATETIME', '2': 4},
  ],
};

/// Descriptor for `FieldType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List fieldTypeDescriptor = $convert.base64Decode('CglGaWVsZFR5cGUSCgoGU1RSSU5HEAASCgoGTlVNQkVSEAESCAoEQk9PTBACEgwKCERBVEVUSU1FEAQ=');
@$core.Deprecated('Use getCredentialTemplateRequestDescriptor instead')
const GetCredentialTemplateRequest$json = const {
  '1': 'GetCredentialTemplateRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetCredentialTemplateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCredentialTemplateRequestDescriptor = $convert.base64Decode('ChxHZXRDcmVkZW50aWFsVGVtcGxhdGVSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZA==');
@$core.Deprecated('Use getCredentialTemplateResponseDescriptor instead')
const GetCredentialTemplateResponse$json = const {
  '1': 'GetCredentialTemplateResponse',
  '2': const [
    const {'1': 'template', '3': 1, '4': 1, '5': 11, '6': '.services.verifiablecredentials.templates.v1.TemplateData', '10': 'template'},
  ],
};

/// Descriptor for `GetCredentialTemplateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCredentialTemplateResponseDescriptor = $convert.base64Decode('Ch1HZXRDcmVkZW50aWFsVGVtcGxhdGVSZXNwb25zZRJVCgh0ZW1wbGF0ZRgBIAEoCzI5LnNlcnZpY2VzLnZlcmlmaWFibGVjcmVkZW50aWFscy50ZW1wbGF0ZXMudjEuVGVtcGxhdGVEYXRhUgh0ZW1wbGF0ZQ==');
@$core.Deprecated('Use searchCredentialTemplatesRequestDescriptor instead')
const SearchCredentialTemplatesRequest$json = const {
  '1': 'SearchCredentialTemplatesRequest',
  '2': const [
    const {'1': 'query', '3': 1, '4': 1, '5': 9, '10': 'query'},
    const {'1': 'continuation_token', '3': 2, '4': 1, '5': 9, '8': const {}, '10': 'continuationToken'},
  ],
};

/// Descriptor for `SearchCredentialTemplatesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchCredentialTemplatesRequestDescriptor = $convert.base64Decode('CiBTZWFyY2hDcmVkZW50aWFsVGVtcGxhdGVzUmVxdWVzdBIUCgVxdWVyeRgBIAEoCVIFcXVlcnkSMwoSY29udGludWF0aW9uX3Rva2VuGAIgASgJQgSAph0BUhFjb250aW51YXRpb25Ub2tlbg==');
@$core.Deprecated('Use searchCredentialTemplatesResponseDescriptor instead')
const SearchCredentialTemplatesResponse$json = const {
  '1': 'SearchCredentialTemplatesResponse',
  '2': const [
    const {'1': 'items_json', '3': 1, '4': 1, '5': 9, '10': 'itemsJson'},
    const {'1': 'has_more', '3': 2, '4': 1, '5': 8, '10': 'hasMore'},
    const {'1': 'continuation_token', '3': 4, '4': 1, '5': 9, '10': 'continuationToken'},
  ],
};

/// Descriptor for `SearchCredentialTemplatesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchCredentialTemplatesResponseDescriptor = $convert.base64Decode('CiFTZWFyY2hDcmVkZW50aWFsVGVtcGxhdGVzUmVzcG9uc2USHQoKaXRlbXNfanNvbhgBIAEoCVIJaXRlbXNKc29uEhkKCGhhc19tb3JlGAIgASgIUgdoYXNNb3JlEi0KEmNvbnRpbnVhdGlvbl90b2tlbhgEIAEoCVIRY29udGludWF0aW9uVG9rZW4=');
@$core.Deprecated('Use listCredentialTemplatesRequestDescriptor instead')
const ListCredentialTemplatesRequest$json = const {
  '1': 'ListCredentialTemplatesRequest',
  '2': const [
    const {'1': 'query', '3': 1, '4': 1, '5': 9, '10': 'query'},
    const {'1': 'continuation_token', '3': 2, '4': 1, '5': 9, '8': const {}, '10': 'continuationToken'},
  ],
};

/// Descriptor for `ListCredentialTemplatesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listCredentialTemplatesRequestDescriptor = $convert.base64Decode('Ch5MaXN0Q3JlZGVudGlhbFRlbXBsYXRlc1JlcXVlc3QSFAoFcXVlcnkYASABKAlSBXF1ZXJ5EjMKEmNvbnRpbnVhdGlvbl90b2tlbhgCIAEoCUIEgKYdAVIRY29udGludWF0aW9uVG9rZW4=');
@$core.Deprecated('Use listCredentialTemplatesResponseDescriptor instead')
const ListCredentialTemplatesResponse$json = const {
  '1': 'ListCredentialTemplatesResponse',
  '2': const [
    const {'1': 'templates', '3': 1, '4': 3, '5': 11, '6': '.services.verifiablecredentials.templates.v1.TemplateData', '10': 'templates'},
    const {'1': 'has_more_results', '3': 2, '4': 1, '5': 8, '10': 'hasMoreResults'},
    const {'1': 'continuation_token', '3': 3, '4': 1, '5': 9, '10': 'continuationToken'},
  ],
};

/// Descriptor for `ListCredentialTemplatesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listCredentialTemplatesResponseDescriptor = $convert.base64Decode('Ch9MaXN0Q3JlZGVudGlhbFRlbXBsYXRlc1Jlc3BvbnNlElcKCXRlbXBsYXRlcxgBIAMoCzI5LnNlcnZpY2VzLnZlcmlmaWFibGVjcmVkZW50aWFscy50ZW1wbGF0ZXMudjEuVGVtcGxhdGVEYXRhUgl0ZW1wbGF0ZXMSKAoQaGFzX21vcmVfcmVzdWx0cxgCIAEoCFIOaGFzTW9yZVJlc3VsdHMSLQoSY29udGludWF0aW9uX3Rva2VuGAMgASgJUhFjb250aW51YXRpb25Ub2tlbg==');
@$core.Deprecated('Use deleteCredentialTemplateRequestDescriptor instead')
const DeleteCredentialTemplateRequest$json = const {
  '1': 'DeleteCredentialTemplateRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeleteCredentialTemplateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteCredentialTemplateRequestDescriptor = $convert.base64Decode('Ch9EZWxldGVDcmVkZW50aWFsVGVtcGxhdGVSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZA==');
@$core.Deprecated('Use deleteCredentialTemplateResponseDescriptor instead')
const DeleteCredentialTemplateResponse$json = const {
  '1': 'DeleteCredentialTemplateResponse',
};

/// Descriptor for `DeleteCredentialTemplateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteCredentialTemplateResponseDescriptor = $convert.base64Decode('CiBEZWxldGVDcmVkZW50aWFsVGVtcGxhdGVSZXNwb25zZQ==');
@$core.Deprecated('Use createCredentialTemplateRequestDescriptor instead')
const CreateCredentialTemplateRequest$json = const {
  '1': 'CreateCredentialTemplateRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'fields', '3': 2, '4': 3, '5': 11, '6': '.services.verifiablecredentials.templates.v1.CreateCredentialTemplateRequest.FieldsEntry', '10': 'fields'},
    const {'1': 'allow_additional_fields', '3': 3, '4': 1, '5': 8, '10': 'allowAdditionalFields'},
  ],
  '3': const [CreateCredentialTemplateRequest_FieldsEntry$json],
};

@$core.Deprecated('Use createCredentialTemplateRequestDescriptor instead')
const CreateCredentialTemplateRequest_FieldsEntry$json = const {
  '1': 'FieldsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.services.verifiablecredentials.templates.v1.TemplateField', '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `CreateCredentialTemplateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createCredentialTemplateRequestDescriptor = $convert.base64Decode('Ch9DcmVhdGVDcmVkZW50aWFsVGVtcGxhdGVSZXF1ZXN0EhIKBG5hbWUYASABKAlSBG5hbWUScAoGZmllbGRzGAIgAygLMlguc2VydmljZXMudmVyaWZpYWJsZWNyZWRlbnRpYWxzLnRlbXBsYXRlcy52MS5DcmVhdGVDcmVkZW50aWFsVGVtcGxhdGVSZXF1ZXN0LkZpZWxkc0VudHJ5UgZmaWVsZHMSNgoXYWxsb3dfYWRkaXRpb25hbF9maWVsZHMYAyABKAhSFWFsbG93QWRkaXRpb25hbEZpZWxkcxp1CgtGaWVsZHNFbnRyeRIQCgNrZXkYASABKAlSA2tleRJQCgV2YWx1ZRgCIAEoCzI6LnNlcnZpY2VzLnZlcmlmaWFibGVjcmVkZW50aWFscy50ZW1wbGF0ZXMudjEuVGVtcGxhdGVGaWVsZFIFdmFsdWU6AjgB');
@$core.Deprecated('Use createCredentialTemplateResponseDescriptor instead')
const CreateCredentialTemplateResponse$json = const {
  '1': 'CreateCredentialTemplateResponse',
  '2': const [
    const {'1': 'data', '3': 1, '4': 1, '5': 11, '6': '.services.verifiablecredentials.templates.v1.TemplateData', '10': 'data'},
  ],
};

/// Descriptor for `CreateCredentialTemplateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createCredentialTemplateResponseDescriptor = $convert.base64Decode('CiBDcmVhdGVDcmVkZW50aWFsVGVtcGxhdGVSZXNwb25zZRJNCgRkYXRhGAEgASgLMjkuc2VydmljZXMudmVyaWZpYWJsZWNyZWRlbnRpYWxzLnRlbXBsYXRlcy52MS5UZW1wbGF0ZURhdGFSBGRhdGE=');
@$core.Deprecated('Use templateFieldDescriptor instead')
const TemplateField$json = const {
  '1': 'TemplateField',
  '2': const [
    const {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'optional', '3': 3, '4': 1, '5': 8, '10': 'optional'},
    const {'1': 'type', '3': 4, '4': 1, '5': 14, '6': '.services.verifiablecredentials.templates.v1.FieldType', '10': 'type'},
  ],
};

/// Descriptor for `TemplateField`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List templateFieldDescriptor = $convert.base64Decode('Cg1UZW1wbGF0ZUZpZWxkEiAKC2Rlc2NyaXB0aW9uGAIgASgJUgtkZXNjcmlwdGlvbhIaCghvcHRpb25hbBgDIAEoCFIIb3B0aW9uYWwSSgoEdHlwZRgEIAEoDjI2LnNlcnZpY2VzLnZlcmlmaWFibGVjcmVkZW50aWFscy50ZW1wbGF0ZXMudjEuRmllbGRUeXBlUgR0eXBl');
@$core.Deprecated('Use getTemplateRequestDescriptor instead')
const GetTemplateRequest$json = const {
  '1': 'GetTemplateRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetTemplateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTemplateRequestDescriptor = $convert.base64Decode('ChJHZXRUZW1wbGF0ZVJlcXVlc3QSDgoCaWQYASABKAlSAmlk');
@$core.Deprecated('Use getTemplateResponseDescriptor instead')
const GetTemplateResponse$json = const {
  '1': 'GetTemplateResponse',
  '2': const [
    const {'1': 'data', '3': 1, '4': 1, '5': 11, '6': '.services.verifiablecredentials.templates.v1.TemplateData', '10': 'data'},
  ],
};

/// Descriptor for `GetTemplateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTemplateResponseDescriptor = $convert.base64Decode('ChNHZXRUZW1wbGF0ZVJlc3BvbnNlEk0KBGRhdGEYASABKAsyOS5zZXJ2aWNlcy52ZXJpZmlhYmxlY3JlZGVudGlhbHMudGVtcGxhdGVzLnYxLlRlbXBsYXRlRGF0YVIEZGF0YQ==');
@$core.Deprecated('Use listTemplatesRequestDescriptor instead')
const ListTemplatesRequest$json = const {
  '1': 'ListTemplatesRequest',
};

/// Descriptor for `ListTemplatesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listTemplatesRequestDescriptor = $convert.base64Decode('ChRMaXN0VGVtcGxhdGVzUmVxdWVzdA==');
@$core.Deprecated('Use listTemplatesResponseDescriptor instead')
const ListTemplatesResponse$json = const {
  '1': 'ListTemplatesResponse',
  '2': const [
    const {'1': 'templates', '3': 1, '4': 3, '5': 11, '6': '.services.verifiablecredentials.templates.v1.TemplateData', '10': 'templates'},
  ],
};

/// Descriptor for `ListTemplatesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listTemplatesResponseDescriptor = $convert.base64Decode('ChVMaXN0VGVtcGxhdGVzUmVzcG9uc2USVwoJdGVtcGxhdGVzGAEgAygLMjkuc2VydmljZXMudmVyaWZpYWJsZWNyZWRlbnRpYWxzLnRlbXBsYXRlcy52MS5UZW1wbGF0ZURhdGFSCXRlbXBsYXRlcw==');
@$core.Deprecated('Use templateDataDescriptor instead')
const TemplateData$json = const {
  '1': 'TemplateData',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'version', '3': 3, '4': 1, '5': 5, '10': 'version'},
    const {'1': 'fields', '3': 4, '4': 3, '5': 11, '6': '.services.verifiablecredentials.templates.v1.TemplateData.FieldsEntry', '10': 'fields'},
    const {'1': 'allow_additional_fields', '3': 5, '4': 1, '5': 8, '10': 'allowAdditionalFields'},
    const {'1': 'schema_uri', '3': 6, '4': 1, '5': 9, '10': 'schemaUri'},
    const {'1': 'context_uri', '3': 7, '4': 1, '5': 9, '10': 'contextUri'},
    const {'1': 'ecosystem_id', '3': 8, '4': 1, '5': 9, '10': 'ecosystemId'},
    const {'1': 'type', '3': 9, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'created_by', '3': 10, '4': 1, '5': 9, '10': 'createdBy'},
  ],
  '3': const [TemplateData_FieldsEntry$json],
};

@$core.Deprecated('Use templateDataDescriptor instead')
const TemplateData_FieldsEntry$json = const {
  '1': 'FieldsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.services.verifiablecredentials.templates.v1.TemplateField', '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `TemplateData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List templateDataDescriptor = $convert.base64Decode('CgxUZW1wbGF0ZURhdGESDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSGAoHdmVyc2lvbhgDIAEoBVIHdmVyc2lvbhJdCgZmaWVsZHMYBCADKAsyRS5zZXJ2aWNlcy52ZXJpZmlhYmxlY3JlZGVudGlhbHMudGVtcGxhdGVzLnYxLlRlbXBsYXRlRGF0YS5GaWVsZHNFbnRyeVIGZmllbGRzEjYKF2FsbG93X2FkZGl0aW9uYWxfZmllbGRzGAUgASgIUhVhbGxvd0FkZGl0aW9uYWxGaWVsZHMSHQoKc2NoZW1hX3VyaRgGIAEoCVIJc2NoZW1hVXJpEh8KC2NvbnRleHRfdXJpGAcgASgJUgpjb250ZXh0VXJpEiEKDGVjb3N5c3RlbV9pZBgIIAEoCVILZWNvc3lzdGVtSWQSEgoEdHlwZRgJIAEoCVIEdHlwZRIdCgpjcmVhdGVkX2J5GAogASgJUgljcmVhdGVkQnkadQoLRmllbGRzRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSUAoFdmFsdWUYAiABKAsyOi5zZXJ2aWNlcy52ZXJpZmlhYmxlY3JlZGVudGlhbHMudGVtcGxhdGVzLnYxLlRlbXBsYXRlRmllbGRSBXZhbHVlOgI4AQ==');
