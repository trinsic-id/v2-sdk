///
//  Generated code. Do not modify.
//  source: services/event/v1/event.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use eventTypeDescriptor instead')
const EventType$json = const {
  '1': 'EventType',
  '2': const [
    const {'1': 'PING', '2': 0},
    const {'1': 'LOG', '2': 1},
    const {'1': 'GOVERNANCE_FRAMEWORK_CREATED', '2': 5},
    const {'1': 'GOVERNANCE_FRAMEWORK_MEMBER_REGISTERED', '2': 6},
    const {'1': 'GOVERNANCE_FRAMEWORK_MEMBER_UNREGISTERED', '2': 7},
    const {'1': 'TEMPLATE_CREATED', '2': 10},
    const {'1': 'TEMPLATE_DELETED', '2': 11},
    const {'1': 'WALLET_CREATED', '2': 15},
    const {'1': 'ITEM_RECEIVED', '2': 16},
    const {'1': 'CREDENTIAL_ISSUED', '2': 17},
  ],
};

/// Descriptor for `EventType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List eventTypeDescriptor = $convert.base64Decode(
    'CglFdmVudFR5cGUSCAoEUElORxAAEgcKA0xPRxABEiAKHEdPVkVSTkFOQ0VfRlJBTUVXT1JLX0NSRUFURUQQBRIqCiZHT1ZFUk5BTkNFX0ZSQU1FV09SS19NRU1CRVJfUkVHSVNURVJFRBAGEiwKKEdPVkVSTkFOQ0VfRlJBTUVXT1JLX01FTUJFUl9VTlJFR0lTVEVSRUQQBxIUChBURU1QTEFURV9DUkVBVEVEEAoSFAoQVEVNUExBVEVfREVMRVRFRBALEhIKDldBTExFVF9DUkVBVEVEEA8SEQoNSVRFTV9SRUNFSVZFRBAQEhUKEUNSRURFTlRJQUxfSVNTVUVEEBE=');
@$core.Deprecated('Use aPICallDescriptor instead')
const APICall$json = const {
  '1': 'APICall',
  '2': const [
    const {'1': 'source', '3': 1, '4': 1, '5': 9, '10': 'source'},
    const {'1': 'request', '3': 2, '4': 1, '5': 12, '10': 'request'},
    const {'1': 'response', '3': 3, '4': 1, '5': 12, '10': 'response'},
  ],
};

/// Descriptor for `APICall`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aPICallDescriptor = $convert.base64Decode(
    'CgdBUElDYWxsEhYKBnNvdXJjZRgBIAEoCVIGc291cmNlEhgKB3JlcXVlc3QYAiABKAxSB3JlcXVlc3QSGgoIcmVzcG9uc2UYAyABKAxSCHJlc3BvbnNl');
@$core.Deprecated('Use pingV1Descriptor instead')
const PingV1$json = const {
  '1': 'PingV1',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'webhook_id', '3': 2, '4': 1, '5': 9, '10': 'webhookId'},
    const {'1': 'timestamp', '3': 3, '4': 1, '5': 9, '10': 'timestamp'},
    const {'1': 'message', '3': 4, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'ecosystem_id', '3': 5, '4': 1, '5': 9, '10': 'ecosystemId'},
  ],
  '7': const {},
};

/// Descriptor for `PingV1`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pingV1Descriptor = $convert.base64Decode(
    'CgZQaW5nVjESDgoCaWQYASABKAlSAmlkEh0KCndlYmhvb2tfaWQYAiABKAlSCXdlYmhvb2tJZBIcCgl0aW1lc3RhbXAYAyABKAlSCXRpbWVzdGFtcBIYCgdtZXNzYWdlGAQgASgJUgdtZXNzYWdlEiEKDGVjb3N5c3RlbV9pZBgFIAEoCVILZWNvc3lzdGVtSWQ6BJCmHQA=');
@$core.Deprecated('Use governanceFrameworkCreatedV1Descriptor instead')
const GovernanceFrameworkCreatedV1$json = const {
  '1': 'GovernanceFrameworkCreatedV1',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'ecosystem_id', '3': 2, '4': 1, '5': 9, '10': 'ecosystemId'},
    const {
      '1': 'trust_registry',
      '3': 3,
      '4': 1,
      '5': 9,
      '10': 'trustRegistry'
    },
    const {
      '1': 'governing_authority',
      '3': 4,
      '4': 1,
      '5': 9,
      '10': 'governingAuthority'
    },
    const {'1': 'type', '3': 5, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'name', '3': 6, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'description', '3': 7, '4': 1, '5': 9, '10': 'description'},
    const {
      '1': 'governance_framework',
      '3': 8,
      '4': 1,
      '5': 9,
      '10': 'governanceFramework'
    },
    const {'1': 'timestamp', '3': 9, '4': 1, '5': 9, '10': 'timestamp'},
  ],
  '7': const {},
};

/// Descriptor for `GovernanceFrameworkCreatedV1`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List governanceFrameworkCreatedV1Descriptor =
    $convert.base64Decode(
        'ChxHb3Zlcm5hbmNlRnJhbWV3b3JrQ3JlYXRlZFYxEg4KAmlkGAEgASgJUgJpZBIhCgxlY29zeXN0ZW1faWQYAiABKAlSC2Vjb3N5c3RlbUlkEiUKDnRydXN0X3JlZ2lzdHJ5GAMgASgJUg10cnVzdFJlZ2lzdHJ5Ei8KE2dvdmVybmluZ19hdXRob3JpdHkYBCABKAlSEmdvdmVybmluZ0F1dGhvcml0eRISCgR0eXBlGAUgASgJUgR0eXBlEhIKBG5hbWUYBiABKAlSBG5hbWUSIAoLZGVzY3JpcHRpb24YByABKAlSC2Rlc2NyaXB0aW9uEjEKFGdvdmVybmFuY2VfZnJhbWV3b3JrGAggASgJUhNnb3Zlcm5hbmNlRnJhbWV3b3JrEhwKCXRpbWVzdGFtcBgJIAEoCVIJdGltZXN0YW1wOgSQph0F');
@$core.Deprecated('Use templateCreatedV1Descriptor instead')
const TemplateCreatedV1$json = const {
  '1': 'TemplateCreatedV1',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'ecosystem_id', '3': 2, '4': 1, '5': 9, '10': 'ecosystemId'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'type', '3': 4, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'created_by', '3': 5, '4': 1, '5': 9, '10': 'createdBy'},
    const {'1': 'timestamp', '3': 6, '4': 1, '5': 9, '10': 'timestamp'},
  ],
  '7': const {},
};

/// Descriptor for `TemplateCreatedV1`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List templateCreatedV1Descriptor = $convert.base64Decode(
    'ChFUZW1wbGF0ZUNyZWF0ZWRWMRIOCgJpZBgBIAEoCVICaWQSIQoMZWNvc3lzdGVtX2lkGAIgASgJUgtlY29zeXN0ZW1JZBISCgRuYW1lGAMgASgJUgRuYW1lEhIKBHR5cGUYBCABKAlSBHR5cGUSHQoKY3JlYXRlZF9ieRgFIAEoCVIJY3JlYXRlZEJ5EhwKCXRpbWVzdGFtcBgGIAEoCVIJdGltZXN0YW1wOgSQph0K');
@$core.Deprecated('Use itemReceivedV1Descriptor instead')
const ItemReceivedV1$json = const {
  '1': 'ItemReceivedV1',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'received', '3': 2, '4': 1, '5': 9, '10': 'received'},
    const {'1': 'wallet_id', '3': 3, '4': 1, '5': 9, '10': 'walletId'},
    const {'1': 'ecosystem_id', '3': 4, '4': 1, '5': 9, '10': 'ecosystemId'},
  ],
  '7': const {},
};

/// Descriptor for `ItemReceivedV1`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List itemReceivedV1Descriptor = $convert.base64Decode(
    'Cg5JdGVtUmVjZWl2ZWRWMRIOCgJpZBgBIAEoCVICaWQSGgoIcmVjZWl2ZWQYAiABKAlSCHJlY2VpdmVkEhsKCXdhbGxldF9pZBgDIAEoCVIId2FsbGV0SWQSIQoMZWNvc3lzdGVtX2lkGAQgASgJUgtlY29zeXN0ZW1JZDoEkKYdEA==');
