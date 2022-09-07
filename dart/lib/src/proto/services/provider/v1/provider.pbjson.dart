///
//  Generated code. Do not modify.
//  source: services/provider/v1/provider.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

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
final $typed_data.Uint8List participantTypeDescriptor = $convert.base64Decode(
    'Cg9QYXJ0aWNpcGFudFR5cGUSHwobcGFydGljaXBhbnRfdHlwZV9pbmRpdmlkdWFsEAASIQodcGFydGljaXBhbnRfdHlwZV9vcmdhbml6YXRpb24QAQ==');
@$core.Deprecated('Use inviteRequestDescriptor instead')
const InviteRequest$json = const {
  '1': 'InviteRequest',
  '2': const [
    const {
      '1': 'participant',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.services.provider.v1.ParticipantType',
      '10': 'participant'
    },
    const {
      '1': 'description',
      '3': 2,
      '4': 1,
      '5': 9,
      '8': const {},
      '10': 'description'
    },
    const {
      '1': 'details',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.services.account.v1.AccountDetails',
      '8': const {},
      '10': 'details'
    },
  ],
  '3': const [InviteRequest_DidCommInvitation$json],
};

@$core.Deprecated('Use inviteRequestDescriptor instead')
const InviteRequest_DidCommInvitation$json = const {
  '1': 'DidCommInvitation',
};

/// Descriptor for `InviteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List inviteRequestDescriptor = $convert.base64Decode(
    'Cg1JbnZpdGVSZXF1ZXN0EkcKC3BhcnRpY2lwYW50GAEgASgOMiUuc2VydmljZXMucHJvdmlkZXIudjEuUGFydGljaXBhbnRUeXBlUgtwYXJ0aWNpcGFudBImCgtkZXNjcmlwdGlvbhgCIAEoCUIEgKYdAVILZGVzY3JpcHRpb24SQwoHZGV0YWlscxgDIAEoCzIjLnNlcnZpY2VzLmFjY291bnQudjEuQWNjb3VudERldGFpbHNCBICmHQFSB2RldGFpbHMaEwoRRGlkQ29tbUludml0YXRpb24=');
@$core.Deprecated('Use inviteResponseDescriptor instead')
const InviteResponse$json = const {
  '1': 'InviteResponse',
  '2': const [
    const {'1': 'invitation_id', '3': 10, '4': 1, '5': 9, '10': 'invitationId'},
    const {
      '1': 'invitation_code',
      '3': 11,
      '4': 1,
      '5': 9,
      '10': 'invitationCode'
    },
  ],
};

/// Descriptor for `InviteResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List inviteResponseDescriptor = $convert.base64Decode(
    'Cg5JbnZpdGVSZXNwb25zZRIjCg1pbnZpdGF0aW9uX2lkGAogASgJUgxpbnZpdGF0aW9uSWQSJwoPaW52aXRhdGlvbl9jb2RlGAsgASgJUg5pbnZpdGF0aW9uQ29kZQ==');
@$core.Deprecated('Use invitationStatusRequestDescriptor instead')
const InvitationStatusRequest$json = const {
  '1': 'InvitationStatusRequest',
  '2': const [
    const {'1': 'invitation_id', '3': 1, '4': 1, '5': 9, '10': 'invitationId'},
  ],
};

/// Descriptor for `InvitationStatusRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List invitationStatusRequestDescriptor =
    $convert.base64Decode(
        'ChdJbnZpdGF0aW9uU3RhdHVzUmVxdWVzdBIjCg1pbnZpdGF0aW9uX2lkGAEgASgJUgxpbnZpdGF0aW9uSWQ=');
@$core.Deprecated('Use invitationStatusResponseDescriptor instead')
const InvitationStatusResponse$json = const {
  '1': 'InvitationStatusResponse',
  '2': const [
    const {
      '1': 'status',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.services.provider.v1.InvitationStatusResponse.Status',
      '10': 'status'
    },
    const {
      '1': 'status_details',
      '3': 2,
      '4': 1,
      '5': 9,
      '10': 'statusDetails'
    },
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
final $typed_data.Uint8List invitationStatusResponseDescriptor =
    $convert.base64Decode(
        'ChhJbnZpdGF0aW9uU3RhdHVzUmVzcG9uc2USTQoGc3RhdHVzGAEgASgOMjUuc2VydmljZXMucHJvdmlkZXIudjEuSW52aXRhdGlvblN0YXR1c1Jlc3BvbnNlLlN0YXR1c1IGc3RhdHVzEiUKDnN0YXR1c19kZXRhaWxzGAIgASgJUg1zdGF0dXNEZXRhaWxzIkMKBlN0YXR1cxIJCgVFcnJvchAAEhIKDkludml0YXRpb25TZW50EAESDQoJQ29tcGxldGVkEAISCwoHRXhwaXJlZBAD');
@$core.Deprecated('Use ecosystemDescriptor instead')
const Ecosystem$json = const {
  '1': 'Ecosystem',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    const {
      '1': 'uri',
      '3': 4,
      '4': 1,
      '5': 9,
      '8': const {'3': true},
      '10': 'uri',
    },
    const {
      '1': 'webhooks',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.services.provider.v1.WebhookConfig',
      '10': 'webhooks'
    },
    const {
      '1': 'display',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.services.provider.v1.EcosystemDisplay',
      '10': 'display'
    },
    const {'1': 'domain', '3': 7, '4': 1, '5': 9, '10': 'domain'},
  ],
};

/// Descriptor for `Ecosystem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ecosystemDescriptor = $convert.base64Decode(
    'CglFY29zeXN0ZW0SDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSIAoLZGVzY3JpcHRpb24YAyABKAlSC2Rlc2NyaXB0aW9uEhQKA3VyaRgEIAEoCUICGAFSA3VyaRI/Cgh3ZWJob29rcxgFIAMoCzIjLnNlcnZpY2VzLnByb3ZpZGVyLnYxLldlYmhvb2tDb25maWdSCHdlYmhvb2tzEkAKB2Rpc3BsYXkYBiABKAsyJi5zZXJ2aWNlcy5wcm92aWRlci52MS5FY29zeXN0ZW1EaXNwbGF5UgdkaXNwbGF5EhYKBmRvbWFpbhgHIAEoCVIGZG9tYWlu');
@$core.Deprecated('Use webhookConfigDescriptor instead')
const WebhookConfig$json = const {
  '1': 'WebhookConfig',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {
      '1': 'destination_url',
      '3': 2,
      '4': 1,
      '5': 9,
      '10': 'destinationUrl'
    },
    const {'1': 'events', '3': 4, '4': 3, '5': 9, '10': 'events'},
    const {'1': 'status', '3': 5, '4': 1, '5': 9, '10': 'status'},
  ],
};

/// Descriptor for `WebhookConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List webhookConfigDescriptor = $convert.base64Decode(
    'Cg1XZWJob29rQ29uZmlnEg4KAmlkGAEgASgJUgJpZBInCg9kZXN0aW5hdGlvbl91cmwYAiABKAlSDmRlc3RpbmF0aW9uVXJsEhYKBmV2ZW50cxgEIAMoCVIGZXZlbnRzEhYKBnN0YXR1cxgFIAEoCVIGc3RhdHVz');
@$core.Deprecated('Use grantDescriptor instead')
const Grant$json = const {
  '1': 'Grant',
  '2': const [
    const {'1': 'resourceId', '3': 1, '4': 1, '5': 9, '10': 'resourceId'},
    const {'1': 'actions', '3': 2, '4': 3, '5': 9, '10': 'actions'},
    const {
      '1': 'child_grants',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.services.provider.v1.Grant',
      '10': 'childGrants'
    },
  ],
};

/// Descriptor for `Grant`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List grantDescriptor = $convert.base64Decode(
    'CgVHcmFudBIeCgpyZXNvdXJjZUlkGAEgASgJUgpyZXNvdXJjZUlkEhgKB2FjdGlvbnMYAiADKAlSB2FjdGlvbnMSPgoMY2hpbGRfZ3JhbnRzGAMgAygLMhsuc2VydmljZXMucHJvdmlkZXIudjEuR3JhbnRSC2NoaWxkR3JhbnRz');
@$core.Deprecated('Use createEcosystemRequestDescriptor instead')
const CreateEcosystemRequest$json = const {
  '1': 'CreateEcosystemRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '8': const {}, '10': 'name'},
    const {
      '1': 'description',
      '3': 2,
      '4': 1,
      '5': 9,
      '8': const {},
      '10': 'description'
    },
    const {
      '1': 'uri',
      '3': 3,
      '4': 1,
      '5': 9,
      '8': const {'3': true},
      '10': 'uri',
    },
    const {
      '1': 'details',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.services.account.v1.AccountDetails',
      '10': 'details'
    },
    const {'1': 'domain', '3': 5, '4': 1, '5': 9, '10': 'domain'},
  ],
};

/// Descriptor for `CreateEcosystemRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createEcosystemRequestDescriptor =
    $convert.base64Decode(
        'ChZDcmVhdGVFY29zeXN0ZW1SZXF1ZXN0EhgKBG5hbWUYASABKAlCBICmHQFSBG5hbWUSJgoLZGVzY3JpcHRpb24YAiABKAlCBICmHQFSC2Rlc2NyaXB0aW9uEhgKA3VyaRgDIAEoCUIGGAGAph0BUgN1cmkSPQoHZGV0YWlscxgEIAEoCzIjLnNlcnZpY2VzLmFjY291bnQudjEuQWNjb3VudERldGFpbHNSB2RldGFpbHMSFgoGZG9tYWluGAUgASgJUgZkb21haW4=');
@$core.Deprecated('Use createEcosystemResponseDescriptor instead')
const CreateEcosystemResponse$json = const {
  '1': 'CreateEcosystemResponse',
  '2': const [
    const {
      '1': 'ecosystem',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.services.provider.v1.Ecosystem',
      '10': 'ecosystem'
    },
    const {
      '1': 'profile',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.services.account.v1.AccountProfile',
      '10': 'profile'
    },
    const {
      '1': 'confirmation_method',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.services.account.v1.ConfirmationMethod',
      '10': 'confirmationMethod'
    },
  ],
};

/// Descriptor for `CreateEcosystemResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createEcosystemResponseDescriptor =
    $convert.base64Decode(
        'ChdDcmVhdGVFY29zeXN0ZW1SZXNwb25zZRI9CgllY29zeXN0ZW0YASABKAsyHy5zZXJ2aWNlcy5wcm92aWRlci52MS5FY29zeXN0ZW1SCWVjb3N5c3RlbRI9Cgdwcm9maWxlGAIgASgLMiMuc2VydmljZXMuYWNjb3VudC52MS5BY2NvdW50UHJvZmlsZVIHcHJvZmlsZRJYChNjb25maXJtYXRpb25fbWV0aG9kGAMgASgOMicuc2VydmljZXMuYWNjb3VudC52MS5Db25maXJtYXRpb25NZXRob2RSEmNvbmZpcm1hdGlvbk1ldGhvZA==');
@$core.Deprecated('Use updateEcosystemRequestDescriptor instead')
const UpdateEcosystemRequest$json = const {
  '1': 'UpdateEcosystemRequest',
  '2': const [
    const {'1': 'description', '3': 1, '4': 1, '5': 9, '10': 'description'},
    const {
      '1': 'uri',
      '3': 2,
      '4': 1,
      '5': 9,
      '8': const {'3': true},
      '10': 'uri',
    },
    const {'1': 'domain', '3': 3, '4': 1, '5': 9, '10': 'domain'},
    const {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
    const {
      '1': 'display',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.services.provider.v1.EcosystemDisplay',
      '10': 'display'
    },
  ],
};

/// Descriptor for `UpdateEcosystemRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateEcosystemRequestDescriptor =
    $convert.base64Decode(
        'ChZVcGRhdGVFY29zeXN0ZW1SZXF1ZXN0EiAKC2Rlc2NyaXB0aW9uGAEgASgJUgtkZXNjcmlwdGlvbhIUCgN1cmkYAiABKAlCAhgBUgN1cmkSFgoGZG9tYWluGAMgASgJUgZkb21haW4SEgoEbmFtZRgEIAEoCVIEbmFtZRJACgdkaXNwbGF5GAUgASgLMiYuc2VydmljZXMucHJvdmlkZXIudjEuRWNvc3lzdGVtRGlzcGxheVIHZGlzcGxheQ==');
@$core.Deprecated('Use ecosystemDisplayDescriptor instead')
const EcosystemDisplay$json = const {
  '1': 'EcosystemDisplay',
  '2': const [
    const {
      '1': 'dark',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.services.provider.v1.EcosystemDisplayDetails',
      '10': 'dark'
    },
    const {
      '1': 'light',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.services.provider.v1.EcosystemDisplayDetails',
      '10': 'light'
    },
  ],
};

/// Descriptor for `EcosystemDisplay`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ecosystemDisplayDescriptor = $convert.base64Decode(
    'ChBFY29zeXN0ZW1EaXNwbGF5EkEKBGRhcmsYASABKAsyLS5zZXJ2aWNlcy5wcm92aWRlci52MS5FY29zeXN0ZW1EaXNwbGF5RGV0YWlsc1IEZGFyaxJDCgVsaWdodBgCIAEoCzItLnNlcnZpY2VzLnByb3ZpZGVyLnYxLkVjb3N5c3RlbURpc3BsYXlEZXRhaWxzUgVsaWdodA==');
@$core.Deprecated('Use ecosystemDisplayDetailsDescriptor instead')
const EcosystemDisplayDetails$json = const {
  '1': 'EcosystemDisplayDetails',
  '2': const [
    const {'1': 'logo_url', '3': 3, '4': 1, '5': 9, '10': 'logoUrl'},
    const {'1': 'color', '3': 4, '4': 1, '5': 9, '10': 'color'},
  ],
};

/// Descriptor for `EcosystemDisplayDetails`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ecosystemDisplayDetailsDescriptor =
    $convert.base64Decode(
        'ChdFY29zeXN0ZW1EaXNwbGF5RGV0YWlscxIZCghsb2dvX3VybBgDIAEoCVIHbG9nb1VybBIUCgVjb2xvchgEIAEoCVIFY29sb3I=');
@$core.Deprecated('Use updateEcosystemResponseDescriptor instead')
const UpdateEcosystemResponse$json = const {
  '1': 'UpdateEcosystemResponse',
  '2': const [
    const {
      '1': 'Ecosystem',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.services.provider.v1.Ecosystem',
      '10': 'Ecosystem'
    },
  ],
};

/// Descriptor for `UpdateEcosystemResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateEcosystemResponseDescriptor =
    $convert.base64Decode(
        'ChdVcGRhdGVFY29zeXN0ZW1SZXNwb25zZRI9CglFY29zeXN0ZW0YASABKAsyHy5zZXJ2aWNlcy5wcm92aWRlci52MS5FY29zeXN0ZW1SCUVjb3N5c3RlbQ==');
@$core.Deprecated('Use addWebhookRequestDescriptor instead')
const AddWebhookRequest$json = const {
  '1': 'AddWebhookRequest',
  '2': const [
    const {
      '1': 'destination_url',
      '3': 1,
      '4': 1,
      '5': 9,
      '10': 'destinationUrl'
    },
    const {'1': 'secret', '3': 2, '4': 1, '5': 9, '10': 'secret'},
    const {'1': 'events', '3': 3, '4': 3, '5': 9, '10': 'events'},
  ],
};

/// Descriptor for `AddWebhookRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addWebhookRequestDescriptor = $convert.base64Decode(
    'ChFBZGRXZWJob29rUmVxdWVzdBInCg9kZXN0aW5hdGlvbl91cmwYASABKAlSDmRlc3RpbmF0aW9uVXJsEhYKBnNlY3JldBgCIAEoCVIGc2VjcmV0EhYKBmV2ZW50cxgDIAMoCVIGZXZlbnRz');
@$core.Deprecated('Use addWebhookResponseDescriptor instead')
const AddWebhookResponse$json = const {
  '1': 'AddWebhookResponse',
  '2': const [
    const {
      '1': 'ecosystem',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.services.provider.v1.Ecosystem',
      '10': 'ecosystem'
    },
  ],
};

/// Descriptor for `AddWebhookResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addWebhookResponseDescriptor = $convert.base64Decode(
    'ChJBZGRXZWJob29rUmVzcG9uc2USPQoJZWNvc3lzdGVtGAEgASgLMh8uc2VydmljZXMucHJvdmlkZXIudjEuRWNvc3lzdGVtUgllY29zeXN0ZW0=');
@$core.Deprecated('Use deleteWebhookRequestDescriptor instead')
const DeleteWebhookRequest$json = const {
  '1': 'DeleteWebhookRequest',
  '2': const [
    const {'1': 'webhook_id', '3': 1, '4': 1, '5': 9, '10': 'webhookId'},
  ],
};

/// Descriptor for `DeleteWebhookRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteWebhookRequestDescriptor = $convert.base64Decode(
    'ChREZWxldGVXZWJob29rUmVxdWVzdBIdCgp3ZWJob29rX2lkGAEgASgJUgl3ZWJob29rSWQ=');
@$core.Deprecated('Use deleteWebhookResponseDescriptor instead')
const DeleteWebhookResponse$json = const {
  '1': 'DeleteWebhookResponse',
  '2': const [
    const {
      '1': 'ecosystem',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.services.provider.v1.Ecosystem',
      '10': 'ecosystem'
    },
  ],
};

/// Descriptor for `DeleteWebhookResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteWebhookResponseDescriptor = $convert.base64Decode(
    'ChVEZWxldGVXZWJob29rUmVzcG9uc2USPQoJZWNvc3lzdGVtGAEgASgLMh8uc2VydmljZXMucHJvdmlkZXIudjEuRWNvc3lzdGVtUgllY29zeXN0ZW0=');
@$core.Deprecated('Use ecosystemInfoRequestDescriptor instead')
const EcosystemInfoRequest$json = const {
  '1': 'EcosystemInfoRequest',
};

/// Descriptor for `EcosystemInfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ecosystemInfoRequestDescriptor =
    $convert.base64Decode('ChRFY29zeXN0ZW1JbmZvUmVxdWVzdA==');
@$core.Deprecated('Use ecosystemInfoResponseDescriptor instead')
const EcosystemInfoResponse$json = const {
  '1': 'EcosystemInfoResponse',
  '2': const [
    const {
      '1': 'ecosystem',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.services.provider.v1.Ecosystem',
      '10': 'ecosystem'
    },
  ],
};

/// Descriptor for `EcosystemInfoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ecosystemInfoResponseDescriptor = $convert.base64Decode(
    'ChVFY29zeXN0ZW1JbmZvUmVzcG9uc2USPQoJZWNvc3lzdGVtGAEgASgLMh8uc2VydmljZXMucHJvdmlkZXIudjEuRWNvc3lzdGVtUgllY29zeXN0ZW0=');
@$core.Deprecated('Use generateTokenRequestDescriptor instead')
const GenerateTokenRequest$json = const {
  '1': 'GenerateTokenRequest',
  '2': const [
    const {
      '1': 'description',
      '3': 1,
      '4': 1,
      '5': 9,
      '8': const {},
      '10': 'description'
    },
  ],
};

/// Descriptor for `GenerateTokenRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List generateTokenRequestDescriptor = $convert.base64Decode(
    'ChRHZW5lcmF0ZVRva2VuUmVxdWVzdBImCgtkZXNjcmlwdGlvbhgBIAEoCUIEgKYdAVILZGVzY3JpcHRpb24=');
@$core.Deprecated('Use generateTokenResponseDescriptor instead')
const GenerateTokenResponse$json = const {
  '1': 'GenerateTokenResponse',
  '2': const [
    const {
      '1': 'profile',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.services.account.v1.AccountProfile',
      '10': 'profile'
    },
  ],
};

/// Descriptor for `GenerateTokenResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List generateTokenResponseDescriptor = $convert.base64Decode(
    'ChVHZW5lcmF0ZVRva2VuUmVzcG9uc2USPQoHcHJvZmlsZRgBIAEoCzIjLnNlcnZpY2VzLmFjY291bnQudjEuQWNjb3VudFByb2ZpbGVSB3Byb2ZpbGU=');
@$core.Deprecated('Use getOberonKeyRequestDescriptor instead')
const GetOberonKeyRequest$json = const {
  '1': 'GetOberonKeyRequest',
};

/// Descriptor for `GetOberonKeyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getOberonKeyRequestDescriptor =
    $convert.base64Decode('ChNHZXRPYmVyb25LZXlSZXF1ZXN0');
@$core.Deprecated('Use getOberonKeyResponseDescriptor instead')
const GetOberonKeyResponse$json = const {
  '1': 'GetOberonKeyResponse',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
  ],
};

/// Descriptor for `GetOberonKeyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getOberonKeyResponseDescriptor = $convert
    .base64Decode('ChRHZXRPYmVyb25LZXlSZXNwb25zZRIQCgNrZXkYASABKAlSA2tleQ==');
@$core.Deprecated('Use getEventTokenRequestDescriptor instead')
const GetEventTokenRequest$json = const {
  '1': 'GetEventTokenRequest',
  '2': const [
    const {'1': 'pk', '3': 1, '4': 1, '5': 12, '10': 'pk'},
  ],
};

/// Descriptor for `GetEventTokenRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getEventTokenRequestDescriptor = $convert
    .base64Decode('ChRHZXRFdmVudFRva2VuUmVxdWVzdBIOCgJwaxgBIAEoDFICcGs=');
@$core.Deprecated('Use getEventTokenResponseDescriptor instead')
const GetEventTokenResponse$json = const {
  '1': 'GetEventTokenResponse',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
  ],
};

/// Descriptor for `GetEventTokenResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getEventTokenResponseDescriptor =
    $convert.base64Decode(
        'ChVHZXRFdmVudFRva2VuUmVzcG9uc2USFAoFdG9rZW4YASABKAlSBXRva2Vu');
@$core
    .Deprecated('Use retrieveDomainVerificationRecordRequestDescriptor instead')
const RetrieveDomainVerificationRecordRequest$json = const {
  '1': 'RetrieveDomainVerificationRecordRequest',
};

/// Descriptor for `RetrieveDomainVerificationRecordRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List retrieveDomainVerificationRecordRequestDescriptor =
    $convert.base64Decode(
        'CidSZXRyaWV2ZURvbWFpblZlcmlmaWNhdGlvblJlY29yZFJlcXVlc3Q=');
@$core.Deprecated(
    'Use retrieveDomainVerificationRecordResponseDescriptor instead')
const RetrieveDomainVerificationRecordResponse$json = const {
  '1': 'RetrieveDomainVerificationRecordResponse',
  '2': const [
    const {
      '1': 'verification_txt',
      '3': 1,
      '4': 1,
      '5': 9,
      '10': 'verificationTxt'
    },
  ],
};

/// Descriptor for `RetrieveDomainVerificationRecordResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List retrieveDomainVerificationRecordResponseDescriptor =
    $convert.base64Decode(
        'CihSZXRyaWV2ZURvbWFpblZlcmlmaWNhdGlvblJlY29yZFJlc3BvbnNlEikKEHZlcmlmaWNhdGlvbl90eHQYASABKAlSD3ZlcmlmaWNhdGlvblR4dA==');
@$core
    .Deprecated('Use refreshDomainVerificationStatusRequestDescriptor instead')
const RefreshDomainVerificationStatusRequest$json = const {
  '1': 'RefreshDomainVerificationStatusRequest',
};

/// Descriptor for `RefreshDomainVerificationStatusRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List refreshDomainVerificationStatusRequestDescriptor =
    $convert.base64Decode(
        'CiZSZWZyZXNoRG9tYWluVmVyaWZpY2F0aW9uU3RhdHVzUmVxdWVzdA==');
@$core
    .Deprecated('Use refreshDomainVerificationStatusResponseDescriptor instead')
const RefreshDomainVerificationStatusResponse$json = const {
  '1': 'RefreshDomainVerificationStatusResponse',
  '2': const [
    const {'1': 'domain', '3': 1, '4': 1, '5': 9, '10': 'domain'},
    const {
      '1': 'domain_verified',
      '3': 2,
      '4': 1,
      '5': 8,
      '10': 'domainVerified'
    },
  ],
};

/// Descriptor for `RefreshDomainVerificationStatusResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List refreshDomainVerificationStatusResponseDescriptor =
    $convert.base64Decode(
        'CidSZWZyZXNoRG9tYWluVmVyaWZpY2F0aW9uU3RhdHVzUmVzcG9uc2USFgoGZG9tYWluGAEgASgJUgZkb21haW4SJwoPZG9tYWluX3ZlcmlmaWVkGAIgASgIUg5kb21haW5WZXJpZmllZA==');
@$core.Deprecated('Use grantAuthorizationRequestDescriptor instead')
const GrantAuthorizationRequest$json = const {
  '1': 'GrantAuthorizationRequest',
  '2': const [
    const {'1': 'email', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'email'},
    const {'1': 'walletId', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'walletId'},
    const {'1': 'resource', '3': 3, '4': 1, '5': 9, '10': 'resource'},
    const {'1': 'action', '3': 4, '4': 1, '5': 9, '10': 'action'},
  ],
  '8': const [
    const {'1': 'account'},
  ],
};

/// Descriptor for `GrantAuthorizationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List grantAuthorizationRequestDescriptor =
    $convert.base64Decode(
        'ChlHcmFudEF1dGhvcml6YXRpb25SZXF1ZXN0EhYKBWVtYWlsGAEgASgJSABSBWVtYWlsEhwKCHdhbGxldElkGAIgASgJSABSCHdhbGxldElkEhoKCHJlc291cmNlGAMgASgJUghyZXNvdXJjZRIWCgZhY3Rpb24YBCABKAlSBmFjdGlvbkIJCgdhY2NvdW50');
@$core.Deprecated('Use grantAuthorizationResponseDescriptor instead')
const GrantAuthorizationResponse$json = const {
  '1': 'GrantAuthorizationResponse',
};

/// Descriptor for `GrantAuthorizationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List grantAuthorizationResponseDescriptor =
    $convert.base64Decode('ChpHcmFudEF1dGhvcml6YXRpb25SZXNwb25zZQ==');
@$core.Deprecated('Use revokeAuthorizationRequestDescriptor instead')
const RevokeAuthorizationRequest$json = const {
  '1': 'RevokeAuthorizationRequest',
  '2': const [
    const {'1': 'email', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'email'},
    const {'1': 'walletId', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'walletId'},
    const {'1': 'resource', '3': 3, '4': 1, '5': 9, '10': 'resource'},
    const {'1': 'action', '3': 4, '4': 1, '5': 9, '10': 'action'},
  ],
  '8': const [
    const {'1': 'account'},
  ],
};

/// Descriptor for `RevokeAuthorizationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List revokeAuthorizationRequestDescriptor =
    $convert.base64Decode(
        'ChpSZXZva2VBdXRob3JpemF0aW9uUmVxdWVzdBIWCgVlbWFpbBgBIAEoCUgAUgVlbWFpbBIcCgh3YWxsZXRJZBgCIAEoCUgAUgh3YWxsZXRJZBIaCghyZXNvdXJjZRgDIAEoCVIIcmVzb3VyY2USFgoGYWN0aW9uGAQgASgJUgZhY3Rpb25CCQoHYWNjb3VudA==');
@$core.Deprecated('Use revokeAuthorizationResponseDescriptor instead')
const RevokeAuthorizationResponse$json = const {
  '1': 'RevokeAuthorizationResponse',
};

/// Descriptor for `RevokeAuthorizationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List revokeAuthorizationResponseDescriptor =
    $convert.base64Decode('ChtSZXZva2VBdXRob3JpemF0aW9uUmVzcG9uc2U=');
@$core.Deprecated('Use getAuthorizationsRequestDescriptor instead')
const GetAuthorizationsRequest$json = const {
  '1': 'GetAuthorizationsRequest',
};

/// Descriptor for `GetAuthorizationsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAuthorizationsRequestDescriptor =
    $convert.base64Decode('ChhHZXRBdXRob3JpemF0aW9uc1JlcXVlc3Q=');
@$core.Deprecated('Use getAuthorizationsResponseDescriptor instead')
const GetAuthorizationsResponse$json = const {
  '1': 'GetAuthorizationsResponse',
  '2': const [
    const {
      '1': 'grants',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.services.provider.v1.Grant',
      '10': 'grants'
    },
  ],
};

/// Descriptor for `GetAuthorizationsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAuthorizationsResponseDescriptor =
    $convert.base64Decode(
        'ChlHZXRBdXRob3JpemF0aW9uc1Jlc3BvbnNlEjMKBmdyYW50cxgBIAMoCzIbLnNlcnZpY2VzLnByb3ZpZGVyLnYxLkdyYW50UgZncmFudHM=');
