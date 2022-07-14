// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: services/event/v1/event.proto

package trinsic.services.event.v1;

/**
 * <pre>
 * All event types
 * </pre>
 *
 * Protobuf enum {@code trinsic.services.event.EventType}
 */
public enum EventType
    implements com.google.protobuf.ProtocolMessageEnum {
  /**
   * <code>PING = 0;</code>
   */
  PING(0),
  /**
   * <code>LOG = 1;</code>
   */
  LOG(1),
  /**
   * <code>EGF_CREATED = 5;</code>
   */
  EGF_CREATED(5),
  /**
   * <code>EGF_MEMBER_REGISTERED = 6;</code>
   */
  EGF_MEMBER_REGISTERED(6),
  /**
   * <code>EGF_MEMBER_UNREGISTERED = 7;</code>
   */
  EGF_MEMBER_UNREGISTERED(7),
  /**
   * <code>TEMPLATE_CREATED = 10;</code>
   */
  TEMPLATE_CREATED(10),
  /**
   * <code>TEMPLATE_DELETED = 11;</code>
   */
  TEMPLATE_DELETED(11),
  /**
   * <code>WALLET_CREATED = 15;</code>
   */
  WALLET_CREATED(15),
  /**
   * <code>ITEM_RECEIVED = 16;</code>
   */
  ITEM_RECEIVED(16),
  UNRECOGNIZED(-1),
  ;

  /**
   * <code>PING = 0;</code>
   */
  public static final int PING_VALUE = 0;
  /**
   * <code>LOG = 1;</code>
   */
  public static final int LOG_VALUE = 1;
  /**
   * <code>EGF_CREATED = 5;</code>
   */
  public static final int EGF_CREATED_VALUE = 5;
  /**
   * <code>EGF_MEMBER_REGISTERED = 6;</code>
   */
  public static final int EGF_MEMBER_REGISTERED_VALUE = 6;
  /**
   * <code>EGF_MEMBER_UNREGISTERED = 7;</code>
   */
  public static final int EGF_MEMBER_UNREGISTERED_VALUE = 7;
  /**
   * <code>TEMPLATE_CREATED = 10;</code>
   */
  public static final int TEMPLATE_CREATED_VALUE = 10;
  /**
   * <code>TEMPLATE_DELETED = 11;</code>
   */
  public static final int TEMPLATE_DELETED_VALUE = 11;
  /**
   * <code>WALLET_CREATED = 15;</code>
   */
  public static final int WALLET_CREATED_VALUE = 15;
  /**
   * <code>ITEM_RECEIVED = 16;</code>
   */
  public static final int ITEM_RECEIVED_VALUE = 16;


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
  public static EventType valueOf(int value) {
    return forNumber(value);
  }

  /**
   * @param value The numeric wire value of the corresponding enum entry.
   * @return The enum associated with the given numeric wire value.
   */
  public static EventType forNumber(int value) {
    switch (value) {
      case 0: return PING;
      case 1: return LOG;
      case 5: return EGF_CREATED;
      case 6: return EGF_MEMBER_REGISTERED;
      case 7: return EGF_MEMBER_UNREGISTERED;
      case 10: return TEMPLATE_CREATED;
      case 11: return TEMPLATE_DELETED;
      case 15: return WALLET_CREATED;
      case 16: return ITEM_RECEIVED;
      default: return null;
    }
  }

  public static com.google.protobuf.Internal.EnumLiteMap<EventType>
      internalGetValueMap() {
    return internalValueMap;
  }
  private static final com.google.protobuf.Internal.EnumLiteMap<
      EventType> internalValueMap =
        new com.google.protobuf.Internal.EnumLiteMap<EventType>() {
          public EventType findValueByNumber(int number) {
            return EventType.forNumber(number);
          }
        };

  public final com.google.protobuf.Descriptors.EnumValueDescriptor
      getValueDescriptor() {
    if (this == UNRECOGNIZED) {
      throw new java.lang.IllegalStateException(
          "Can't get the descriptor of an unrecognized enum value.");
    }
    return getDescriptor().getValues().get(ordinal());
  }
  public final com.google.protobuf.Descriptors.EnumDescriptor
      getDescriptorForType() {
    return getDescriptor();
  }
  public static final com.google.protobuf.Descriptors.EnumDescriptor
      getDescriptor() {
    return trinsic.services.event.v1.EventOuterClass.getDescriptor().getEnumTypes().get(0);
  }

  private static final EventType[] VALUES = values();

  public static EventType valueOf(
      com.google.protobuf.Descriptors.EnumValueDescriptor desc) {
    if (desc.getType() != getDescriptor()) {
      throw new java.lang.IllegalArgumentException(
        "EnumValueDescriptor is not for this type.");
    }
    if (desc.getIndex() == -1) {
      return UNRECOGNIZED;
    }
    return VALUES[desc.getIndex()];
  }

  private final int value;

  private EventType(int value) {
    this.value = value;
  }

  // @@protoc_insertion_point(enum_scope:trinsic.services.event.EventType)
}

