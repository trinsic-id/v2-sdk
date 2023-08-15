//
//  Generated code. Do not modify.
//  source: services/options/field-options.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use annotationOptionDescriptor instead')
const AnnotationOption$json = {
  '1': 'AnnotationOption',
  '2': [
    {'1': 'active', '3': 1, '4': 1, '5': 8, '10': 'active'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `AnnotationOption`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List annotationOptionDescriptor = $convert.base64Decode(
    'ChBBbm5vdGF0aW9uT3B0aW9uEhYKBmFjdGl2ZRgBIAEoCFIGYWN0aXZlEhgKB21lc3NhZ2UYAi'
    'ABKAlSB21lc3NhZ2U=');

@$core.Deprecated('Use sdkTemplateOptionDescriptor instead')
const SdkTemplateOption$json = {
  '1': 'SdkTemplateOption',
  '2': [
    {'1': 'anonymous', '3': 1, '4': 1, '5': 8, '10': 'anonymous'},
    {'1': 'ignore', '3': 2, '4': 1, '5': 8, '10': 'ignore'},
    {'1': 'no_arguments', '3': 3, '4': 1, '5': 8, '10': 'noArguments'},
    {
      '1': 'experimental',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.services.options.AnnotationOption',
      '10': 'experimental'
    },
    {
      '1': 'deprecated',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.services.options.AnnotationOption',
      '10': 'deprecated'
    },
  ],
};

/// Descriptor for `SdkTemplateOption`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sdkTemplateOptionDescriptor = $convert.base64Decode(
    'ChFTZGtUZW1wbGF0ZU9wdGlvbhIcCglhbm9ueW1vdXMYASABKAhSCWFub255bW91cxIWCgZpZ2'
    '5vcmUYAiABKAhSBmlnbm9yZRIhCgxub19hcmd1bWVudHMYAyABKAhSC25vQXJndW1lbnRzEkYK'
    'DGV4cGVyaW1lbnRhbBgEIAEoCzIiLnNlcnZpY2VzLm9wdGlvbnMuQW5ub3RhdGlvbk9wdGlvbl'
    'IMZXhwZXJpbWVudGFsEkIKCmRlcHJlY2F0ZWQYBSABKAsyIi5zZXJ2aWNlcy5vcHRpb25zLkFu'
    'bm90YXRpb25PcHRpb25SCmRlcHJlY2F0ZWQ=');
