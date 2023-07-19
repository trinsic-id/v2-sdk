// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: services/verifiable-credentials/templates/v1/templates.proto

package trinsic.services.verifiablecredentials.templates.v1;

/** Protobuf enum {@code services.verifiablecredentials.templates.v1.VerificationShareType} */
public enum VerificationShareType implements com.google.protobuf.ProtocolMessageEnum {
  /** <code>OPTIONAL = 0;</code> */
  OPTIONAL(0),
  /** <code>REQUIRED = 1;</code> */
  REQUIRED(1),
  UNRECOGNIZED(-1),
  ;

  /** <code>OPTIONAL = 0;</code> */
  public static final int OPTIONAL_VALUE = 0;
  /** <code>REQUIRED = 1;</code> */
  public static final int REQUIRED_VALUE = 1;

  public final int getNumber() {
    if (this == UNRECOGNIZED) {
      throw new java.lang.IllegalArgumentException(
          "Can't get the number of an unknown enum value.");
    }
    return value;
  }

  /**
   * @param value The numeric wire value of the corresponding enum entry.
   * @return The enum associated with the given numeric wire value.
   * @deprecated Use {@link #forNumber(int)} instead.
   */
  @java.lang.Deprecated
  public static VerificationShareType valueOf(int value) {
    return forNumber(value);
  }

  /**
   * @param value The numeric wire value of the corresponding enum entry.
   * @return The enum associated with the given numeric wire value.
   */
  public static VerificationShareType forNumber(int value) {
    switch (value) {
      case 0:
        return OPTIONAL;
      case 1:
        return REQUIRED;
      default:
        return null;
    }
  }

  public static com.google.protobuf.Internal.EnumLiteMap<VerificationShareType>
      internalGetValueMap() {
    return internalValueMap;
  }

  private static final com.google.protobuf.Internal.EnumLiteMap<VerificationShareType>
      internalValueMap =
          new com.google.protobuf.Internal.EnumLiteMap<VerificationShareType>() {
            public VerificationShareType findValueByNumber(int number) {
              return VerificationShareType.forNumber(number);
            }
          };

  public final com.google.protobuf.Descriptors.EnumValueDescriptor getValueDescriptor() {
    if (this == UNRECOGNIZED) {
      throw new java.lang.IllegalStateException(
          "Can't get the descriptor of an unrecognized enum value.");
    }
    return getDescriptor().getValues().get(ordinal());
  }

  public final com.google.protobuf.Descriptors.EnumDescriptor getDescriptorForType() {
    return getDescriptor();
  }

  public static final com.google.protobuf.Descriptors.EnumDescriptor getDescriptor() {
    return trinsic.services.verifiablecredentials.templates.v1.Templates.getDescriptor()
        .getEnumTypes()
        .get(2);
  }

  private static final VerificationShareType[] VALUES = values();

  public static VerificationShareType valueOf(
      com.google.protobuf.Descriptors.EnumValueDescriptor desc) {
    if (desc.getType() != getDescriptor()) {
      throw new java.lang.IllegalArgumentException("EnumValueDescriptor is not for this type.");
    }
    if (desc.getIndex() == -1) {
      return UNRECOGNIZED;
    }
    return VALUES[desc.getIndex()];
  }

  private final int value;

  private VerificationShareType(int value) {
    this.value = value;
  }

  // @@protoc_insertion_point(enum_scope:services.verifiablecredentials.templates.v1.VerificationShareType)
}
