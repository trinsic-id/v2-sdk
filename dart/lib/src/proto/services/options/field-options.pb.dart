///
//  Generated code. Do not modify.
//  source: services/options/field-options.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Field_options {
  static final optional = $pb.Extension<$core.bool>(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'google.protobuf.FieldOptions', const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'optional', 60000, $pb.PbFieldType.OB);
  static void registerAllExtensions($pb.ExtensionRegistry registry) {
    registry.add(optional);
  }
}

