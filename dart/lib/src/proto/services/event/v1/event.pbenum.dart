///
//  Generated code. Do not modify.
//  source: services/event/v1/event.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class EventType extends $pb.ProtobufEnum {
  static const EventType PING = EventType._(
      0, $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PING');
  static const EventType LOG = EventType._(
      1, $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LOG');
  static const EventType EGF_CREATED = EventType._(
      5,
      $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'EGF_CREATED');
  static const EventType EGF_MEMBER_REGISTERED = EventType._(
      6,
      $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'EGF_MEMBER_REGISTERED');
  static const EventType EGF_MEMBER_UNREGISTERED = EventType._(
      7,
      $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'EGF_MEMBER_UNREGISTERED');
  static const EventType TEMPLATE_CREATED = EventType._(
      10,
      $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'TEMPLATE_CREATED');
  static const EventType TEMPLATE_DELETED = EventType._(
      11,
      $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'TEMPLATE_DELETED');
  static const EventType WALLET_CREATED = EventType._(
      15,
      $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'WALLET_CREATED');
  static const EventType ITEM_RECEIVED = EventType._(
      16,
      $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'ITEM_RECEIVED');

  static const $core.List<EventType> values = <EventType>[
    PING,
    LOG,
    EGF_CREATED,
    EGF_MEMBER_REGISTERED,
    EGF_MEMBER_UNREGISTERED,
    TEMPLATE_CREATED,
    TEMPLATE_DELETED,
    WALLET_CREATED,
    ITEM_RECEIVED,
  ];

  static final $core.Map<$core.int, EventType> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static EventType? valueOf($core.int value) => _byValue[value];

  const EventType._($core.int v, $core.String n) : super(v, n);
}
