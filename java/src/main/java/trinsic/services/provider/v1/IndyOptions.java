// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: services/provider/v1/provider.proto

package trinsic.services.provider.v1;

/**
 *
 *
 * <pre>
 * Options for creation of DID on the SOV network
 * </pre>
 *
 * Protobuf type {@code services.provider.v1.IndyOptions}
 */
public final class IndyOptions extends com.google.protobuf.GeneratedMessageV3
    implements
    // @@protoc_insertion_point(message_implements:services.provider.v1.IndyOptions)
    IndyOptionsOrBuilder {
  private static final long serialVersionUID = 0L;
  // Use IndyOptions.newBuilder() to construct.
  private IndyOptions(com.google.protobuf.GeneratedMessageV3.Builder<?> builder) {
    super(builder);
  }

  private IndyOptions() {
    network_ = 0;
  }

  @java.lang.Override
  @SuppressWarnings({"unused"})
  protected java.lang.Object newInstance(UnusedPrivateParameter unused) {
    return new IndyOptions();
  }

  @java.lang.Override
  public final com.google.protobuf.UnknownFieldSet getUnknownFields() {
    return this.unknownFields;
  }

  public static final com.google.protobuf.Descriptors.Descriptor getDescriptor() {
    return trinsic.services.provider.v1.ProviderOuterClass
        .internal_static_services_provider_v1_IndyOptions_descriptor;
  }

  @java.lang.Override
  protected com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
      internalGetFieldAccessorTable() {
    return trinsic.services.provider.v1.ProviderOuterClass
        .internal_static_services_provider_v1_IndyOptions_fieldAccessorTable
        .ensureFieldAccessorsInitialized(
            trinsic.services.provider.v1.IndyOptions.class,
            trinsic.services.provider.v1.IndyOptions.Builder.class);
  }

  /** Protobuf enum {@code services.provider.v1.IndyOptions.IndyNetwork} */
  public enum IndyNetwork implements com.google.protobuf.ProtocolMessageEnum {
    /** <code>Danube = 0;</code> */
    Danube(0),
    /** <code>SovrinBuilder = 1;</code> */
    SovrinBuilder(1),
    /** <code>SovrinStaging = 2;</code> */
    SovrinStaging(2),
    /** <code>Sovrin = 3;</code> */
    Sovrin(3),
    /** <code>IdUnionTest = 4;</code> */
    IdUnionTest(4),
    /** <code>IdUnion = 5;</code> */
    IdUnion(5),
    /** <code>IndicioTest = 6;</code> */
    IndicioTest(6),
    /** <code>IndicioDemo = 7;</code> */
    IndicioDemo(7),
    /** <code>Indicio = 8;</code> */
    Indicio(8),
    UNRECOGNIZED(-1),
    ;

    /** <code>Danube = 0;</code> */
    public static final int Danube_VALUE = 0;
    /** <code>SovrinBuilder = 1;</code> */
    public static final int SovrinBuilder_VALUE = 1;
    /** <code>SovrinStaging = 2;</code> */
    public static final int SovrinStaging_VALUE = 2;
    /** <code>Sovrin = 3;</code> */
    public static final int Sovrin_VALUE = 3;
    /** <code>IdUnionTest = 4;</code> */
    public static final int IdUnionTest_VALUE = 4;
    /** <code>IdUnion = 5;</code> */
    public static final int IdUnion_VALUE = 5;
    /** <code>IndicioTest = 6;</code> */
    public static final int IndicioTest_VALUE = 6;
    /** <code>IndicioDemo = 7;</code> */
    public static final int IndicioDemo_VALUE = 7;
    /** <code>Indicio = 8;</code> */
    public static final int Indicio_VALUE = 8;

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
    public static IndyNetwork valueOf(int value) {
      return forNumber(value);
    }

    /**
     * @param value The numeric wire value of the corresponding enum entry.
     * @return The enum associated with the given numeric wire value.
     */
    public static IndyNetwork forNumber(int value) {
      switch (value) {
        case 0:
          return Danube;
        case 1:
          return SovrinBuilder;
        case 2:
          return SovrinStaging;
        case 3:
          return Sovrin;
        case 4:
          return IdUnionTest;
        case 5:
          return IdUnion;
        case 6:
          return IndicioTest;
        case 7:
          return IndicioDemo;
        case 8:
          return Indicio;
        default:
          return null;
      }
    }

    public static com.google.protobuf.Internal.EnumLiteMap<IndyNetwork> internalGetValueMap() {
      return internalValueMap;
    }

    private static final com.google.protobuf.Internal.EnumLiteMap<IndyNetwork> internalValueMap =
        new com.google.protobuf.Internal.EnumLiteMap<IndyNetwork>() {
          public IndyNetwork findValueByNumber(int number) {
            return IndyNetwork.forNumber(number);
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
      return trinsic.services.provider.v1.IndyOptions.getDescriptor().getEnumTypes().get(0);
    }

    private static final IndyNetwork[] VALUES = values();

    public static IndyNetwork valueOf(com.google.protobuf.Descriptors.EnumValueDescriptor desc) {
      if (desc.getType() != getDescriptor()) {
        throw new java.lang.IllegalArgumentException("EnumValueDescriptor is not for this type.");
      }
      if (desc.getIndex() == -1) {
        return UNRECOGNIZED;
      }
      return VALUES[desc.getIndex()];
    }

    private final int value;

    private IndyNetwork(int value) {
      this.value = value;
    }

    // @@protoc_insertion_point(enum_scope:services.provider.v1.IndyOptions.IndyNetwork)
  }

  public static final int NETWORK_FIELD_NUMBER = 1;
  private int network_;
  /**
   *
   *
   * <pre>
   * SOV network on which DID should be published
   * </pre>
   *
   * <code>.services.provider.v1.IndyOptions.IndyNetwork network = 1;</code>
   *
   * @return The enum numeric value on the wire for network.
   */
  @java.lang.Override
  public int getNetworkValue() {
    return network_;
  }
  /**
   *
   *
   * <pre>
   * SOV network on which DID should be published
   * </pre>
   *
   * <code>.services.provider.v1.IndyOptions.IndyNetwork network = 1;</code>
   *
   * @return The network.
   */
  @java.lang.Override
  public trinsic.services.provider.v1.IndyOptions.IndyNetwork getNetwork() {
    @SuppressWarnings("deprecation")
    trinsic.services.provider.v1.IndyOptions.IndyNetwork result =
        trinsic.services.provider.v1.IndyOptions.IndyNetwork.valueOf(network_);
    return result == null
        ? trinsic.services.provider.v1.IndyOptions.IndyNetwork.UNRECOGNIZED
        : result;
  }

  private byte memoizedIsInitialized = -1;

  @java.lang.Override
  public final boolean isInitialized() {
    byte isInitialized = memoizedIsInitialized;
    if (isInitialized == 1) return true;
    if (isInitialized == 0) return false;

    memoizedIsInitialized = 1;
    return true;
  }

  @java.lang.Override
  public void writeTo(com.google.protobuf.CodedOutputStream output) throws java.io.IOException {
    if (network_ != trinsic.services.provider.v1.IndyOptions.IndyNetwork.Danube.getNumber()) {
      output.writeEnum(1, network_);
    }
    getUnknownFields().writeTo(output);
  }

  @java.lang.Override
  public int getSerializedSize() {
    int size = memoizedSize;
    if (size != -1) return size;

    size = 0;
    if (network_ != trinsic.services.provider.v1.IndyOptions.IndyNetwork.Danube.getNumber()) {
      size += com.google.protobuf.CodedOutputStream.computeEnumSize(1, network_);
    }
    size += getUnknownFields().getSerializedSize();
    memoizedSize = size;
    return size;
  }

  @java.lang.Override
  public boolean equals(final java.lang.Object obj) {
    if (obj == this) {
      return true;
    }
    if (!(obj instanceof trinsic.services.provider.v1.IndyOptions)) {
      return super.equals(obj);
    }
    trinsic.services.provider.v1.IndyOptions other = (trinsic.services.provider.v1.IndyOptions) obj;

    if (network_ != other.network_) return false;
    if (!getUnknownFields().equals(other.getUnknownFields())) return false;
    return true;
  }

  @java.lang.Override
  public int hashCode() {
    if (memoizedHashCode != 0) {
      return memoizedHashCode;
    }
    int hash = 41;
    hash = (19 * hash) + getDescriptor().hashCode();
    hash = (37 * hash) + NETWORK_FIELD_NUMBER;
    hash = (53 * hash) + network_;
    hash = (29 * hash) + getUnknownFields().hashCode();
    memoizedHashCode = hash;
    return hash;
  }

  public static trinsic.services.provider.v1.IndyOptions parseFrom(java.nio.ByteBuffer data)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data);
  }

  public static trinsic.services.provider.v1.IndyOptions parseFrom(
      java.nio.ByteBuffer data, com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data, extensionRegistry);
  }

  public static trinsic.services.provider.v1.IndyOptions parseFrom(
      com.google.protobuf.ByteString data)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data);
  }

  public static trinsic.services.provider.v1.IndyOptions parseFrom(
      com.google.protobuf.ByteString data,
      com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data, extensionRegistry);
  }

  public static trinsic.services.provider.v1.IndyOptions parseFrom(byte[] data)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data);
  }

  public static trinsic.services.provider.v1.IndyOptions parseFrom(
      byte[] data, com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data, extensionRegistry);
  }

  public static trinsic.services.provider.v1.IndyOptions parseFrom(java.io.InputStream input)
      throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3.parseWithIOException(PARSER, input);
  }

  public static trinsic.services.provider.v1.IndyOptions parseFrom(
      java.io.InputStream input, com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3.parseWithIOException(
        PARSER, input, extensionRegistry);
  }

  public static trinsic.services.provider.v1.IndyOptions parseDelimitedFrom(
      java.io.InputStream input) throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
  }

  public static trinsic.services.provider.v1.IndyOptions parseDelimitedFrom(
      java.io.InputStream input, com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3.parseDelimitedWithIOException(
        PARSER, input, extensionRegistry);
  }

  public static trinsic.services.provider.v1.IndyOptions parseFrom(
      com.google.protobuf.CodedInputStream input) throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3.parseWithIOException(PARSER, input);
  }

  public static trinsic.services.provider.v1.IndyOptions parseFrom(
      com.google.protobuf.CodedInputStream input,
      com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3.parseWithIOException(
        PARSER, input, extensionRegistry);
  }

  @java.lang.Override
  public Builder newBuilderForType() {
    return newBuilder();
  }

  public static Builder newBuilder() {
    return DEFAULT_INSTANCE.toBuilder();
  }

  public static Builder newBuilder(trinsic.services.provider.v1.IndyOptions prototype) {
    return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
  }

  @java.lang.Override
  public Builder toBuilder() {
    return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
  }

  @java.lang.Override
  protected Builder newBuilderForType(com.google.protobuf.GeneratedMessageV3.BuilderParent parent) {
    Builder builder = new Builder(parent);
    return builder;
  }
  /**
   *
   *
   * <pre>
   * Options for creation of DID on the SOV network
   * </pre>
   *
   * Protobuf type {@code services.provider.v1.IndyOptions}
   */
  public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder>
      implements
      // @@protoc_insertion_point(builder_implements:services.provider.v1.IndyOptions)
      trinsic.services.provider.v1.IndyOptionsOrBuilder {
    public static final com.google.protobuf.Descriptors.Descriptor getDescriptor() {
      return trinsic.services.provider.v1.ProviderOuterClass
          .internal_static_services_provider_v1_IndyOptions_descriptor;
    }

    @java.lang.Override
    protected com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
        internalGetFieldAccessorTable() {
      return trinsic.services.provider.v1.ProviderOuterClass
          .internal_static_services_provider_v1_IndyOptions_fieldAccessorTable
          .ensureFieldAccessorsInitialized(
              trinsic.services.provider.v1.IndyOptions.class,
              trinsic.services.provider.v1.IndyOptions.Builder.class);
    }

    // Construct using trinsic.services.provider.v1.IndyOptions.newBuilder()
    private Builder() {}

    private Builder(com.google.protobuf.GeneratedMessageV3.BuilderParent parent) {
      super(parent);
    }

    @java.lang.Override
    public Builder clear() {
      super.clear();
      network_ = 0;

      return this;
    }

    @java.lang.Override
    public com.google.protobuf.Descriptors.Descriptor getDescriptorForType() {
      return trinsic.services.provider.v1.ProviderOuterClass
          .internal_static_services_provider_v1_IndyOptions_descriptor;
    }

    @java.lang.Override
    public trinsic.services.provider.v1.IndyOptions getDefaultInstanceForType() {
      return trinsic.services.provider.v1.IndyOptions.getDefaultInstance();
    }

    @java.lang.Override
    public trinsic.services.provider.v1.IndyOptions build() {
      trinsic.services.provider.v1.IndyOptions result = buildPartial();
      if (!result.isInitialized()) {
        throw newUninitializedMessageException(result);
      }
      return result;
    }

    @java.lang.Override
    public trinsic.services.provider.v1.IndyOptions buildPartial() {
      trinsic.services.provider.v1.IndyOptions result =
          new trinsic.services.provider.v1.IndyOptions(this);
      result.network_ = network_;
      onBuilt();
      return result;
    }

    @java.lang.Override
    public Builder clone() {
      return super.clone();
    }

    @java.lang.Override
    public Builder setField(
        com.google.protobuf.Descriptors.FieldDescriptor field, java.lang.Object value) {
      return super.setField(field, value);
    }

    @java.lang.Override
    public Builder clearField(com.google.protobuf.Descriptors.FieldDescriptor field) {
      return super.clearField(field);
    }

    @java.lang.Override
    public Builder clearOneof(com.google.protobuf.Descriptors.OneofDescriptor oneof) {
      return super.clearOneof(oneof);
    }

    @java.lang.Override
    public Builder setRepeatedField(
        com.google.protobuf.Descriptors.FieldDescriptor field, int index, java.lang.Object value) {
      return super.setRepeatedField(field, index, value);
    }

    @java.lang.Override
    public Builder addRepeatedField(
        com.google.protobuf.Descriptors.FieldDescriptor field, java.lang.Object value) {
      return super.addRepeatedField(field, value);
    }

    @java.lang.Override
    public Builder mergeFrom(com.google.protobuf.Message other) {
      if (other instanceof trinsic.services.provider.v1.IndyOptions) {
        return mergeFrom((trinsic.services.provider.v1.IndyOptions) other);
      } else {
        super.mergeFrom(other);
        return this;
      }
    }

    public Builder mergeFrom(trinsic.services.provider.v1.IndyOptions other) {
      if (other == trinsic.services.provider.v1.IndyOptions.getDefaultInstance()) return this;
      if (other.network_ != 0) {
        setNetworkValue(other.getNetworkValue());
      }
      this.mergeUnknownFields(other.getUnknownFields());
      onChanged();
      return this;
    }

    @java.lang.Override
    public final boolean isInitialized() {
      return true;
    }

    @java.lang.Override
    public Builder mergeFrom(
        com.google.protobuf.CodedInputStream input,
        com.google.protobuf.ExtensionRegistryLite extensionRegistry)
        throws java.io.IOException {
      if (extensionRegistry == null) {
        throw new java.lang.NullPointerException();
      }
      try {
        boolean done = false;
        while (!done) {
          int tag = input.readTag();
          switch (tag) {
            case 0:
              done = true;
              break;
            case 8:
              {
                network_ = input.readEnum();

                break;
              } // case 8
            default:
              {
                if (!super.parseUnknownField(input, extensionRegistry, tag)) {
                  done = true; // was an endgroup tag
                }
                break;
              } // default:
          } // switch (tag)
        } // while (!done)
      } catch (com.google.protobuf.InvalidProtocolBufferException e) {
        throw e.unwrapIOException();
      } finally {
        onChanged();
      } // finally
      return this;
    }

    private int network_ = 0;
    /**
     *
     *
     * <pre>
     * SOV network on which DID should be published
     * </pre>
     *
     * <code>.services.provider.v1.IndyOptions.IndyNetwork network = 1;</code>
     *
     * @return The enum numeric value on the wire for network.
     */
    @java.lang.Override
    public int getNetworkValue() {
      return network_;
    }
    /**
     *
     *
     * <pre>
     * SOV network on which DID should be published
     * </pre>
     *
     * <code>.services.provider.v1.IndyOptions.IndyNetwork network = 1;</code>
     *
     * @param value The enum numeric value on the wire for network to set.
     * @return This builder for chaining.
     */
    public Builder setNetworkValue(int value) {

      network_ = value;
      onChanged();
      return this;
    }
    /**
     *
     *
     * <pre>
     * SOV network on which DID should be published
     * </pre>
     *
     * <code>.services.provider.v1.IndyOptions.IndyNetwork network = 1;</code>
     *
     * @return The network.
     */
    @java.lang.Override
    public trinsic.services.provider.v1.IndyOptions.IndyNetwork getNetwork() {
      @SuppressWarnings("deprecation")
      trinsic.services.provider.v1.IndyOptions.IndyNetwork result =
          trinsic.services.provider.v1.IndyOptions.IndyNetwork.valueOf(network_);
      return result == null
          ? trinsic.services.provider.v1.IndyOptions.IndyNetwork.UNRECOGNIZED
          : result;
    }
    /**
     *
     *
     * <pre>
     * SOV network on which DID should be published
     * </pre>
     *
     * <code>.services.provider.v1.IndyOptions.IndyNetwork network = 1;</code>
     *
     * @param value The network to set.
     * @return This builder for chaining.
     */
    public Builder setNetwork(trinsic.services.provider.v1.IndyOptions.IndyNetwork value) {
      if (value == null) {
        throw new NullPointerException();
      }

      network_ = value.getNumber();
      onChanged();
      return this;
    }
    /**
     *
     *
     * <pre>
     * SOV network on which DID should be published
     * </pre>
     *
     * <code>.services.provider.v1.IndyOptions.IndyNetwork network = 1;</code>
     *
     * @return This builder for chaining.
     */
    public Builder clearNetwork() {

      network_ = 0;
      onChanged();
      return this;
    }

    @java.lang.Override
    public final Builder setUnknownFields(final com.google.protobuf.UnknownFieldSet unknownFields) {
      return super.setUnknownFields(unknownFields);
    }

    @java.lang.Override
    public final Builder mergeUnknownFields(
        final com.google.protobuf.UnknownFieldSet unknownFields) {
      return super.mergeUnknownFields(unknownFields);
    }

    // @@protoc_insertion_point(builder_scope:services.provider.v1.IndyOptions)
  }

  // @@protoc_insertion_point(class_scope:services.provider.v1.IndyOptions)
  private static final trinsic.services.provider.v1.IndyOptions DEFAULT_INSTANCE;

  static {
    DEFAULT_INSTANCE = new trinsic.services.provider.v1.IndyOptions();
  }

  public static trinsic.services.provider.v1.IndyOptions getDefaultInstance() {
    return DEFAULT_INSTANCE;
  }

  private static final com.google.protobuf.Parser<IndyOptions> PARSER =
      new com.google.protobuf.AbstractParser<IndyOptions>() {
        @java.lang.Override
        public IndyOptions parsePartialFrom(
            com.google.protobuf.CodedInputStream input,
            com.google.protobuf.ExtensionRegistryLite extensionRegistry)
            throws com.google.protobuf.InvalidProtocolBufferException {
          Builder builder = newBuilder();
          try {
            builder.mergeFrom(input, extensionRegistry);
          } catch (com.google.protobuf.InvalidProtocolBufferException e) {
            throw e.setUnfinishedMessage(builder.buildPartial());
          } catch (com.google.protobuf.UninitializedMessageException e) {
            throw e.asInvalidProtocolBufferException().setUnfinishedMessage(builder.buildPartial());
          } catch (java.io.IOException e) {
            throw new com.google.protobuf.InvalidProtocolBufferException(e)
                .setUnfinishedMessage(builder.buildPartial());
          }
          return builder.buildPartial();
        }
      };

  public static com.google.protobuf.Parser<IndyOptions> parser() {
    return PARSER;
  }

  @java.lang.Override
  public com.google.protobuf.Parser<IndyOptions> getParserForType() {
    return PARSER;
  }

  @java.lang.Override
  public trinsic.services.provider.v1.IndyOptions getDefaultInstanceForType() {
    return DEFAULT_INSTANCE;
  }
}
