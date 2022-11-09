// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: services/common/v1/common.proto

package trinsic.services.common.v1;

/**
 *
 *
 * <pre>
 * Enum of all supported DID Methods
 * </pre>
 *
 * Protobuf enum {@code services.common.v1.SupportedDidMethod}
 */
public enum SupportedDidMethod implements com.google.protobuf.ProtocolMessageEnum {
  /**
   *
   *
   * <pre>
   * The did:key method -- all wallets use this by default
   * </pre>
   *
   * <code>KEY = 0;</code>
   */
  KEY(0),
  /**
   *
   *
   * <pre>
   * The did:ion method
   * </pre>
   *
   * <code>ION = 1;</code>
   */
  ION(1),
  UNRECOGNIZED(-1),
  ;

  /**
   *
   *
   * <pre>
   * The did:key method -- all wallets use this by default
   * </pre>
   *
   * <code>KEY = 0;</code>
   */
  public static final int KEY_VALUE = 0;
  /**
   *
   *
   * <pre>
   * The did:ion method
   * </pre>
   *
   * <code>ION = 1;</code>
   */
  public static final int ION_VALUE = 1;

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
  public static SupportedDidMethod valueOf(int value) {
    return forNumber(value);
  }

  /**
   * @param value The numeric wire value of the corresponding enum entry.
   * @return The enum associated with the given numeric wire value.
   */
  public static SupportedDidMethod forNumber(int value) {
    switch (value) {
      case 0:
        return KEY;
      case 1:
        return ION;
      default:
        return null;
    }
  }

  public static com.google.protobuf.Internal.EnumLiteMap<SupportedDidMethod> internalGetValueMap() {
    return internalValueMap;
  }

  private static final com.google.protobuf.Internal.EnumLiteMap<SupportedDidMethod>
      internalValueMap =
          new com.google.protobuf.Internal.EnumLiteMap<SupportedDidMethod>() {
            public SupportedDidMethod findValueByNumber(int number) {
              return SupportedDidMethod.forNumber(number);
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
    return trinsic.services.common.v1.Common.getDescriptor().getEnumTypes().get(1);
  }

  private static final SupportedDidMethod[] VALUES = values();

  public static SupportedDidMethod valueOf(
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

  private SupportedDidMethod(int value) {
    this.value = value;
  }

  // @@protoc_insertion_point(enum_scope:services.common.v1.SupportedDidMethod)
}
