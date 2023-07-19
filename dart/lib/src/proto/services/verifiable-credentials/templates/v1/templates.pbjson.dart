//
//  Generated code. Do not modify.
//  source: services/verifiable-credentials/templates/v1/templates.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use fieldTypeDescriptor instead')
const FieldType$json = {
  '1': 'FieldType',
  '2': [
    {'1': 'STRING', '2': 0},
    {'1': 'NUMBER', '2': 1},
    {'1': 'BOOL', '2': 2},
    {'1': 'DATETIME', '2': 4},
    {'1': 'URI', '2': 5},
  ],
};

/// Descriptor for `FieldType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List fieldTypeDescriptor = $convert.base64Decode(
    'CglGaWVsZFR5cGUSCgoGU1RSSU5HEAASCgoGTlVNQkVSEAESCAoEQk9PTBACEgwKCERBVEVUSU'
    '1FEAQSBwoDVVJJEAU=');

@$core.Deprecated('Use uriRenderMethodDescriptor instead')
const UriRenderMethod$json = {
  '1': 'UriRenderMethod',
  '2': [
    {'1': 'TEXT', '2': 0},
    {'1': 'LINK', '2': 1},
    {'1': 'INLINE_IMAGE', '2': 2},
  ],
};

/// Descriptor for `UriRenderMethod`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List uriRenderMethodDescriptor = $convert.base64Decode(
    'Cg9VcmlSZW5kZXJNZXRob2QSCAoEVEVYVBAAEggKBExJTksQARIQCgxJTkxJTkVfSU1BR0UQAg'
    '==');

@$core.Deprecated('Use verificationShareTypeDescriptor instead')
const VerificationShareType$json = {
  '1': 'VerificationShareType',
  '2': [
    {'1': 'OPTIONAL', '2': 0},
    {'1': 'REQUIRED', '2': 1},
  ],
};

/// Descriptor for `VerificationShareType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List verificationShareTypeDescriptor =
    $convert.base64Decode(
        'ChVWZXJpZmljYXRpb25TaGFyZVR5cGUSDAoIT1BUSU9OQUwQABIMCghSRVFVSVJFRBAB');

@$core.Deprecated('Use getCredentialTemplateRequestDescriptor instead')
const GetCredentialTemplateRequest$json = {
  '1': 'GetCredentialTemplateRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetCredentialTemplateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCredentialTemplateRequestDescriptor =
    $convert.base64Decode(
        'ChxHZXRDcmVkZW50aWFsVGVtcGxhdGVSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZA==');

@$core.Deprecated('Use getCredentialTemplateResponseDescriptor instead')
const GetCredentialTemplateResponse$json = {
  '1': 'GetCredentialTemplateResponse',
  '2': [
    {
      '1': 'template',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.services.verifiablecredentials.templates.v1.TemplateData',
      '10': 'template'
    },
  ],
};

/// Descriptor for `GetCredentialTemplateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCredentialTemplateResponseDescriptor =
    $convert.base64Decode(
        'Ch1HZXRDcmVkZW50aWFsVGVtcGxhdGVSZXNwb25zZRJVCgh0ZW1wbGF0ZRgBIAEoCzI5LnNlcn'
        'ZpY2VzLnZlcmlmaWFibGVjcmVkZW50aWFscy50ZW1wbGF0ZXMudjEuVGVtcGxhdGVEYXRhUgh0'
        'ZW1wbGF0ZQ==');

@$core.Deprecated('Use searchCredentialTemplatesRequestDescriptor instead')
const SearchCredentialTemplatesRequest$json = {
  '1': 'SearchCredentialTemplatesRequest',
  '2': [
    {'1': 'query', '3': 1, '4': 1, '5': 9, '10': 'query'},
    {
      '1': 'continuation_token',
      '3': 2,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'continuationToken'
    },
  ],
};

/// Descriptor for `SearchCredentialTemplatesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchCredentialTemplatesRequestDescriptor =
    $convert.base64Decode(
        'CiBTZWFyY2hDcmVkZW50aWFsVGVtcGxhdGVzUmVxdWVzdBIUCgVxdWVyeRgBIAEoCVIFcXVlcn'
        'kSMwoSY29udGludWF0aW9uX3Rva2VuGAIgASgJQgSAph0BUhFjb250aW51YXRpb25Ub2tlbg==');

@$core.Deprecated('Use searchCredentialTemplatesResponseDescriptor instead')
const SearchCredentialTemplatesResponse$json = {
  '1': 'SearchCredentialTemplatesResponse',
  '2': [
    {'1': 'items_json', '3': 1, '4': 1, '5': 9, '10': 'itemsJson'},
    {'1': 'has_more_results', '3': 2, '4': 1, '5': 8, '10': 'hasMoreResults'},
    {
      '1': 'continuation_token',
      '3': 4,
      '4': 1,
      '5': 9,
      '10': 'continuationToken'
    },
  ],
};

/// Descriptor for `SearchCredentialTemplatesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchCredentialTemplatesResponseDescriptor =
    $convert.base64Decode(
        'CiFTZWFyY2hDcmVkZW50aWFsVGVtcGxhdGVzUmVzcG9uc2USHQoKaXRlbXNfanNvbhgBIAEoCV'
        'IJaXRlbXNKc29uEigKEGhhc19tb3JlX3Jlc3VsdHMYAiABKAhSDmhhc01vcmVSZXN1bHRzEi0K'
        'EmNvbnRpbnVhdGlvbl90b2tlbhgEIAEoCVIRY29udGludWF0aW9uVG9rZW4=');

@$core.Deprecated('Use listCredentialTemplatesRequestDescriptor instead')
const ListCredentialTemplatesRequest$json = {
  '1': 'ListCredentialTemplatesRequest',
  '2': [
    {'1': 'query', '3': 1, '4': 1, '5': 9, '10': 'query'},
    {
      '1': 'continuation_token',
      '3': 2,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'continuationToken'
    },
  ],
};

/// Descriptor for `ListCredentialTemplatesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listCredentialTemplatesRequestDescriptor =
    $convert.base64Decode(
        'Ch5MaXN0Q3JlZGVudGlhbFRlbXBsYXRlc1JlcXVlc3QSFAoFcXVlcnkYASABKAlSBXF1ZXJ5Ej'
        'MKEmNvbnRpbnVhdGlvbl90b2tlbhgCIAEoCUIEgKYdAVIRY29udGludWF0aW9uVG9rZW4=');

@$core.Deprecated('Use listCredentialTemplatesResponseDescriptor instead')
const ListCredentialTemplatesResponse$json = {
  '1': 'ListCredentialTemplatesResponse',
  '2': [
    {
      '1': 'templates',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.services.verifiablecredentials.templates.v1.TemplateData',
      '10': 'templates'
    },
    {'1': 'has_more_results', '3': 2, '4': 1, '5': 8, '10': 'hasMoreResults'},
    {
      '1': 'continuation_token',
      '3': 3,
      '4': 1,
      '5': 9,
      '10': 'continuationToken'
    },
  ],
};

/// Descriptor for `ListCredentialTemplatesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listCredentialTemplatesResponseDescriptor =
    $convert.base64Decode(
        'Ch9MaXN0Q3JlZGVudGlhbFRlbXBsYXRlc1Jlc3BvbnNlElcKCXRlbXBsYXRlcxgBIAMoCzI5Ln'
        'NlcnZpY2VzLnZlcmlmaWFibGVjcmVkZW50aWFscy50ZW1wbGF0ZXMudjEuVGVtcGxhdGVEYXRh'
        'Ugl0ZW1wbGF0ZXMSKAoQaGFzX21vcmVfcmVzdWx0cxgCIAEoCFIOaGFzTW9yZVJlc3VsdHMSLQ'
        'oSY29udGludWF0aW9uX3Rva2VuGAMgASgJUhFjb250aW51YXRpb25Ub2tlbg==');

@$core.Deprecated('Use deleteCredentialTemplateRequestDescriptor instead')
const DeleteCredentialTemplateRequest$json = {
  '1': 'DeleteCredentialTemplateRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeleteCredentialTemplateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteCredentialTemplateRequestDescriptor =
    $convert.base64Decode(
        'Ch9EZWxldGVDcmVkZW50aWFsVGVtcGxhdGVSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZA==');

@$core.Deprecated('Use deleteCredentialTemplateResponseDescriptor instead')
const DeleteCredentialTemplateResponse$json = {
  '1': 'DeleteCredentialTemplateResponse',
};

/// Descriptor for `DeleteCredentialTemplateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteCredentialTemplateResponseDescriptor =
    $convert.base64Decode('CiBEZWxldGVDcmVkZW50aWFsVGVtcGxhdGVSZXNwb25zZQ==');

@$core.Deprecated('Use createCredentialTemplateRequestDescriptor instead')
const CreateCredentialTemplateRequest$json = {
  '1': 'CreateCredentialTemplateRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {
      '1': 'fields',
      '3': 2,
      '4': 3,
      '5': 11,
      '6':
          '.services.verifiablecredentials.templates.v1.CreateCredentialTemplateRequest.FieldsEntry',
      '10': 'fields'
    },
    {
      '1': 'allow_additional_fields',
      '3': 3,
      '4': 1,
      '5': 8,
      '10': 'allowAdditionalFields'
    },
    {'1': 'title', '3': 4, '4': 1, '5': 9, '10': 'title'},
    {'1': 'description', '3': 5, '4': 1, '5': 9, '10': 'description'},
    {
      '1': 'field_ordering',
      '3': 6,
      '4': 3,
      '5': 11,
      '6':
          '.services.verifiablecredentials.templates.v1.CreateCredentialTemplateRequest.FieldOrderingEntry',
      '10': 'fieldOrdering'
    },
    {
      '1': 'apple_wallet_options',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.services.verifiablecredentials.templates.v1.AppleWalletOptions',
      '9': 0,
      '10': 'appleWalletOptions',
      '17': true
    },
  ],
  '3': [
    CreateCredentialTemplateRequest_FieldsEntry$json,
    CreateCredentialTemplateRequest_FieldOrderingEntry$json
  ],
  '8': [
    {'1': '_apple_wallet_options'},
  ],
};

@$core.Deprecated('Use createCredentialTemplateRequestDescriptor instead')
const CreateCredentialTemplateRequest_FieldsEntry$json = {
  '1': 'FieldsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.services.verifiablecredentials.templates.v1.TemplateField',
      '10': 'value'
    },
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use createCredentialTemplateRequestDescriptor instead')
const CreateCredentialTemplateRequest_FieldOrderingEntry$json = {
  '1': 'FieldOrderingEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.services.verifiablecredentials.templates.v1.FieldOrdering',
      '10': 'value'
    },
  ],
  '7': {'7': true},
};

/// Descriptor for `CreateCredentialTemplateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createCredentialTemplateRequestDescriptor = $convert.base64Decode(
    'Ch9DcmVhdGVDcmVkZW50aWFsVGVtcGxhdGVSZXF1ZXN0EhIKBG5hbWUYASABKAlSBG5hbWUScA'
    'oGZmllbGRzGAIgAygLMlguc2VydmljZXMudmVyaWZpYWJsZWNyZWRlbnRpYWxzLnRlbXBsYXRl'
    'cy52MS5DcmVhdGVDcmVkZW50aWFsVGVtcGxhdGVSZXF1ZXN0LkZpZWxkc0VudHJ5UgZmaWVsZH'
    'MSNgoXYWxsb3dfYWRkaXRpb25hbF9maWVsZHMYAyABKAhSFWFsbG93QWRkaXRpb25hbEZpZWxk'
    'cxIUCgV0aXRsZRgEIAEoCVIFdGl0bGUSIAoLZGVzY3JpcHRpb24YBSABKAlSC2Rlc2NyaXB0aW'
    '9uEoYBCg5maWVsZF9vcmRlcmluZxgGIAMoCzJfLnNlcnZpY2VzLnZlcmlmaWFibGVjcmVkZW50'
    'aWFscy50ZW1wbGF0ZXMudjEuQ3JlYXRlQ3JlZGVudGlhbFRlbXBsYXRlUmVxdWVzdC5GaWVsZE'
    '9yZGVyaW5nRW50cnlSDWZpZWxkT3JkZXJpbmcSdgoUYXBwbGVfd2FsbGV0X29wdGlvbnMYByAB'
    'KAsyPy5zZXJ2aWNlcy52ZXJpZmlhYmxlY3JlZGVudGlhbHMudGVtcGxhdGVzLnYxLkFwcGxlV2'
    'FsbGV0T3B0aW9uc0gAUhJhcHBsZVdhbGxldE9wdGlvbnOIAQEadQoLRmllbGRzRW50cnkSEAoD'
    'a2V5GAEgASgJUgNrZXkSUAoFdmFsdWUYAiABKAsyOi5zZXJ2aWNlcy52ZXJpZmlhYmxlY3JlZG'
    'VudGlhbHMudGVtcGxhdGVzLnYxLlRlbXBsYXRlRmllbGRSBXZhbHVlOgI4ARp8ChJGaWVsZE9y'
    'ZGVyaW5nRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSUAoFdmFsdWUYAiABKAsyOi5zZXJ2aWNlcy'
    '52ZXJpZmlhYmxlY3JlZGVudGlhbHMudGVtcGxhdGVzLnYxLkZpZWxkT3JkZXJpbmdSBXZhbHVl'
    'OgI4AUIXChVfYXBwbGVfd2FsbGV0X29wdGlvbnM=');

@$core.Deprecated('Use createCredentialTemplateResponseDescriptor instead')
const CreateCredentialTemplateResponse$json = {
  '1': 'CreateCredentialTemplateResponse',
  '2': [
    {
      '1': 'data',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.services.verifiablecredentials.templates.v1.TemplateData',
      '10': 'data'
    },
  ],
};

/// Descriptor for `CreateCredentialTemplateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createCredentialTemplateResponseDescriptor =
    $convert.base64Decode(
        'CiBDcmVhdGVDcmVkZW50aWFsVGVtcGxhdGVSZXNwb25zZRJNCgRkYXRhGAEgASgLMjkuc2Vydm'
        'ljZXMudmVyaWZpYWJsZWNyZWRlbnRpYWxzLnRlbXBsYXRlcy52MS5UZW1wbGF0ZURhdGFSBGRh'
        'dGE=');

@$core.Deprecated('Use updateCredentialTemplateRequestDescriptor instead')
const UpdateCredentialTemplateRequest$json = {
  '1': 'UpdateCredentialTemplateRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'title', '17': true},
    {
      '1': 'description',
      '3': 3,
      '4': 1,
      '5': 9,
      '9': 1,
      '10': 'description',
      '17': true
    },
    {
      '1': 'fields',
      '3': 4,
      '4': 3,
      '5': 11,
      '6':
          '.services.verifiablecredentials.templates.v1.UpdateCredentialTemplateRequest.FieldsEntry',
      '10': 'fields'
    },
    {
      '1': 'field_ordering',
      '3': 5,
      '4': 3,
      '5': 11,
      '6':
          '.services.verifiablecredentials.templates.v1.UpdateCredentialTemplateRequest.FieldOrderingEntry',
      '10': 'fieldOrdering'
    },
    {
      '1': 'apple_wallet_options',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.services.verifiablecredentials.templates.v1.AppleWalletOptions',
      '9': 2,
      '10': 'appleWalletOptions',
      '17': true
    },
  ],
  '3': [
    UpdateCredentialTemplateRequest_FieldsEntry$json,
    UpdateCredentialTemplateRequest_FieldOrderingEntry$json
  ],
  '8': [
    {'1': '_title'},
    {'1': '_description'},
    {'1': '_apple_wallet_options'},
  ],
};

@$core.Deprecated('Use updateCredentialTemplateRequestDescriptor instead')
const UpdateCredentialTemplateRequest_FieldsEntry$json = {
  '1': 'FieldsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.services.verifiablecredentials.templates.v1.TemplateFieldPatch',
      '10': 'value'
    },
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use updateCredentialTemplateRequestDescriptor instead')
const UpdateCredentialTemplateRequest_FieldOrderingEntry$json = {
  '1': 'FieldOrderingEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.services.verifiablecredentials.templates.v1.FieldOrdering',
      '10': 'value'
    },
  ],
  '7': {'7': true},
};

/// Descriptor for `UpdateCredentialTemplateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateCredentialTemplateRequestDescriptor = $convert.base64Decode(
    'Ch9VcGRhdGVDcmVkZW50aWFsVGVtcGxhdGVSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZBIZCgV0aX'
    'RsZRgCIAEoCUgAUgV0aXRsZYgBARIlCgtkZXNjcmlwdGlvbhgDIAEoCUgBUgtkZXNjcmlwdGlv'
    'bogBARJwCgZmaWVsZHMYBCADKAsyWC5zZXJ2aWNlcy52ZXJpZmlhYmxlY3JlZGVudGlhbHMudG'
    'VtcGxhdGVzLnYxLlVwZGF0ZUNyZWRlbnRpYWxUZW1wbGF0ZVJlcXVlc3QuRmllbGRzRW50cnlS'
    'BmZpZWxkcxKGAQoOZmllbGRfb3JkZXJpbmcYBSADKAsyXy5zZXJ2aWNlcy52ZXJpZmlhYmxlY3'
    'JlZGVudGlhbHMudGVtcGxhdGVzLnYxLlVwZGF0ZUNyZWRlbnRpYWxUZW1wbGF0ZVJlcXVlc3Qu'
    'RmllbGRPcmRlcmluZ0VudHJ5Ug1maWVsZE9yZGVyaW5nEnYKFGFwcGxlX3dhbGxldF9vcHRpb2'
    '5zGAYgASgLMj8uc2VydmljZXMudmVyaWZpYWJsZWNyZWRlbnRpYWxzLnRlbXBsYXRlcy52MS5B'
    'cHBsZVdhbGxldE9wdGlvbnNIAlISYXBwbGVXYWxsZXRPcHRpb25ziAEBGnoKC0ZpZWxkc0VudH'
    'J5EhAKA2tleRgBIAEoCVIDa2V5ElUKBXZhbHVlGAIgASgLMj8uc2VydmljZXMudmVyaWZpYWJs'
    'ZWNyZWRlbnRpYWxzLnRlbXBsYXRlcy52MS5UZW1wbGF0ZUZpZWxkUGF0Y2hSBXZhbHVlOgI4AR'
    'p8ChJGaWVsZE9yZGVyaW5nRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSUAoFdmFsdWUYAiABKAsy'
    'Oi5zZXJ2aWNlcy52ZXJpZmlhYmxlY3JlZGVudGlhbHMudGVtcGxhdGVzLnYxLkZpZWxkT3JkZX'
    'JpbmdSBXZhbHVlOgI4AUIICgZfdGl0bGVCDgoMX2Rlc2NyaXB0aW9uQhcKFV9hcHBsZV93YWxs'
    'ZXRfb3B0aW9ucw==');

@$core.Deprecated('Use updateCredentialTemplateResponseDescriptor instead')
const UpdateCredentialTemplateResponse$json = {
  '1': 'UpdateCredentialTemplateResponse',
  '2': [
    {
      '1': 'updated_template',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.services.verifiablecredentials.templates.v1.TemplateData',
      '10': 'updatedTemplate'
    },
  ],
};

/// Descriptor for `UpdateCredentialTemplateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateCredentialTemplateResponseDescriptor =
    $convert.base64Decode(
        'CiBVcGRhdGVDcmVkZW50aWFsVGVtcGxhdGVSZXNwb25zZRJkChB1cGRhdGVkX3RlbXBsYXRlGA'
        'EgASgLMjkuc2VydmljZXMudmVyaWZpYWJsZWNyZWRlbnRpYWxzLnRlbXBsYXRlcy52MS5UZW1w'
        'bGF0ZURhdGFSD3VwZGF0ZWRUZW1wbGF0ZQ==');

@$core.Deprecated('Use templateDataDescriptor instead')
const TemplateData$json = {
  '1': 'TemplateData',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'version', '3': 3, '4': 1, '5': 5, '10': 'version'},
    {
      '1': 'fields',
      '3': 4,
      '4': 3,
      '5': 11,
      '6':
          '.services.verifiablecredentials.templates.v1.TemplateData.FieldsEntry',
      '10': 'fields'
    },
    {
      '1': 'allow_additional_fields',
      '3': 5,
      '4': 1,
      '5': 8,
      '10': 'allowAdditionalFields'
    },
    {'1': 'schema_uri', '3': 6, '4': 1, '5': 9, '10': 'schemaUri'},
    {'1': 'ecosystem_id', '3': 8, '4': 1, '5': 9, '10': 'ecosystemId'},
    {'1': 'type', '3': 9, '4': 1, '5': 9, '10': 'type'},
    {'1': 'created_by', '3': 10, '4': 1, '5': 9, '10': 'createdBy'},
    {'1': 'date_created', '3': 11, '4': 1, '5': 9, '10': 'dateCreated'},
    {'1': 'title', '3': 12, '4': 1, '5': 9, '10': 'title'},
    {'1': 'description', '3': 13, '4': 1, '5': 9, '10': 'description'},
    {
      '1': 'field_ordering',
      '3': 14,
      '4': 3,
      '5': 11,
      '6':
          '.services.verifiablecredentials.templates.v1.TemplateData.FieldOrderingEntry',
      '10': 'fieldOrdering'
    },
    {
      '1': 'apple_wallet_options',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.services.verifiablecredentials.templates.v1.AppleWalletOptions',
      '10': 'appleWalletOptions'
    },
  ],
  '3': [TemplateData_FieldsEntry$json, TemplateData_FieldOrderingEntry$json],
  '9': [
    {'1': 7, '2': 8},
  ],
  '10': ['context_uri'],
};

@$core.Deprecated('Use templateDataDescriptor instead')
const TemplateData_FieldsEntry$json = {
  '1': 'FieldsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.services.verifiablecredentials.templates.v1.TemplateField',
      '10': 'value'
    },
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use templateDataDescriptor instead')
const TemplateData_FieldOrderingEntry$json = {
  '1': 'FieldOrderingEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.services.verifiablecredentials.templates.v1.FieldOrdering',
      '10': 'value'
    },
  ],
  '7': {'7': true},
};

/// Descriptor for `TemplateData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List templateDataDescriptor = $convert.base64Decode(
    'CgxUZW1wbGF0ZURhdGESDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSGAoHdm'
    'Vyc2lvbhgDIAEoBVIHdmVyc2lvbhJdCgZmaWVsZHMYBCADKAsyRS5zZXJ2aWNlcy52ZXJpZmlh'
    'YmxlY3JlZGVudGlhbHMudGVtcGxhdGVzLnYxLlRlbXBsYXRlRGF0YS5GaWVsZHNFbnRyeVIGZm'
    'llbGRzEjYKF2FsbG93X2FkZGl0aW9uYWxfZmllbGRzGAUgASgIUhVhbGxvd0FkZGl0aW9uYWxG'
    'aWVsZHMSHQoKc2NoZW1hX3VyaRgGIAEoCVIJc2NoZW1hVXJpEiEKDGVjb3N5c3RlbV9pZBgIIA'
    'EoCVILZWNvc3lzdGVtSWQSEgoEdHlwZRgJIAEoCVIEdHlwZRIdCgpjcmVhdGVkX2J5GAogASgJ'
    'UgljcmVhdGVkQnkSIQoMZGF0ZV9jcmVhdGVkGAsgASgJUgtkYXRlQ3JlYXRlZBIUCgV0aXRsZR'
    'gMIAEoCVIFdGl0bGUSIAoLZGVzY3JpcHRpb24YDSABKAlSC2Rlc2NyaXB0aW9uEnMKDmZpZWxk'
    'X29yZGVyaW5nGA4gAygLMkwuc2VydmljZXMudmVyaWZpYWJsZWNyZWRlbnRpYWxzLnRlbXBsYX'
    'Rlcy52MS5UZW1wbGF0ZURhdGEuRmllbGRPcmRlcmluZ0VudHJ5Ug1maWVsZE9yZGVyaW5nEnEK'
    'FGFwcGxlX3dhbGxldF9vcHRpb25zGA8gASgLMj8uc2VydmljZXMudmVyaWZpYWJsZWNyZWRlbn'
    'RpYWxzLnRlbXBsYXRlcy52MS5BcHBsZVdhbGxldE9wdGlvbnNSEmFwcGxlV2FsbGV0T3B0aW9u'
    'cxp1CgtGaWVsZHNFbnRyeRIQCgNrZXkYASABKAlSA2tleRJQCgV2YWx1ZRgCIAEoCzI6LnNlcn'
    'ZpY2VzLnZlcmlmaWFibGVjcmVkZW50aWFscy50ZW1wbGF0ZXMudjEuVGVtcGxhdGVGaWVsZFIF'
    'dmFsdWU6AjgBGnwKEkZpZWxkT3JkZXJpbmdFbnRyeRIQCgNrZXkYASABKAlSA2tleRJQCgV2YW'
    'x1ZRgCIAEoCzI6LnNlcnZpY2VzLnZlcmlmaWFibGVjcmVkZW50aWFscy50ZW1wbGF0ZXMudjEu'
    'RmllbGRPcmRlcmluZ1IFdmFsdWU6AjgBSgQIBxAIUgtjb250ZXh0X3VyaQ==');

@$core.Deprecated('Use appleWalletOptionsDescriptor instead')
const AppleWalletOptions$json = {
  '1': 'AppleWalletOptions',
  '2': [
    {'1': 'background_color', '3': 1, '4': 1, '5': 9, '10': 'backgroundColor'},
    {'1': 'foreground_color', '3': 2, '4': 1, '5': 9, '10': 'foregroundColor'},
    {'1': 'label_color', '3': 3, '4': 1, '5': 9, '10': 'labelColor'},
    {'1': 'primary_field', '3': 4, '4': 1, '5': 9, '10': 'primaryField'},
    {'1': 'secondary_fields', '3': 5, '4': 3, '5': 9, '10': 'secondaryFields'},
    {'1': 'auxiliary_fields', '3': 6, '4': 3, '5': 9, '10': 'auxiliaryFields'},
  ],
};

/// Descriptor for `AppleWalletOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appleWalletOptionsDescriptor = $convert.base64Decode(
    'ChJBcHBsZVdhbGxldE9wdGlvbnMSKQoQYmFja2dyb3VuZF9jb2xvchgBIAEoCVIPYmFja2dyb3'
    'VuZENvbG9yEikKEGZvcmVncm91bmRfY29sb3IYAiABKAlSD2ZvcmVncm91bmRDb2xvchIfCgts'
    'YWJlbF9jb2xvchgDIAEoCVIKbGFiZWxDb2xvchIjCg1wcmltYXJ5X2ZpZWxkGAQgASgJUgxwcm'
    'ltYXJ5RmllbGQSKQoQc2Vjb25kYXJ5X2ZpZWxkcxgFIAMoCVIPc2Vjb25kYXJ5RmllbGRzEikK'
    'EGF1eGlsaWFyeV9maWVsZHMYBiADKAlSD2F1eGlsaWFyeUZpZWxkcw==');

@$core.Deprecated('Use fieldOrderingDescriptor instead')
const FieldOrdering$json = {
  '1': 'FieldOrdering',
  '2': [
    {'1': 'order', '3': 1, '4': 1, '5': 5, '10': 'order'},
    {'1': 'section', '3': 2, '4': 1, '5': 9, '10': 'section'},
  ],
};

/// Descriptor for `FieldOrdering`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fieldOrderingDescriptor = $convert.base64Decode(
    'Cg1GaWVsZE9yZGVyaW5nEhQKBW9yZGVyGAEgASgFUgVvcmRlchIYCgdzZWN0aW9uGAIgASgJUg'
    'dzZWN0aW9u');

@$core.Deprecated('Use templateFieldDescriptor instead')
const TemplateField$json = {
  '1': 'TemplateField',
  '2': [
    {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    {'1': 'optional', '3': 3, '4': 1, '5': 8, '10': 'optional'},
    {
      '1': 'type',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.services.verifiablecredentials.templates.v1.FieldType',
      '10': 'type'
    },
    {
      '1': 'uri_data',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.services.verifiablecredentials.templates.v1.UriFieldData',
      '9': 0,
      '10': 'uriData',
      '17': true
    },
  ],
  '8': [
    {'1': '_uri_data'},
  ],
  '9': [
    {'1': 5, '2': 6},
  ],
  '10': ['annotations'],
};

/// Descriptor for `TemplateField`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List templateFieldDescriptor = $convert.base64Decode(
    'Cg1UZW1wbGF0ZUZpZWxkEhQKBXRpdGxlGAEgASgJUgV0aXRsZRIgCgtkZXNjcmlwdGlvbhgCIA'
    'EoCVILZGVzY3JpcHRpb24SGgoIb3B0aW9uYWwYAyABKAhSCG9wdGlvbmFsEkoKBHR5cGUYBCAB'
    'KA4yNi5zZXJ2aWNlcy52ZXJpZmlhYmxlY3JlZGVudGlhbHMudGVtcGxhdGVzLnYxLkZpZWxkVH'
    'lwZVIEdHlwZRJZCgh1cmlfZGF0YRgGIAEoCzI5LnNlcnZpY2VzLnZlcmlmaWFibGVjcmVkZW50'
    'aWFscy50ZW1wbGF0ZXMudjEuVXJpRmllbGREYXRhSABSB3VyaURhdGGIAQFCCwoJX3VyaV9kYX'
    'RhSgQIBRAGUgthbm5vdGF0aW9ucw==');

@$core.Deprecated('Use templateFieldPatchDescriptor instead')
const TemplateFieldPatch$json = {
  '1': 'TemplateFieldPatch',
  '2': [
    {'1': 'title', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'title', '17': true},
    {
      '1': 'description',
      '3': 2,
      '4': 1,
      '5': 9,
      '9': 1,
      '10': 'description',
      '17': true
    },
    {
      '1': 'uri_data',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.services.verifiablecredentials.templates.v1.UriFieldData',
      '9': 2,
      '10': 'uriData',
      '17': true
    },
  ],
  '8': [
    {'1': '_title'},
    {'1': '_description'},
    {'1': '_uri_data'},
  ],
};

/// Descriptor for `TemplateFieldPatch`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List templateFieldPatchDescriptor = $convert.base64Decode(
    'ChJUZW1wbGF0ZUZpZWxkUGF0Y2gSGQoFdGl0bGUYASABKAlIAFIFdGl0bGWIAQESJQoLZGVzY3'
    'JpcHRpb24YAiABKAlIAVILZGVzY3JpcHRpb26IAQESWQoIdXJpX2RhdGEYAyABKAsyOS5zZXJ2'
    'aWNlcy52ZXJpZmlhYmxlY3JlZGVudGlhbHMudGVtcGxhdGVzLnYxLlVyaUZpZWxkRGF0YUgCUg'
    'd1cmlEYXRhiAEBQggKBl90aXRsZUIOCgxfZGVzY3JpcHRpb25CCwoJX3VyaV9kYXRh');

@$core.Deprecated('Use uriFieldDataDescriptor instead')
const UriFieldData$json = {
  '1': 'UriFieldData',
  '2': [
    {'1': 'mime_type', '3': 1, '4': 1, '5': 9, '10': 'mimeType'},
    {
      '1': 'render_method',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.services.verifiablecredentials.templates.v1.UriRenderMethod',
      '10': 'renderMethod'
    },
  ],
};

/// Descriptor for `UriFieldData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uriFieldDataDescriptor = $convert.base64Decode(
    'CgxVcmlGaWVsZERhdGESGwoJbWltZV90eXBlGAEgASgJUghtaW1lVHlwZRJhCg1yZW5kZXJfbW'
    'V0aG9kGAIgASgOMjwuc2VydmljZXMudmVyaWZpYWJsZWNyZWRlbnRpYWxzLnRlbXBsYXRlcy52'
    'MS5VcmlSZW5kZXJNZXRob2RSDHJlbmRlck1ldGhvZA==');

@$core.Deprecated('Use getVerificationTemplateRequestDescriptor instead')
const GetVerificationTemplateRequest$json = {
  '1': 'GetVerificationTemplateRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetVerificationTemplateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getVerificationTemplateRequestDescriptor =
    $convert.base64Decode(
        'Ch5HZXRWZXJpZmljYXRpb25UZW1wbGF0ZVJlcXVlc3QSDgoCaWQYASABKAlSAmlk');

@$core.Deprecated('Use getVerificationTemplateResponseDescriptor instead')
const GetVerificationTemplateResponse$json = {
  '1': 'GetVerificationTemplateResponse',
  '2': [
    {
      '1': 'template',
      '3': 1,
      '4': 1,
      '5': 11,
      '6':
          '.services.verifiablecredentials.templates.v1.VerificationTemplateData',
      '10': 'template'
    },
  ],
};

/// Descriptor for `GetVerificationTemplateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getVerificationTemplateResponseDescriptor =
    $convert.base64Decode(
        'Ch9HZXRWZXJpZmljYXRpb25UZW1wbGF0ZVJlc3BvbnNlEmEKCHRlbXBsYXRlGAEgASgLMkUuc2'
        'VydmljZXMudmVyaWZpYWJsZWNyZWRlbnRpYWxzLnRlbXBsYXRlcy52MS5WZXJpZmljYXRpb25U'
        'ZW1wbGF0ZURhdGFSCHRlbXBsYXRl');

@$core.Deprecated('Use createVerificationTemplateRequestDescriptor instead')
const CreateVerificationTemplateRequest$json = {
  '1': 'CreateVerificationTemplateRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {
      '1': 'fields',
      '3': 2,
      '4': 3,
      '5': 11,
      '6':
          '.services.verifiablecredentials.templates.v1.CreateVerificationTemplateRequest.FieldsEntry',
      '10': 'fields'
    },
    {
      '1': 'credential_template_id',
      '3': 3,
      '4': 1,
      '5': 9,
      '10': 'credentialTemplateId'
    },
    {'1': 'title', '3': 4, '4': 1, '5': 9, '10': 'title'},
    {'1': 'description', '3': 5, '4': 1, '5': 9, '10': 'description'},
  ],
  '3': [CreateVerificationTemplateRequest_FieldsEntry$json],
};

@$core.Deprecated('Use createVerificationTemplateRequestDescriptor instead')
const CreateVerificationTemplateRequest_FieldsEntry$json = {
  '1': 'FieldsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6':
          '.services.verifiablecredentials.templates.v1.VerificationTemplateField',
      '10': 'value'
    },
  ],
  '7': {'7': true},
};

/// Descriptor for `CreateVerificationTemplateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createVerificationTemplateRequestDescriptor = $convert.base64Decode(
    'CiFDcmVhdGVWZXJpZmljYXRpb25UZW1wbGF0ZVJlcXVlc3QSEgoEbmFtZRgBIAEoCVIEbmFtZR'
    'JyCgZmaWVsZHMYAiADKAsyWi5zZXJ2aWNlcy52ZXJpZmlhYmxlY3JlZGVudGlhbHMudGVtcGxh'
    'dGVzLnYxLkNyZWF0ZVZlcmlmaWNhdGlvblRlbXBsYXRlUmVxdWVzdC5GaWVsZHNFbnRyeVIGZm'
    'llbGRzEjQKFmNyZWRlbnRpYWxfdGVtcGxhdGVfaWQYAyABKAlSFGNyZWRlbnRpYWxUZW1wbGF0'
    'ZUlkEhQKBXRpdGxlGAQgASgJUgV0aXRsZRIgCgtkZXNjcmlwdGlvbhgFIAEoCVILZGVzY3JpcH'
    'Rpb24agQEKC0ZpZWxkc0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5ElwKBXZhbHVlGAIgASgLMkYu'
    'c2VydmljZXMudmVyaWZpYWJsZWNyZWRlbnRpYWxzLnRlbXBsYXRlcy52MS5WZXJpZmljYXRpb2'
    '5UZW1wbGF0ZUZpZWxkUgV2YWx1ZToCOAE=');

@$core.Deprecated('Use createVerificationTemplateResponseDescriptor instead')
const CreateVerificationTemplateResponse$json = {
  '1': 'CreateVerificationTemplateResponse',
  '2': [
    {
      '1': 'data',
      '3': 1,
      '4': 1,
      '5': 11,
      '6':
          '.services.verifiablecredentials.templates.v1.VerificationTemplateData',
      '10': 'data'
    },
  ],
};

/// Descriptor for `CreateVerificationTemplateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createVerificationTemplateResponseDescriptor =
    $convert.base64Decode(
        'CiJDcmVhdGVWZXJpZmljYXRpb25UZW1wbGF0ZVJlc3BvbnNlElkKBGRhdGEYASABKAsyRS5zZX'
        'J2aWNlcy52ZXJpZmlhYmxlY3JlZGVudGlhbHMudGVtcGxhdGVzLnYxLlZlcmlmaWNhdGlvblRl'
        'bXBsYXRlRGF0YVIEZGF0YQ==');

@$core.Deprecated('Use updateVerificationTemplateRequestDescriptor instead')
const UpdateVerificationTemplateRequest$json = {
  '1': 'UpdateVerificationTemplateRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'title', '17': true},
    {
      '1': 'description',
      '3': 3,
      '4': 1,
      '5': 9,
      '9': 1,
      '10': 'description',
      '17': true
    },
    {
      '1': 'fields',
      '3': 4,
      '4': 3,
      '5': 11,
      '6':
          '.services.verifiablecredentials.templates.v1.UpdateVerificationTemplateRequest.FieldsEntry',
      '10': 'fields'
    },
  ],
  '3': [UpdateVerificationTemplateRequest_FieldsEntry$json],
  '8': [
    {'1': '_title'},
    {'1': '_description'},
  ],
};

@$core.Deprecated('Use updateVerificationTemplateRequestDescriptor instead')
const UpdateVerificationTemplateRequest_FieldsEntry$json = {
  '1': 'FieldsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6':
          '.services.verifiablecredentials.templates.v1.VerificationTemplateFieldPatch',
      '10': 'value'
    },
  ],
  '7': {'7': true},
};

/// Descriptor for `UpdateVerificationTemplateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateVerificationTemplateRequestDescriptor = $convert.base64Decode(
    'CiFVcGRhdGVWZXJpZmljYXRpb25UZW1wbGF0ZVJlcXVlc3QSDgoCaWQYASABKAlSAmlkEhkKBX'
    'RpdGxlGAIgASgJSABSBXRpdGxliAEBEiUKC2Rlc2NyaXB0aW9uGAMgASgJSAFSC2Rlc2NyaXB0'
    'aW9uiAEBEnIKBmZpZWxkcxgEIAMoCzJaLnNlcnZpY2VzLnZlcmlmaWFibGVjcmVkZW50aWFscy'
    '50ZW1wbGF0ZXMudjEuVXBkYXRlVmVyaWZpY2F0aW9uVGVtcGxhdGVSZXF1ZXN0LkZpZWxkc0Vu'
    'dHJ5UgZmaWVsZHMahgEKC0ZpZWxkc0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EmEKBXZhbHVlGA'
    'IgASgLMksuc2VydmljZXMudmVyaWZpYWJsZWNyZWRlbnRpYWxzLnRlbXBsYXRlcy52MS5WZXJp'
    'ZmljYXRpb25UZW1wbGF0ZUZpZWxkUGF0Y2hSBXZhbHVlOgI4AUIICgZfdGl0bGVCDgoMX2Rlc2'
    'NyaXB0aW9u');

@$core.Deprecated('Use updateVerificationTemplateResponseDescriptor instead')
const UpdateVerificationTemplateResponse$json = {
  '1': 'UpdateVerificationTemplateResponse',
  '2': [
    {
      '1': 'template',
      '3': 1,
      '4': 1,
      '5': 11,
      '6':
          '.services.verifiablecredentials.templates.v1.VerificationTemplateData',
      '10': 'template'
    },
  ],
};

/// Descriptor for `UpdateVerificationTemplateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateVerificationTemplateResponseDescriptor =
    $convert.base64Decode(
        'CiJVcGRhdGVWZXJpZmljYXRpb25UZW1wbGF0ZVJlc3BvbnNlEmEKCHRlbXBsYXRlGAEgASgLMk'
        'Uuc2VydmljZXMudmVyaWZpYWJsZWNyZWRlbnRpYWxzLnRlbXBsYXRlcy52MS5WZXJpZmljYXRp'
        'b25UZW1wbGF0ZURhdGFSCHRlbXBsYXRl');

@$core.Deprecated('Use deleteVerificationTemplateRequestDescriptor instead')
const DeleteVerificationTemplateRequest$json = {
  '1': 'DeleteVerificationTemplateRequest',
  '2': [
    {
      '1': 'verification_template_id',
      '3': 1,
      '4': 1,
      '5': 9,
      '10': 'verificationTemplateId'
    },
  ],
};

/// Descriptor for `DeleteVerificationTemplateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteVerificationTemplateRequestDescriptor =
    $convert.base64Decode(
        'CiFEZWxldGVWZXJpZmljYXRpb25UZW1wbGF0ZVJlcXVlc3QSOAoYdmVyaWZpY2F0aW9uX3RlbX'
        'BsYXRlX2lkGAEgASgJUhZ2ZXJpZmljYXRpb25UZW1wbGF0ZUlk');

@$core.Deprecated('Use deleteVerificationTemplateResponseDescriptor instead')
const DeleteVerificationTemplateResponse$json = {
  '1': 'DeleteVerificationTemplateResponse',
};

/// Descriptor for `DeleteVerificationTemplateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteVerificationTemplateResponseDescriptor =
    $convert.base64Decode('CiJEZWxldGVWZXJpZmljYXRpb25UZW1wbGF0ZVJlc3BvbnNl');

@$core.Deprecated('Use verificationTemplateDataDescriptor instead')
const VerificationTemplateData$json = {
  '1': 'VerificationTemplateData',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'version', '3': 3, '4': 1, '5': 5, '10': 'version'},
    {
      '1': 'fields',
      '3': 4,
      '4': 3,
      '5': 11,
      '6':
          '.services.verifiablecredentials.templates.v1.VerificationTemplateData.FieldsEntry',
      '10': 'fields'
    },
    {
      '1': 'credential_template_id',
      '3': 5,
      '4': 1,
      '5': 9,
      '10': 'credentialTemplateId'
    },
    {'1': 'schema_uri', '3': 6, '4': 1, '5': 9, '10': 'schemaUri'},
    {'1': 'ecosystem_id', '3': 8, '4': 1, '5': 9, '10': 'ecosystemId'},
    {'1': 'type', '3': 9, '4': 1, '5': 9, '10': 'type'},
    {'1': 'created_by', '3': 10, '4': 1, '5': 9, '10': 'createdBy'},
    {'1': 'date_created', '3': 11, '4': 1, '5': 9, '10': 'dateCreated'},
    {'1': 'title', '3': 12, '4': 1, '5': 9, '10': 'title'},
    {'1': 'description', '3': 13, '4': 1, '5': 9, '10': 'description'},
  ],
  '3': [VerificationTemplateData_FieldsEntry$json],
};

@$core.Deprecated('Use verificationTemplateDataDescriptor instead')
const VerificationTemplateData_FieldsEntry$json = {
  '1': 'FieldsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6':
          '.services.verifiablecredentials.templates.v1.VerificationTemplateField',
      '10': 'value'
    },
  ],
  '7': {'7': true},
};

/// Descriptor for `VerificationTemplateData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List verificationTemplateDataDescriptor = $convert.base64Decode(
    'ChhWZXJpZmljYXRpb25UZW1wbGF0ZURhdGESDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKA'
    'lSBG5hbWUSGAoHdmVyc2lvbhgDIAEoBVIHdmVyc2lvbhJpCgZmaWVsZHMYBCADKAsyUS5zZXJ2'
    'aWNlcy52ZXJpZmlhYmxlY3JlZGVudGlhbHMudGVtcGxhdGVzLnYxLlZlcmlmaWNhdGlvblRlbX'
    'BsYXRlRGF0YS5GaWVsZHNFbnRyeVIGZmllbGRzEjQKFmNyZWRlbnRpYWxfdGVtcGxhdGVfaWQY'
    'BSABKAlSFGNyZWRlbnRpYWxUZW1wbGF0ZUlkEh0KCnNjaGVtYV91cmkYBiABKAlSCXNjaGVtYV'
    'VyaRIhCgxlY29zeXN0ZW1faWQYCCABKAlSC2Vjb3N5c3RlbUlkEhIKBHR5cGUYCSABKAlSBHR5'
    'cGUSHQoKY3JlYXRlZF9ieRgKIAEoCVIJY3JlYXRlZEJ5EiEKDGRhdGVfY3JlYXRlZBgLIAEoCV'
    'ILZGF0ZUNyZWF0ZWQSFAoFdGl0bGUYDCABKAlSBXRpdGxlEiAKC2Rlc2NyaXB0aW9uGA0gASgJ'
    'UgtkZXNjcmlwdGlvbhqBAQoLRmllbGRzRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSXAoFdmFsdW'
    'UYAiABKAsyRi5zZXJ2aWNlcy52ZXJpZmlhYmxlY3JlZGVudGlhbHMudGVtcGxhdGVzLnYxLlZl'
    'cmlmaWNhdGlvblRlbXBsYXRlRmllbGRSBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use listVerificationTemplatesRequestDescriptor instead')
const ListVerificationTemplatesRequest$json = {
  '1': 'ListVerificationTemplatesRequest',
  '2': [
    {'1': 'query', '3': 1, '4': 1, '5': 9, '10': 'query'},
    {
      '1': 'continuation_token',
      '3': 2,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'continuationToken'
    },
  ],
};

/// Descriptor for `ListVerificationTemplatesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listVerificationTemplatesRequestDescriptor =
    $convert.base64Decode(
        'CiBMaXN0VmVyaWZpY2F0aW9uVGVtcGxhdGVzUmVxdWVzdBIUCgVxdWVyeRgBIAEoCVIFcXVlcn'
        'kSMwoSY29udGludWF0aW9uX3Rva2VuGAIgASgJQgSAph0BUhFjb250aW51YXRpb25Ub2tlbg==');

@$core.Deprecated('Use listVerificationTemplatesResponseDescriptor instead')
const ListVerificationTemplatesResponse$json = {
  '1': 'ListVerificationTemplatesResponse',
  '2': [
    {
      '1': 'templates',
      '3': 1,
      '4': 3,
      '5': 11,
      '6':
          '.services.verifiablecredentials.templates.v1.VerificationTemplateData',
      '10': 'templates'
    },
    {'1': 'has_more_results', '3': 2, '4': 1, '5': 8, '10': 'hasMoreResults'},
    {
      '1': 'continuation_token',
      '3': 3,
      '4': 1,
      '5': 9,
      '10': 'continuationToken'
    },
  ],
};

/// Descriptor for `ListVerificationTemplatesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listVerificationTemplatesResponseDescriptor = $convert.base64Decode(
    'CiFMaXN0VmVyaWZpY2F0aW9uVGVtcGxhdGVzUmVzcG9uc2USYwoJdGVtcGxhdGVzGAEgAygLMk'
    'Uuc2VydmljZXMudmVyaWZpYWJsZWNyZWRlbnRpYWxzLnRlbXBsYXRlcy52MS5WZXJpZmljYXRp'
    'b25UZW1wbGF0ZURhdGFSCXRlbXBsYXRlcxIoChBoYXNfbW9yZV9yZXN1bHRzGAIgASgIUg5oYX'
    'NNb3JlUmVzdWx0cxItChJjb250aW51YXRpb25fdG9rZW4YAyABKAlSEWNvbnRpbnVhdGlvblRv'
    'a2Vu');

@$core.Deprecated('Use verificationTemplateFieldDescriptor instead')
const VerificationTemplateField$json = {
  '1': 'VerificationTemplateField',
  '2': [
    {
      '1': 'field_share_type',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.services.verifiablecredentials.templates.v1.VerificationShareType',
      '10': 'fieldShareType'
    },
    {'1': 'usage_policy', '3': 2, '4': 1, '5': 9, '10': 'usagePolicy'},
  ],
};

/// Descriptor for `VerificationTemplateField`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List verificationTemplateFieldDescriptor = $convert.base64Decode(
    'ChlWZXJpZmljYXRpb25UZW1wbGF0ZUZpZWxkEmwKEGZpZWxkX3NoYXJlX3R5cGUYASABKA4yQi'
    '5zZXJ2aWNlcy52ZXJpZmlhYmxlY3JlZGVudGlhbHMudGVtcGxhdGVzLnYxLlZlcmlmaWNhdGlv'
    'blNoYXJlVHlwZVIOZmllbGRTaGFyZVR5cGUSIQoMdXNhZ2VfcG9saWN5GAIgASgJUgt1c2FnZV'
    'BvbGljeQ==');

@$core.Deprecated('Use verificationTemplateFieldPatchDescriptor instead')
const VerificationTemplateFieldPatch$json = {
  '1': 'VerificationTemplateFieldPatch',
  '2': [
    {
      '1': 'field_share_type',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.services.verifiablecredentials.templates.v1.VerificationShareType',
      '10': 'fieldShareType'
    },
  ],
};

/// Descriptor for `VerificationTemplateFieldPatch`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List verificationTemplateFieldPatchDescriptor =
    $convert.base64Decode(
        'Ch5WZXJpZmljYXRpb25UZW1wbGF0ZUZpZWxkUGF0Y2gSbAoQZmllbGRfc2hhcmVfdHlwZRgBIA'
        'EoDjJCLnNlcnZpY2VzLnZlcmlmaWFibGVjcmVkZW50aWFscy50ZW1wbGF0ZXMudjEuVmVyaWZp'
        'Y2F0aW9uU2hhcmVUeXBlUg5maWVsZFNoYXJlVHlwZQ==');
