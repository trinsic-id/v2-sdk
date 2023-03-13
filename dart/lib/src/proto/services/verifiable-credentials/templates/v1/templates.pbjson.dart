///
//  Generated code. Do not modify.
//  source: services/verifiable-credentials/templates/v1/templates.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

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
    const {'1': 'URI', '2': 5},
  ],
};

/// Descriptor for `FieldType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List fieldTypeDescriptor = $convert.base64Decode(
    'CglGaWVsZFR5cGUSCgoGU1RSSU5HEAASCgoGTlVNQkVSEAESCAoEQk9PTBACEgwKCERBVEVUSU1FEAQSBwoDVVJJEAU=');
@$core.Deprecated('Use uriRenderMethodDescriptor instead')
const UriRenderMethod$json = const {
  '1': 'UriRenderMethod',
  '2': const [
    const {'1': 'TEXT', '2': 0},
    const {'1': 'LINK', '2': 1},
    const {'1': 'INLINE_IMAGE', '2': 2},
  ],
};

/// Descriptor for `UriRenderMethod`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List uriRenderMethodDescriptor = $convert.base64Decode(
    'Cg9VcmlSZW5kZXJNZXRob2QSCAoEVEVYVBAAEggKBExJTksQARIQCgxJTkxJTkVfSU1BR0UQAg==');
@$core.Deprecated('Use getCredentialTemplateRequestDescriptor instead')
const GetCredentialTemplateRequest$json = const {
  '1': 'GetCredentialTemplateRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetCredentialTemplateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCredentialTemplateRequestDescriptor =
    $convert.base64Decode(
        'ChxHZXRDcmVkZW50aWFsVGVtcGxhdGVSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZA==');
@$core.Deprecated('Use getCredentialTemplateResponseDescriptor instead')
const GetCredentialTemplateResponse$json = const {
  '1': 'GetCredentialTemplateResponse',
  '2': const [
    const {
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
        'Ch1HZXRDcmVkZW50aWFsVGVtcGxhdGVSZXNwb25zZRJVCgh0ZW1wbGF0ZRgBIAEoCzI5LnNlcnZpY2VzLnZlcmlmaWFibGVjcmVkZW50aWFscy50ZW1wbGF0ZXMudjEuVGVtcGxhdGVEYXRhUgh0ZW1wbGF0ZQ==');
@$core.Deprecated('Use searchCredentialTemplatesRequestDescriptor instead')
const SearchCredentialTemplatesRequest$json = const {
  '1': 'SearchCredentialTemplatesRequest',
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

/// Descriptor for `SearchCredentialTemplatesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchCredentialTemplatesRequestDescriptor =
    $convert.base64Decode(
        'CiBTZWFyY2hDcmVkZW50aWFsVGVtcGxhdGVzUmVxdWVzdBIUCgVxdWVyeRgBIAEoCVIFcXVlcnkSMwoSY29udGludWF0aW9uX3Rva2VuGAIgASgJQgSAph0BUhFjb250aW51YXRpb25Ub2tlbg==');
@$core.Deprecated('Use searchCredentialTemplatesResponseDescriptor instead')
const SearchCredentialTemplatesResponse$json = const {
  '1': 'SearchCredentialTemplatesResponse',
  '2': const [
    const {'1': 'items_json', '3': 1, '4': 1, '5': 9, '10': 'itemsJson'},
    const {'1': 'has_more', '3': 2, '4': 1, '5': 8, '10': 'hasMore'},
    const {
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
        'CiFTZWFyY2hDcmVkZW50aWFsVGVtcGxhdGVzUmVzcG9uc2USHQoKaXRlbXNfanNvbhgBIAEoCVIJaXRlbXNKc29uEhkKCGhhc19tb3JlGAIgASgIUgdoYXNNb3JlEi0KEmNvbnRpbnVhdGlvbl90b2tlbhgEIAEoCVIRY29udGludWF0aW9uVG9rZW4=');
@$core.Deprecated('Use listCredentialTemplatesRequestDescriptor instead')
const ListCredentialTemplatesRequest$json = const {
  '1': 'ListCredentialTemplatesRequest',
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

/// Descriptor for `ListCredentialTemplatesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listCredentialTemplatesRequestDescriptor =
    $convert.base64Decode(
        'Ch5MaXN0Q3JlZGVudGlhbFRlbXBsYXRlc1JlcXVlc3QSFAoFcXVlcnkYASABKAlSBXF1ZXJ5EjMKEmNvbnRpbnVhdGlvbl90b2tlbhgCIAEoCUIEgKYdAVIRY29udGludWF0aW9uVG9rZW4=');
@$core.Deprecated('Use listCredentialTemplatesResponseDescriptor instead')
const ListCredentialTemplatesResponse$json = const {
  '1': 'ListCredentialTemplatesResponse',
  '2': const [
    const {
      '1': 'templates',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.services.verifiablecredentials.templates.v1.TemplateData',
      '10': 'templates'
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

/// Descriptor for `ListCredentialTemplatesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listCredentialTemplatesResponseDescriptor =
    $convert.base64Decode(
        'Ch9MaXN0Q3JlZGVudGlhbFRlbXBsYXRlc1Jlc3BvbnNlElcKCXRlbXBsYXRlcxgBIAMoCzI5LnNlcnZpY2VzLnZlcmlmaWFibGVjcmVkZW50aWFscy50ZW1wbGF0ZXMudjEuVGVtcGxhdGVEYXRhUgl0ZW1wbGF0ZXMSKAoQaGFzX21vcmVfcmVzdWx0cxgCIAEoCFIOaGFzTW9yZVJlc3VsdHMSLQoSY29udGludWF0aW9uX3Rva2VuGAMgASgJUhFjb250aW51YXRpb25Ub2tlbg==');
@$core.Deprecated('Use deleteCredentialTemplateRequestDescriptor instead')
const DeleteCredentialTemplateRequest$json = const {
  '1': 'DeleteCredentialTemplateRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeleteCredentialTemplateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteCredentialTemplateRequestDescriptor =
    $convert.base64Decode(
        'Ch9EZWxldGVDcmVkZW50aWFsVGVtcGxhdGVSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZA==');
@$core.Deprecated('Use deleteCredentialTemplateResponseDescriptor instead')
const DeleteCredentialTemplateResponse$json = const {
  '1': 'DeleteCredentialTemplateResponse',
};

/// Descriptor for `DeleteCredentialTemplateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteCredentialTemplateResponseDescriptor =
    $convert.base64Decode('CiBEZWxldGVDcmVkZW50aWFsVGVtcGxhdGVSZXNwb25zZQ==');
@$core.Deprecated('Use createCredentialTemplateRequestDescriptor instead')
const CreateCredentialTemplateRequest$json = const {
  '1': 'CreateCredentialTemplateRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {
      '1': 'fields',
      '3': 2,
      '4': 3,
      '5': 11,
      '6':
          '.services.verifiablecredentials.templates.v1.CreateCredentialTemplateRequest.FieldsEntry',
      '10': 'fields'
    },
    const {
      '1': 'allow_additional_fields',
      '3': 3,
      '4': 1,
      '5': 8,
      '10': 'allowAdditionalFields'
    },
    const {'1': 'title', '3': 4, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'description', '3': 5, '4': 1, '5': 9, '10': 'description'},
    const {
      '1': 'field_ordering',
      '3': 6,
      '4': 3,
      '5': 11,
      '6':
          '.services.verifiablecredentials.templates.v1.CreateCredentialTemplateRequest.FieldOrderingEntry',
      '10': 'fieldOrdering'
    },
    const {
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
  '3': const [
    CreateCredentialTemplateRequest_FieldsEntry$json,
    CreateCredentialTemplateRequest_FieldOrderingEntry$json
  ],
  '8': const [
    const {'1': '_apple_wallet_options'},
  ],
};

@$core.Deprecated('Use createCredentialTemplateRequestDescriptor instead')
const CreateCredentialTemplateRequest_FieldsEntry$json = const {
  '1': 'FieldsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.services.verifiablecredentials.templates.v1.TemplateField',
      '10': 'value'
    },
  ],
  '7': const {'7': true},
};

@$core.Deprecated('Use createCredentialTemplateRequestDescriptor instead')
const CreateCredentialTemplateRequest_FieldOrderingEntry$json = const {
  '1': 'FieldOrderingEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.services.verifiablecredentials.templates.v1.FieldOrdering',
      '10': 'value'
    },
  ],
  '7': const {'7': true},
};

/// Descriptor for `CreateCredentialTemplateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createCredentialTemplateRequestDescriptor =
    $convert.base64Decode(
        'Ch9DcmVhdGVDcmVkZW50aWFsVGVtcGxhdGVSZXF1ZXN0EhIKBG5hbWUYASABKAlSBG5hbWUScAoGZmllbGRzGAIgAygLMlguc2VydmljZXMudmVyaWZpYWJsZWNyZWRlbnRpYWxzLnRlbXBsYXRlcy52MS5DcmVhdGVDcmVkZW50aWFsVGVtcGxhdGVSZXF1ZXN0LkZpZWxkc0VudHJ5UgZmaWVsZHMSNgoXYWxsb3dfYWRkaXRpb25hbF9maWVsZHMYAyABKAhSFWFsbG93QWRkaXRpb25hbEZpZWxkcxIUCgV0aXRsZRgEIAEoCVIFdGl0bGUSIAoLZGVzY3JpcHRpb24YBSABKAlSC2Rlc2NyaXB0aW9uEoYBCg5maWVsZF9vcmRlcmluZxgGIAMoCzJfLnNlcnZpY2VzLnZlcmlmaWFibGVjcmVkZW50aWFscy50ZW1wbGF0ZXMudjEuQ3JlYXRlQ3JlZGVudGlhbFRlbXBsYXRlUmVxdWVzdC5GaWVsZE9yZGVyaW5nRW50cnlSDWZpZWxkT3JkZXJpbmcSdgoUYXBwbGVfd2FsbGV0X29wdGlvbnMYByABKAsyPy5zZXJ2aWNlcy52ZXJpZmlhYmxlY3JlZGVudGlhbHMudGVtcGxhdGVzLnYxLkFwcGxlV2FsbGV0T3B0aW9uc0gAUhJhcHBsZVdhbGxldE9wdGlvbnOIAQEadQoLRmllbGRzRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSUAoFdmFsdWUYAiABKAsyOi5zZXJ2aWNlcy52ZXJpZmlhYmxlY3JlZGVudGlhbHMudGVtcGxhdGVzLnYxLlRlbXBsYXRlRmllbGRSBXZhbHVlOgI4ARp8ChJGaWVsZE9yZGVyaW5nRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSUAoFdmFsdWUYAiABKAsyOi5zZXJ2aWNlcy52ZXJpZmlhYmxlY3JlZGVudGlhbHMudGVtcGxhdGVzLnYxLkZpZWxkT3JkZXJpbmdSBXZhbHVlOgI4AUIXChVfYXBwbGVfd2FsbGV0X29wdGlvbnM=');
@$core.Deprecated('Use createCredentialTemplateResponseDescriptor instead')
const CreateCredentialTemplateResponse$json = const {
  '1': 'CreateCredentialTemplateResponse',
  '2': const [
    const {
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
        'CiBDcmVhdGVDcmVkZW50aWFsVGVtcGxhdGVSZXNwb25zZRJNCgRkYXRhGAEgASgLMjkuc2VydmljZXMudmVyaWZpYWJsZWNyZWRlbnRpYWxzLnRlbXBsYXRlcy52MS5UZW1wbGF0ZURhdGFSBGRhdGE=');
@$core.Deprecated('Use updateCredentialTemplateRequestDescriptor instead')
const UpdateCredentialTemplateRequest$json = const {
  '1': 'UpdateCredentialTemplateRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {
      '1': 'title',
      '3': 2,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'title',
      '17': true
    },
    const {
      '1': 'description',
      '3': 3,
      '4': 1,
      '5': 9,
      '9': 1,
      '10': 'description',
      '17': true
    },
    const {
      '1': 'fields',
      '3': 4,
      '4': 3,
      '5': 11,
      '6':
          '.services.verifiablecredentials.templates.v1.UpdateCredentialTemplateRequest.FieldsEntry',
      '10': 'fields'
    },
    const {
      '1': 'field_ordering',
      '3': 5,
      '4': 3,
      '5': 11,
      '6':
          '.services.verifiablecredentials.templates.v1.UpdateCredentialTemplateRequest.FieldOrderingEntry',
      '10': 'fieldOrdering'
    },
    const {
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
  '3': const [
    UpdateCredentialTemplateRequest_FieldsEntry$json,
    UpdateCredentialTemplateRequest_FieldOrderingEntry$json
  ],
  '8': const [
    const {'1': '_title'},
    const {'1': '_description'},
    const {'1': '_apple_wallet_options'},
  ],
};

@$core.Deprecated('Use updateCredentialTemplateRequestDescriptor instead')
const UpdateCredentialTemplateRequest_FieldsEntry$json = const {
  '1': 'FieldsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.services.verifiablecredentials.templates.v1.TemplateFieldPatch',
      '10': 'value'
    },
  ],
  '7': const {'7': true},
};

@$core.Deprecated('Use updateCredentialTemplateRequestDescriptor instead')
const UpdateCredentialTemplateRequest_FieldOrderingEntry$json = const {
  '1': 'FieldOrderingEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.services.verifiablecredentials.templates.v1.FieldOrdering',
      '10': 'value'
    },
  ],
  '7': const {'7': true},
};

/// Descriptor for `UpdateCredentialTemplateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateCredentialTemplateRequestDescriptor =
    $convert.base64Decode(
        'Ch9VcGRhdGVDcmVkZW50aWFsVGVtcGxhdGVSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZBIZCgV0aXRsZRgCIAEoCUgAUgV0aXRsZYgBARIlCgtkZXNjcmlwdGlvbhgDIAEoCUgBUgtkZXNjcmlwdGlvbogBARJwCgZmaWVsZHMYBCADKAsyWC5zZXJ2aWNlcy52ZXJpZmlhYmxlY3JlZGVudGlhbHMudGVtcGxhdGVzLnYxLlVwZGF0ZUNyZWRlbnRpYWxUZW1wbGF0ZVJlcXVlc3QuRmllbGRzRW50cnlSBmZpZWxkcxKGAQoOZmllbGRfb3JkZXJpbmcYBSADKAsyXy5zZXJ2aWNlcy52ZXJpZmlhYmxlY3JlZGVudGlhbHMudGVtcGxhdGVzLnYxLlVwZGF0ZUNyZWRlbnRpYWxUZW1wbGF0ZVJlcXVlc3QuRmllbGRPcmRlcmluZ0VudHJ5Ug1maWVsZE9yZGVyaW5nEnYKFGFwcGxlX3dhbGxldF9vcHRpb25zGAYgASgLMj8uc2VydmljZXMudmVyaWZpYWJsZWNyZWRlbnRpYWxzLnRlbXBsYXRlcy52MS5BcHBsZVdhbGxldE9wdGlvbnNIAlISYXBwbGVXYWxsZXRPcHRpb25ziAEBGnoKC0ZpZWxkc0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5ElUKBXZhbHVlGAIgASgLMj8uc2VydmljZXMudmVyaWZpYWJsZWNyZWRlbnRpYWxzLnRlbXBsYXRlcy52MS5UZW1wbGF0ZUZpZWxkUGF0Y2hSBXZhbHVlOgI4ARp8ChJGaWVsZE9yZGVyaW5nRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSUAoFdmFsdWUYAiABKAsyOi5zZXJ2aWNlcy52ZXJpZmlhYmxlY3JlZGVudGlhbHMudGVtcGxhdGVzLnYxLkZpZWxkT3JkZXJpbmdSBXZhbHVlOgI4AUIICgZfdGl0bGVCDgoMX2Rlc2NyaXB0aW9uQhcKFV9hcHBsZV93YWxsZXRfb3B0aW9ucw==');
@$core.Deprecated('Use updateCredentialTemplateResponseDescriptor instead')
const UpdateCredentialTemplateResponse$json = const {
  '1': 'UpdateCredentialTemplateResponse',
  '2': const [
    const {
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
        'CiBVcGRhdGVDcmVkZW50aWFsVGVtcGxhdGVSZXNwb25zZRJkChB1cGRhdGVkX3RlbXBsYXRlGAEgASgLMjkuc2VydmljZXMudmVyaWZpYWJsZWNyZWRlbnRpYWxzLnRlbXBsYXRlcy52MS5UZW1wbGF0ZURhdGFSD3VwZGF0ZWRUZW1wbGF0ZQ==');
@$core.Deprecated('Use templateDataDescriptor instead')
const TemplateData$json = const {
  '1': 'TemplateData',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'version', '3': 3, '4': 1, '5': 5, '10': 'version'},
    const {
      '1': 'fields',
      '3': 4,
      '4': 3,
      '5': 11,
      '6':
          '.services.verifiablecredentials.templates.v1.TemplateData.FieldsEntry',
      '10': 'fields'
    },
    const {
      '1': 'allow_additional_fields',
      '3': 5,
      '4': 1,
      '5': 8,
      '10': 'allowAdditionalFields'
    },
    const {'1': 'schema_uri', '3': 6, '4': 1, '5': 9, '10': 'schemaUri'},
    const {
      '1': 'context_uri',
      '3': 7,
      '4': 1,
      '5': 9,
      '8': const {'3': true},
      '10': 'contextUri',
    },
    const {'1': 'ecosystem_id', '3': 8, '4': 1, '5': 9, '10': 'ecosystemId'},
    const {'1': 'type', '3': 9, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'created_by', '3': 10, '4': 1, '5': 9, '10': 'createdBy'},
    const {'1': 'date_created', '3': 11, '4': 1, '5': 9, '10': 'dateCreated'},
    const {'1': 'title', '3': 12, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'description', '3': 13, '4': 1, '5': 9, '10': 'description'},
    const {
      '1': 'field_ordering',
      '3': 14,
      '4': 3,
      '5': 11,
      '6':
          '.services.verifiablecredentials.templates.v1.TemplateData.FieldOrderingEntry',
      '10': 'fieldOrdering'
    },
    const {
      '1': 'apple_wallet_options',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.services.verifiablecredentials.templates.v1.AppleWalletOptions',
      '10': 'appleWalletOptions'
    },
  ],
  '3': const [
    TemplateData_FieldsEntry$json,
    TemplateData_FieldOrderingEntry$json
  ],
};

@$core.Deprecated('Use templateDataDescriptor instead')
const TemplateData_FieldsEntry$json = const {
  '1': 'FieldsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.services.verifiablecredentials.templates.v1.TemplateField',
      '10': 'value'
    },
  ],
  '7': const {'7': true},
};

@$core.Deprecated('Use templateDataDescriptor instead')
const TemplateData_FieldOrderingEntry$json = const {
  '1': 'FieldOrderingEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.services.verifiablecredentials.templates.v1.FieldOrdering',
      '10': 'value'
    },
  ],
  '7': const {'7': true},
};

/// Descriptor for `TemplateData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List templateDataDescriptor = $convert.base64Decode(
    'CgxUZW1wbGF0ZURhdGESDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSGAoHdmVyc2lvbhgDIAEoBVIHdmVyc2lvbhJdCgZmaWVsZHMYBCADKAsyRS5zZXJ2aWNlcy52ZXJpZmlhYmxlY3JlZGVudGlhbHMudGVtcGxhdGVzLnYxLlRlbXBsYXRlRGF0YS5GaWVsZHNFbnRyeVIGZmllbGRzEjYKF2FsbG93X2FkZGl0aW9uYWxfZmllbGRzGAUgASgIUhVhbGxvd0FkZGl0aW9uYWxGaWVsZHMSHQoKc2NoZW1hX3VyaRgGIAEoCVIJc2NoZW1hVXJpEiMKC2NvbnRleHRfdXJpGAcgASgJQgIYAVIKY29udGV4dFVyaRIhCgxlY29zeXN0ZW1faWQYCCABKAlSC2Vjb3N5c3RlbUlkEhIKBHR5cGUYCSABKAlSBHR5cGUSHQoKY3JlYXRlZF9ieRgKIAEoCVIJY3JlYXRlZEJ5EiEKDGRhdGVfY3JlYXRlZBgLIAEoCVILZGF0ZUNyZWF0ZWQSFAoFdGl0bGUYDCABKAlSBXRpdGxlEiAKC2Rlc2NyaXB0aW9uGA0gASgJUgtkZXNjcmlwdGlvbhJzCg5maWVsZF9vcmRlcmluZxgOIAMoCzJMLnNlcnZpY2VzLnZlcmlmaWFibGVjcmVkZW50aWFscy50ZW1wbGF0ZXMudjEuVGVtcGxhdGVEYXRhLkZpZWxkT3JkZXJpbmdFbnRyeVINZmllbGRPcmRlcmluZxJxChRhcHBsZV93YWxsZXRfb3B0aW9ucxgPIAEoCzI/LnNlcnZpY2VzLnZlcmlmaWFibGVjcmVkZW50aWFscy50ZW1wbGF0ZXMudjEuQXBwbGVXYWxsZXRPcHRpb25zUhJhcHBsZVdhbGxldE9wdGlvbnMadQoLRmllbGRzRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSUAoFdmFsdWUYAiABKAsyOi5zZXJ2aWNlcy52ZXJpZmlhYmxlY3JlZGVudGlhbHMudGVtcGxhdGVzLnYxLlRlbXBsYXRlRmllbGRSBXZhbHVlOgI4ARp8ChJGaWVsZE9yZGVyaW5nRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSUAoFdmFsdWUYAiABKAsyOi5zZXJ2aWNlcy52ZXJpZmlhYmxlY3JlZGVudGlhbHMudGVtcGxhdGVzLnYxLkZpZWxkT3JkZXJpbmdSBXZhbHVlOgI4AQ==');
@$core.Deprecated('Use appleWalletOptionsDescriptor instead')
const AppleWalletOptions$json = const {
  '1': 'AppleWalletOptions',
  '2': const [
    const {
      '1': 'background_color',
      '3': 1,
      '4': 1,
      '5': 9,
      '10': 'backgroundColor'
    },
    const {
      '1': 'foreground_color',
      '3': 2,
      '4': 1,
      '5': 9,
      '10': 'foregroundColor'
    },
    const {'1': 'label_color', '3': 3, '4': 1, '5': 9, '10': 'labelColor'},
    const {'1': 'primary_field', '3': 4, '4': 1, '5': 9, '10': 'primaryField'},
    const {
      '1': 'secondary_fields',
      '3': 5,
      '4': 3,
      '5': 9,
      '10': 'secondaryFields'
    },
    const {
      '1': 'auxiliary_fields',
      '3': 6,
      '4': 3,
      '5': 9,
      '10': 'auxiliaryFields'
    },
  ],
};

/// Descriptor for `AppleWalletOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appleWalletOptionsDescriptor = $convert.base64Decode(
    'ChJBcHBsZVdhbGxldE9wdGlvbnMSKQoQYmFja2dyb3VuZF9jb2xvchgBIAEoCVIPYmFja2dyb3VuZENvbG9yEikKEGZvcmVncm91bmRfY29sb3IYAiABKAlSD2ZvcmVncm91bmRDb2xvchIfCgtsYWJlbF9jb2xvchgDIAEoCVIKbGFiZWxDb2xvchIjCg1wcmltYXJ5X2ZpZWxkGAQgASgJUgxwcmltYXJ5RmllbGQSKQoQc2Vjb25kYXJ5X2ZpZWxkcxgFIAMoCVIPc2Vjb25kYXJ5RmllbGRzEikKEGF1eGlsaWFyeV9maWVsZHMYBiADKAlSD2F1eGlsaWFyeUZpZWxkcw==');
@$core.Deprecated('Use fieldOrderingDescriptor instead')
const FieldOrdering$json = const {
  '1': 'FieldOrdering',
  '2': const [
    const {'1': 'order', '3': 1, '4': 1, '5': 5, '10': 'order'},
    const {'1': 'section', '3': 2, '4': 1, '5': 9, '10': 'section'},
  ],
};

/// Descriptor for `FieldOrdering`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fieldOrderingDescriptor = $convert.base64Decode(
    'Cg1GaWVsZE9yZGVyaW5nEhQKBW9yZGVyGAEgASgFUgVvcmRlchIYCgdzZWN0aW9uGAIgASgJUgdzZWN0aW9u');
@$core.Deprecated('Use templateFieldDescriptor instead')
const TemplateField$json = const {
  '1': 'TemplateField',
  '2': const [
    const {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'optional', '3': 3, '4': 1, '5': 8, '10': 'optional'},
    const {
      '1': 'type',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.services.verifiablecredentials.templates.v1.FieldType',
      '10': 'type'
    },
    const {
      '1': 'annotations',
      '3': 5,
      '4': 3,
      '5': 11,
      '6':
          '.services.verifiablecredentials.templates.v1.TemplateField.AnnotationsEntry',
      '8': const {'3': true},
      '10': 'annotations',
    },
    const {
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
  '3': const [TemplateField_AnnotationsEntry$json],
  '8': const [
    const {'1': '_uri_data'},
  ],
};

@$core.Deprecated('Use templateFieldDescriptor instead')
const TemplateField_AnnotationsEntry$json = const {
  '1': 'AnnotationsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `TemplateField`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List templateFieldDescriptor = $convert.base64Decode(
    'Cg1UZW1wbGF0ZUZpZWxkEhQKBXRpdGxlGAEgASgJUgV0aXRsZRIgCgtkZXNjcmlwdGlvbhgCIAEoCVILZGVzY3JpcHRpb24SGgoIb3B0aW9uYWwYAyABKAhSCG9wdGlvbmFsEkoKBHR5cGUYBCABKA4yNi5zZXJ2aWNlcy52ZXJpZmlhYmxlY3JlZGVudGlhbHMudGVtcGxhdGVzLnYxLkZpZWxkVHlwZVIEdHlwZRJxCgthbm5vdGF0aW9ucxgFIAMoCzJLLnNlcnZpY2VzLnZlcmlmaWFibGVjcmVkZW50aWFscy50ZW1wbGF0ZXMudjEuVGVtcGxhdGVGaWVsZC5Bbm5vdGF0aW9uc0VudHJ5QgIYAVILYW5ub3RhdGlvbnMSWQoIdXJpX2RhdGEYBiABKAsyOS5zZXJ2aWNlcy52ZXJpZmlhYmxlY3JlZGVudGlhbHMudGVtcGxhdGVzLnYxLlVyaUZpZWxkRGF0YUgAUgd1cmlEYXRhiAEBGj4KEEFubm90YXRpb25zRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AUILCglfdXJpX2RhdGE=');
@$core.Deprecated('Use templateFieldPatchDescriptor instead')
const TemplateFieldPatch$json = const {
  '1': 'TemplateFieldPatch',
  '2': const [
    const {
      '1': 'title',
      '3': 1,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'title',
      '17': true
    },
    const {
      '1': 'description',
      '3': 2,
      '4': 1,
      '5': 9,
      '9': 1,
      '10': 'description',
      '17': true
    },
    const {
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
  '8': const [
    const {'1': '_title'},
    const {'1': '_description'},
    const {'1': '_uri_data'},
  ],
};

/// Descriptor for `TemplateFieldPatch`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List templateFieldPatchDescriptor = $convert.base64Decode(
    'ChJUZW1wbGF0ZUZpZWxkUGF0Y2gSGQoFdGl0bGUYASABKAlIAFIFdGl0bGWIAQESJQoLZGVzY3JpcHRpb24YAiABKAlIAVILZGVzY3JpcHRpb26IAQESWQoIdXJpX2RhdGEYAyABKAsyOS5zZXJ2aWNlcy52ZXJpZmlhYmxlY3JlZGVudGlhbHMudGVtcGxhdGVzLnYxLlVyaUZpZWxkRGF0YUgCUgd1cmlEYXRhiAEBQggKBl90aXRsZUIOCgxfZGVzY3JpcHRpb25CCwoJX3VyaV9kYXRh');
@$core.Deprecated('Use uriFieldDataDescriptor instead')
const UriFieldData$json = const {
  '1': 'UriFieldData',
  '2': const [
    const {'1': 'mime_type', '3': 1, '4': 1, '5': 9, '10': 'mimeType'},
    const {
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
    'CgxVcmlGaWVsZERhdGESGwoJbWltZV90eXBlGAEgASgJUghtaW1lVHlwZRJhCg1yZW5kZXJfbWV0aG9kGAIgASgOMjwuc2VydmljZXMudmVyaWZpYWJsZWNyZWRlbnRpYWxzLnRlbXBsYXRlcy52MS5VcmlSZW5kZXJNZXRob2RSDHJlbmRlck1ldGhvZA==');
