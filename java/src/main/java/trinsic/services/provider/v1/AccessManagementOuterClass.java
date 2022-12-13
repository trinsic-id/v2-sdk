// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: services/provider/v1/access-management.proto

package trinsic.services.provider.v1;

public final class AccessManagementOuterClass {
  private AccessManagementOuterClass() {}

  public static void registerAllExtensions(com.google.protobuf.ExtensionRegistryLite registry) {}

  public static void registerAllExtensions(com.google.protobuf.ExtensionRegistry registry) {
    registerAllExtensions((com.google.protobuf.ExtensionRegistryLite) registry);
  }

  static final com.google.protobuf.Descriptors.Descriptor
      internal_static_services_provider_v1_AddRoleAssignmentRequest_descriptor;
  static final com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
      internal_static_services_provider_v1_AddRoleAssignmentRequest_fieldAccessorTable;
  static final com.google.protobuf.Descriptors.Descriptor
      internal_static_services_provider_v1_AddRoleAssignmentResponse_descriptor;
  static final com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
      internal_static_services_provider_v1_AddRoleAssignmentResponse_fieldAccessorTable;
  static final com.google.protobuf.Descriptors.Descriptor
      internal_static_services_provider_v1_RemoveRoleAssignmentRequest_descriptor;
  static final com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
      internal_static_services_provider_v1_RemoveRoleAssignmentRequest_fieldAccessorTable;
  static final com.google.protobuf.Descriptors.Descriptor
      internal_static_services_provider_v1_RemoveRoleAssignmentResponse_descriptor;
  static final com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
      internal_static_services_provider_v1_RemoveRoleAssignmentResponse_fieldAccessorTable;
  static final com.google.protobuf.Descriptors.Descriptor
      internal_static_services_provider_v1_ListRoleAssignmentsRequest_descriptor;
  static final com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
      internal_static_services_provider_v1_ListRoleAssignmentsRequest_fieldAccessorTable;
  static final com.google.protobuf.Descriptors.Descriptor
      internal_static_services_provider_v1_ListRoleAssignmentsResponse_descriptor;
  static final com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
      internal_static_services_provider_v1_ListRoleAssignmentsResponse_fieldAccessorTable;
  static final com.google.protobuf.Descriptors.Descriptor
      internal_static_services_provider_v1_ListAvailableRolesRequest_descriptor;
  static final com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
      internal_static_services_provider_v1_ListAvailableRolesRequest_fieldAccessorTable;
  static final com.google.protobuf.Descriptors.Descriptor
      internal_static_services_provider_v1_ListAvailableRolesResponse_descriptor;
  static final com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
      internal_static_services_provider_v1_ListAvailableRolesResponse_fieldAccessorTable;

  public static com.google.protobuf.Descriptors.FileDescriptor getDescriptor() {
    return descriptor;
  }

  private static com.google.protobuf.Descriptors.FileDescriptor descriptor;

  static {
    java.lang.String[] descriptorData = {
      "\n,services/provider/v1/access-management"
          + ".proto\022\024services.provider.v1\032$services/o"
          + "ptions/field-options.proto\"Y\n\030AddRoleAss"
          + "ignmentRequest\022\014\n\004role\030\001 \001(\t\022\017\n\005email\030\002 "
          + "\001(\tH\000\022\023\n\twallet_id\030\003 \001(\tH\000B\t\n\007account\"\033\n"
          + "\031AddRoleAssignmentResponse\"\\\n\033RemoveRole"
          + "AssignmentRequest\022\014\n\004role\030\001 \001(\t\022\017\n\005email"
          + "\030\002 \001(\tH\000\022\023\n\twallet_id\030\003 \001(\tH\000B\t\n\007account"
          + "\"\036\n\034RemoveRoleAssignmentResponse\"M\n\032List"
          + "RoleAssignmentsRequest\022\017\n\005email\030\002 \001(\tH\000\022"
          + "\023\n\twallet_id\030\003 \001(\tH\000B\t\n\007account\",\n\033ListR"
          + "oleAssignmentsResponse\022\r\n\005roles\030\001 \003(\t\"\033\n"
          + "\031ListAvailableRolesRequest\"+\n\032ListAvaila"
          + "bleRolesResponse\022\r\n\005roles\030\001 \003(\t2\204\004\n\020Acce"
          + "ssManagement\022t\n\021AddRoleAssignment\022..serv"
          + "ices.provider.v1.AddRoleAssignmentReques"
          + "t\032/.services.provider.v1.AddRoleAssignme"
          + "ntResponse\022}\n\024RemoveRoleAssignment\0221.ser"
          + "vices.provider.v1.RemoveRoleAssignmentRe"
          + "quest\0322.services.provider.v1.RemoveRoleA"
          + "ssignmentResponse\022z\n\023ListRoleAssignments"
          + "\0220.services.provider.v1.ListRoleAssignme"
          + "ntsRequest\0321.services.provider.v1.ListRo"
          + "leAssignmentsResponse\022\177\n\022ListAvailableRo"
          + "les\022/.services.provider.v1.ListAvailable"
          + "RolesRequest\0320.services.provider.v1.List"
          + "AvailableRolesResponse\"\006\212\246\035\002\020\001B^\n\034trinsi"
          + "c.services.provider.v1P\001Z\035services/provi"
          + "der/v1/provider\252\002\034Trinsic.Services.Provi"
          + "der.V1b\006proto3"
    };
    descriptor =
        com.google.protobuf.Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(
            descriptorData,
            new com.google.protobuf.Descriptors.FileDescriptor[] {
              trinsic.services.protobuf.options.FieldOptions.getDescriptor(),
            });
    internal_static_services_provider_v1_AddRoleAssignmentRequest_descriptor =
        getDescriptor().getMessageTypes().get(0);
    internal_static_services_provider_v1_AddRoleAssignmentRequest_fieldAccessorTable =
        new com.google.protobuf.GeneratedMessageV3.FieldAccessorTable(
            internal_static_services_provider_v1_AddRoleAssignmentRequest_descriptor,
            new java.lang.String[] {
              "Role", "Email", "WalletId", "Account",
            });
    internal_static_services_provider_v1_AddRoleAssignmentResponse_descriptor =
        getDescriptor().getMessageTypes().get(1);
    internal_static_services_provider_v1_AddRoleAssignmentResponse_fieldAccessorTable =
        new com.google.protobuf.GeneratedMessageV3.FieldAccessorTable(
            internal_static_services_provider_v1_AddRoleAssignmentResponse_descriptor,
            new java.lang.String[] {});
    internal_static_services_provider_v1_RemoveRoleAssignmentRequest_descriptor =
        getDescriptor().getMessageTypes().get(2);
    internal_static_services_provider_v1_RemoveRoleAssignmentRequest_fieldAccessorTable =
        new com.google.protobuf.GeneratedMessageV3.FieldAccessorTable(
            internal_static_services_provider_v1_RemoveRoleAssignmentRequest_descriptor,
            new java.lang.String[] {
              "Role", "Email", "WalletId", "Account",
            });
    internal_static_services_provider_v1_RemoveRoleAssignmentResponse_descriptor =
        getDescriptor().getMessageTypes().get(3);
    internal_static_services_provider_v1_RemoveRoleAssignmentResponse_fieldAccessorTable =
        new com.google.protobuf.GeneratedMessageV3.FieldAccessorTable(
            internal_static_services_provider_v1_RemoveRoleAssignmentResponse_descriptor,
            new java.lang.String[] {});
    internal_static_services_provider_v1_ListRoleAssignmentsRequest_descriptor =
        getDescriptor().getMessageTypes().get(4);
    internal_static_services_provider_v1_ListRoleAssignmentsRequest_fieldAccessorTable =
        new com.google.protobuf.GeneratedMessageV3.FieldAccessorTable(
            internal_static_services_provider_v1_ListRoleAssignmentsRequest_descriptor,
            new java.lang.String[] {
              "Email", "WalletId", "Account",
            });
    internal_static_services_provider_v1_ListRoleAssignmentsResponse_descriptor =
        getDescriptor().getMessageTypes().get(5);
    internal_static_services_provider_v1_ListRoleAssignmentsResponse_fieldAccessorTable =
        new com.google.protobuf.GeneratedMessageV3.FieldAccessorTable(
            internal_static_services_provider_v1_ListRoleAssignmentsResponse_descriptor,
            new java.lang.String[] {
              "Roles",
            });
    internal_static_services_provider_v1_ListAvailableRolesRequest_descriptor =
        getDescriptor().getMessageTypes().get(6);
    internal_static_services_provider_v1_ListAvailableRolesRequest_fieldAccessorTable =
        new com.google.protobuf.GeneratedMessageV3.FieldAccessorTable(
            internal_static_services_provider_v1_ListAvailableRolesRequest_descriptor,
            new java.lang.String[] {});
    internal_static_services_provider_v1_ListAvailableRolesResponse_descriptor =
        getDescriptor().getMessageTypes().get(7);
    internal_static_services_provider_v1_ListAvailableRolesResponse_fieldAccessorTable =
        new com.google.protobuf.GeneratedMessageV3.FieldAccessorTable(
            internal_static_services_provider_v1_ListAvailableRolesResponse_descriptor,
            new java.lang.String[] {
              "Roles",
            });
    com.google.protobuf.ExtensionRegistry registry =
        com.google.protobuf.ExtensionRegistry.newInstance();
    registry.add(trinsic.services.protobuf.options.FieldOptions.sdkTemplateOption);
    com.google.protobuf.Descriptors.FileDescriptor.internalUpdateFileDescriptor(
        descriptor, registry);
    trinsic.services.protobuf.options.FieldOptions.getDescriptor();
  }

  // @@protoc_insertion_point(outer_class_scope)
}