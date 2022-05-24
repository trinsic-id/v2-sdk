///
//  Generated code. Do not modify.
//  source: services/provider/v1/provider.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use participantTypeDescriptor instead')
const ParticipantType$json = const {
  '1': 'ParticipantType',
  '2': const [
    const {'1': 'participant_type_individual', '2': 0},
    const {'1': 'participant_type_organization', '2': 1},
  ],
};

/// Descriptor for `ParticipantType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List participantTypeDescriptor = $convert.base64Decode('Cg9QYXJ0aWNpcGFudFR5cGUSHwobcGFydGljaXBhbnRfdHlwZV9pbmRpdmlkdWFsEAASIQodcGFydGljaXBhbnRfdHlwZV9vcmdhbml6YXRpb24QAQ==');
@$core.Deprecated('Use inviteDescriptor instead')
const Invite$json = const {
  '1': 'Invite',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'code', '3': 2, '4': 1, '5': 9, '10': 'code'},
    const {'1': 'created', '3': 3, '4': 1, '5': 9, '10': 'created'},
    const {'1': 'accepted', '3': 4, '4': 1, '5': 9, '10': 'accepted'},
    const {'1': 'expires', '3': 5, '4': 1, '5': 9, '10': 'expires'},
  ],
};

/// Descriptor for `Invite`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List inviteDescriptor = $convert.base64Decode('CgZJbnZpdGUSDgoCaWQYASABKAlSAmlkEhIKBGNvZGUYAiABKAlSBGNvZGUSGAoHY3JlYXRlZBgDIAEoCVIHY3JlYXRlZBIaCghhY2NlcHRlZBgEIAEoCVIIYWNjZXB0ZWQSGAoHZXhwaXJlcxgFIAEoCVIHZXhwaXJlcw==');
@$core.Deprecated('Use inviteRequestDescriptor instead')
const InviteRequest$json = const {
  '1': 'InviteRequest',
  '2': const [
    const {'1': 'participant', '3': 1, '4': 1, '5': 14, '6': '.services.provider.v1.ParticipantType', '10': 'participant'},
    const {'1': 'description', '3': 2, '4': 1, '5': 9, '8': const {}, '10': 'description'},
    const {'1': 'details', '3': 3, '4': 1, '5': 11, '6': '.services.account.v1.AccountDetails', '8': const {}, '10': 'details'},
  ],
  '3': const [InviteRequest_DidCommInvitation$json],
};

@$core.Deprecated('Use inviteRequestDescriptor instead')
const InviteRequest_DidCommInvitation$json = const {
  '1': 'DidCommInvitation',
};

/// Descriptor for `InviteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List inviteRequestDescriptor = $convert.base64Decode('Cg1JbnZpdGVSZXF1ZXN0EkcKC3BhcnRpY2lwYW50GAEgASgOMiUuc2VydmljZXMucHJvdmlkZXIudjEuUGFydGljaXBhbnRUeXBlUgtwYXJ0aWNpcGFudBImCgtkZXNjcmlwdGlvbhgCIAEoCUIEgKYdAVILZGVzY3JpcHRpb24SQwoHZGV0YWlscxgDIAEoCzIjLnNlcnZpY2VzLmFjY291bnQudjEuQWNjb3VudERldGFpbHNCBICmHQFSB2RldGFpbHMaEwoRRGlkQ29tbUludml0YXRpb24=');
@$core.Deprecated('Use inviteResponseDescriptor instead')
const InviteResponse$json = const {
  '1': 'InviteResponse',
  '2': const [
    const {'1': 'invitation_id', '3': 10, '4': 1, '5': 9, '10': 'invitationId'},
    const {'1': 'invitation_code', '3': 11, '4': 1, '5': 9, '10': 'invitationCode'},
  ],
};

/// Descriptor for `InviteResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List inviteResponseDescriptor = $convert.base64Decode('Cg5JbnZpdGVSZXNwb25zZRIjCg1pbnZpdGF0aW9uX2lkGAogASgJUgxpbnZpdGF0aW9uSWQSJwoPaW52aXRhdGlvbl9jb2RlGAsgASgJUg5pbnZpdGF0aW9uQ29kZQ==');
@$core.Deprecated('Use invitationStatusRequestDescriptor instead')
const InvitationStatusRequest$json = const {
  '1': 'InvitationStatusRequest',
  '2': const [
    const {'1': 'invitation_id', '3': 1, '4': 1, '5': 9, '10': 'invitationId'},
  ],
};

/// Descriptor for `InvitationStatusRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List invitationStatusRequestDescriptor = $convert.base64Decode('ChdJbnZpdGF0aW9uU3RhdHVzUmVxdWVzdBIjCg1pbnZpdGF0aW9uX2lkGAEgASgJUgxpbnZpdGF0aW9uSWQ=');
@$core.Deprecated('Use invitationStatusResponseDescriptor instead')
const InvitationStatusResponse$json = const {
  '1': 'InvitationStatusResponse',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.services.provider.v1.InvitationStatusResponse.Status', '10': 'status'},
    const {'1': 'status_details', '3': 2, '4': 1, '5': 9, '10': 'statusDetails'},
  ],
  '4': const [InvitationStatusResponse_Status$json],
};

@$core.Deprecated('Use invitationStatusResponseDescriptor instead')
const InvitationStatusResponse_Status$json = const {
  '1': 'Status',
  '2': const [
    const {'1': 'Error', '2': 0},
    const {'1': 'InvitationSent', '2': 1},
    const {'1': 'Completed', '2': 2},
    const {'1': 'Expired', '2': 3},
  ],
};

/// Descriptor for `InvitationStatusResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List invitationStatusResponseDescriptor = $convert.base64Decode('ChhJbnZpdGF0aW9uU3RhdHVzUmVzcG9uc2USTQoGc3RhdHVzGAEgASgOMjUuc2VydmljZXMucHJvdmlkZXIudjEuSW52aXRhdGlvblN0YXR1c1Jlc3BvbnNlLlN0YXR1c1IGc3RhdHVzEiUKDnN0YXR1c19kZXRhaWxzGAIgASgJUg1zdGF0dXNEZXRhaWxzIkMKBlN0YXR1cxIJCgVFcnJvchAAEhIKDkludml0YXRpb25TZW50EAESDQoJQ29tcGxldGVkEAISCwoHRXhwaXJlZBAD');
@$core.Deprecated('Use ecosystemDescriptor instead')
const Ecosystem$json = const {
  '1': 'Ecosystem',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'uri', '3': 4, '4': 1, '5': 9, '10': 'uri'},
  ],
};

/// Descriptor for `Ecosystem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ecosystemDescriptor = $convert.base64Decode('CglFY29zeXN0ZW0SDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSIAoLZGVzY3JpcHRpb24YAyABKAlSC2Rlc2NyaXB0aW9uEhAKA3VyaRgEIAEoCVIDdXJp');
@$core.Deprecated('Use createEcosystemRequestDescriptor instead')
const CreateEcosystemRequest$json = const {
  '1': 'CreateEcosystemRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'description', '3': 2, '4': 1, '5': 9, '8': const {}, '10': 'description'},
    const {'1': 'uri', '3': 3, '4': 1, '5': 9, '8': const {}, '10': 'uri'},
    const {'1': 'details', '3': 4, '4': 1, '5': 11, '6': '.services.account.v1.AccountDetails', '10': 'details'},
  ],
};

/// Descriptor for `CreateEcosystemRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createEcosystemRequestDescriptor = $convert.base64Decode('ChZDcmVhdGVFY29zeXN0ZW1SZXF1ZXN0EhIKBG5hbWUYASABKAlSBG5hbWUSJgoLZGVzY3JpcHRpb24YAiABKAlCBICmHQFSC2Rlc2NyaXB0aW9uEhYKA3VyaRgDIAEoCUIEgKYdAVIDdXJpEj0KB2RldGFpbHMYBCABKAsyIy5zZXJ2aWNlcy5hY2NvdW50LnYxLkFjY291bnREZXRhaWxzUgdkZXRhaWxz');
@$core.Deprecated('Use createEcosystemResponseDescriptor instead')
const CreateEcosystemResponse$json = const {
  '1': 'CreateEcosystemResponse',
  '2': const [
    const {'1': 'ecosystem', '3': 1, '4': 1, '5': 11, '6': '.services.provider.v1.Ecosystem', '10': 'ecosystem'},
    const {'1': 'profile', '3': 2, '4': 1, '5': 11, '6': '.services.account.v1.AccountProfile', '10': 'profile'},
    const {'1': 'confirmation_method', '3': 3, '4': 1, '5': 14, '6': '.services.account.v1.ConfirmationMethod', '10': 'confirmationMethod'},
  ],
};

/// Descriptor for `CreateEcosystemResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createEcosystemResponseDescriptor = $convert.base64Decode('ChdDcmVhdGVFY29zeXN0ZW1SZXNwb25zZRI9CgllY29zeXN0ZW0YASABKAsyHy5zZXJ2aWNlcy5wcm92aWRlci52MS5FY29zeXN0ZW1SCWVjb3N5c3RlbRI9Cgdwcm9maWxlGAIgASgLMiMuc2VydmljZXMuYWNjb3VudC52MS5BY2NvdW50UHJvZmlsZVIHcHJvZmlsZRJYChNjb25maXJtYXRpb25fbWV0aG9kGAMgASgOMicuc2VydmljZXMuYWNjb3VudC52MS5Db25maXJtYXRpb25NZXRob2RSEmNvbmZpcm1hdGlvbk1ldGhvZA==');
@$core.Deprecated('Use generateTokenRequestDescriptor instead')
const GenerateTokenRequest$json = const {
  '1': 'GenerateTokenRequest',
  '2': const [
    const {'1': 'description', '3': 1, '4': 1, '5': 9, '8': const {}, '10': 'description'},
  ],
};

/// Descriptor for `GenerateTokenRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List generateTokenRequestDescriptor = $convert.base64Decode('ChRHZW5lcmF0ZVRva2VuUmVxdWVzdBImCgtkZXNjcmlwdGlvbhgBIAEoCUIEgKYdAVILZGVzY3JpcHRpb24=');
@$core.Deprecated('Use generateTokenResponseDescriptor instead')
const GenerateTokenResponse$json = const {
  '1': 'GenerateTokenResponse',
  '2': const [
    const {'1': 'profile', '3': 1, '4': 1, '5': 11, '6': '.services.account.v1.AccountProfile', '10': 'profile'},
  ],
};

/// Descriptor for `GenerateTokenResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List generateTokenResponseDescriptor = $convert.base64Decode('ChVHZW5lcmF0ZVRva2VuUmVzcG9uc2USPQoHcHJvZmlsZRgBIAEoCzIjLnNlcnZpY2VzLmFjY291bnQudjEuQWNjb3VudFByb2ZpbGVSB3Byb2ZpbGU=');
@$core.Deprecated('Use getOberonKeyRequestDescriptor instead')
const GetOberonKeyRequest$json = const {
  '1': 'GetOberonKeyRequest',
};

/// Descriptor for `GetOberonKeyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getOberonKeyRequestDescriptor = $convert.base64Decode('ChNHZXRPYmVyb25LZXlSZXF1ZXN0');
@$core.Deprecated('Use getOberonKeyResponseDescriptor instead')
const GetOberonKeyResponse$json = const {
  '1': 'GetOberonKeyResponse',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
  ],
};

/// Descriptor for `GetOberonKeyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getOberonKeyResponseDescriptor = $convert.base64Decode('ChRHZXRPYmVyb25LZXlSZXNwb25zZRIQCgNrZXkYASABKAlSA2tleQ==');
