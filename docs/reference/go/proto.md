# sdk

## Variables

Enum value maps for ConfirmationMethod.

```golang
var (
    ConfirmationMethod_name = map[int32]string{
        0:  "None",
        1:  "Email",
        2:  "Sms",
        3:  "ConnectedDevice",
        10: "Other",
    }
    ConfirmationMethod_value = map[string]int32{
        "None":            0,
        "Email":           1,
        "Sms":             2,
        "ConnectedDevice": 3,
        "Other":           10,
    }
)
```

Enum value maps for ResponseStatus.

```golang
var (
    ResponseStatus_name = map[int32]string{
        0:   "SUCCESS",
        10:  "WALLET_ACCESS_DENIED",
        11:  "WALLET_EXISTS",
        20:  "ITEM_NOT_FOUND",
        200: "SERIALIZATION_ERROR",
        100: "UNKNOWN_ERROR",
    }
    ResponseStatus_value = map[string]int32{
        "SUCCESS":              0,
        "WALLET_ACCESS_DENIED": 10,
        "WALLET_EXISTS":        11,
        "ITEM_NOT_FOUND":       20,
        "SERIALIZATION_ERROR":  200,
        "UNKNOWN_ERROR":        100,
    }
)
```

Enum value maps for JsonFormat.

```golang
var (
    JsonFormat_name = map[int32]string{
        0:  "Protobuf",
        1:  "Binary",
        2:  "String",
    }
    JsonFormat_value = map[string]int32{
        "Protobuf": 0,
        "Binary":   1,
        "String":   2,
    }
)
```

Enum value maps for ParticipantType.

```golang
var (
    ParticipantType_name = map[int32]string{
        0:  "participant_type_individual",
        1:  "participant_type_organization",
    }
    ParticipantType_value = map[string]int32{
        "participant_type_individual":   0,
        "participant_type_organization": 1,
    }
)
```

Enum value maps for InvitationStatusResponse_Status.

```golang
var (
    InvitationStatusResponse_Status_name = map[int32]string{
        0:  "Error",
        1:  "InvitationSent",
        2:  "Completed",
        3:  "Expired",
    }
    InvitationStatusResponse_Status_value = map[string]int32{
        "Error":          0,
        "InvitationSent": 1,
        "Completed":      2,
        "Expired":        3,
    }
)
```

Enum value maps for FieldType.

```golang
var (
    FieldType_name = map[int32]string{
        0:  "STRING",
        1:  "NUMBER",
        2:  "BOOL",
        4:  "DATETIME",
    }
    FieldType_value = map[string]int32{
        "STRING":   0,
        "NUMBER":   1,
        "BOOL":     2,
        "DATETIME": 4,
    }
)
```

Enum value maps for RegistrationStatus.

```golang
var (
    RegistrationStatus_name = map[int32]string{
        0:  "CURRENT",
        1:  "EXPIRED",
        2:  "TERMINATED",
        3:  "REVOKED",
        10: "NOT_FOUND",
    }
    RegistrationStatus_value = map[string]int32{
        "CURRENT":    0,
        "EXPIRED":    1,
        "TERMINATED": 2,
        "REVOKED":    3,
        "NOT_FOUND":  10,
    }
)
```

Account_ServiceDesc is the grpc.ServiceDesc for Account service.
It's only intended for direct use with grpc.RegisterService,
and not to be introspected or modified (even as a copy)

```golang
var Account_ServiceDesc = grpc.ServiceDesc{
    ServiceName: "services.account.v1.Account",
    HandlerType: (*AccountServer)(nil),
    Methods: []grpc.MethodDesc{
        {
            MethodName: "SignIn",
            Handler:    _Account_SignIn_Handler,
        },
        {
            MethodName: "Info",
            Handler:    _Account_Info_Handler,
        },
        {
            MethodName: "ListDevices",
            Handler:    _Account_ListDevices_Handler,
        },
        {
            MethodName: "RevokeDevice",
            Handler:    _Account_RevokeDevice_Handler,
        },
    },
    Streams:  []grpc.StreamDesc{},
    Metadata: "services/account/v1/account.proto",
}
```

Common_ServiceDesc is the grpc.ServiceDesc for Common service.
It's only intended for direct use with grpc.RegisterService,
and not to be introspected or modified (even as a copy)

```golang
var Common_ServiceDesc = grpc.ServiceDesc{
    ServiceName: "services.common.v1.Common",
    HandlerType: (*CommonServer)(nil),
    Methods: []grpc.MethodDesc{
        {
            MethodName: "Request",
            Handler:    _Common_Request_Handler,
        },
    },
    Streams:  []grpc.StreamDesc{},
    Metadata: "services/common/v1/common.proto",
}
```

CredentialTemplates_ServiceDesc is the grpc.ServiceDesc for CredentialTemplates service.
It's only intended for direct use with grpc.RegisterService,
and not to be introspected or modified (even as a copy)

```golang
var CredentialTemplates_ServiceDesc = grpc.ServiceDesc{
    ServiceName: "services.verifiablecredentials.templates.v1.CredentialTemplates",
    HandlerType: (*CredentialTemplatesServer)(nil),
    Methods: []grpc.MethodDesc{
        {
            MethodName: "Create",
            Handler:    _CredentialTemplates_Create_Handler,
        },
        {
            MethodName: "Get",
            Handler:    _CredentialTemplates_Get_Handler,
        },
        {
            MethodName: "List",
            Handler:    _CredentialTemplates_List_Handler,
        },
        {
            MethodName: "Search",
            Handler:    _CredentialTemplates_Search_Handler,
        },
        {
            MethodName: "Delete",
            Handler:    _CredentialTemplates_Delete_Handler,
        },
    },
    Streams:  []grpc.StreamDesc{},
    Metadata: "services/verifiable-credentials/templates/v1/templates.proto",
}
```

Debugging_ServiceDesc is the grpc.ServiceDesc for Debugging service.
It's only intended for direct use with grpc.RegisterService,
and not to be introspected or modified (even as a copy)

```golang
var Debugging_ServiceDesc = grpc.ServiceDesc{
    ServiceName: "services.debug.v1.Debugging",
    HandlerType: (*DebuggingServer)(nil),
    Methods: []grpc.MethodDesc{
        {
            MethodName: "CallEmpty",
            Handler:    _Debugging_CallEmpty_Handler,
        },
        {
            MethodName: "CallEmptyAuth",
            Handler:    _Debugging_CallEmptyAuth_Handler,
        },
    },
    Streams:  []grpc.StreamDesc{},
    Metadata: "services/debug/v1/debug.proto",
}
```

```golang
var File_services_account_v1_account_proto protoreflect.FileDescriptor
```

```golang
var File_services_common_v1_common_proto protoreflect.FileDescriptor
```

```golang
var File_services_debug_v1_debug_proto protoreflect.FileDescriptor
```

```golang
var File_services_provider_v1_provider_proto protoreflect.FileDescriptor
```

```golang
var File_services_trust_registry_v1_trust_registry_proto protoreflect.FileDescriptor
```

```golang
var File_services_universal_wallet_v1_universal_wallet_proto protoreflect.FileDescriptor
```

```golang
var File_services_verifiable_credentials_templates_v1_templates_proto protoreflect.FileDescriptor
```

```golang
var File_services_verifiable_credentials_v1_verifiable_credentials_proto protoreflect.FileDescriptor
```

Provider_ServiceDesc is the grpc.ServiceDesc for Provider service.
It's only intended for direct use with grpc.RegisterService,
and not to be introspected or modified (even as a copy)

```golang
var Provider_ServiceDesc = grpc.ServiceDesc{
    ServiceName: "services.provider.v1.Provider",
    HandlerType: (*ProviderServer)(nil),
    Methods: []grpc.MethodDesc{
        {
            MethodName: "CreateEcosystem",
            Handler:    _Provider_CreateEcosystem_Handler,
        },
        {
            MethodName: "ListEcosystems",
            Handler:    _Provider_ListEcosystems_Handler,
        },
        {
            MethodName: "Invite",
            Handler:    _Provider_Invite_Handler,
        },
        {
            MethodName: "AcceptInvite",
            Handler:    _Provider_AcceptInvite_Handler,
        },
        {
            MethodName: "InvitationStatus",
            Handler:    _Provider_InvitationStatus_Handler,
        },
    },
    Streams:  []grpc.StreamDesc{},
    Metadata: "services/provider/v1/provider.proto",
}
```

TrustRegistry_ServiceDesc is the grpc.ServiceDesc for TrustRegistry service.
It's only intended for direct use with grpc.RegisterService,
and not to be introspected or modified (even as a copy)

```golang
var TrustRegistry_ServiceDesc = grpc.ServiceDesc{
    ServiceName: "services.trustregistry.v1.TrustRegistry",
    HandlerType: (*TrustRegistryServer)(nil),
    Methods: []grpc.MethodDesc{
        {
            MethodName: "AddFramework",
            Handler:    _TrustRegistry_AddFramework_Handler,
        },
        {
            MethodName: "RemoveFramework",
            Handler:    _TrustRegistry_RemoveFramework_Handler,
        },
        {
            MethodName: "SearchRegistry",
            Handler:    _TrustRegistry_SearchRegistry_Handler,
        },
        {
            MethodName: "RegisterIssuer",
            Handler:    _TrustRegistry_RegisterIssuer_Handler,
        },
        {
            MethodName: "RegisterVerifier",
            Handler:    _TrustRegistry_RegisterVerifier_Handler,
        },
        {
            MethodName: "UnregisterIssuer",
            Handler:    _TrustRegistry_UnregisterIssuer_Handler,
        },
        {
            MethodName: "UnregisterVerifier",
            Handler:    _TrustRegistry_UnregisterVerifier_Handler,
        },
        {
            MethodName: "CheckIssuerStatus",
            Handler:    _TrustRegistry_CheckIssuerStatus_Handler,
        },
        {
            MethodName: "CheckVerifierStatus",
            Handler:    _TrustRegistry_CheckVerifierStatus_Handler,
        },
    },
    Streams: []grpc.StreamDesc{
        {
            StreamName:    "FetchData",
            Handler:       _TrustRegistry_FetchData_Handler,
            ServerStreams: true,
        },
    },
    Metadata: "services/trust-registry/v1/trust-registry.proto",
}
```

UniversalWallet_ServiceDesc is the grpc.ServiceDesc for UniversalWallet service.
It's only intended for direct use with grpc.RegisterService,
and not to be introspected or modified (even as a copy)

```golang
var UniversalWallet_ServiceDesc = grpc.ServiceDesc{
    ServiceName: "services.universalwallet.v1.UniversalWallet",
    HandlerType: (*UniversalWalletServer)(nil),
    Methods: []grpc.MethodDesc{
        {
            MethodName: "Search",
            Handler:    _UniversalWallet_Search_Handler,
        },
        {
            MethodName: "InsertItem",
            Handler:    _UniversalWallet_InsertItem_Handler,
        },
        {
            MethodName: "Deleteitem",
            Handler:    _UniversalWallet_Deleteitem_Handler,
        },
    },
    Streams:  []grpc.StreamDesc{},
    Metadata: "services/universal-wallet/v1/universal-wallet.proto",
}
```

VerifiableCredential_ServiceDesc is the grpc.ServiceDesc for VerifiableCredential service.
It's only intended for direct use with grpc.RegisterService,
and not to be introspected or modified (even as a copy)

```golang
var VerifiableCredential_ServiceDesc = grpc.ServiceDesc{
    ServiceName: "services.verifiablecredentials.v1.VerifiableCredential",
    HandlerType: (*VerifiableCredentialServer)(nil),
    Methods: []grpc.MethodDesc{
        {
            MethodName: "Issue",
            Handler:    _VerifiableCredential_Issue_Handler,
        },
        {
            MethodName: "IssueFromTemplate",
            Handler:    _VerifiableCredential_IssueFromTemplate_Handler,
        },
        {
            MethodName: "CheckStatus",
            Handler:    _VerifiableCredential_CheckStatus_Handler,
        },
        {
            MethodName: "UpdateStatus",
            Handler:    _VerifiableCredential_UpdateStatus_Handler,
        },
        {
            MethodName: "CreateProof",
            Handler:    _VerifiableCredential_CreateProof_Handler,
        },
        {
            MethodName: "VerifyProof",
            Handler:    _VerifiableCredential_VerifyProof_Handler,
        },
        {
            MethodName: "Send",
            Handler:    _VerifiableCredential_Send_Handler,
        },
    },
    Streams:  []grpc.StreamDesc{},
    Metadata: "services/verifiable-credentials/v1/verifiable-credentials.proto",
}
```

## Functions

### func [RegisterAccountServer](/account_grpc.pb.go#L115)

`func RegisterAccountServer(s grpc.ServiceRegistrar, srv AccountServer)`

### func [RegisterCommonServer](/common_grpc.pb.go#L66)

`func RegisterCommonServer(s grpc.ServiceRegistrar, srv CommonServer)`

### func [RegisterCredentialTemplatesServer](/templates_grpc.pb.go#L121)

`func RegisterCredentialTemplatesServer(s grpc.ServiceRegistrar, srv CredentialTemplatesServer)`

### func [RegisterDebuggingServer](/debug_grpc.pb.go#L80)

`func RegisterDebuggingServer(s grpc.ServiceRegistrar, srv DebuggingServer)`

### func [RegisterProviderServer](/provider_grpc.pb.go#L131)

`func RegisterProviderServer(s grpc.ServiceRegistrar, srv ProviderServer)`

### func [RegisterTrustRegistryServer](/trust-registry_grpc.pb.go#L224)

`func RegisterTrustRegistryServer(s grpc.ServiceRegistrar, srv TrustRegistryServer)`

### func [RegisterUniversalWalletServer](/universal-wallet_grpc.pb.go#L99)

`func RegisterUniversalWalletServer(s grpc.ServiceRegistrar, srv UniversalWalletServer)`

### func [RegisterVerifiableCredentialServer](/verifiable-credentials_grpc.pb.go#L153)

`func RegisterVerifiableCredentialServer(s grpc.ServiceRegistrar, srv VerifiableCredentialServer)`

## Types

### type [AcceptInviteRequest](/provider.pb.go#L741)

`type AcceptInviteRequest struct { ... }`

#### func (*AcceptInviteRequest) [Descriptor](/provider.pb.go#L778)

`func (*AcceptInviteRequest) Descriptor() ([]byte, []int)`

Deprecated: Use AcceptInviteRequest.ProtoReflect.Descriptor instead.

#### func (*AcceptInviteRequest) [GetCode](/provider.pb.go#L789)

`func (x *AcceptInviteRequest) GetCode() string`

#### func (*AcceptInviteRequest) [GetId](/provider.pb.go#L782)

`func (x *AcceptInviteRequest) GetId() string`

#### func (*AcceptInviteRequest) [ProtoMessage](/provider.pb.go#L763)

`func (*AcceptInviteRequest) ProtoMessage()`

#### func (*AcceptInviteRequest) [ProtoReflect](/provider.pb.go#L765)

`func (x *AcceptInviteRequest) ProtoReflect() protoreflect.Message`

#### func (*AcceptInviteRequest) [Reset](/provider.pb.go#L750)

`func (x *AcceptInviteRequest) Reset()`

#### func (*AcceptInviteRequest) [String](/provider.pb.go#L759)

`func (x *AcceptInviteRequest) String() string`

### type [AcceptInviteResponse](/provider.pb.go#L796)

`type AcceptInviteResponse struct { ... }`

#### func (*AcceptInviteResponse) [Descriptor](/provider.pb.go#L832)

`func (*AcceptInviteResponse) Descriptor() ([]byte, []int)`

Deprecated: Use AcceptInviteResponse.ProtoReflect.Descriptor instead.

#### func (*AcceptInviteResponse) [GetEcosystem](/provider.pb.go#L836)

`func (x *AcceptInviteResponse) GetEcosystem() *Ecosystem`

#### func (*AcceptInviteResponse) [ProtoMessage](/provider.pb.go#L817)

`func (*AcceptInviteResponse) ProtoMessage()`

#### func (*AcceptInviteResponse) [ProtoReflect](/provider.pb.go#L819)

`func (x *AcceptInviteResponse) ProtoReflect() protoreflect.Message`

#### func (*AcceptInviteResponse) [Reset](/provider.pb.go#L804)

`func (x *AcceptInviteResponse) Reset()`

#### func (*AcceptInviteResponse) [String](/provider.pb.go#L813)

`func (x *AcceptInviteResponse) String() string`

### type [AccountClient](/account_grpc.pb.go#L20)

`type AccountClient interface { ... }`

AccountClient is the client API for Account service.

For semantics around ctx use and closing/ending streaming RPCs, please refer to [https://pkg.go.dev/google.golang.org/grpc/?tab=doc#ClientConn.NewStream](https://pkg.go.dev/google.golang.org/grpc/?tab=doc#ClientConn.NewStream).

### type [AccountDetails](/account.pb.go#L144)

`type AccountDetails struct { ... }`

Account Registration Details

#### func (*AccountDetails) [Descriptor](/account.pb.go#L185)

`func (*AccountDetails) Descriptor() ([]byte, []int)`

Deprecated: Use AccountDetails.ProtoReflect.Descriptor instead.

#### func (*AccountDetails) [GetEmail](/account.pb.go#L196)

`func (x *AccountDetails) GetEmail() string`

#### func (*AccountDetails) [GetName](/account.pb.go#L189)

`func (x *AccountDetails) GetName() string`

#### func (*AccountDetails) [GetSms](/account.pb.go#L203)

`func (x *AccountDetails) GetSms() string`

#### func (*AccountDetails) [ProtoMessage](/account.pb.go#L170)

`func (*AccountDetails) ProtoMessage()`

#### func (*AccountDetails) [ProtoReflect](/account.pb.go#L172)

`func (x *AccountDetails) ProtoReflect() protoreflect.Message`

#### func (*AccountDetails) [Reset](/account.pb.go#L157)

`func (x *AccountDetails) Reset()`

#### func (*AccountDetails) [String](/account.pb.go#L166)

`func (x *AccountDetails) String() string`

### type [AccountProfile](/account.pb.go#L287)

`type AccountProfile struct { ... }`

Device profile containing sensitive authentication data.
This information should be stored securely

#### func (*AccountProfile) [Descriptor](/account.pb.go#L333)

`func (*AccountProfile) Descriptor() ([]byte, []int)`

Deprecated: Use AccountProfile.ProtoReflect.Descriptor instead.

#### func (*AccountProfile) [GetAuthData](/account.pb.go#L344)

`func (x *AccountProfile) GetAuthData() []byte`

#### func (*AccountProfile) [GetAuthToken](/account.pb.go#L351)

`func (x *AccountProfile) GetAuthToken() []byte`

#### func (*AccountProfile) [GetProfileType](/account.pb.go#L337)

`func (x *AccountProfile) GetProfileType() string`

#### func (*AccountProfile) [GetProtection](/account.pb.go#L358)

`func (x *AccountProfile) GetProtection() *TokenProtection`

#### func (*AccountProfile) [ProtoMessage](/account.pb.go#L318)

`func (*AccountProfile) ProtoMessage()`

#### func (*AccountProfile) [ProtoReflect](/account.pb.go#L320)

`func (x *AccountProfile) ProtoReflect() protoreflect.Message`

#### func (*AccountProfile) [Reset](/account.pb.go#L305)

`func (x *AccountProfile) Reset()`

#### func (*AccountProfile) [String](/account.pb.go#L314)

`func (x *AccountProfile) String() string`

### type [AccountServer](/account_grpc.pb.go#L78)

`type AccountServer interface { ... }`

AccountServer is the server API for Account service.
All implementations must embed UnimplementedAccountServer
for forward compatibility

### type [AddFrameworkRequest](/trust-registry.pb.go#L78)

`type AddFrameworkRequest struct { ... }`

#### func (*AddFrameworkRequest) [Descriptor](/trust-registry.pb.go#L114)

`func (*AddFrameworkRequest) Descriptor() ([]byte, []int)`

Deprecated: Use AddFrameworkRequest.ProtoReflect.Descriptor instead.

#### func (*AddFrameworkRequest) [GetGovernanceFramework](/trust-registry.pb.go#L118)

`func (x *AddFrameworkRequest) GetGovernanceFramework() *GovernanceFramework`

#### func (*AddFrameworkRequest) [ProtoMessage](/trust-registry.pb.go#L99)

`func (*AddFrameworkRequest) ProtoMessage()`

#### func (*AddFrameworkRequest) [ProtoReflect](/trust-registry.pb.go#L101)

`func (x *AddFrameworkRequest) ProtoReflect() protoreflect.Message`

#### func (*AddFrameworkRequest) [Reset](/trust-registry.pb.go#L86)

`func (x *AddFrameworkRequest) Reset()`

#### func (*AddFrameworkRequest) [String](/trust-registry.pb.go#L95)

`func (x *AddFrameworkRequest) String() string`

### type [AddFrameworkResponse](/trust-registry.pb.go#L125)

`type AddFrameworkResponse struct { ... }`

#### func (*AddFrameworkResponse) [Descriptor](/trust-registry.pb.go#L161)

`func (*AddFrameworkResponse) Descriptor() ([]byte, []int)`

Deprecated: Use AddFrameworkResponse.ProtoReflect.Descriptor instead.

#### func (*AddFrameworkResponse) [GetStatus](/trust-registry.pb.go#L165)

`func (x *AddFrameworkResponse) GetStatus() ResponseStatus`

#### func (*AddFrameworkResponse) [ProtoMessage](/trust-registry.pb.go#L146)

`func (*AddFrameworkResponse) ProtoMessage()`

#### func (*AddFrameworkResponse) [ProtoReflect](/trust-registry.pb.go#L148)

`func (x *AddFrameworkResponse) ProtoReflect() protoreflect.Message`

#### func (*AddFrameworkResponse) [Reset](/trust-registry.pb.go#L133)

`func (x *AddFrameworkResponse) Reset()`

#### func (*AddFrameworkResponse) [String](/trust-registry.pb.go#L142)

`func (x *AddFrameworkResponse) String() string`

### type [CheckIssuerStatusRequest](/trust-registry.pb.go#L1067)

`type CheckIssuerStatusRequest struct { ... }`

#### func (*CheckIssuerStatusRequest) [Descriptor](/trust-registry.pb.go#L1108)

`func (*CheckIssuerStatusRequest) Descriptor() ([]byte, []int)`

Deprecated: Use CheckIssuerStatusRequest.ProtoReflect.Descriptor instead.

#### func (*CheckIssuerStatusRequest) [GetCredentialTypeUri](/trust-registry.pb.go#L1140)

`func (x *CheckIssuerStatusRequest) GetCredentialTypeUri() string`

#### func (*CheckIssuerStatusRequest) [GetDidUri](/trust-registry.pb.go#L1126)

`func (x *CheckIssuerStatusRequest) GetDidUri() string`

#### func (*CheckIssuerStatusRequest) [GetGovernanceFrameworkUri](/trust-registry.pb.go#L1112)

`func (x *CheckIssuerStatusRequest) GetGovernanceFrameworkUri() string`

#### func (*CheckIssuerStatusRequest) [GetMember](/trust-registry.pb.go#L1119)

`func (m *CheckIssuerStatusRequest) GetMember() isCheckIssuerStatusRequest_Member`

#### func (*CheckIssuerStatusRequest) [GetX509Cert](/trust-registry.pb.go#L1133)

`func (x *CheckIssuerStatusRequest) GetX509Cert() string`

#### func (*CheckIssuerStatusRequest) [ProtoMessage](/trust-registry.pb.go#L1093)

`func (*CheckIssuerStatusRequest) ProtoMessage()`

#### func (*CheckIssuerStatusRequest) [ProtoReflect](/trust-registry.pb.go#L1095)

`func (x *CheckIssuerStatusRequest) ProtoReflect() protoreflect.Message`

#### func (*CheckIssuerStatusRequest) [Reset](/trust-registry.pb.go#L1080)

`func (x *CheckIssuerStatusRequest) Reset()`

#### func (*CheckIssuerStatusRequest) [String](/trust-registry.pb.go#L1089)

`func (x *CheckIssuerStatusRequest) String() string`

### type [CheckIssuerStatusRequest_DidUri](/trust-registry.pb.go#L1151)

`type CheckIssuerStatusRequest_DidUri struct { ... }`

### type [CheckIssuerStatusRequest_X509Cert](/trust-registry.pb.go#L1155)

`type CheckIssuerStatusRequest_X509Cert struct { ... }`

### type [CheckIssuerStatusResponse](/trust-registry.pb.go#L1163)

`type CheckIssuerStatusResponse struct { ... }`

#### func (*CheckIssuerStatusResponse) [Descriptor](/trust-registry.pb.go#L1199)

`func (*CheckIssuerStatusResponse) Descriptor() ([]byte, []int)`

Deprecated: Use CheckIssuerStatusResponse.ProtoReflect.Descriptor instead.

#### func (*CheckIssuerStatusResponse) [GetStatus](/trust-registry.pb.go#L1203)

`func (x *CheckIssuerStatusResponse) GetStatus() RegistrationStatus`

#### func (*CheckIssuerStatusResponse) [ProtoMessage](/trust-registry.pb.go#L1184)

`func (*CheckIssuerStatusResponse) ProtoMessage()`

#### func (*CheckIssuerStatusResponse) [ProtoReflect](/trust-registry.pb.go#L1186)

`func (x *CheckIssuerStatusResponse) ProtoReflect() protoreflect.Message`

#### func (*CheckIssuerStatusResponse) [Reset](/trust-registry.pb.go#L1171)

`func (x *CheckIssuerStatusResponse) Reset()`

#### func (*CheckIssuerStatusResponse) [String](/trust-registry.pb.go#L1180)

`func (x *CheckIssuerStatusResponse) String() string`

### type [CheckStatusRequest](/verifiable-credentials.pb.go#L673)

`type CheckStatusRequest struct { ... }`

request object to update the status of the revocation entry

#### func (*CheckStatusRequest) [Descriptor](/verifiable-credentials.pb.go#L710)

`func (*CheckStatusRequest) Descriptor() ([]byte, []int)`

Deprecated: Use CheckStatusRequest.ProtoReflect.Descriptor instead.

#### func (*CheckStatusRequest) [GetCredentialStatusId](/verifiable-credentials.pb.go#L714)

`func (x *CheckStatusRequest) GetCredentialStatusId() string`

#### func (*CheckStatusRequest) [ProtoMessage](/verifiable-credentials.pb.go#L695)

`func (*CheckStatusRequest) ProtoMessage()`

#### func (*CheckStatusRequest) [ProtoReflect](/verifiable-credentials.pb.go#L697)

`func (x *CheckStatusRequest) ProtoReflect() protoreflect.Message`

#### func (*CheckStatusRequest) [Reset](/verifiable-credentials.pb.go#L682)

`func (x *CheckStatusRequest) Reset()`

#### func (*CheckStatusRequest) [String](/verifiable-credentials.pb.go#L691)

`func (x *CheckStatusRequest) String() string`

### type [CheckStatusResponse](/verifiable-credentials.pb.go#L722)

`type CheckStatusResponse struct { ... }`

response object for update of status of revocation entry

#### func (*CheckStatusResponse) [Descriptor](/verifiable-credentials.pb.go#L759)

`func (*CheckStatusResponse) Descriptor() ([]byte, []int)`

Deprecated: Use CheckStatusResponse.ProtoReflect.Descriptor instead.

#### func (*CheckStatusResponse) [GetRevoked](/verifiable-credentials.pb.go#L763)

`func (x *CheckStatusResponse) GetRevoked() bool`

#### func (*CheckStatusResponse) [ProtoMessage](/verifiable-credentials.pb.go#L744)

`func (*CheckStatusResponse) ProtoMessage()`

#### func (*CheckStatusResponse) [ProtoReflect](/verifiable-credentials.pb.go#L746)

`func (x *CheckStatusResponse) ProtoReflect() protoreflect.Message`

#### func (*CheckStatusResponse) [Reset](/verifiable-credentials.pb.go#L731)

`func (x *CheckStatusResponse) Reset()`

#### func (*CheckStatusResponse) [String](/verifiable-credentials.pb.go#L740)

`func (x *CheckStatusResponse) String() string`

### type [CheckVerifierStatusRequest](/trust-registry.pb.go#L1210)

`type CheckVerifierStatusRequest struct { ... }`

#### func (*CheckVerifierStatusRequest) [Descriptor](/trust-registry.pb.go#L1251)

`func (*CheckVerifierStatusRequest) Descriptor() ([]byte, []int)`

Deprecated: Use CheckVerifierStatusRequest.ProtoReflect.Descriptor instead.

#### func (*CheckVerifierStatusRequest) [GetDidUri](/trust-registry.pb.go#L1269)

`func (x *CheckVerifierStatusRequest) GetDidUri() string`

#### func (*CheckVerifierStatusRequest) [GetGovernanceFrameworkUri](/trust-registry.pb.go#L1255)

`func (x *CheckVerifierStatusRequest) GetGovernanceFrameworkUri() string`

#### func (*CheckVerifierStatusRequest) [GetMember](/trust-registry.pb.go#L1262)

`func (m *CheckVerifierStatusRequest) GetMember() isCheckVerifierStatusRequest_Member`

#### func (*CheckVerifierStatusRequest) [GetPresentationTypeUri](/trust-registry.pb.go#L1283)

`func (x *CheckVerifierStatusRequest) GetPresentationTypeUri() string`

#### func (*CheckVerifierStatusRequest) [GetX509Cert](/trust-registry.pb.go#L1276)

`func (x *CheckVerifierStatusRequest) GetX509Cert() string`

#### func (*CheckVerifierStatusRequest) [ProtoMessage](/trust-registry.pb.go#L1236)

`func (*CheckVerifierStatusRequest) ProtoMessage()`

#### func (*CheckVerifierStatusRequest) [ProtoReflect](/trust-registry.pb.go#L1238)

`func (x *CheckVerifierStatusRequest) ProtoReflect() protoreflect.Message`

#### func (*CheckVerifierStatusRequest) [Reset](/trust-registry.pb.go#L1223)

`func (x *CheckVerifierStatusRequest) Reset()`

#### func (*CheckVerifierStatusRequest) [String](/trust-registry.pb.go#L1232)

`func (x *CheckVerifierStatusRequest) String() string`

### type [CheckVerifierStatusRequest_DidUri](/trust-registry.pb.go#L1294)

`type CheckVerifierStatusRequest_DidUri struct { ... }`

### type [CheckVerifierStatusRequest_X509Cert](/trust-registry.pb.go#L1298)

`type CheckVerifierStatusRequest_X509Cert struct { ... }`

### type [CheckVerifierStatusResponse](/trust-registry.pb.go#L1306)

`type CheckVerifierStatusResponse struct { ... }`

#### func (*CheckVerifierStatusResponse) [Descriptor](/trust-registry.pb.go#L1342)

`func (*CheckVerifierStatusResponse) Descriptor() ([]byte, []int)`

Deprecated: Use CheckVerifierStatusResponse.ProtoReflect.Descriptor instead.

#### func (*CheckVerifierStatusResponse) [GetStatus](/trust-registry.pb.go#L1346)

`func (x *CheckVerifierStatusResponse) GetStatus() RegistrationStatus`

#### func (*CheckVerifierStatusResponse) [ProtoMessage](/trust-registry.pb.go#L1327)

`func (*CheckVerifierStatusResponse) ProtoMessage()`

#### func (*CheckVerifierStatusResponse) [ProtoReflect](/trust-registry.pb.go#L1329)

`func (x *CheckVerifierStatusResponse) ProtoReflect() protoreflect.Message`

#### func (*CheckVerifierStatusResponse) [Reset](/trust-registry.pb.go#L1314)

`func (x *CheckVerifierStatusResponse) Reset()`

#### func (*CheckVerifierStatusResponse) [String](/trust-registry.pb.go#L1323)

`func (x *CheckVerifierStatusResponse) String() string`

### type [CommonClient](/common_grpc.pb.go#L21)

`type CommonClient interface { ... }`

CommonClient is the client API for Common service.

For semantics around ctx use and closing/ending streaming RPCs, please refer to [https://pkg.go.dev/google.golang.org/grpc/?tab=doc#ClientConn.NewStream](https://pkg.go.dev/google.golang.org/grpc/?tab=doc#ClientConn.NewStream).

### type [CommonServer](/common_grpc.pb.go#L45)

`type CommonServer interface { ... }`

CommonServer is the server API for Common service.
All implementations must embed UnimplementedCommonServer
for forward compatibility

### type [ConfirmationMethod](/account.pb.go#L24)

`type ConfirmationMethod int32`

Confirmation method type for two-factor workflows

#### func (ConfirmationMethod) [Descriptor](/account.pb.go#L67)

`func (ConfirmationMethod) Descriptor() protoreflect.EnumDescriptor`

#### func (ConfirmationMethod) [Enum](/account.pb.go#L57)

`func (x ConfirmationMethod) Enum() *ConfirmationMethod`

#### func (ConfirmationMethod) [EnumDescriptor](/account.pb.go#L80)

`func (ConfirmationMethod) EnumDescriptor() ([]byte, []int)`

Deprecated: Use ConfirmationMethod.Descriptor instead.

#### func (ConfirmationMethod) [Number](/account.pb.go#L75)

`func (x ConfirmationMethod) Number() protoreflect.EnumNumber`

#### func (ConfirmationMethod) [String](/account.pb.go#L63)

`func (x ConfirmationMethod) String() string`

#### func (ConfirmationMethod) [Type](/account.pb.go#L71)

`func (ConfirmationMethod) Type() protoreflect.EnumType`

### type [CreateCredentialTemplateRequest](/templates.pb.go#L499)

`type CreateCredentialTemplateRequest struct { ... }`

Request to create new template

#### func (*CreateCredentialTemplateRequest) [Descriptor](/templates.pb.go#L537)

`func (*CreateCredentialTemplateRequest) Descriptor() ([]byte, []int)`

Deprecated: Use CreateCredentialTemplateRequest.ProtoReflect.Descriptor instead.

#### func (*CreateCredentialTemplateRequest) [GetAllowAdditionalFields](/templates.pb.go#L555)

`func (x *CreateCredentialTemplateRequest) GetAllowAdditionalFields() bool`

#### func (*CreateCredentialTemplateRequest) [GetFields](/templates.pb.go#L548)

`func (x *CreateCredentialTemplateRequest) GetFields() map[string]*TemplateField`

#### func (*CreateCredentialTemplateRequest) [GetName](/templates.pb.go#L541)

`func (x *CreateCredentialTemplateRequest) GetName() string`

#### func (*CreateCredentialTemplateRequest) [ProtoMessage](/templates.pb.go#L522)

`func (*CreateCredentialTemplateRequest) ProtoMessage()`

#### func (*CreateCredentialTemplateRequest) [ProtoReflect](/templates.pb.go#L524)

`func (x *CreateCredentialTemplateRequest) ProtoReflect() protoreflect.Message`

#### func (*CreateCredentialTemplateRequest) [Reset](/templates.pb.go#L509)

`func (x *CreateCredentialTemplateRequest) Reset()`

#### func (*CreateCredentialTemplateRequest) [String](/templates.pb.go#L518)

`func (x *CreateCredentialTemplateRequest) String() string`

### type [CreateCredentialTemplateResponse](/templates.pb.go#L562)

`type CreateCredentialTemplateResponse struct { ... }`

#### func (*CreateCredentialTemplateResponse) [Descriptor](/templates.pb.go#L598)

`func (*CreateCredentialTemplateResponse) Descriptor() ([]byte, []int)`

Deprecated: Use CreateCredentialTemplateResponse.ProtoReflect.Descriptor instead.

#### func (*CreateCredentialTemplateResponse) [GetData](/templates.pb.go#L602)

`func (x *CreateCredentialTemplateResponse) GetData() *TemplateData`

#### func (*CreateCredentialTemplateResponse) [ProtoMessage](/templates.pb.go#L583)

`func (*CreateCredentialTemplateResponse) ProtoMessage()`

#### func (*CreateCredentialTemplateResponse) [ProtoReflect](/templates.pb.go#L585)

`func (x *CreateCredentialTemplateResponse) ProtoReflect() protoreflect.Message`

#### func (*CreateCredentialTemplateResponse) [Reset](/templates.pb.go#L570)

`func (x *CreateCredentialTemplateResponse) Reset()`

#### func (*CreateCredentialTemplateResponse) [String](/templates.pb.go#L579)

`func (x *CreateCredentialTemplateResponse) String() string`

### type [CreateEcosystemRequest](/provider.pb.go#L546)

`type CreateEcosystemRequest struct { ... }`

#### func (*CreateEcosystemRequest) [Descriptor](/provider.pb.go#L584)

`func (*CreateEcosystemRequest) Descriptor() ([]byte, []int)`

Deprecated: Use CreateEcosystemRequest.ProtoReflect.Descriptor instead.

#### func (*CreateEcosystemRequest) [GetDescription](/provider.pb.go#L595)

`func (x *CreateEcosystemRequest) GetDescription() string`

#### func (*CreateEcosystemRequest) [GetName](/provider.pb.go#L588)

`func (x *CreateEcosystemRequest) GetName() string`

#### func (*CreateEcosystemRequest) [GetUri](/provider.pb.go#L602)

`func (x *CreateEcosystemRequest) GetUri() string`

#### func (*CreateEcosystemRequest) [ProtoMessage](/provider.pb.go#L569)

`func (*CreateEcosystemRequest) ProtoMessage()`

#### func (*CreateEcosystemRequest) [ProtoReflect](/provider.pb.go#L571)

`func (x *CreateEcosystemRequest) ProtoReflect() protoreflect.Message`

#### func (*CreateEcosystemRequest) [Reset](/provider.pb.go#L556)

`func (x *CreateEcosystemRequest) Reset()`

#### func (*CreateEcosystemRequest) [String](/provider.pb.go#L565)

`func (x *CreateEcosystemRequest) String() string`

### type [CreateEcosystemResponse](/provider.pb.go#L609)

`type CreateEcosystemResponse struct { ... }`

#### func (*CreateEcosystemResponse) [Descriptor](/provider.pb.go#L645)

`func (*CreateEcosystemResponse) Descriptor() ([]byte, []int)`

Deprecated: Use CreateEcosystemResponse.ProtoReflect.Descriptor instead.

#### func (*CreateEcosystemResponse) [GetId](/provider.pb.go#L649)

`func (x *CreateEcosystemResponse) GetId() string`

#### func (*CreateEcosystemResponse) [ProtoMessage](/provider.pb.go#L630)

`func (*CreateEcosystemResponse) ProtoMessage()`

#### func (*CreateEcosystemResponse) [ProtoReflect](/provider.pb.go#L632)

`func (x *CreateEcosystemResponse) ProtoReflect() protoreflect.Message`

#### func (*CreateEcosystemResponse) [Reset](/provider.pb.go#L617)

`func (x *CreateEcosystemResponse) Reset()`

#### func (*CreateEcosystemResponse) [String](/provider.pb.go#L626)

`func (x *CreateEcosystemResponse) String() string`

### type [CreateProofRequest](/verifiable-credentials.pb.go#L220)

`type CreateProofRequest struct { ... }`

Create Proof

#### func (*CreateProofRequest) [Descriptor](/verifiable-credentials.pb.go#L257)

`func (*CreateProofRequest) Descriptor() ([]byte, []int)`

Deprecated: Use CreateProofRequest.ProtoReflect.Descriptor instead.

#### func (*CreateProofRequest) [GetDocumentId](/verifiable-credentials.pb.go#L268)

`func (x *CreateProofRequest) GetDocumentId() string`

#### func (*CreateProofRequest) [GetRevealDocument](/verifiable-credentials.pb.go#L261)

`func (x *CreateProofRequest) GetRevealDocument() *JsonPayload`

#### func (*CreateProofRequest) [ProtoMessage](/verifiable-credentials.pb.go#L242)

`func (*CreateProofRequest) ProtoMessage()`

#### func (*CreateProofRequest) [ProtoReflect](/verifiable-credentials.pb.go#L244)

`func (x *CreateProofRequest) ProtoReflect() protoreflect.Message`

#### func (*CreateProofRequest) [Reset](/verifiable-credentials.pb.go#L229)

`func (x *CreateProofRequest) Reset()`

#### func (*CreateProofRequest) [String](/verifiable-credentials.pb.go#L238)

`func (x *CreateProofRequest) String() string`

### type [CreateProofResponse](/verifiable-credentials.pb.go#L275)

`type CreateProofResponse struct { ... }`

#### func (*CreateProofResponse) [Descriptor](/verifiable-credentials.pb.go#L311)

`func (*CreateProofResponse) Descriptor() ([]byte, []int)`

Deprecated: Use CreateProofResponse.ProtoReflect.Descriptor instead.

#### func (*CreateProofResponse) [GetProofDocument](/verifiable-credentials.pb.go#L315)

`func (x *CreateProofResponse) GetProofDocument() *JsonPayload`

#### func (*CreateProofResponse) [ProtoMessage](/verifiable-credentials.pb.go#L296)

`func (*CreateProofResponse) ProtoMessage()`

#### func (*CreateProofResponse) [ProtoReflect](/verifiable-credentials.pb.go#L298)

`func (x *CreateProofResponse) ProtoReflect() protoreflect.Message`

#### func (*CreateProofResponse) [Reset](/verifiable-credentials.pb.go#L283)

`func (x *CreateProofResponse) Reset()`

#### func (*CreateProofResponse) [String](/verifiable-credentials.pb.go#L292)

`func (x *CreateProofResponse) String() string`

### type [CredentialTemplatesClient](/templates_grpc.pb.go#L20)

`type CredentialTemplatesClient interface { ... }`

CredentialTemplatesClient is the client API for CredentialTemplates service.

For semantics around ctx use and closing/ending streaming RPCs, please refer to [https://pkg.go.dev/google.golang.org/grpc/?tab=doc#ClientConn.NewStream](https://pkg.go.dev/google.golang.org/grpc/?tab=doc#ClientConn.NewStream).

### type [CredentialTemplatesServer](/templates_grpc.pb.go#L84)

`type CredentialTemplatesServer interface { ... }`

CredentialTemplatesServer is the server API for CredentialTemplates service.
All implementations must embed UnimplementedCredentialTemplatesServer
for forward compatibility

### type [DebuggingClient](/debug_grpc.pb.go#L21)

`type DebuggingClient interface { ... }`

DebuggingClient is the client API for Debugging service.

For semantics around ctx use and closing/ending streaming RPCs, please refer to [https://pkg.go.dev/google.golang.org/grpc/?tab=doc#ClientConn.NewStream](https://pkg.go.dev/google.golang.org/grpc/?tab=doc#ClientConn.NewStream).

### type [DebuggingServer](/debug_grpc.pb.go#L55)

`type DebuggingServer interface { ... }`

DebuggingServer is the server API for Debugging service.
All implementations must embed UnimplementedDebuggingServer
for forward compatibility

### type [DeleteCredentialTemplateRequest](/templates.pb.go#L413)

`type DeleteCredentialTemplateRequest struct { ... }`

#### func (*DeleteCredentialTemplateRequest) [Descriptor](/templates.pb.go#L449)

`func (*DeleteCredentialTemplateRequest) Descriptor() ([]byte, []int)`

Deprecated: Use DeleteCredentialTemplateRequest.ProtoReflect.Descriptor instead.

#### func (*DeleteCredentialTemplateRequest) [GetId](/templates.pb.go#L453)

`func (x *DeleteCredentialTemplateRequest) GetId() string`

#### func (*DeleteCredentialTemplateRequest) [ProtoMessage](/templates.pb.go#L434)

`func (*DeleteCredentialTemplateRequest) ProtoMessage()`

#### func (*DeleteCredentialTemplateRequest) [ProtoReflect](/templates.pb.go#L436)

`func (x *DeleteCredentialTemplateRequest) ProtoReflect() protoreflect.Message`

#### func (*DeleteCredentialTemplateRequest) [Reset](/templates.pb.go#L421)

`func (x *DeleteCredentialTemplateRequest) Reset()`

#### func (*DeleteCredentialTemplateRequest) [String](/templates.pb.go#L430)

`func (x *DeleteCredentialTemplateRequest) String() string`

### type [DeleteCredentialTemplateResponse](/templates.pb.go#L460)

`type DeleteCredentialTemplateResponse struct { ... }`

#### func (*DeleteCredentialTemplateResponse) [Descriptor](/templates.pb.go#L494)

`func (*DeleteCredentialTemplateResponse) Descriptor() ([]byte, []int)`

Deprecated: Use DeleteCredentialTemplateResponse.ProtoReflect.Descriptor instead.

#### func (*DeleteCredentialTemplateResponse) [ProtoMessage](/templates.pb.go#L479)

`func (*DeleteCredentialTemplateResponse) ProtoMessage()`

#### func (*DeleteCredentialTemplateResponse) [ProtoReflect](/templates.pb.go#L481)

`func (x *DeleteCredentialTemplateResponse) ProtoReflect() protoreflect.Message`

#### func (*DeleteCredentialTemplateResponse) [Reset](/templates.pb.go#L466)

`func (x *DeleteCredentialTemplateResponse) Reset()`

#### func (*DeleteCredentialTemplateResponse) [String](/templates.pb.go#L475)

`func (x *DeleteCredentialTemplateResponse) String() string`

### type [DeleteItemRequest](/universal-wallet.pb.go#L273)

`type DeleteItemRequest struct { ... }`

Delete item request

#### func (*DeleteItemRequest) [Descriptor](/universal-wallet.pb.go#L307)

`func (*DeleteItemRequest) Descriptor() ([]byte, []int)`

Deprecated: Use DeleteItemRequest.ProtoReflect.Descriptor instead.

#### func (*DeleteItemRequest) [ProtoMessage](/universal-wallet.pb.go#L292)

`func (*DeleteItemRequest) ProtoMessage()`

#### func (*DeleteItemRequest) [ProtoReflect](/universal-wallet.pb.go#L294)

`func (x *DeleteItemRequest) ProtoReflect() protoreflect.Message`

#### func (*DeleteItemRequest) [Reset](/universal-wallet.pb.go#L279)

`func (x *DeleteItemRequest) Reset()`

#### func (*DeleteItemRequest) [String](/universal-wallet.pb.go#L288)

`func (x *DeleteItemRequest) String() string`

### type [DeleteItemResponse](/universal-wallet.pb.go#L311)

`type DeleteItemResponse struct { ... }`

#### func (*DeleteItemResponse) [Descriptor](/universal-wallet.pb.go#L345)

`func (*DeleteItemResponse) Descriptor() ([]byte, []int)`

Deprecated: Use DeleteItemResponse.ProtoReflect.Descriptor instead.

#### func (*DeleteItemResponse) [ProtoMessage](/universal-wallet.pb.go#L330)

`func (*DeleteItemResponse) ProtoMessage()`

#### func (*DeleteItemResponse) [ProtoReflect](/universal-wallet.pb.go#L332)

`func (x *DeleteItemResponse) ProtoReflect() protoreflect.Message`

#### func (*DeleteItemResponse) [Reset](/universal-wallet.pb.go#L317)

`func (x *DeleteItemResponse) Reset()`

#### func (*DeleteItemResponse) [String](/universal-wallet.pb.go#L326)

`func (x *DeleteItemResponse) String() string`

### type [Ecosystem](/provider.pb.go#L475)

`type Ecosystem struct { ... }`

#### func (*Ecosystem) [Descriptor](/provider.pb.go#L514)

`func (*Ecosystem) Descriptor() ([]byte, []int)`

Deprecated: Use Ecosystem.ProtoReflect.Descriptor instead.

#### func (*Ecosystem) [GetDescription](/provider.pb.go#L532)

`func (x *Ecosystem) GetDescription() string`

#### func (*Ecosystem) [GetId](/provider.pb.go#L518)

`func (x *Ecosystem) GetId() string`

#### func (*Ecosystem) [GetName](/provider.pb.go#L525)

`func (x *Ecosystem) GetName() string`

#### func (*Ecosystem) [GetUri](/provider.pb.go#L539)

`func (x *Ecosystem) GetUri() string`

#### func (*Ecosystem) [ProtoMessage](/provider.pb.go#L499)

`func (*Ecosystem) ProtoMessage()`

#### func (*Ecosystem) [ProtoReflect](/provider.pb.go#L501)

`func (x *Ecosystem) ProtoReflect() protoreflect.Message`

#### func (*Ecosystem) [Reset](/provider.pb.go#L486)

`func (x *Ecosystem) Reset()`

#### func (*Ecosystem) [String](/provider.pb.go#L495)

`func (x *Ecosystem) String() string`

### type [FetchDataRequest](/trust-registry.pb.go#L1353)

`type FetchDataRequest struct { ... }`

#### func (*FetchDataRequest) [Descriptor](/trust-registry.pb.go#L1390)

`func (*FetchDataRequest) Descriptor() ([]byte, []int)`

Deprecated: Use FetchDataRequest.ProtoReflect.Descriptor instead.

#### func (*FetchDataRequest) [GetGovernanceFrameworkUri](/trust-registry.pb.go#L1394)

`func (x *FetchDataRequest) GetGovernanceFrameworkUri() string`

#### func (*FetchDataRequest) [GetQuery](/trust-registry.pb.go#L1401)

`func (x *FetchDataRequest) GetQuery() string`

#### func (*FetchDataRequest) [ProtoMessage](/trust-registry.pb.go#L1375)

`func (*FetchDataRequest) ProtoMessage()`

#### func (*FetchDataRequest) [ProtoReflect](/trust-registry.pb.go#L1377)

`func (x *FetchDataRequest) ProtoReflect() protoreflect.Message`

#### func (*FetchDataRequest) [Reset](/trust-registry.pb.go#L1362)

`func (x *FetchDataRequest) Reset()`

#### func (*FetchDataRequest) [String](/trust-registry.pb.go#L1371)

`func (x *FetchDataRequest) String() string`

### type [FetchDataResponse](/trust-registry.pb.go#L1408)

`type FetchDataResponse struct { ... }`

#### func (*FetchDataResponse) [Descriptor](/trust-registry.pb.go#L1446)

`func (*FetchDataResponse) Descriptor() ([]byte, []int)`

Deprecated: Use FetchDataResponse.ProtoReflect.Descriptor instead.

#### func (*FetchDataResponse) [GetContinuationToken](/trust-registry.pb.go#L1464)

`func (x *FetchDataResponse) GetContinuationToken() string`

#### func (*FetchDataResponse) [GetHasMoreResults](/trust-registry.pb.go#L1457)

`func (x *FetchDataResponse) GetHasMoreResults() bool`

#### func (*FetchDataResponse) [GetResponseJson](/trust-registry.pb.go#L1450)

`func (x *FetchDataResponse) GetResponseJson() string`

#### func (*FetchDataResponse) [ProtoMessage](/trust-registry.pb.go#L1431)

`func (*FetchDataResponse) ProtoMessage()`

#### func (*FetchDataResponse) [ProtoReflect](/trust-registry.pb.go#L1433)

`func (x *FetchDataResponse) ProtoReflect() protoreflect.Message`

#### func (*FetchDataResponse) [Reset](/trust-registry.pb.go#L1418)

`func (x *FetchDataResponse) Reset()`

#### func (*FetchDataResponse) [String](/trust-registry.pb.go#L1427)

`func (x *FetchDataResponse) String() string`

### type [FieldType](/templates.pb.go#L23)

`type FieldType int32`

#### func (FieldType) [Descriptor](/templates.pb.go#L58)

`func (FieldType) Descriptor() protoreflect.EnumDescriptor`

#### func (FieldType) [Enum](/templates.pb.go#L48)

`func (x FieldType) Enum() *FieldType`

#### func (FieldType) [EnumDescriptor](/templates.pb.go#L71)

`func (FieldType) EnumDescriptor() ([]byte, []int)`

Deprecated: Use FieldType.Descriptor instead.

#### func (FieldType) [Number](/templates.pb.go#L66)

`func (x FieldType) Number() protoreflect.EnumNumber`

#### func (FieldType) [String](/templates.pb.go#L54)

`func (x FieldType) String() string`

#### func (FieldType) [Type](/templates.pb.go#L62)

`func (FieldType) Type() protoreflect.EnumType`

### type [GetCredentialTemplateRequest](/templates.pb.go#L75)

`type GetCredentialTemplateRequest struct { ... }`

#### func (*GetCredentialTemplateRequest) [Descriptor](/templates.pb.go#L111)

`func (*GetCredentialTemplateRequest) Descriptor() ([]byte, []int)`

Deprecated: Use GetCredentialTemplateRequest.ProtoReflect.Descriptor instead.

#### func (*GetCredentialTemplateRequest) [GetId](/templates.pb.go#L115)

`func (x *GetCredentialTemplateRequest) GetId() string`

#### func (*GetCredentialTemplateRequest) [ProtoMessage](/templates.pb.go#L96)

`func (*GetCredentialTemplateRequest) ProtoMessage()`

#### func (*GetCredentialTemplateRequest) [ProtoReflect](/templates.pb.go#L98)

`func (x *GetCredentialTemplateRequest) ProtoReflect() protoreflect.Message`

#### func (*GetCredentialTemplateRequest) [Reset](/templates.pb.go#L83)

`func (x *GetCredentialTemplateRequest) Reset()`

#### func (*GetCredentialTemplateRequest) [String](/templates.pb.go#L92)

`func (x *GetCredentialTemplateRequest) String() string`

### type [GetCredentialTemplateResponse](/templates.pb.go#L122)

`type GetCredentialTemplateResponse struct { ... }`

#### func (*GetCredentialTemplateResponse) [Descriptor](/templates.pb.go#L158)

`func (*GetCredentialTemplateResponse) Descriptor() ([]byte, []int)`

Deprecated: Use GetCredentialTemplateResponse.ProtoReflect.Descriptor instead.

#### func (*GetCredentialTemplateResponse) [GetTemplate](/templates.pb.go#L162)

`func (x *GetCredentialTemplateResponse) GetTemplate() *TemplateData`

#### func (*GetCredentialTemplateResponse) [ProtoMessage](/templates.pb.go#L143)

`func (*GetCredentialTemplateResponse) ProtoMessage()`

#### func (*GetCredentialTemplateResponse) [ProtoReflect](/templates.pb.go#L145)

`func (x *GetCredentialTemplateResponse) ProtoReflect() protoreflect.Message`

#### func (*GetCredentialTemplateResponse) [Reset](/templates.pb.go#L130)

`func (x *GetCredentialTemplateResponse) Reset()`

#### func (*GetCredentialTemplateResponse) [String](/templates.pb.go#L139)

`func (x *GetCredentialTemplateResponse) String() string`

### type [GetTemplateRequest](/templates.pb.go#L672)

`type GetTemplateRequest struct { ... }`

#### func (*GetTemplateRequest) [Descriptor](/templates.pb.go#L708)

`func (*GetTemplateRequest) Descriptor() ([]byte, []int)`

Deprecated: Use GetTemplateRequest.ProtoReflect.Descriptor instead.

#### func (*GetTemplateRequest) [GetId](/templates.pb.go#L712)

`func (x *GetTemplateRequest) GetId() string`

#### func (*GetTemplateRequest) [ProtoMessage](/templates.pb.go#L693)

`func (*GetTemplateRequest) ProtoMessage()`

#### func (*GetTemplateRequest) [ProtoReflect](/templates.pb.go#L695)

`func (x *GetTemplateRequest) ProtoReflect() protoreflect.Message`

#### func (*GetTemplateRequest) [Reset](/templates.pb.go#L680)

`func (x *GetTemplateRequest) Reset()`

#### func (*GetTemplateRequest) [String](/templates.pb.go#L689)

`func (x *GetTemplateRequest) String() string`

### type [GetTemplateResponse](/templates.pb.go#L719)

`type GetTemplateResponse struct { ... }`

#### func (*GetTemplateResponse) [Descriptor](/templates.pb.go#L755)

`func (*GetTemplateResponse) Descriptor() ([]byte, []int)`

Deprecated: Use GetTemplateResponse.ProtoReflect.Descriptor instead.

#### func (*GetTemplateResponse) [GetData](/templates.pb.go#L759)

`func (x *GetTemplateResponse) GetData() *TemplateData`

#### func (*GetTemplateResponse) [ProtoMessage](/templates.pb.go#L740)

`func (*GetTemplateResponse) ProtoMessage()`

#### func (*GetTemplateResponse) [ProtoReflect](/templates.pb.go#L742)

`func (x *GetTemplateResponse) ProtoReflect() protoreflect.Message`

#### func (*GetTemplateResponse) [Reset](/templates.pb.go#L727)

`func (x *GetTemplateResponse) Reset()`

#### func (*GetTemplateResponse) [String](/templates.pb.go#L736)

`func (x *GetTemplateResponse) String() string`

### type [GovernanceFramework](/trust-registry.pb.go#L400)

`type GovernanceFramework struct { ... }`

#### func (*GovernanceFramework) [Descriptor](/trust-registry.pb.go#L438)

`func (*GovernanceFramework) Descriptor() ([]byte, []int)`

Deprecated: Use GovernanceFramework.ProtoReflect.Descriptor instead.

#### func (*GovernanceFramework) [GetDescription](/trust-registry.pb.go#L456)

`func (x *GovernanceFramework) GetDescription() string`

#### func (*GovernanceFramework) [GetGovernanceFrameworkUri](/trust-registry.pb.go#L442)

`func (x *GovernanceFramework) GetGovernanceFrameworkUri() string`

#### func (*GovernanceFramework) [GetTrustRegistryUri](/trust-registry.pb.go#L449)

`func (x *GovernanceFramework) GetTrustRegistryUri() string`

#### func (*GovernanceFramework) [ProtoMessage](/trust-registry.pb.go#L423)

`func (*GovernanceFramework) ProtoMessage()`

#### func (*GovernanceFramework) [ProtoReflect](/trust-registry.pb.go#L425)

`func (x *GovernanceFramework) ProtoReflect() protoreflect.Message`

#### func (*GovernanceFramework) [Reset](/trust-registry.pb.go#L410)

`func (x *GovernanceFramework) Reset()`

#### func (*GovernanceFramework) [String](/trust-registry.pb.go#L419)

`func (x *GovernanceFramework) String() string`

### type [InfoRequest](/account.pb.go#L424)

`type InfoRequest struct { ... }`

#### func (*InfoRequest) [Descriptor](/account.pb.go#L458)

`func (*InfoRequest) Descriptor() ([]byte, []int)`

Deprecated: Use InfoRequest.ProtoReflect.Descriptor instead.

#### func (*InfoRequest) [ProtoMessage](/account.pb.go#L443)

`func (*InfoRequest) ProtoMessage()`

#### func (*InfoRequest) [ProtoReflect](/account.pb.go#L445)

`func (x *InfoRequest) ProtoReflect() protoreflect.Message`

#### func (*InfoRequest) [Reset](/account.pb.go#L430)

`func (x *InfoRequest) Reset()`

#### func (*InfoRequest) [String](/account.pb.go#L439)

`func (x *InfoRequest) String() string`

### type [InfoResponse](/account.pb.go#L462)

`type InfoResponse struct { ... }`

#### func (*InfoResponse) [Descriptor](/account.pb.go#L502)

`func (*InfoResponse) Descriptor() ([]byte, []int)`

Deprecated: Use InfoResponse.ProtoReflect.Descriptor instead.

#### func (*InfoResponse) [GetDetails](/account.pb.go#L506)

`func (x *InfoResponse) GetDetails() *AccountDetails`

#### func (*InfoResponse) [GetEcosystems](/account.pb.go#L513)

`func (x *InfoResponse) GetEcosystems() []*Ecosystem`

#### func (*InfoResponse) [ProtoMessage](/account.pb.go#L487)

`func (*InfoResponse) ProtoMessage()`

#### func (*InfoResponse) [ProtoReflect](/account.pb.go#L489)

`func (x *InfoResponse) ProtoReflect() protoreflect.Message`

#### func (*InfoResponse) [Reset](/account.pb.go#L474)

`func (x *InfoResponse) Reset()`

#### func (*InfoResponse) [String](/account.pb.go#L483)

`func (x *InfoResponse) String() string`

### type [InsertItemRequest](/universal-wallet.pb.go#L160)

`type InsertItemRequest struct { ... }`

Insert item request

#### func (*InsertItemRequest) [Descriptor](/universal-wallet.pb.go#L197)

`func (*InsertItemRequest) Descriptor() ([]byte, []int)`

Deprecated: Use InsertItemRequest.ProtoReflect.Descriptor instead.

#### func (*InsertItemRequest) [GetItem](/universal-wallet.pb.go#L201)

`func (x *InsertItemRequest) GetItem() *JsonPayload`

#### func (*InsertItemRequest) [GetItemType](/universal-wallet.pb.go#L208)

`func (x *InsertItemRequest) GetItemType() string`

#### func (*InsertItemRequest) [ProtoMessage](/universal-wallet.pb.go#L182)

`func (*InsertItemRequest) ProtoMessage()`

#### func (*InsertItemRequest) [ProtoReflect](/universal-wallet.pb.go#L184)

`func (x *InsertItemRequest) ProtoReflect() protoreflect.Message`

#### func (*InsertItemRequest) [Reset](/universal-wallet.pb.go#L169)

`func (x *InsertItemRequest) Reset()`

#### func (*InsertItemRequest) [String](/universal-wallet.pb.go#L178)

`func (x *InsertItemRequest) String() string`

### type [InsertItemResponse](/universal-wallet.pb.go#L216)

`type InsertItemResponse struct { ... }`

Insert item response

#### func (*InsertItemResponse) [Descriptor](/universal-wallet.pb.go#L254)

`func (*InsertItemResponse) Descriptor() ([]byte, []int)`

Deprecated: Use InsertItemResponse.ProtoReflect.Descriptor instead.

#### func (*InsertItemResponse) [GetItemId](/universal-wallet.pb.go#L265)

`func (x *InsertItemResponse) GetItemId() string`

#### func (*InsertItemResponse) [GetStatus](/universal-wallet.pb.go#L258)

`func (x *InsertItemResponse) GetStatus() ResponseStatus`

#### func (*InsertItemResponse) [ProtoMessage](/universal-wallet.pb.go#L239)

`func (*InsertItemResponse) ProtoMessage()`

#### func (*InsertItemResponse) [ProtoReflect](/universal-wallet.pb.go#L241)

`func (x *InsertItemResponse) ProtoReflect() protoreflect.Message`

#### func (*InsertItemResponse) [Reset](/universal-wallet.pb.go#L226)

`func (x *InsertItemResponse) Reset()`

#### func (*InsertItemResponse) [String](/universal-wallet.pb.go#L235)

`func (x *InsertItemResponse) String() string`

### type [InvitationStatusRequest](/provider.pb.go#L373)

`type InvitationStatusRequest struct { ... }`

Request details for the status of onboarding
an individual or organization.
The referenece_id passed is the response from the
`Onboard` method call

#### func (*InvitationStatusRequest) [Descriptor](/provider.pb.go#L409)

`func (*InvitationStatusRequest) Descriptor() ([]byte, []int)`

Deprecated: Use InvitationStatusRequest.ProtoReflect.Descriptor instead.

#### func (*InvitationStatusRequest) [GetInvitationId](/provider.pb.go#L413)

`func (x *InvitationStatusRequest) GetInvitationId() string`

#### func (*InvitationStatusRequest) [ProtoMessage](/provider.pb.go#L394)

`func (*InvitationStatusRequest) ProtoMessage()`

#### func (*InvitationStatusRequest) [ProtoReflect](/provider.pb.go#L396)

`func (x *InvitationStatusRequest) ProtoReflect() protoreflect.Message`

#### func (*InvitationStatusRequest) [Reset](/provider.pb.go#L381)

`func (x *InvitationStatusRequest) Reset()`

#### func (*InvitationStatusRequest) [String](/provider.pb.go#L390)

`func (x *InvitationStatusRequest) String() string`

### type [InvitationStatusResponse](/provider.pb.go#L420)

`type InvitationStatusResponse struct { ... }`

#### func (*InvitationStatusResponse) [Descriptor](/provider.pb.go#L457)

`func (*InvitationStatusResponse) Descriptor() ([]byte, []int)`

Deprecated: Use InvitationStatusResponse.ProtoReflect.Descriptor instead.

#### func (*InvitationStatusResponse) [GetStatus](/provider.pb.go#L461)

`func (x *InvitationStatusResponse) GetStatus() InvitationStatusResponse_Status`

#### func (*InvitationStatusResponse) [GetStatusDetails](/provider.pb.go#L468)

`func (x *InvitationStatusResponse) GetStatusDetails() string`

#### func (*InvitationStatusResponse) [ProtoMessage](/provider.pb.go#L442)

`func (*InvitationStatusResponse) ProtoMessage()`

#### func (*InvitationStatusResponse) [ProtoReflect](/provider.pb.go#L444)

`func (x *InvitationStatusResponse) ProtoReflect() protoreflect.Message`

#### func (*InvitationStatusResponse) [Reset](/provider.pb.go#L429)

`func (x *InvitationStatusResponse) Reset()`

#### func (*InvitationStatusResponse) [String](/provider.pb.go#L438)

`func (x *InvitationStatusResponse) String() string`

### type [InvitationStatusResponse_Status](/provider.pb.go#L69)

`type InvitationStatusResponse_Status int32`

#### func (InvitationStatusResponse_Status) [Descriptor](/provider.pb.go#L108)

`func (InvitationStatusResponse_Status) Descriptor() protoreflect.EnumDescriptor`

#### func (InvitationStatusResponse_Status) [Enum](/provider.pb.go#L98)

`func (x InvitationStatusResponse_Status) Enum() *InvitationStatusResponse_Status`

#### func (InvitationStatusResponse_Status) [EnumDescriptor](/provider.pb.go#L121)

`func (InvitationStatusResponse_Status) EnumDescriptor() ([]byte, []int)`

Deprecated: Use InvitationStatusResponse_Status.Descriptor instead.

#### func (InvitationStatusResponse_Status) [Number](/provider.pb.go#L116)

`func (x InvitationStatusResponse_Status) Number() protoreflect.EnumNumber`

#### func (InvitationStatusResponse_Status) [String](/provider.pb.go#L104)

`func (x InvitationStatusResponse_Status) String() string`

#### func (InvitationStatusResponse_Status) [Type](/provider.pb.go#L112)

`func (InvitationStatusResponse_Status) Type() protoreflect.EnumType`

### type [Invite](/provider.pb.go#L125)

`type Invite struct { ... }`

#### func (*Invite) [Descriptor](/provider.pb.go#L165)

`func (*Invite) Descriptor() ([]byte, []int)`

Deprecated: Use Invite.ProtoReflect.Descriptor instead.

#### func (*Invite) [GetAccepted](/provider.pb.go#L190)

`func (x *Invite) GetAccepted() string`

#### func (*Invite) [GetCode](/provider.pb.go#L176)

`func (x *Invite) GetCode() string`

#### func (*Invite) [GetCreated](/provider.pb.go#L183)

`func (x *Invite) GetCreated() string`

#### func (*Invite) [GetExpires](/provider.pb.go#L197)

`func (x *Invite) GetExpires() string`

#### func (*Invite) [GetId](/provider.pb.go#L169)

`func (x *Invite) GetId() string`

#### func (*Invite) [ProtoMessage](/provider.pb.go#L150)

`func (*Invite) ProtoMessage()`

#### func (*Invite) [ProtoReflect](/provider.pb.go#L152)

`func (x *Invite) ProtoReflect() protoreflect.Message`

#### func (*Invite) [Reset](/provider.pb.go#L137)

`func (x *Invite) Reset()`

#### func (*Invite) [String](/provider.pb.go#L146)

`func (x *Invite) String() string`

### type [InviteRequest](/provider.pb.go#L204)

`type InviteRequest struct { ... }`

#### func (*InviteRequest) [Descriptor](/provider.pb.go#L246)

`func (*InviteRequest) Descriptor() ([]byte, []int)`

Deprecated: Use InviteRequest.ProtoReflect.Descriptor instead.

#### func (*InviteRequest) [GetContactMethod](/provider.pb.go#L264)

`func (m *InviteRequest) GetContactMethod() isInviteRequest_ContactMethod`

#### func (*InviteRequest) [GetDescription](/provider.pb.go#L257)

`func (x *InviteRequest) GetDescription() string`

#### func (*InviteRequest) [GetDidcommInvitation](/provider.pb.go#L285)

`func (x *InviteRequest) GetDidcommInvitation() *InviteRequest_DidCommInvitation`

#### func (*InviteRequest) [GetEmail](/provider.pb.go#L271)

`func (x *InviteRequest) GetEmail() string`

#### func (*InviteRequest) [GetParticipant](/provider.pb.go#L250)

`func (x *InviteRequest) GetParticipant() ParticipantType`

#### func (*InviteRequest) [GetPhone](/provider.pb.go#L278)

`func (x *InviteRequest) GetPhone() string`

#### func (*InviteRequest) [ProtoMessage](/provider.pb.go#L231)

`func (*InviteRequest) ProtoMessage()`

#### func (*InviteRequest) [ProtoReflect](/provider.pb.go#L233)

`func (x *InviteRequest) ProtoReflect() protoreflect.Message`

#### func (*InviteRequest) [Reset](/provider.pb.go#L218)

`func (x *InviteRequest) Reset()`

#### func (*InviteRequest) [String](/provider.pb.go#L227)

`func (x *InviteRequest) String() string`

### type [InviteRequest_DidCommInvitation](/provider.pb.go#L843)

`type InviteRequest_DidCommInvitation struct { ... }`

#### func (*InviteRequest_DidCommInvitation) [Descriptor](/provider.pb.go#L877)

`func (*InviteRequest_DidCommInvitation) Descriptor() ([]byte, []int)`

Deprecated: Use InviteRequest_DidCommInvitation.ProtoReflect.Descriptor instead.

#### func (*InviteRequest_DidCommInvitation) [ProtoMessage](/provider.pb.go#L862)

`func (*InviteRequest_DidCommInvitation) ProtoMessage()`

#### func (*InviteRequest_DidCommInvitation) [ProtoReflect](/provider.pb.go#L864)

`func (x *InviteRequest_DidCommInvitation) ProtoReflect() protoreflect.Message`

#### func (*InviteRequest_DidCommInvitation) [Reset](/provider.pb.go#L849)

`func (x *InviteRequest_DidCommInvitation) Reset()`

#### func (*InviteRequest_DidCommInvitation) [String](/provider.pb.go#L858)

`func (x *InviteRequest_DidCommInvitation) String() string`

### type [InviteRequest_DidcommInvitation](/provider.pb.go#L304)

`type InviteRequest_DidcommInvitation struct { ... }`

### type [InviteRequest_Email](/provider.pb.go#L296)

`type InviteRequest_Email struct { ... }`

### type [InviteRequest_Phone](/provider.pb.go#L300)

`type InviteRequest_Phone struct { ... }`

### type [InviteResponse](/provider.pb.go#L314)

`type InviteResponse struct { ... }`

#### func (*InviteResponse) [Descriptor](/provider.pb.go#L351)

`func (*InviteResponse) Descriptor() ([]byte, []int)`

Deprecated: Use InviteResponse.ProtoReflect.Descriptor instead.

#### func (*InviteResponse) [GetInvitationId](/provider.pb.go#L362)

`func (x *InviteResponse) GetInvitationId() string`

#### func (*InviteResponse) [GetStatus](/provider.pb.go#L355)

`func (x *InviteResponse) GetStatus() ResponseStatus`

#### func (*InviteResponse) [ProtoMessage](/provider.pb.go#L336)

`func (*InviteResponse) ProtoMessage()`

#### func (*InviteResponse) [ProtoReflect](/provider.pb.go#L338)

`func (x *InviteResponse) ProtoReflect() protoreflect.Message`

#### func (*InviteResponse) [Reset](/provider.pb.go#L323)

`func (x *InviteResponse) Reset()`

#### func (*InviteResponse) [String](/provider.pb.go#L332)

`func (x *InviteResponse) String() string`

### type [IssueFromTemplateRequest](/verifiable-credentials.pb.go#L117)

`type IssueFromTemplateRequest struct { ... }`

#### func (*IssueFromTemplateRequest) [Descriptor](/verifiable-credentials.pb.go#L154)

`func (*IssueFromTemplateRequest) Descriptor() ([]byte, []int)`

Deprecated: Use IssueFromTemplateRequest.ProtoReflect.Descriptor instead.

#### func (*IssueFromTemplateRequest) [GetTemplateId](/verifiable-credentials.pb.go#L158)

`func (x *IssueFromTemplateRequest) GetTemplateId() string`

#### func (*IssueFromTemplateRequest) [GetValuesJson](/verifiable-credentials.pb.go#L165)

`func (x *IssueFromTemplateRequest) GetValuesJson() string`

#### func (*IssueFromTemplateRequest) [ProtoMessage](/verifiable-credentials.pb.go#L139)

`func (*IssueFromTemplateRequest) ProtoMessage()`

#### func (*IssueFromTemplateRequest) [ProtoReflect](/verifiable-credentials.pb.go#L141)

`func (x *IssueFromTemplateRequest) ProtoReflect() protoreflect.Message`

#### func (*IssueFromTemplateRequest) [Reset](/verifiable-credentials.pb.go#L126)

`func (x *IssueFromTemplateRequest) Reset()`

#### func (*IssueFromTemplateRequest) [String](/verifiable-credentials.pb.go#L135)

`func (x *IssueFromTemplateRequest) String() string`

### type [IssueFromTemplateResponse](/verifiable-credentials.pb.go#L172)

`type IssueFromTemplateResponse struct { ... }`

#### func (*IssueFromTemplateResponse) [Descriptor](/verifiable-credentials.pb.go#L208)

`func (*IssueFromTemplateResponse) Descriptor() ([]byte, []int)`

Deprecated: Use IssueFromTemplateResponse.ProtoReflect.Descriptor instead.

#### func (*IssueFromTemplateResponse) [GetDocumentJson](/verifiable-credentials.pb.go#L212)

`func (x *IssueFromTemplateResponse) GetDocumentJson() string`

#### func (*IssueFromTemplateResponse) [ProtoMessage](/verifiable-credentials.pb.go#L193)

`func (*IssueFromTemplateResponse) ProtoMessage()`

#### func (*IssueFromTemplateResponse) [ProtoReflect](/verifiable-credentials.pb.go#L195)

`func (x *IssueFromTemplateResponse) ProtoReflect() protoreflect.Message`

#### func (*IssueFromTemplateResponse) [Reset](/verifiable-credentials.pb.go#L180)

`func (x *IssueFromTemplateResponse) Reset()`

#### func (*IssueFromTemplateResponse) [String](/verifiable-credentials.pb.go#L189)

`func (x *IssueFromTemplateResponse) String() string`

### type [IssueRequest](/verifiable-credentials.pb.go#L23)

`type IssueRequest struct { ... }`

#### func (*IssueRequest) [Descriptor](/verifiable-credentials.pb.go#L59)

`func (*IssueRequest) Descriptor() ([]byte, []int)`

Deprecated: Use IssueRequest.ProtoReflect.Descriptor instead.

#### func (*IssueRequest) [GetDocument](/verifiable-credentials.pb.go#L63)

`func (x *IssueRequest) GetDocument() *JsonPayload`

#### func (*IssueRequest) [ProtoMessage](/verifiable-credentials.pb.go#L44)

`func (*IssueRequest) ProtoMessage()`

#### func (*IssueRequest) [ProtoReflect](/verifiable-credentials.pb.go#L46)

`func (x *IssueRequest) ProtoReflect() protoreflect.Message`

#### func (*IssueRequest) [Reset](/verifiable-credentials.pb.go#L31)

`func (x *IssueRequest) Reset()`

#### func (*IssueRequest) [String](/verifiable-credentials.pb.go#L40)

`func (x *IssueRequest) String() string`

### type [IssueResponse](/verifiable-credentials.pb.go#L70)

`type IssueResponse struct { ... }`

#### func (*IssueResponse) [Descriptor](/verifiable-credentials.pb.go#L106)

`func (*IssueResponse) Descriptor() ([]byte, []int)`

Deprecated: Use IssueResponse.ProtoReflect.Descriptor instead.

#### func (*IssueResponse) [GetDocument](/verifiable-credentials.pb.go#L110)

`func (x *IssueResponse) GetDocument() *JsonPayload`

#### func (*IssueResponse) [ProtoMessage](/verifiable-credentials.pb.go#L91)

`func (*IssueResponse) ProtoMessage()`

#### func (*IssueResponse) [ProtoReflect](/verifiable-credentials.pb.go#L93)

`func (x *IssueResponse) ProtoReflect() protoreflect.Message`

#### func (*IssueResponse) [Reset](/verifiable-credentials.pb.go#L78)

`func (x *IssueResponse) Reset()`

#### func (*IssueResponse) [String](/verifiable-credentials.pb.go#L87)

`func (x *IssueResponse) String() string`

### type [JsonFormat](/common.pb.go#L83)

`type JsonFormat int32`

#### func (JsonFormat) [Descriptor](/common.pb.go#L115)

`func (JsonFormat) Descriptor() protoreflect.EnumDescriptor`

#### func (JsonFormat) [Enum](/common.pb.go#L105)

`func (x JsonFormat) Enum() *JsonFormat`

#### func (JsonFormat) [EnumDescriptor](/common.pb.go#L128)

`func (JsonFormat) EnumDescriptor() ([]byte, []int)`

Deprecated: Use JsonFormat.Descriptor instead.

#### func (JsonFormat) [Number](/common.pb.go#L123)

`func (x JsonFormat) Number() protoreflect.EnumNumber`

#### func (JsonFormat) [String](/common.pb.go#L111)

`func (x JsonFormat) String() string`

#### func (JsonFormat) [Type](/common.pb.go#L119)

`func (JsonFormat) Type() protoreflect.EnumType`

### type [JsonPayload](/common.pb.go#L179)

`type JsonPayload struct { ... }`

#### func (*JsonPayload) [Descriptor](/common.pb.go#L219)

`func (*JsonPayload) Descriptor() ([]byte, []int)`

Deprecated: Use JsonPayload.ProtoReflect.Descriptor instead.

#### func (*JsonPayload) [GetJson](/common.pb.go#L223)

`func (m *JsonPayload) GetJson() isJsonPayload_Json`

#### func (*JsonPayload) [GetJsonBytes](/common.pb.go#L244)

`func (x *JsonPayload) GetJsonBytes() []byte`

#### func (*JsonPayload) [GetJsonString](/common.pb.go#L237)

`func (x *JsonPayload) GetJsonString() string`

#### func (*JsonPayload) [GetJsonStruct](/common.pb.go#L230)

`func (x *JsonPayload) GetJsonStruct() *structpb.Struct`

#### func (*JsonPayload) [ProtoMessage](/common.pb.go#L204)

`func (*JsonPayload) ProtoMessage()`

#### func (*JsonPayload) [ProtoReflect](/common.pb.go#L206)

`func (x *JsonPayload) ProtoReflect() protoreflect.Message`

#### func (*JsonPayload) [Reset](/common.pb.go#L191)

`func (x *JsonPayload) Reset()`

#### func (*JsonPayload) [String](/common.pb.go#L200)

`func (x *JsonPayload) String() string`

### type [JsonPayload_JsonBytes](/common.pb.go#L263)

`type JsonPayload_JsonBytes struct { ... }`

### type [JsonPayload_JsonString](/common.pb.go#L259)

`type JsonPayload_JsonString struct { ... }`

### type [JsonPayload_JsonStruct](/common.pb.go#L255)

`type JsonPayload_JsonStruct struct { ... }`

### type [ListCredentialTemplatesRequest](/templates.pb.go#L295)

`type ListCredentialTemplatesRequest struct { ... }`

#### func (*ListCredentialTemplatesRequest) [Descriptor](/templates.pb.go#L332)

`func (*ListCredentialTemplatesRequest) Descriptor() ([]byte, []int)`

Deprecated: Use ListCredentialTemplatesRequest.ProtoReflect.Descriptor instead.

#### func (*ListCredentialTemplatesRequest) [GetContinuationToken](/templates.pb.go#L343)

`func (x *ListCredentialTemplatesRequest) GetContinuationToken() string`

#### func (*ListCredentialTemplatesRequest) [GetQuery](/templates.pb.go#L336)

`func (x *ListCredentialTemplatesRequest) GetQuery() string`

#### func (*ListCredentialTemplatesRequest) [ProtoMessage](/templates.pb.go#L317)

`func (*ListCredentialTemplatesRequest) ProtoMessage()`

#### func (*ListCredentialTemplatesRequest) [ProtoReflect](/templates.pb.go#L319)

`func (x *ListCredentialTemplatesRequest) ProtoReflect() protoreflect.Message`

#### func (*ListCredentialTemplatesRequest) [Reset](/templates.pb.go#L304)

`func (x *ListCredentialTemplatesRequest) Reset()`

#### func (*ListCredentialTemplatesRequest) [String](/templates.pb.go#L313)

`func (x *ListCredentialTemplatesRequest) String() string`

### type [ListCredentialTemplatesResponse](/templates.pb.go#L350)

`type ListCredentialTemplatesResponse struct { ... }`

#### func (*ListCredentialTemplatesResponse) [Descriptor](/templates.pb.go#L388)

`func (*ListCredentialTemplatesResponse) Descriptor() ([]byte, []int)`

Deprecated: Use ListCredentialTemplatesResponse.ProtoReflect.Descriptor instead.

#### func (*ListCredentialTemplatesResponse) [GetContinuationToken](/templates.pb.go#L406)

`func (x *ListCredentialTemplatesResponse) GetContinuationToken() string`

#### func (*ListCredentialTemplatesResponse) [GetHasMoreResults](/templates.pb.go#L399)

`func (x *ListCredentialTemplatesResponse) GetHasMoreResults() bool`

#### func (*ListCredentialTemplatesResponse) [GetTemplates](/templates.pb.go#L392)

`func (x *ListCredentialTemplatesResponse) GetTemplates() []*TemplateData`

#### func (*ListCredentialTemplatesResponse) [ProtoMessage](/templates.pb.go#L373)

`func (*ListCredentialTemplatesResponse) ProtoMessage()`

#### func (*ListCredentialTemplatesResponse) [ProtoReflect](/templates.pb.go#L375)

`func (x *ListCredentialTemplatesResponse) ProtoReflect() protoreflect.Message`

#### func (*ListCredentialTemplatesResponse) [Reset](/templates.pb.go#L360)

`func (x *ListCredentialTemplatesResponse) Reset()`

#### func (*ListCredentialTemplatesResponse) [String](/templates.pb.go#L369)

`func (x *ListCredentialTemplatesResponse) String() string`

### type [ListDevicesRequest](/account.pb.go#L520)

`type ListDevicesRequest struct { ... }`

#### func (*ListDevicesRequest) [Descriptor](/account.pb.go#L554)

`func (*ListDevicesRequest) Descriptor() ([]byte, []int)`

Deprecated: Use ListDevicesRequest.ProtoReflect.Descriptor instead.

#### func (*ListDevicesRequest) [ProtoMessage](/account.pb.go#L539)

`func (*ListDevicesRequest) ProtoMessage()`

#### func (*ListDevicesRequest) [ProtoReflect](/account.pb.go#L541)

`func (x *ListDevicesRequest) ProtoReflect() protoreflect.Message`

#### func (*ListDevicesRequest) [Reset](/account.pb.go#L526)

`func (x *ListDevicesRequest) Reset()`

#### func (*ListDevicesRequest) [String](/account.pb.go#L535)

`func (x *ListDevicesRequest) String() string`

### type [ListDevicesResponse](/account.pb.go#L558)

`type ListDevicesResponse struct { ... }`

#### func (*ListDevicesResponse) [Descriptor](/account.pb.go#L592)

`func (*ListDevicesResponse) Descriptor() ([]byte, []int)`

Deprecated: Use ListDevicesResponse.ProtoReflect.Descriptor instead.

#### func (*ListDevicesResponse) [ProtoMessage](/account.pb.go#L577)

`func (*ListDevicesResponse) ProtoMessage()`

#### func (*ListDevicesResponse) [ProtoReflect](/account.pb.go#L579)

`func (x *ListDevicesResponse) ProtoReflect() protoreflect.Message`

#### func (*ListDevicesResponse) [Reset](/account.pb.go#L564)

`func (x *ListDevicesResponse) Reset()`

#### func (*ListDevicesResponse) [String](/account.pb.go#L573)

`func (x *ListDevicesResponse) String() string`

### type [ListEcosystemsRequest](/provider.pb.go#L656)

`type ListEcosystemsRequest struct { ... }`

#### func (*ListEcosystemsRequest) [Descriptor](/provider.pb.go#L690)

`func (*ListEcosystemsRequest) Descriptor() ([]byte, []int)`

Deprecated: Use ListEcosystemsRequest.ProtoReflect.Descriptor instead.

#### func (*ListEcosystemsRequest) [ProtoMessage](/provider.pb.go#L675)

`func (*ListEcosystemsRequest) ProtoMessage()`

#### func (*ListEcosystemsRequest) [ProtoReflect](/provider.pb.go#L677)

`func (x *ListEcosystemsRequest) ProtoReflect() protoreflect.Message`

#### func (*ListEcosystemsRequest) [Reset](/provider.pb.go#L662)

`func (x *ListEcosystemsRequest) Reset()`

#### func (*ListEcosystemsRequest) [String](/provider.pb.go#L671)

`func (x *ListEcosystemsRequest) String() string`

### type [ListEcosystemsResponse](/provider.pb.go#L694)

`type ListEcosystemsResponse struct { ... }`

#### func (*ListEcosystemsResponse) [Descriptor](/provider.pb.go#L730)

`func (*ListEcosystemsResponse) Descriptor() ([]byte, []int)`

Deprecated: Use ListEcosystemsResponse.ProtoReflect.Descriptor instead.

#### func (*ListEcosystemsResponse) [GetEcosystem](/provider.pb.go#L734)

`func (x *ListEcosystemsResponse) GetEcosystem() []*Ecosystem`

#### func (*ListEcosystemsResponse) [ProtoMessage](/provider.pb.go#L715)

`func (*ListEcosystemsResponse) ProtoMessage()`

#### func (*ListEcosystemsResponse) [ProtoReflect](/provider.pb.go#L717)

`func (x *ListEcosystemsResponse) ProtoReflect() protoreflect.Message`

#### func (*ListEcosystemsResponse) [Reset](/provider.pb.go#L702)

`func (x *ListEcosystemsResponse) Reset()`

#### func (*ListEcosystemsResponse) [String](/provider.pb.go#L711)

`func (x *ListEcosystemsResponse) String() string`

### type [ListTemplatesRequest](/templates.pb.go#L766)

`type ListTemplatesRequest struct { ... }`

#### func (*ListTemplatesRequest) [Descriptor](/templates.pb.go#L800)

`func (*ListTemplatesRequest) Descriptor() ([]byte, []int)`

Deprecated: Use ListTemplatesRequest.ProtoReflect.Descriptor instead.

#### func (*ListTemplatesRequest) [ProtoMessage](/templates.pb.go#L785)

`func (*ListTemplatesRequest) ProtoMessage()`

#### func (*ListTemplatesRequest) [ProtoReflect](/templates.pb.go#L787)

`func (x *ListTemplatesRequest) ProtoReflect() protoreflect.Message`

#### func (*ListTemplatesRequest) [Reset](/templates.pb.go#L772)

`func (x *ListTemplatesRequest) Reset()`

#### func (*ListTemplatesRequest) [String](/templates.pb.go#L781)

`func (x *ListTemplatesRequest) String() string`

### type [ListTemplatesResponse](/templates.pb.go#L804)

`type ListTemplatesResponse struct { ... }`

#### func (*ListTemplatesResponse) [Descriptor](/templates.pb.go#L840)

`func (*ListTemplatesResponse) Descriptor() ([]byte, []int)`

Deprecated: Use ListTemplatesResponse.ProtoReflect.Descriptor instead.

#### func (*ListTemplatesResponse) [GetTemplates](/templates.pb.go#L844)

`func (x *ListTemplatesResponse) GetTemplates() []*TemplateData`

#### func (*ListTemplatesResponse) [ProtoMessage](/templates.pb.go#L825)

`func (*ListTemplatesResponse) ProtoMessage()`

#### func (*ListTemplatesResponse) [ProtoReflect](/templates.pb.go#L827)

`func (x *ListTemplatesResponse) ProtoReflect() protoreflect.Message`

#### func (*ListTemplatesResponse) [Reset](/templates.pb.go#L812)

`func (x *ListTemplatesResponse) Reset()`

#### func (*ListTemplatesResponse) [String](/templates.pb.go#L821)

`func (x *ListTemplatesResponse) String() string`

### type [Nonce](/common.pb.go#L340)

`type Nonce struct { ... }`

Nonce used to generate an oberon proof

#### func (*Nonce) [Descriptor](/common.pb.go#L377)

`func (*Nonce) Descriptor() ([]byte, []int)`

Deprecated: Use Nonce.ProtoReflect.Descriptor instead.

#### func (*Nonce) [GetRequestHash](/common.pb.go#L388)

`func (x *Nonce) GetRequestHash() []byte`

#### func (*Nonce) [GetTimestamp](/common.pb.go#L381)

`func (x *Nonce) GetTimestamp() int64`

#### func (*Nonce) [ProtoMessage](/common.pb.go#L362)

`func (*Nonce) ProtoMessage()`

#### func (*Nonce) [ProtoReflect](/common.pb.go#L364)

`func (x *Nonce) ProtoReflect() protoreflect.Message`

#### func (*Nonce) [Reset](/common.pb.go#L349)

`func (x *Nonce) Reset()`

#### func (*Nonce) [String](/common.pb.go#L358)

`func (x *Nonce) String() string`

### type [ParticipantType](/provider.pb.go#L23)

`type ParticipantType int32`

#### func (ParticipantType) [Descriptor](/provider.pb.go#L52)

`func (ParticipantType) Descriptor() protoreflect.EnumDescriptor`

#### func (ParticipantType) [Enum](/provider.pb.go#L42)

`func (x ParticipantType) Enum() *ParticipantType`

#### func (ParticipantType) [EnumDescriptor](/provider.pb.go#L65)

`func (ParticipantType) EnumDescriptor() ([]byte, []int)`

Deprecated: Use ParticipantType.Descriptor instead.

#### func (ParticipantType) [Number](/provider.pb.go#L60)

`func (x ParticipantType) Number() protoreflect.EnumNumber`

#### func (ParticipantType) [String](/provider.pb.go#L48)

`func (x ParticipantType) String() string`

#### func (ParticipantType) [Type](/provider.pb.go#L56)

`func (ParticipantType) Type() protoreflect.EnumType`

### type [ProviderClient](/provider_grpc.pb.go#L20)

`type ProviderClient interface { ... }`

ProviderClient is the client API for Provider service.

For semantics around ctx use and closing/ending streaming RPCs, please refer to [https://pkg.go.dev/google.golang.org/grpc/?tab=doc#ClientConn.NewStream](https://pkg.go.dev/google.golang.org/grpc/?tab=doc#ClientConn.NewStream).

### type [ProviderServer](/provider_grpc.pb.go#L89)

`type ProviderServer interface { ... }`

ProviderServer is the server API for Provider service.
All implementations must embed UnimplementedProviderServer
for forward compatibility

### type [RegisterIssuerRequest](/trust-registry.pb.go#L463)

`type RegisterIssuerRequest struct { ... }`

#### func (*RegisterIssuerRequest) [Descriptor](/trust-registry.pb.go#L506)

`func (*RegisterIssuerRequest) Descriptor() ([]byte, []int)`

Deprecated: Use RegisterIssuerRequest.ProtoReflect.Descriptor instead.

#### func (*RegisterIssuerRequest) [GetAuthority](/trust-registry.pb.go#L510)

`func (m *RegisterIssuerRequest) GetAuthority() isRegisterIssuerRequest_Authority`

#### func (*RegisterIssuerRequest) [GetCredentialTypeUri](/trust-registry.pb.go#L531)

`func (x *RegisterIssuerRequest) GetCredentialTypeUri() string`

#### func (*RegisterIssuerRequest) [GetDidUri](/trust-registry.pb.go#L517)

`func (x *RegisterIssuerRequest) GetDidUri() string`

#### func (*RegisterIssuerRequest) [GetGovernanceFrameworkUri](/trust-registry.pb.go#L552)

`func (x *RegisterIssuerRequest) GetGovernanceFrameworkUri() string`

#### func (*RegisterIssuerRequest) [GetValidFromUtc](/trust-registry.pb.go#L538)

`func (x *RegisterIssuerRequest) GetValidFromUtc() uint64`

#### func (*RegisterIssuerRequest) [GetValidUntilUtc](/trust-registry.pb.go#L545)

`func (x *RegisterIssuerRequest) GetValidUntilUtc() uint64`

#### func (*RegisterIssuerRequest) [GetX509Cert](/trust-registry.pb.go#L524)

`func (x *RegisterIssuerRequest) GetX509Cert() string`

#### func (*RegisterIssuerRequest) [ProtoMessage](/trust-registry.pb.go#L491)

`func (*RegisterIssuerRequest) ProtoMessage()`

#### func (*RegisterIssuerRequest) [ProtoReflect](/trust-registry.pb.go#L493)

`func (x *RegisterIssuerRequest) ProtoReflect() protoreflect.Message`

#### func (*RegisterIssuerRequest) [Reset](/trust-registry.pb.go#L478)

`func (x *RegisterIssuerRequest) Reset()`

#### func (*RegisterIssuerRequest) [String](/trust-registry.pb.go#L487)

`func (x *RegisterIssuerRequest) String() string`

### type [RegisterIssuerRequest_DidUri](/trust-registry.pb.go#L563)

`type RegisterIssuerRequest_DidUri struct { ... }`

### type [RegisterIssuerRequest_X509Cert](/trust-registry.pb.go#L567)

`type RegisterIssuerRequest_X509Cert struct { ... }`

### type [RegisterIssuerResponse](/trust-registry.pb.go#L575)

`type RegisterIssuerResponse struct { ... }`

#### func (*RegisterIssuerResponse) [Descriptor](/trust-registry.pb.go#L611)

`func (*RegisterIssuerResponse) Descriptor() ([]byte, []int)`

Deprecated: Use RegisterIssuerResponse.ProtoReflect.Descriptor instead.

#### func (*RegisterIssuerResponse) [GetStatus](/trust-registry.pb.go#L615)

`func (x *RegisterIssuerResponse) GetStatus() ResponseStatus`

#### func (*RegisterIssuerResponse) [ProtoMessage](/trust-registry.pb.go#L596)

`func (*RegisterIssuerResponse) ProtoMessage()`

#### func (*RegisterIssuerResponse) [ProtoReflect](/trust-registry.pb.go#L598)

`func (x *RegisterIssuerResponse) ProtoReflect() protoreflect.Message`

#### func (*RegisterIssuerResponse) [Reset](/trust-registry.pb.go#L583)

`func (x *RegisterIssuerResponse) Reset()`

#### func (*RegisterIssuerResponse) [String](/trust-registry.pb.go#L592)

`func (x *RegisterIssuerResponse) String() string`

### type [RegisterVerifierRequest](/trust-registry.pb.go#L622)

`type RegisterVerifierRequest struct { ... }`

#### func (*RegisterVerifierRequest) [Descriptor](/trust-registry.pb.go#L665)

`func (*RegisterVerifierRequest) Descriptor() ([]byte, []int)`

Deprecated: Use RegisterVerifierRequest.ProtoReflect.Descriptor instead.

#### func (*RegisterVerifierRequest) [GetAuthority](/trust-registry.pb.go#L669)

`func (m *RegisterVerifierRequest) GetAuthority() isRegisterVerifierRequest_Authority`

#### func (*RegisterVerifierRequest) [GetDidUri](/trust-registry.pb.go#L676)

`func (x *RegisterVerifierRequest) GetDidUri() string`

#### func (*RegisterVerifierRequest) [GetGovernanceFrameworkUri](/trust-registry.pb.go#L711)

`func (x *RegisterVerifierRequest) GetGovernanceFrameworkUri() string`

#### func (*RegisterVerifierRequest) [GetPresentationTypeUri](/trust-registry.pb.go#L690)

`func (x *RegisterVerifierRequest) GetPresentationTypeUri() string`

#### func (*RegisterVerifierRequest) [GetValidFromUtc](/trust-registry.pb.go#L697)

`func (x *RegisterVerifierRequest) GetValidFromUtc() uint64`

#### func (*RegisterVerifierRequest) [GetValidUntilUtc](/trust-registry.pb.go#L704)

`func (x *RegisterVerifierRequest) GetValidUntilUtc() uint64`

#### func (*RegisterVerifierRequest) [GetX509Cert](/trust-registry.pb.go#L683)

`func (x *RegisterVerifierRequest) GetX509Cert() string`

#### func (*RegisterVerifierRequest) [ProtoMessage](/trust-registry.pb.go#L650)

`func (*RegisterVerifierRequest) ProtoMessage()`

#### func (*RegisterVerifierRequest) [ProtoReflect](/trust-registry.pb.go#L652)

`func (x *RegisterVerifierRequest) ProtoReflect() protoreflect.Message`

#### func (*RegisterVerifierRequest) [Reset](/trust-registry.pb.go#L637)

`func (x *RegisterVerifierRequest) Reset()`

#### func (*RegisterVerifierRequest) [String](/trust-registry.pb.go#L646)

`func (x *RegisterVerifierRequest) String() string`

### type [RegisterVerifierRequest_DidUri](/trust-registry.pb.go#L722)

`type RegisterVerifierRequest_DidUri struct { ... }`

### type [RegisterVerifierRequest_X509Cert](/trust-registry.pb.go#L726)

`type RegisterVerifierRequest_X509Cert struct { ... }`

### type [RegisterVerifierResponse](/trust-registry.pb.go#L734)

`type RegisterVerifierResponse struct { ... }`

#### func (*RegisterVerifierResponse) [Descriptor](/trust-registry.pb.go#L770)

`func (*RegisterVerifierResponse) Descriptor() ([]byte, []int)`

Deprecated: Use RegisterVerifierResponse.ProtoReflect.Descriptor instead.

#### func (*RegisterVerifierResponse) [GetStatus](/trust-registry.pb.go#L774)

`func (x *RegisterVerifierResponse) GetStatus() ResponseStatus`

#### func (*RegisterVerifierResponse) [ProtoMessage](/trust-registry.pb.go#L755)

`func (*RegisterVerifierResponse) ProtoMessage()`

#### func (*RegisterVerifierResponse) [ProtoReflect](/trust-registry.pb.go#L757)

`func (x *RegisterVerifierResponse) ProtoReflect() protoreflect.Message`

#### func (*RegisterVerifierResponse) [Reset](/trust-registry.pb.go#L742)

`func (x *RegisterVerifierResponse) Reset()`

#### func (*RegisterVerifierResponse) [String](/trust-registry.pb.go#L751)

`func (x *RegisterVerifierResponse) String() string`

### type [RegistrationStatus](/trust-registry.pb.go#L23)

`type RegistrationStatus int32`

#### func (RegistrationStatus) [Descriptor](/trust-registry.pb.go#L61)

`func (RegistrationStatus) Descriptor() protoreflect.EnumDescriptor`

#### func (RegistrationStatus) [Enum](/trust-registry.pb.go#L51)

`func (x RegistrationStatus) Enum() *RegistrationStatus`

#### func (RegistrationStatus) [EnumDescriptor](/trust-registry.pb.go#L74)

`func (RegistrationStatus) EnumDescriptor() ([]byte, []int)`

Deprecated: Use RegistrationStatus.Descriptor instead.

#### func (RegistrationStatus) [Number](/trust-registry.pb.go#L69)

`func (x RegistrationStatus) Number() protoreflect.EnumNumber`

#### func (RegistrationStatus) [String](/trust-registry.pb.go#L57)

`func (x RegistrationStatus) String() string`

#### func (RegistrationStatus) [Type](/trust-registry.pb.go#L65)

`func (RegistrationStatus) Type() protoreflect.EnumType`

### type [RemoveFrameworkRequest](/trust-registry.pb.go#L172)

`type RemoveFrameworkRequest struct { ... }`

#### func (*RemoveFrameworkRequest) [Descriptor](/trust-registry.pb.go#L208)

`func (*RemoveFrameworkRequest) Descriptor() ([]byte, []int)`

Deprecated: Use RemoveFrameworkRequest.ProtoReflect.Descriptor instead.

#### func (*RemoveFrameworkRequest) [GetGovernanceFramework](/trust-registry.pb.go#L212)

`func (x *RemoveFrameworkRequest) GetGovernanceFramework() *GovernanceFramework`

#### func (*RemoveFrameworkRequest) [ProtoMessage](/trust-registry.pb.go#L193)

`func (*RemoveFrameworkRequest) ProtoMessage()`

#### func (*RemoveFrameworkRequest) [ProtoReflect](/trust-registry.pb.go#L195)

`func (x *RemoveFrameworkRequest) ProtoReflect() protoreflect.Message`

#### func (*RemoveFrameworkRequest) [Reset](/trust-registry.pb.go#L180)

`func (x *RemoveFrameworkRequest) Reset()`

#### func (*RemoveFrameworkRequest) [String](/trust-registry.pb.go#L189)

`func (x *RemoveFrameworkRequest) String() string`

### type [RemoveFrameworkResponse](/trust-registry.pb.go#L219)

`type RemoveFrameworkResponse struct { ... }`

#### func (*RemoveFrameworkResponse) [Descriptor](/trust-registry.pb.go#L255)

`func (*RemoveFrameworkResponse) Descriptor() ([]byte, []int)`

Deprecated: Use RemoveFrameworkResponse.ProtoReflect.Descriptor instead.

#### func (*RemoveFrameworkResponse) [GetStatus](/trust-registry.pb.go#L259)

`func (x *RemoveFrameworkResponse) GetStatus() ResponseStatus`

#### func (*RemoveFrameworkResponse) [ProtoMessage](/trust-registry.pb.go#L240)

`func (*RemoveFrameworkResponse) ProtoMessage()`

#### func (*RemoveFrameworkResponse) [ProtoReflect](/trust-registry.pb.go#L242)

`func (x *RemoveFrameworkResponse) ProtoReflect() protoreflect.Message`

#### func (*RemoveFrameworkResponse) [Reset](/trust-registry.pb.go#L227)

`func (x *RemoveFrameworkResponse) Reset()`

#### func (*RemoveFrameworkResponse) [String](/trust-registry.pb.go#L236)

`func (x *RemoveFrameworkResponse) String() string`

### type [RequestOptions](/common.pb.go#L132)

`type RequestOptions struct { ... }`

#### func (*RequestOptions) [Descriptor](/common.pb.go#L168)

`func (*RequestOptions) Descriptor() ([]byte, []int)`

Deprecated: Use RequestOptions.ProtoReflect.Descriptor instead.

#### func (*RequestOptions) [GetResponseJsonFormat](/common.pb.go#L172)

`func (x *RequestOptions) GetResponseJsonFormat() JsonFormat`

#### func (*RequestOptions) [ProtoMessage](/common.pb.go#L153)

`func (*RequestOptions) ProtoMessage()`

#### func (*RequestOptions) [ProtoReflect](/common.pb.go#L155)

`func (x *RequestOptions) ProtoReflect() protoreflect.Message`

#### func (*RequestOptions) [Reset](/common.pb.go#L140)

`func (x *RequestOptions) Reset()`

#### func (*RequestOptions) [String](/common.pb.go#L149)

`func (x *RequestOptions) String() string`

### type [ResponseStatus](/common.pb.go#L25)

`type ResponseStatus int32`

#### func (ResponseStatus) [Descriptor](/common.pb.go#L66)

`func (ResponseStatus) Descriptor() protoreflect.EnumDescriptor`

#### func (ResponseStatus) [Enum](/common.pb.go#L56)

`func (x ResponseStatus) Enum() *ResponseStatus`

#### func (ResponseStatus) [EnumDescriptor](/common.pb.go#L79)

`func (ResponseStatus) EnumDescriptor() ([]byte, []int)`

Deprecated: Use ResponseStatus.Descriptor instead.

#### func (ResponseStatus) [Number](/common.pb.go#L74)

`func (x ResponseStatus) Number() protoreflect.EnumNumber`

#### func (ResponseStatus) [String](/common.pb.go#L62)

`func (x ResponseStatus) String() string`

#### func (ResponseStatus) [Type](/common.pb.go#L70)

`func (ResponseStatus) Type() protoreflect.EnumType`

### type [RevokeDeviceRequest](/account.pb.go#L596)

`type RevokeDeviceRequest struct { ... }`

#### func (*RevokeDeviceRequest) [Descriptor](/account.pb.go#L630)

`func (*RevokeDeviceRequest) Descriptor() ([]byte, []int)`

Deprecated: Use RevokeDeviceRequest.ProtoReflect.Descriptor instead.

#### func (*RevokeDeviceRequest) [ProtoMessage](/account.pb.go#L615)

`func (*RevokeDeviceRequest) ProtoMessage()`

#### func (*RevokeDeviceRequest) [ProtoReflect](/account.pb.go#L617)

`func (x *RevokeDeviceRequest) ProtoReflect() protoreflect.Message`

#### func (*RevokeDeviceRequest) [Reset](/account.pb.go#L602)

`func (x *RevokeDeviceRequest) Reset()`

#### func (*RevokeDeviceRequest) [String](/account.pb.go#L611)

`func (x *RevokeDeviceRequest) String() string`

### type [RevokeDeviceResponse](/account.pb.go#L634)

`type RevokeDeviceResponse struct { ... }`

#### func (*RevokeDeviceResponse) [Descriptor](/account.pb.go#L668)

`func (*RevokeDeviceResponse) Descriptor() ([]byte, []int)`

Deprecated: Use RevokeDeviceResponse.ProtoReflect.Descriptor instead.

#### func (*RevokeDeviceResponse) [ProtoMessage](/account.pb.go#L653)

`func (*RevokeDeviceResponse) ProtoMessage()`

#### func (*RevokeDeviceResponse) [ProtoReflect](/account.pb.go#L655)

`func (x *RevokeDeviceResponse) ProtoReflect() protoreflect.Message`

#### func (*RevokeDeviceResponse) [Reset](/account.pb.go#L640)

`func (x *RevokeDeviceResponse) Reset()`

#### func (*RevokeDeviceResponse) [String](/account.pb.go#L649)

`func (x *RevokeDeviceResponse) String() string`

### type [SearchCredentialTemplatesRequest](/templates.pb.go#L169)

`type SearchCredentialTemplatesRequest struct { ... }`

#### func (*SearchCredentialTemplatesRequest) [Descriptor](/templates.pb.go#L206)

`func (*SearchCredentialTemplatesRequest) Descriptor() ([]byte, []int)`

Deprecated: Use SearchCredentialTemplatesRequest.ProtoReflect.Descriptor instead.

#### func (*SearchCredentialTemplatesRequest) [GetContinuationToken](/templates.pb.go#L217)

`func (x *SearchCredentialTemplatesRequest) GetContinuationToken() string`

#### func (*SearchCredentialTemplatesRequest) [GetQuery](/templates.pb.go#L210)

`func (x *SearchCredentialTemplatesRequest) GetQuery() string`

#### func (*SearchCredentialTemplatesRequest) [ProtoMessage](/templates.pb.go#L191)

`func (*SearchCredentialTemplatesRequest) ProtoMessage()`

#### func (*SearchCredentialTemplatesRequest) [ProtoReflect](/templates.pb.go#L193)

`func (x *SearchCredentialTemplatesRequest) ProtoReflect() protoreflect.Message`

#### func (*SearchCredentialTemplatesRequest) [Reset](/templates.pb.go#L178)

`func (x *SearchCredentialTemplatesRequest) Reset()`

#### func (*SearchCredentialTemplatesRequest) [String](/templates.pb.go#L187)

`func (x *SearchCredentialTemplatesRequest) String() string`

### type [SearchCredentialTemplatesResponse](/templates.pb.go#L224)

`type SearchCredentialTemplatesResponse struct { ... }`

#### func (*SearchCredentialTemplatesResponse) [Descriptor](/templates.pb.go#L263)

`func (*SearchCredentialTemplatesResponse) Descriptor() ([]byte, []int)`

Deprecated: Use SearchCredentialTemplatesResponse.ProtoReflect.Descriptor instead.

#### func (*SearchCredentialTemplatesResponse) [GetContinuationToken](/templates.pb.go#L288)

`func (x *SearchCredentialTemplatesResponse) GetContinuationToken() string`

#### func (*SearchCredentialTemplatesResponse) [GetCount](/templates.pb.go#L281)

`func (x *SearchCredentialTemplatesResponse) GetCount() int32`

#### func (*SearchCredentialTemplatesResponse) [GetHasMore](/templates.pb.go#L274)

`func (x *SearchCredentialTemplatesResponse) GetHasMore() bool`

#### func (*SearchCredentialTemplatesResponse) [GetItemsJson](/templates.pb.go#L267)

`func (x *SearchCredentialTemplatesResponse) GetItemsJson() string`

#### func (*SearchCredentialTemplatesResponse) [ProtoMessage](/templates.pb.go#L248)

`func (*SearchCredentialTemplatesResponse) ProtoMessage()`

#### func (*SearchCredentialTemplatesResponse) [ProtoReflect](/templates.pb.go#L250)

`func (x *SearchCredentialTemplatesResponse) ProtoReflect() protoreflect.Message`

#### func (*SearchCredentialTemplatesResponse) [Reset](/templates.pb.go#L235)

`func (x *SearchCredentialTemplatesResponse) Reset()`

#### func (*SearchCredentialTemplatesResponse) [String](/templates.pb.go#L244)

`func (x *SearchCredentialTemplatesResponse) String() string`

### type [SearchRegistryRequest](/trust-registry.pb.go#L266)

`type SearchRegistryRequest struct { ... }`

#### func (*SearchRegistryRequest) [Descriptor](/trust-registry.pb.go#L304)

`func (*SearchRegistryRequest) Descriptor() ([]byte, []int)`

Deprecated: Use SearchRegistryRequest.ProtoReflect.Descriptor instead.

#### func (*SearchRegistryRequest) [GetContinuationToken](/trust-registry.pb.go#L315)

`func (x *SearchRegistryRequest) GetContinuationToken() string`

#### func (*SearchRegistryRequest) [GetOptions](/trust-registry.pb.go#L322)

`func (x *SearchRegistryRequest) GetOptions() *RequestOptions`

#### func (*SearchRegistryRequest) [GetQuery](/trust-registry.pb.go#L308)

`func (x *SearchRegistryRequest) GetQuery() string`

#### func (*SearchRegistryRequest) [ProtoMessage](/trust-registry.pb.go#L289)

`func (*SearchRegistryRequest) ProtoMessage()`

#### func (*SearchRegistryRequest) [ProtoReflect](/trust-registry.pb.go#L291)

`func (x *SearchRegistryRequest) ProtoReflect() protoreflect.Message`

#### func (*SearchRegistryRequest) [Reset](/trust-registry.pb.go#L276)

`func (x *SearchRegistryRequest) Reset()`

#### func (*SearchRegistryRequest) [String](/trust-registry.pb.go#L285)

`func (x *SearchRegistryRequest) String() string`

### type [SearchRegistryResponse](/trust-registry.pb.go#L329)

`type SearchRegistryResponse struct { ... }`

#### func (*SearchRegistryResponse) [Descriptor](/trust-registry.pb.go#L368)

`func (*SearchRegistryResponse) Descriptor() ([]byte, []int)`

Deprecated: Use SearchRegistryResponse.ProtoReflect.Descriptor instead.

#### func (*SearchRegistryResponse) [GetContinuationToken](/trust-registry.pb.go#L393)

`func (x *SearchRegistryResponse) GetContinuationToken() string`

#### func (*SearchRegistryResponse) [GetCount](/trust-registry.pb.go#L386)

`func (x *SearchRegistryResponse) GetCount() int32`

#### func (*SearchRegistryResponse) [GetHasMore](/trust-registry.pb.go#L379)

`func (x *SearchRegistryResponse) GetHasMore() bool`

#### func (*SearchRegistryResponse) [GetItemsJson](/trust-registry.pb.go#L372)

`func (x *SearchRegistryResponse) GetItemsJson() string`

#### func (*SearchRegistryResponse) [ProtoMessage](/trust-registry.pb.go#L353)

`func (*SearchRegistryResponse) ProtoMessage()`

#### func (*SearchRegistryResponse) [ProtoReflect](/trust-registry.pb.go#L355)

`func (x *SearchRegistryResponse) ProtoReflect() protoreflect.Message`

#### func (*SearchRegistryResponse) [Reset](/trust-registry.pb.go#L340)

`func (x *SearchRegistryResponse) Reset()`

#### func (*SearchRegistryResponse) [String](/trust-registry.pb.go#L349)

`func (x *SearchRegistryResponse) String() string`

### type [SearchRequest](/universal-wallet.pb.go#L24)

`type SearchRequest struct { ... }`

Search request object

#### func (*SearchRequest) [Descriptor](/universal-wallet.pb.go#L62)

`func (*SearchRequest) Descriptor() ([]byte, []int)`

Deprecated: Use SearchRequest.ProtoReflect.Descriptor instead.

#### func (*SearchRequest) [GetContinuationToken](/universal-wallet.pb.go#L73)

`func (x *SearchRequest) GetContinuationToken() string`

#### func (*SearchRequest) [GetOptions](/universal-wallet.pb.go#L80)

`func (x *SearchRequest) GetOptions() *RequestOptions`

#### func (*SearchRequest) [GetQuery](/universal-wallet.pb.go#L66)

`func (x *SearchRequest) GetQuery() string`

#### func (*SearchRequest) [ProtoMessage](/universal-wallet.pb.go#L47)

`func (*SearchRequest) ProtoMessage()`

#### func (*SearchRequest) [ProtoReflect](/universal-wallet.pb.go#L49)

`func (x *SearchRequest) ProtoReflect() protoreflect.Message`

#### func (*SearchRequest) [Reset](/universal-wallet.pb.go#L34)

`func (x *SearchRequest) Reset()`

#### func (*SearchRequest) [String](/universal-wallet.pb.go#L43)

`func (x *SearchRequest) String() string`

### type [SearchResponse](/universal-wallet.pb.go#L88)

`type SearchResponse struct { ... }`

Search response object

#### func (*SearchResponse) [Descriptor](/universal-wallet.pb.go#L127)

`func (*SearchResponse) Descriptor() ([]byte, []int)`

Deprecated: Use SearchResponse.ProtoReflect.Descriptor instead.

#### func (*SearchResponse) [GetContinuationToken](/universal-wallet.pb.go#L152)

`func (x *SearchResponse) GetContinuationToken() string`

#### func (*SearchResponse) [GetCount](/universal-wallet.pb.go#L145)

`func (x *SearchResponse) GetCount() int32`

#### func (*SearchResponse) [GetHasMore](/universal-wallet.pb.go#L138)

`func (x *SearchResponse) GetHasMore() bool`

#### func (*SearchResponse) [GetItems](/universal-wallet.pb.go#L131)

`func (x *SearchResponse) GetItems() []*JsonPayload`

#### func (*SearchResponse) [ProtoMessage](/universal-wallet.pb.go#L112)

`func (*SearchResponse) ProtoMessage()`

#### func (*SearchResponse) [ProtoReflect](/universal-wallet.pb.go#L114)

`func (x *SearchResponse) ProtoReflect() protoreflect.Message`

#### func (*SearchResponse) [Reset](/universal-wallet.pb.go#L99)

`func (x *SearchResponse) Reset()`

#### func (*SearchResponse) [String](/universal-wallet.pb.go#L108)

`func (x *SearchResponse) String() string`

### type [SendRequest](/verifiable-credentials.pb.go#L417)

`type SendRequest struct { ... }`

#### func (*SendRequest) [Descriptor](/verifiable-credentials.pb.go#L458)

`func (*SendRequest) Descriptor() ([]byte, []int)`

Deprecated: Use SendRequest.ProtoReflect.Descriptor instead.

#### func (*SendRequest) [GetDeliveryMethod](/verifiable-credentials.pb.go#L462)

`func (m *SendRequest) GetDeliveryMethod() isSendRequest_DeliveryMethod`

#### func (*SendRequest) [GetDidUri](/verifiable-credentials.pb.go#L476)

`func (x *SendRequest) GetDidUri() string`

#### func (*SendRequest) [GetDidcommInvitation](/verifiable-credentials.pb.go#L483)

`func (x *SendRequest) GetDidcommInvitation() *JsonPayload`

#### func (*SendRequest) [GetDocument](/verifiable-credentials.pb.go#L490)

`func (x *SendRequest) GetDocument() *JsonPayload`

#### func (*SendRequest) [GetEmail](/verifiable-credentials.pb.go#L469)

`func (x *SendRequest) GetEmail() string`

#### func (*SendRequest) [ProtoMessage](/verifiable-credentials.pb.go#L443)

`func (*SendRequest) ProtoMessage()`

#### func (*SendRequest) [ProtoReflect](/verifiable-credentials.pb.go#L445)

`func (x *SendRequest) ProtoReflect() protoreflect.Message`

#### func (*SendRequest) [Reset](/verifiable-credentials.pb.go#L430)

`func (x *SendRequest) Reset()`

#### func (*SendRequest) [String](/verifiable-credentials.pb.go#L439)

`func (x *SendRequest) String() string`

### type [SendRequest_DidUri](/verifiable-credentials.pb.go#L505)

`type SendRequest_DidUri struct { ... }`

### type [SendRequest_DidcommInvitation](/verifiable-credentials.pb.go#L509)

`type SendRequest_DidcommInvitation struct { ... }`

### type [SendRequest_Email](/verifiable-credentials.pb.go#L501)

`type SendRequest_Email struct { ... }`

### type [SendResponse](/verifiable-credentials.pb.go#L519)

`type SendResponse struct { ... }`

#### func (*SendResponse) [Descriptor](/verifiable-credentials.pb.go#L555)

`func (*SendResponse) Descriptor() ([]byte, []int)`

Deprecated: Use SendResponse.ProtoReflect.Descriptor instead.

#### func (*SendResponse) [GetStatus](/verifiable-credentials.pb.go#L559)

`func (x *SendResponse) GetStatus() ResponseStatus`

#### func (*SendResponse) [ProtoMessage](/verifiable-credentials.pb.go#L540)

`func (*SendResponse) ProtoMessage()`

#### func (*SendResponse) [ProtoReflect](/verifiable-credentials.pb.go#L542)

`func (x *SendResponse) ProtoReflect() protoreflect.Message`

#### func (*SendResponse) [Reset](/verifiable-credentials.pb.go#L527)

`func (x *SendResponse) Reset()`

#### func (*SendResponse) [String](/verifiable-credentials.pb.go#L536)

`func (x *SendResponse) String() string`

### type [ServerConfig](/common.pb.go#L273)

`type ServerConfig struct { ... }`

#### func (*ServerConfig) [Descriptor](/common.pb.go#L314)

`func (*ServerConfig) Descriptor() ([]byte, []int)`

Deprecated: Use ServerConfig.ProtoReflect.Descriptor instead.

#### func (*ServerConfig) [GetEndpoint](/common.pb.go#L318)

`func (x *ServerConfig) GetEndpoint() string`

#### func (*ServerConfig) [GetPort](/common.pb.go#L325)

`func (x *ServerConfig) GetPort() int32`

#### func (*ServerConfig) [GetUseTls](/common.pb.go#L332)

`func (x *ServerConfig) GetUseTls() bool`

#### func (*ServerConfig) [ProtoMessage](/common.pb.go#L299)

`func (*ServerConfig) ProtoMessage()`

#### func (*ServerConfig) [ProtoReflect](/common.pb.go#L301)

`func (x *ServerConfig) ProtoReflect() protoreflect.Message`

#### func (*ServerConfig) [Reset](/common.pb.go#L286)

`func (x *ServerConfig) Reset()`

#### func (*ServerConfig) [String](/common.pb.go#L295)

`func (x *ServerConfig) String() string`

### type [SignInRequest](/account.pb.go#L85)

`type SignInRequest struct { ... }`

Request for creating new account

#### func (*SignInRequest) [Descriptor](/account.pb.go#L125)

`func (*SignInRequest) Descriptor() ([]byte, []int)`

Deprecated: Use SignInRequest.ProtoReflect.Descriptor instead.

#### func (*SignInRequest) [GetDetails](/account.pb.go#L129)

`func (x *SignInRequest) GetDetails() *AccountDetails`

#### func (*SignInRequest) [GetInvitationCode](/account.pb.go#L136)

`func (x *SignInRequest) GetInvitationCode() string`

#### func (*SignInRequest) [ProtoMessage](/account.pb.go#L110)

`func (*SignInRequest) ProtoMessage()`

#### func (*SignInRequest) [ProtoReflect](/account.pb.go#L112)

`func (x *SignInRequest) ProtoReflect() protoreflect.Message`

#### func (*SignInRequest) [Reset](/account.pb.go#L97)

`func (x *SignInRequest) Reset()`

#### func (*SignInRequest) [String](/account.pb.go#L106)

`func (x *SignInRequest) String() string`

### type [SignInResponse](/account.pb.go#L214)

`type SignInResponse struct { ... }`

Response for creating new account
This object will indicate if a confirmation code
was sent to one of the users two-factor methods
like email, SMS, etc.

#### func (*SignInResponse) [Descriptor](/account.pb.go#L260)

`func (*SignInResponse) Descriptor() ([]byte, []int)`

Deprecated: Use SignInResponse.ProtoReflect.Descriptor instead.

#### func (*SignInResponse) [GetConfirmationMethod](/account.pb.go#L271)

`func (x *SignInResponse) GetConfirmationMethod() ConfirmationMethod`

#### func (*SignInResponse) [GetProfile](/account.pb.go#L278)

`func (x *SignInResponse) GetProfile() *AccountProfile`

#### func (*SignInResponse) [GetStatus](/account.pb.go#L264)

`func (x *SignInResponse) GetStatus() ResponseStatus`

#### func (*SignInResponse) [ProtoMessage](/account.pb.go#L245)

`func (*SignInResponse) ProtoMessage()`

#### func (*SignInResponse) [ProtoReflect](/account.pb.go#L247)

`func (x *SignInResponse) ProtoReflect() protoreflect.Message`

#### func (*SignInResponse) [Reset](/account.pb.go#L232)

`func (x *SignInResponse) Reset()`

#### func (*SignInResponse) [String](/account.pb.go#L241)

`func (x *SignInResponse) String() string`

### type [TemplateData](/templates.pb.go#L851)

`type TemplateData struct { ... }`

#### func (*TemplateData) [Descriptor](/templates.pb.go#L895)

`func (*TemplateData) Descriptor() ([]byte, []int)`

Deprecated: Use TemplateData.ProtoReflect.Descriptor instead.

#### func (*TemplateData) [GetAllowAdditionalFields](/templates.pb.go#L927)

`func (x *TemplateData) GetAllowAdditionalFields() bool`

#### func (*TemplateData) [GetContextUri](/templates.pb.go#L941)

`func (x *TemplateData) GetContextUri() string`

#### func (*TemplateData) [GetEcosystemId](/templates.pb.go#L948)

`func (x *TemplateData) GetEcosystemId() string`

#### func (*TemplateData) [GetFields](/templates.pb.go#L920)

`func (x *TemplateData) GetFields() map[string]*TemplateField`

#### func (*TemplateData) [GetId](/templates.pb.go#L899)

`func (x *TemplateData) GetId() string`

#### func (*TemplateData) [GetName](/templates.pb.go#L906)

`func (x *TemplateData) GetName() string`

#### func (*TemplateData) [GetSchemaUri](/templates.pb.go#L934)

`func (x *TemplateData) GetSchemaUri() string`

#### func (*TemplateData) [GetType](/templates.pb.go#L955)

`func (x *TemplateData) GetType() string`

#### func (*TemplateData) [GetVersion](/templates.pb.go#L913)

`func (x *TemplateData) GetVersion() int32`

#### func (*TemplateData) [ProtoMessage](/templates.pb.go#L880)

`func (*TemplateData) ProtoMessage()`

#### func (*TemplateData) [ProtoReflect](/templates.pb.go#L882)

`func (x *TemplateData) ProtoReflect() protoreflect.Message`

#### func (*TemplateData) [Reset](/templates.pb.go#L867)

`func (x *TemplateData) Reset()`

#### func (*TemplateData) [String](/templates.pb.go#L876)

`func (x *TemplateData) String() string`

### type [TemplateField](/templates.pb.go#L609)

`type TemplateField struct { ... }`

#### func (*TemplateField) [Descriptor](/templates.pb.go#L647)

`func (*TemplateField) Descriptor() ([]byte, []int)`

Deprecated: Use TemplateField.ProtoReflect.Descriptor instead.

#### func (*TemplateField) [GetDescription](/templates.pb.go#L651)

`func (x *TemplateField) GetDescription() string`

#### func (*TemplateField) [GetOptional](/templates.pb.go#L658)

`func (x *TemplateField) GetOptional() bool`

#### func (*TemplateField) [GetType](/templates.pb.go#L665)

`func (x *TemplateField) GetType() FieldType`

#### func (*TemplateField) [ProtoMessage](/templates.pb.go#L632)

`func (*TemplateField) ProtoMessage()`

#### func (*TemplateField) [ProtoReflect](/templates.pb.go#L634)

`func (x *TemplateField) ProtoReflect() protoreflect.Message`

#### func (*TemplateField) [Reset](/templates.pb.go#L619)

`func (x *TemplateField) Reset()`

#### func (*TemplateField) [String](/templates.pb.go#L628)

`func (x *TemplateField) String() string`

### type [TokenProtection](/account.pb.go#L366)

`type TokenProtection struct { ... }`

Token protection info

#### func (*TokenProtection) [Descriptor](/account.pb.go#L406)

`func (*TokenProtection) Descriptor() ([]byte, []int)`

Deprecated: Use TokenProtection.ProtoReflect.Descriptor instead.

#### func (*TokenProtection) [GetEnabled](/account.pb.go#L410)

`func (x *TokenProtection) GetEnabled() bool`

#### func (*TokenProtection) [GetMethod](/account.pb.go#L417)

`func (x *TokenProtection) GetMethod() ConfirmationMethod`

#### func (*TokenProtection) [ProtoMessage](/account.pb.go#L391)

`func (*TokenProtection) ProtoMessage()`

#### func (*TokenProtection) [ProtoReflect](/account.pb.go#L393)

`func (x *TokenProtection) ProtoReflect() protoreflect.Message`

#### func (*TokenProtection) [Reset](/account.pb.go#L378)

`func (x *TokenProtection) Reset()`

#### func (*TokenProtection) [String](/account.pb.go#L387)

`func (x *TokenProtection) String() string`

### type [TrustRegistryClient](/trust-registry_grpc.pb.go#L20)

`type TrustRegistryClient interface { ... }`

TrustRegistryClient is the client API for TrustRegistry service.

For semantics around ctx use and closing/ending streaming RPCs, please refer to [https://pkg.go.dev/google.golang.org/grpc/?tab=doc#ClientConn.NewStream](https://pkg.go.dev/google.golang.org/grpc/?tab=doc#ClientConn.NewStream).

### type [TrustRegistryServer](/trust-registry_grpc.pb.go#L162)

`type TrustRegistryServer interface { ... }`

TrustRegistryServer is the server API for TrustRegistry service.
All implementations must embed UnimplementedTrustRegistryServer
for forward compatibility

### type [TrustRegistry_FetchDataClient](/trust-registry_grpc.pb.go#L142)

`type TrustRegistry_FetchDataClient interface { ... }`

### type [TrustRegistry_FetchDataServer](/trust-registry_grpc.pb.go#L398)

`type TrustRegistry_FetchDataServer interface { ... }`

### type [UnimplementedAccountServer](/account_grpc.pb.go#L91)

`type UnimplementedAccountServer struct { ... }`

UnimplementedAccountServer must be embedded to have forward compatible implementations.

#### func (UnimplementedAccountServer) [Info](/account_grpc.pb.go#L97)

`func (UnimplementedAccountServer) Info(context.Context, *InfoRequest) (*InfoResponse, error)`

#### func (UnimplementedAccountServer) [ListDevices](/account_grpc.pb.go#L100)

`func (UnimplementedAccountServer) ListDevices(context.Context, *ListDevicesRequest) (*ListDevicesResponse, error)`

#### func (UnimplementedAccountServer) [RevokeDevice](/account_grpc.pb.go#L103)

`func (UnimplementedAccountServer) RevokeDevice(context.Context, *RevokeDeviceRequest) (*RevokeDeviceResponse, error)`

#### func (UnimplementedAccountServer) [SignIn](/account_grpc.pb.go#L94)

`func (UnimplementedAccountServer) SignIn(context.Context, *SignInRequest) (*SignInResponse, error)`

### type [UnimplementedCommonServer](/common_grpc.pb.go#L51)

`type UnimplementedCommonServer struct { ... }`

UnimplementedCommonServer must be embedded to have forward compatible implementations.

#### func (UnimplementedCommonServer) [Request](/common_grpc.pb.go#L54)

`func (UnimplementedCommonServer) Request(context.Context, *okapiproto.EncryptedMessage) (*okapiproto.EncryptedMessage, error)`

### type [UnimplementedCredentialTemplatesServer](/templates_grpc.pb.go#L94)

`type UnimplementedCredentialTemplatesServer struct { ... }`

UnimplementedCredentialTemplatesServer must be embedded to have forward compatible implementations.

#### func (UnimplementedCredentialTemplatesServer) [Create](/templates_grpc.pb.go#L97)

`func (UnimplementedCredentialTemplatesServer) Create(context.Context, *CreateCredentialTemplateRequest) (*CreateCredentialTemplateResponse, error)`

#### func (UnimplementedCredentialTemplatesServer) [Delete](/templates_grpc.pb.go#L109)

`func (UnimplementedCredentialTemplatesServer) Delete(context.Context, *DeleteCredentialTemplateRequest) (*DeleteCredentialTemplateResponse, error)`

#### func (UnimplementedCredentialTemplatesServer) [Get](/templates_grpc.pb.go#L100)

`func (UnimplementedCredentialTemplatesServer) Get(context.Context, *GetCredentialTemplateRequest) (*GetCredentialTemplateResponse, error)`

#### func (UnimplementedCredentialTemplatesServer) [List](/templates_grpc.pb.go#L103)

`func (UnimplementedCredentialTemplatesServer) List(context.Context, *ListCredentialTemplatesRequest) (*ListCredentialTemplatesResponse, error)`

#### func (UnimplementedCredentialTemplatesServer) [Search](/templates_grpc.pb.go#L106)

`func (UnimplementedCredentialTemplatesServer) Search(context.Context, *SearchCredentialTemplatesRequest) (*SearchCredentialTemplatesResponse, error)`

### type [UnimplementedDebuggingServer](/debug_grpc.pb.go#L62)

`type UnimplementedDebuggingServer struct { ... }`

UnimplementedDebuggingServer must be embedded to have forward compatible implementations.

#### func (UnimplementedDebuggingServer) [CallEmpty](/debug_grpc.pb.go#L65)

`func (UnimplementedDebuggingServer) CallEmpty(context.Context, *emptypb.Empty) (*emptypb.Empty, error)`

#### func (UnimplementedDebuggingServer) [CallEmptyAuth](/debug_grpc.pb.go#L68)

`func (UnimplementedDebuggingServer) CallEmptyAuth(context.Context, *emptypb.Empty) (*emptypb.Empty, error)`

### type [UnimplementedProviderServer](/provider_grpc.pb.go#L104)

`type UnimplementedProviderServer struct { ... }`

UnimplementedProviderServer must be embedded to have forward compatible implementations.

#### func (UnimplementedProviderServer) [AcceptInvite](/provider_grpc.pb.go#L116)

`func (UnimplementedProviderServer) AcceptInvite(context.Context, *AcceptInviteRequest) (*AcceptInviteResponse, error)`

#### func (UnimplementedProviderServer) [CreateEcosystem](/provider_grpc.pb.go#L107)

`func (UnimplementedProviderServer) CreateEcosystem(context.Context, *CreateEcosystemRequest) (*CreateEcosystemResponse, error)`

#### func (UnimplementedProviderServer) [InvitationStatus](/provider_grpc.pb.go#L119)

`func (UnimplementedProviderServer) InvitationStatus(context.Context, *InvitationStatusRequest) (*InvitationStatusResponse, error)`

#### func (UnimplementedProviderServer) [Invite](/provider_grpc.pb.go#L113)

`func (UnimplementedProviderServer) Invite(context.Context, *InviteRequest) (*InviteResponse, error)`

#### func (UnimplementedProviderServer) [ListEcosystems](/provider_grpc.pb.go#L110)

`func (UnimplementedProviderServer) ListEcosystems(context.Context, *ListEcosystemsRequest) (*ListEcosystemsResponse, error)`

### type [UnimplementedTrustRegistryServer](/trust-registry_grpc.pb.go#L182)

`type UnimplementedTrustRegistryServer struct { ... }`

UnimplementedTrustRegistryServer must be embedded to have forward compatible implementations.

#### func (UnimplementedTrustRegistryServer) [AddFramework](/trust-registry_grpc.pb.go#L185)

`func (UnimplementedTrustRegistryServer) AddFramework(context.Context, *AddFrameworkRequest) (*AddFrameworkResponse, error)`

#### func (UnimplementedTrustRegistryServer) [CheckIssuerStatus](/trust-registry_grpc.pb.go#L206)

`func (UnimplementedTrustRegistryServer) CheckIssuerStatus(context.Context, *CheckIssuerStatusRequest) (*CheckIssuerStatusResponse, error)`

#### func (UnimplementedTrustRegistryServer) [CheckVerifierStatus](/trust-registry_grpc.pb.go#L209)

`func (UnimplementedTrustRegistryServer) CheckVerifierStatus(context.Context, *CheckVerifierStatusRequest) (*CheckVerifierStatusResponse, error)`

#### func (UnimplementedTrustRegistryServer) [FetchData](/trust-registry_grpc.pb.go#L212)

`func (UnimplementedTrustRegistryServer) FetchData(*FetchDataRequest, TrustRegistry_FetchDataServer) error`

#### func (UnimplementedTrustRegistryServer) [RegisterIssuer](/trust-registry_grpc.pb.go#L194)

`func (UnimplementedTrustRegistryServer) RegisterIssuer(context.Context, *RegisterIssuerRequest) (*RegisterIssuerResponse, error)`

#### func (UnimplementedTrustRegistryServer) [RegisterVerifier](/trust-registry_grpc.pb.go#L197)

`func (UnimplementedTrustRegistryServer) RegisterVerifier(context.Context, *RegisterVerifierRequest) (*RegisterVerifierResponse, error)`

#### func (UnimplementedTrustRegistryServer) [RemoveFramework](/trust-registry_grpc.pb.go#L188)

`func (UnimplementedTrustRegistryServer) RemoveFramework(context.Context, *RemoveFrameworkRequest) (*RemoveFrameworkResponse, error)`

#### func (UnimplementedTrustRegistryServer) [SearchRegistry](/trust-registry_grpc.pb.go#L191)

`func (UnimplementedTrustRegistryServer) SearchRegistry(context.Context, *SearchRegistryRequest) (*SearchRegistryResponse, error)`

#### func (UnimplementedTrustRegistryServer) [UnregisterIssuer](/trust-registry_grpc.pb.go#L200)

`func (UnimplementedTrustRegistryServer) UnregisterIssuer(context.Context, *UnregisterIssuerRequest) (*UnregisterIssuerResponse, error)`

#### func (UnimplementedTrustRegistryServer) [UnregisterVerifier](/trust-registry_grpc.pb.go#L203)

`func (UnimplementedTrustRegistryServer) UnregisterVerifier(context.Context, *UnregisterVerifierRequest) (*UnregisterVerifierResponse, error)`

### type [UnimplementedUniversalWalletServer](/universal-wallet_grpc.pb.go#L78)

`type UnimplementedUniversalWalletServer struct { ... }`

UnimplementedUniversalWalletServer must be embedded to have forward compatible implementations.

#### func (UnimplementedUniversalWalletServer) [Deleteitem](/universal-wallet_grpc.pb.go#L87)

`func (UnimplementedUniversalWalletServer) Deleteitem(context.Context, *DeleteItemRequest) (*DeleteItemResponse, error)`

#### func (UnimplementedUniversalWalletServer) [InsertItem](/universal-wallet_grpc.pb.go#L84)

`func (UnimplementedUniversalWalletServer) InsertItem(context.Context, *InsertItemRequest) (*InsertItemResponse, error)`

#### func (UnimplementedUniversalWalletServer) [Search](/universal-wallet_grpc.pb.go#L81)

`func (UnimplementedUniversalWalletServer) Search(context.Context, *SearchRequest) (*SearchResponse, error)`

### type [UnimplementedVerifiableCredentialServer](/verifiable-credentials_grpc.pb.go#L120)

`type UnimplementedVerifiableCredentialServer struct { ... }`

UnimplementedVerifiableCredentialServer must be embedded to have forward compatible implementations.

#### func (UnimplementedVerifiableCredentialServer) [CheckStatus](/verifiable-credentials_grpc.pb.go#L129)

`func (UnimplementedVerifiableCredentialServer) CheckStatus(context.Context, *CheckStatusRequest) (*CheckStatusResponse, error)`

#### func (UnimplementedVerifiableCredentialServer) [CreateProof](/verifiable-credentials_grpc.pb.go#L135)

`func (UnimplementedVerifiableCredentialServer) CreateProof(context.Context, *CreateProofRequest) (*CreateProofResponse, error)`

#### func (UnimplementedVerifiableCredentialServer) [Issue](/verifiable-credentials_grpc.pb.go#L123)

`func (UnimplementedVerifiableCredentialServer) Issue(context.Context, *IssueRequest) (*IssueResponse, error)`

#### func (UnimplementedVerifiableCredentialServer) [IssueFromTemplate](/verifiable-credentials_grpc.pb.go#L126)

`func (UnimplementedVerifiableCredentialServer) IssueFromTemplate(context.Context, *IssueFromTemplateRequest) (*IssueFromTemplateResponse, error)`

#### func (UnimplementedVerifiableCredentialServer) [Send](/verifiable-credentials_grpc.pb.go#L141)

`func (UnimplementedVerifiableCredentialServer) Send(context.Context, *SendRequest) (*SendResponse, error)`

#### func (UnimplementedVerifiableCredentialServer) [UpdateStatus](/verifiable-credentials_grpc.pb.go#L132)

`func (UnimplementedVerifiableCredentialServer) UpdateStatus(context.Context, *UpdateStatusRequest) (*UpdateStatusResponse, error)`

#### func (UnimplementedVerifiableCredentialServer) [VerifyProof](/verifiable-credentials_grpc.pb.go#L138)

`func (UnimplementedVerifiableCredentialServer) VerifyProof(context.Context, *VerifyProofRequest) (*VerifyProofResponse, error)`

### type [UniversalWalletClient](/universal-wallet_grpc.pb.go#L20)

`type UniversalWalletClient interface { ... }`

UniversalWalletClient is the client API for UniversalWallet service.

For semantics around ctx use and closing/ending streaming RPCs, please refer to [https://pkg.go.dev/google.golang.org/grpc/?tab=doc#ClientConn.NewStream](https://pkg.go.dev/google.golang.org/grpc/?tab=doc#ClientConn.NewStream).

### type [UniversalWalletServer](/universal-wallet_grpc.pb.go#L67)

`type UniversalWalletServer interface { ... }`

UniversalWalletServer is the server API for UniversalWallet service.
All implementations must embed UnimplementedUniversalWalletServer
for forward compatibility

### type [UnregisterIssuerRequest](/trust-registry.pb.go#L781)

`type UnregisterIssuerRequest struct { ... }`

#### func (*UnregisterIssuerRequest) [Descriptor](/trust-registry.pb.go#L822)

`func (*UnregisterIssuerRequest) Descriptor() ([]byte, []int)`

Deprecated: Use UnregisterIssuerRequest.ProtoReflect.Descriptor instead.

#### func (*UnregisterIssuerRequest) [GetAuthority](/trust-registry.pb.go#L826)

`func (m *UnregisterIssuerRequest) GetAuthority() isUnregisterIssuerRequest_Authority`

#### func (*UnregisterIssuerRequest) [GetCredentialTypeUri](/trust-registry.pb.go#L847)

`func (x *UnregisterIssuerRequest) GetCredentialTypeUri() string`

#### func (*UnregisterIssuerRequest) [GetDidUri](/trust-registry.pb.go#L833)

`func (x *UnregisterIssuerRequest) GetDidUri() string`

#### func (*UnregisterIssuerRequest) [GetGovernanceFrameworkUri](/trust-registry.pb.go#L854)

`func (x *UnregisterIssuerRequest) GetGovernanceFrameworkUri() string`

#### func (*UnregisterIssuerRequest) [GetX509Cert](/trust-registry.pb.go#L840)

`func (x *UnregisterIssuerRequest) GetX509Cert() string`

#### func (*UnregisterIssuerRequest) [ProtoMessage](/trust-registry.pb.go#L807)

`func (*UnregisterIssuerRequest) ProtoMessage()`

#### func (*UnregisterIssuerRequest) [ProtoReflect](/trust-registry.pb.go#L809)

`func (x *UnregisterIssuerRequest) ProtoReflect() protoreflect.Message`

#### func (*UnregisterIssuerRequest) [Reset](/trust-registry.pb.go#L794)

`func (x *UnregisterIssuerRequest) Reset()`

#### func (*UnregisterIssuerRequest) [String](/trust-registry.pb.go#L803)

`func (x *UnregisterIssuerRequest) String() string`

### type [UnregisterIssuerRequest_DidUri](/trust-registry.pb.go#L865)

`type UnregisterIssuerRequest_DidUri struct { ... }`

### type [UnregisterIssuerRequest_X509Cert](/trust-registry.pb.go#L869)

`type UnregisterIssuerRequest_X509Cert struct { ... }`

### type [UnregisterIssuerResponse](/trust-registry.pb.go#L877)

`type UnregisterIssuerResponse struct { ... }`

#### func (*UnregisterIssuerResponse) [Descriptor](/trust-registry.pb.go#L913)

`func (*UnregisterIssuerResponse) Descriptor() ([]byte, []int)`

Deprecated: Use UnregisterIssuerResponse.ProtoReflect.Descriptor instead.

#### func (*UnregisterIssuerResponse) [GetStatus](/trust-registry.pb.go#L917)

`func (x *UnregisterIssuerResponse) GetStatus() ResponseStatus`

#### func (*UnregisterIssuerResponse) [ProtoMessage](/trust-registry.pb.go#L898)

`func (*UnregisterIssuerResponse) ProtoMessage()`

#### func (*UnregisterIssuerResponse) [ProtoReflect](/trust-registry.pb.go#L900)

`func (x *UnregisterIssuerResponse) ProtoReflect() protoreflect.Message`

#### func (*UnregisterIssuerResponse) [Reset](/trust-registry.pb.go#L885)

`func (x *UnregisterIssuerResponse) Reset()`

#### func (*UnregisterIssuerResponse) [String](/trust-registry.pb.go#L894)

`func (x *UnregisterIssuerResponse) String() string`

### type [UnregisterVerifierRequest](/trust-registry.pb.go#L924)

`type UnregisterVerifierRequest struct { ... }`

#### func (*UnregisterVerifierRequest) [Descriptor](/trust-registry.pb.go#L965)

`func (*UnregisterVerifierRequest) Descriptor() ([]byte, []int)`

Deprecated: Use UnregisterVerifierRequest.ProtoReflect.Descriptor instead.

#### func (*UnregisterVerifierRequest) [GetAuthority](/trust-registry.pb.go#L969)

`func (m *UnregisterVerifierRequest) GetAuthority() isUnregisterVerifierRequest_Authority`

#### func (*UnregisterVerifierRequest) [GetDidUri](/trust-registry.pb.go#L976)

`func (x *UnregisterVerifierRequest) GetDidUri() string`

#### func (*UnregisterVerifierRequest) [GetGovernanceFrameworkUri](/trust-registry.pb.go#L997)

`func (x *UnregisterVerifierRequest) GetGovernanceFrameworkUri() string`

#### func (*UnregisterVerifierRequest) [GetPresentationTypeUri](/trust-registry.pb.go#L990)

`func (x *UnregisterVerifierRequest) GetPresentationTypeUri() string`

#### func (*UnregisterVerifierRequest) [GetX509Cert](/trust-registry.pb.go#L983)

`func (x *UnregisterVerifierRequest) GetX509Cert() string`

#### func (*UnregisterVerifierRequest) [ProtoMessage](/trust-registry.pb.go#L950)

`func (*UnregisterVerifierRequest) ProtoMessage()`

#### func (*UnregisterVerifierRequest) [ProtoReflect](/trust-registry.pb.go#L952)

`func (x *UnregisterVerifierRequest) ProtoReflect() protoreflect.Message`

#### func (*UnregisterVerifierRequest) [Reset](/trust-registry.pb.go#L937)

`func (x *UnregisterVerifierRequest) Reset()`

#### func (*UnregisterVerifierRequest) [String](/trust-registry.pb.go#L946)

`func (x *UnregisterVerifierRequest) String() string`

### type [UnregisterVerifierRequest_DidUri](/trust-registry.pb.go#L1008)

`type UnregisterVerifierRequest_DidUri struct { ... }`

### type [UnregisterVerifierRequest_X509Cert](/trust-registry.pb.go#L1012)

`type UnregisterVerifierRequest_X509Cert struct { ... }`

### type [UnregisterVerifierResponse](/trust-registry.pb.go#L1020)

`type UnregisterVerifierResponse struct { ... }`

#### func (*UnregisterVerifierResponse) [Descriptor](/trust-registry.pb.go#L1056)

`func (*UnregisterVerifierResponse) Descriptor() ([]byte, []int)`

Deprecated: Use UnregisterVerifierResponse.ProtoReflect.Descriptor instead.

#### func (*UnregisterVerifierResponse) [GetStatus](/trust-registry.pb.go#L1060)

`func (x *UnregisterVerifierResponse) GetStatus() ResponseStatus`

#### func (*UnregisterVerifierResponse) [ProtoMessage](/trust-registry.pb.go#L1041)

`func (*UnregisterVerifierResponse) ProtoMessage()`

#### func (*UnregisterVerifierResponse) [ProtoReflect](/trust-registry.pb.go#L1043)

`func (x *UnregisterVerifierResponse) ProtoReflect() protoreflect.Message`

#### func (*UnregisterVerifierResponse) [Reset](/trust-registry.pb.go#L1028)

`func (x *UnregisterVerifierResponse) Reset()`

#### func (*UnregisterVerifierResponse) [String](/trust-registry.pb.go#L1037)

`func (x *UnregisterVerifierResponse) String() string`

### type [UnsafeAccountServer](/account_grpc.pb.go#L111)

`type UnsafeAccountServer interface { ... }`

UnsafeAccountServer may be embedded to opt out of forward compatibility for this service.
Use of this interface is not recommended, as added methods to AccountServer will
result in compilation errors.

### type [UnsafeCommonServer](/common_grpc.pb.go#L62)

`type UnsafeCommonServer interface { ... }`

UnsafeCommonServer may be embedded to opt out of forward compatibility for this service.
Use of this interface is not recommended, as added methods to CommonServer will
result in compilation errors.

### type [UnsafeCredentialTemplatesServer](/templates_grpc.pb.go#L117)

`type UnsafeCredentialTemplatesServer interface { ... }`

UnsafeCredentialTemplatesServer may be embedded to opt out of forward compatibility for this service.
Use of this interface is not recommended, as added methods to CredentialTemplatesServer will
result in compilation errors.

### type [UnsafeDebuggingServer](/debug_grpc.pb.go#L76)

`type UnsafeDebuggingServer interface { ... }`

UnsafeDebuggingServer may be embedded to opt out of forward compatibility for this service.
Use of this interface is not recommended, as added methods to DebuggingServer will
result in compilation errors.

### type [UnsafeProviderServer](/provider_grpc.pb.go#L127)

`type UnsafeProviderServer interface { ... }`

UnsafeProviderServer may be embedded to opt out of forward compatibility for this service.
Use of this interface is not recommended, as added methods to ProviderServer will
result in compilation errors.

### type [UnsafeTrustRegistryServer](/trust-registry_grpc.pb.go#L220)

`type UnsafeTrustRegistryServer interface { ... }`

UnsafeTrustRegistryServer may be embedded to opt out of forward compatibility for this service.
Use of this interface is not recommended, as added methods to TrustRegistryServer will
result in compilation errors.

### type [UnsafeUniversalWalletServer](/universal-wallet_grpc.pb.go#L95)

`type UnsafeUniversalWalletServer interface { ... }`

UnsafeUniversalWalletServer may be embedded to opt out of forward compatibility for this service.
Use of this interface is not recommended, as added methods to UniversalWalletServer will
result in compilation errors.

### type [UnsafeVerifiableCredentialServer](/verifiable-credentials_grpc.pb.go#L149)

`type UnsafeVerifiableCredentialServer interface { ... }`

UnsafeVerifiableCredentialServer may be embedded to opt out of forward compatibility for this service.
Use of this interface is not recommended, as added methods to VerifiableCredentialServer will
result in compilation errors.

### type [UpdateStatusRequest](/verifiable-credentials.pb.go#L567)

`type UpdateStatusRequest struct { ... }`

request object to update the status of the revocation entry

#### func (*UpdateStatusRequest) [Descriptor](/verifiable-credentials.pb.go#L606)

`func (*UpdateStatusRequest) Descriptor() ([]byte, []int)`

Deprecated: Use UpdateStatusRequest.ProtoReflect.Descriptor instead.

#### func (*UpdateStatusRequest) [GetCredentialStatusId](/verifiable-credentials.pb.go#L610)

`func (x *UpdateStatusRequest) GetCredentialStatusId() string`

#### func (*UpdateStatusRequest) [GetRevoked](/verifiable-credentials.pb.go#L617)

`func (x *UpdateStatusRequest) GetRevoked() bool`

#### func (*UpdateStatusRequest) [ProtoMessage](/verifiable-credentials.pb.go#L591)

`func (*UpdateStatusRequest) ProtoMessage()`

#### func (*UpdateStatusRequest) [ProtoReflect](/verifiable-credentials.pb.go#L593)

`func (x *UpdateStatusRequest) ProtoReflect() protoreflect.Message`

#### func (*UpdateStatusRequest) [Reset](/verifiable-credentials.pb.go#L578)

`func (x *UpdateStatusRequest) Reset()`

#### func (*UpdateStatusRequest) [String](/verifiable-credentials.pb.go#L587)

`func (x *UpdateStatusRequest) String() string`

### type [UpdateStatusResponse](/verifiable-credentials.pb.go#L625)

`type UpdateStatusResponse struct { ... }`

response object for update of status of revocation entry

#### func (*UpdateStatusResponse) [Descriptor](/verifiable-credentials.pb.go#L661)

`func (*UpdateStatusResponse) Descriptor() ([]byte, []int)`

Deprecated: Use UpdateStatusResponse.ProtoReflect.Descriptor instead.

#### func (*UpdateStatusResponse) [GetStatus](/verifiable-credentials.pb.go#L665)

`func (x *UpdateStatusResponse) GetStatus() ResponseStatus`

#### func (*UpdateStatusResponse) [ProtoMessage](/verifiable-credentials.pb.go#L646)

`func (*UpdateStatusResponse) ProtoMessage()`

#### func (*UpdateStatusResponse) [ProtoReflect](/verifiable-credentials.pb.go#L648)

`func (x *UpdateStatusResponse) ProtoReflect() protoreflect.Message`

#### func (*UpdateStatusResponse) [Reset](/verifiable-credentials.pb.go#L633)

`func (x *UpdateStatusResponse) Reset()`

#### func (*UpdateStatusResponse) [String](/verifiable-credentials.pb.go#L642)

`func (x *UpdateStatusResponse) String() string`

### type [VerifiableCredentialClient](/verifiable-credentials_grpc.pb.go#L20)

`type VerifiableCredentialClient interface { ... }`

VerifiableCredentialClient is the client API for VerifiableCredential service.

For semantics around ctx use and closing/ending streaming RPCs, please refer to [https://pkg.go.dev/google.golang.org/grpc/?tab=doc#ClientConn.NewStream](https://pkg.go.dev/google.golang.org/grpc/?tab=doc#ClientConn.NewStream).

### type [VerifiableCredentialServer](/verifiable-credentials_grpc.pb.go#L106)

`type VerifiableCredentialServer interface { ... }`

VerifiableCredentialServer is the server API for VerifiableCredential service.
All implementations must embed UnimplementedVerifiableCredentialServer
for forward compatibility

### type [VerifyProofRequest](/verifiable-credentials.pb.go#L323)

`type VerifyProofRequest struct { ... }`

Verify Proof

#### func (*VerifyProofRequest) [Descriptor](/verifiable-credentials.pb.go#L359)

`func (*VerifyProofRequest) Descriptor() ([]byte, []int)`

Deprecated: Use VerifyProofRequest.ProtoReflect.Descriptor instead.

#### func (*VerifyProofRequest) [GetProofDocument](/verifiable-credentials.pb.go#L363)

`func (x *VerifyProofRequest) GetProofDocument() *JsonPayload`

#### func (*VerifyProofRequest) [ProtoMessage](/verifiable-credentials.pb.go#L344)

`func (*VerifyProofRequest) ProtoMessage()`

#### func (*VerifyProofRequest) [ProtoReflect](/verifiable-credentials.pb.go#L346)

`func (x *VerifyProofRequest) ProtoReflect() protoreflect.Message`

#### func (*VerifyProofRequest) [Reset](/verifiable-credentials.pb.go#L331)

`func (x *VerifyProofRequest) Reset()`

#### func (*VerifyProofRequest) [String](/verifiable-credentials.pb.go#L340)

`func (x *VerifyProofRequest) String() string`

### type [VerifyProofResponse](/verifiable-credentials.pb.go#L370)

`type VerifyProofResponse struct { ... }`

#### func (*VerifyProofResponse) [Descriptor](/verifiable-credentials.pb.go#L406)

`func (*VerifyProofResponse) Descriptor() ([]byte, []int)`

Deprecated: Use VerifyProofResponse.ProtoReflect.Descriptor instead.

#### func (*VerifyProofResponse) [GetValid](/verifiable-credentials.pb.go#L410)

`func (x *VerifyProofResponse) GetValid() bool`

#### func (*VerifyProofResponse) [ProtoMessage](/verifiable-credentials.pb.go#L391)

`func (*VerifyProofResponse) ProtoMessage()`

#### func (*VerifyProofResponse) [ProtoReflect](/verifiable-credentials.pb.go#L393)

`func (x *VerifyProofResponse) ProtoReflect() protoreflect.Message`

#### func (*VerifyProofResponse) [Reset](/verifiable-credentials.pb.go#L378)

`func (x *VerifyProofResponse) Reset()`

#### func (*VerifyProofResponse) [String](/verifiable-credentials.pb.go#L387)

`func (x *VerifyProofResponse) String() string`

---
Readme created from Go doc with [goreadme](https://github.com/posener/goreadme)
