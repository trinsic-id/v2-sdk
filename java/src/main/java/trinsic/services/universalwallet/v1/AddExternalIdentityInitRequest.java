// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: services/universal-wallet/v1/universal-wallet.proto

package trinsic.services.universalwallet.v1;

/** Protobuf type {@code services.universalwallet.v1.AddExternalIdentityInitRequest} */
public final class AddExternalIdentityInitRequest extends com.google.protobuf.GeneratedMessageV3
    implements
    // @@protoc_insertion_point(message_implements:services.universalwallet.v1.AddExternalIdentityInitRequest)
    AddExternalIdentityInitRequestOrBuilder {
  private static final long serialVersionUID = 0L;
  // Use AddExternalIdentityInitRequest.newBuilder() to construct.
  private AddExternalIdentityInitRequest(
      com.google.protobuf.GeneratedMessageV3.Builder<?> builder) {
    super(builder);
  }

  private AddExternalIdentityInitRequest() {
    identity_ = "";
    provider_ = 0;
  }

  @java.lang.Override
  @SuppressWarnings({"unused"})
  protected java.lang.Object newInstance(UnusedPrivateParameter unused) {
    return new AddExternalIdentityInitRequest();
  }

  @java.lang.Override
  public final com.google.protobuf.UnknownFieldSet getUnknownFields() {
    return this.unknownFields;
  }

  public static final com.google.protobuf.Descriptors.Descriptor getDescriptor() {
    return trinsic.services.universalwallet.v1.UniversalWalletOuterClass
        .internal_static_services_universalwallet_v1_AddExternalIdentityInitRequest_descriptor;
  }

  @java.lang.Override
  protected com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
      internalGetFieldAccessorTable() {
    return trinsic.services.universalwallet.v1.UniversalWalletOuterClass
        .internal_static_services_universalwallet_v1_AddExternalIdentityInitRequest_fieldAccessorTable
        .ensureFieldAccessorsInitialized(
            trinsic.services.universalwallet.v1.AddExternalIdentityInitRequest.class,
            trinsic.services.universalwallet.v1.AddExternalIdentityInitRequest.Builder.class);
  }

  public static final int IDENTITY_FIELD_NUMBER = 1;
  private volatile java.lang.Object identity_;
  /**
   *
   *
   * <pre>
   * Identity to add to the wallet
   * </pre>
   *
   * <code>string identity = 1;</code>
   *
   * @return The identity.
   */
  @java.lang.Override
  public java.lang.String getIdentity() {
    java.lang.Object ref = identity_;
    if (ref instanceof java.lang.String) {
      return (java.lang.String) ref;
    } else {
      com.google.protobuf.ByteString bs = (com.google.protobuf.ByteString) ref;
      java.lang.String s = bs.toStringUtf8();
      identity_ = s;
      return s;
    }
  }
  /**
   *
   *
   * <pre>
   * Identity to add to the wallet
   * </pre>
   *
   * <code>string identity = 1;</code>
   *
   * @return The bytes for identity.
   */
  @java.lang.Override
  public com.google.protobuf.ByteString getIdentityBytes() {
    java.lang.Object ref = identity_;
    if (ref instanceof java.lang.String) {
      com.google.protobuf.ByteString b =
          com.google.protobuf.ByteString.copyFromUtf8((java.lang.String) ref);
      identity_ = b;
      return b;
    } else {
      return (com.google.protobuf.ByteString) ref;
    }
  }

  public static final int PROVIDER_FIELD_NUMBER = 2;
  private int provider_;
  /**
   * <code>.services.universalwallet.v1.IdentityProvider provider = 2;</code>
   *
   * @return The enum numeric value on the wire for provider.
   */
  @java.lang.Override
  public int getProviderValue() {
    return provider_;
  }
  /**
   * <code>.services.universalwallet.v1.IdentityProvider provider = 2;</code>
   *
   * @return The provider.
   */
  @java.lang.Override
  public trinsic.services.universalwallet.v1.IdentityProvider getProvider() {
    @SuppressWarnings("deprecation")
    trinsic.services.universalwallet.v1.IdentityProvider result =
        trinsic.services.universalwallet.v1.IdentityProvider.valueOf(provider_);
    return result == null
        ? trinsic.services.universalwallet.v1.IdentityProvider.UNRECOGNIZED
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
    if (!com.google.protobuf.GeneratedMessageV3.isStringEmpty(identity_)) {
      com.google.protobuf.GeneratedMessageV3.writeString(output, 1, identity_);
    }
    if (provider_ != trinsic.services.universalwallet.v1.IdentityProvider.UNKNOWN.getNumber()) {
      output.writeEnum(2, provider_);
    }
    getUnknownFields().writeTo(output);
  }

  @java.lang.Override
  public int getSerializedSize() {
    int size = memoizedSize;
    if (size != -1) return size;

    size = 0;
    if (!com.google.protobuf.GeneratedMessageV3.isStringEmpty(identity_)) {
      size += com.google.protobuf.GeneratedMessageV3.computeStringSize(1, identity_);
    }
    if (provider_ != trinsic.services.universalwallet.v1.IdentityProvider.UNKNOWN.getNumber()) {
      size += com.google.protobuf.CodedOutputStream.computeEnumSize(2, provider_);
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
    if (!(obj instanceof trinsic.services.universalwallet.v1.AddExternalIdentityInitRequest)) {
      return super.equals(obj);
    }
    trinsic.services.universalwallet.v1.AddExternalIdentityInitRequest other =
        (trinsic.services.universalwallet.v1.AddExternalIdentityInitRequest) obj;

    if (!getIdentity().equals(other.getIdentity())) return false;
    if (provider_ != other.provider_) return false;
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
    hash = (37 * hash) + IDENTITY_FIELD_NUMBER;
    hash = (53 * hash) + getIdentity().hashCode();
    hash = (37 * hash) + PROVIDER_FIELD_NUMBER;
    hash = (53 * hash) + provider_;
    hash = (29 * hash) + getUnknownFields().hashCode();
    memoizedHashCode = hash;
    return hash;
  }

  public static trinsic.services.universalwallet.v1.AddExternalIdentityInitRequest parseFrom(
      java.nio.ByteBuffer data) throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data);
  }

  public static trinsic.services.universalwallet.v1.AddExternalIdentityInitRequest parseFrom(
      java.nio.ByteBuffer data, com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data, extensionRegistry);
  }

  public static trinsic.services.universalwallet.v1.AddExternalIdentityInitRequest parseFrom(
      com.google.protobuf.ByteString data)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data);
  }

  public static trinsic.services.universalwallet.v1.AddExternalIdentityInitRequest parseFrom(
      com.google.protobuf.ByteString data,
      com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data, extensionRegistry);
  }

  public static trinsic.services.universalwallet.v1.AddExternalIdentityInitRequest parseFrom(
      byte[] data) throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data);
  }

  public static trinsic.services.universalwallet.v1.AddExternalIdentityInitRequest parseFrom(
      byte[] data, com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data, extensionRegistry);
  }

  public static trinsic.services.universalwallet.v1.AddExternalIdentityInitRequest parseFrom(
      java.io.InputStream input) throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3.parseWithIOException(PARSER, input);
  }

  public static trinsic.services.universalwallet.v1.AddExternalIdentityInitRequest parseFrom(
      java.io.InputStream input, com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3.parseWithIOException(
        PARSER, input, extensionRegistry);
  }

  public static trinsic.services.universalwallet.v1.AddExternalIdentityInitRequest
      parseDelimitedFrom(java.io.InputStream input) throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
  }

  public static trinsic.services.universalwallet.v1.AddExternalIdentityInitRequest
      parseDelimitedFrom(
          java.io.InputStream input, com.google.protobuf.ExtensionRegistryLite extensionRegistry)
          throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3.parseDelimitedWithIOException(
        PARSER, input, extensionRegistry);
  }

  public static trinsic.services.universalwallet.v1.AddExternalIdentityInitRequest parseFrom(
      com.google.protobuf.CodedInputStream input) throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3.parseWithIOException(PARSER, input);
  }

  public static trinsic.services.universalwallet.v1.AddExternalIdentityInitRequest parseFrom(
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

  public static Builder newBuilder(
      trinsic.services.universalwallet.v1.AddExternalIdentityInitRequest prototype) {
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
  /** Protobuf type {@code services.universalwallet.v1.AddExternalIdentityInitRequest} */
  public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder>
      implements
      // @@protoc_insertion_point(builder_implements:services.universalwallet.v1.AddExternalIdentityInitRequest)
      trinsic.services.universalwallet.v1.AddExternalIdentityInitRequestOrBuilder {
    public static final com.google.protobuf.Descriptors.Descriptor getDescriptor() {
      return trinsic.services.universalwallet.v1.UniversalWalletOuterClass
          .internal_static_services_universalwallet_v1_AddExternalIdentityInitRequest_descriptor;
    }

    @java.lang.Override
    protected com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
        internalGetFieldAccessorTable() {
      return trinsic.services.universalwallet.v1.UniversalWalletOuterClass
          .internal_static_services_universalwallet_v1_AddExternalIdentityInitRequest_fieldAccessorTable
          .ensureFieldAccessorsInitialized(
              trinsic.services.universalwallet.v1.AddExternalIdentityInitRequest.class,
              trinsic.services.universalwallet.v1.AddExternalIdentityInitRequest.Builder.class);
    }

    // Construct using
    // trinsic.services.universalwallet.v1.AddExternalIdentityInitRequest.newBuilder()
    private Builder() {}

    private Builder(com.google.protobuf.GeneratedMessageV3.BuilderParent parent) {
      super(parent);
    }

    @java.lang.Override
    public Builder clear() {
      super.clear();
      identity_ = "";

      provider_ = 0;

      return this;
    }

    @java.lang.Override
    public com.google.protobuf.Descriptors.Descriptor getDescriptorForType() {
      return trinsic.services.universalwallet.v1.UniversalWalletOuterClass
          .internal_static_services_universalwallet_v1_AddExternalIdentityInitRequest_descriptor;
    }

    @java.lang.Override
    public trinsic.services.universalwallet.v1.AddExternalIdentityInitRequest
        getDefaultInstanceForType() {
      return trinsic.services.universalwallet.v1.AddExternalIdentityInitRequest
          .getDefaultInstance();
    }

    @java.lang.Override
    public trinsic.services.universalwallet.v1.AddExternalIdentityInitRequest build() {
      trinsic.services.universalwallet.v1.AddExternalIdentityInitRequest result = buildPartial();
      if (!result.isInitialized()) {
        throw newUninitializedMessageException(result);
      }
      return result;
    }

    @java.lang.Override
    public trinsic.services.universalwallet.v1.AddExternalIdentityInitRequest buildPartial() {
      trinsic.services.universalwallet.v1.AddExternalIdentityInitRequest result =
          new trinsic.services.universalwallet.v1.AddExternalIdentityInitRequest(this);
      result.identity_ = identity_;
      result.provider_ = provider_;
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
      if (other instanceof trinsic.services.universalwallet.v1.AddExternalIdentityInitRequest) {
        return mergeFrom(
            (trinsic.services.universalwallet.v1.AddExternalIdentityInitRequest) other);
      } else {
        super.mergeFrom(other);
        return this;
      }
    }

    public Builder mergeFrom(
        trinsic.services.universalwallet.v1.AddExternalIdentityInitRequest other) {
      if (other
          == trinsic.services.universalwallet.v1.AddExternalIdentityInitRequest
              .getDefaultInstance()) return this;
      if (!other.getIdentity().isEmpty()) {
        identity_ = other.identity_;
        onChanged();
      }
      if (other.provider_ != 0) {
        setProviderValue(other.getProviderValue());
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
            case 10:
              {
                identity_ = input.readStringRequireUtf8();

                break;
              } // case 10
            case 16:
              {
                provider_ = input.readEnum();

                break;
              } // case 16
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

    private java.lang.Object identity_ = "";
    /**
     *
     *
     * <pre>
     * Identity to add to the wallet
     * </pre>
     *
     * <code>string identity = 1;</code>
     *
     * @return The identity.
     */
    public java.lang.String getIdentity() {
      java.lang.Object ref = identity_;
      if (!(ref instanceof java.lang.String)) {
        com.google.protobuf.ByteString bs = (com.google.protobuf.ByteString) ref;
        java.lang.String s = bs.toStringUtf8();
        identity_ = s;
        return s;
      } else {
        return (java.lang.String) ref;
      }
    }
    /**
     *
     *
     * <pre>
     * Identity to add to the wallet
     * </pre>
     *
     * <code>string identity = 1;</code>
     *
     * @return The bytes for identity.
     */
    public com.google.protobuf.ByteString getIdentityBytes() {
      java.lang.Object ref = identity_;
      if (ref instanceof String) {
        com.google.protobuf.ByteString b =
            com.google.protobuf.ByteString.copyFromUtf8((java.lang.String) ref);
        identity_ = b;
        return b;
      } else {
        return (com.google.protobuf.ByteString) ref;
      }
    }
    /**
     *
     *
     * <pre>
     * Identity to add to the wallet
     * </pre>
     *
     * <code>string identity = 1;</code>
     *
     * @param value The identity to set.
     * @return This builder for chaining.
     */
    public Builder setIdentity(java.lang.String value) {
      if (value == null) {
        throw new NullPointerException();
      }

      identity_ = value;
      onChanged();
      return this;
    }
    /**
     *
     *
     * <pre>
     * Identity to add to the wallet
     * </pre>
     *
     * <code>string identity = 1;</code>
     *
     * @return This builder for chaining.
     */
    public Builder clearIdentity() {

      identity_ = getDefaultInstance().getIdentity();
      onChanged();
      return this;
    }
    /**
     *
     *
     * <pre>
     * Identity to add to the wallet
     * </pre>
     *
     * <code>string identity = 1;</code>
     *
     * @param value The bytes for identity to set.
     * @return This builder for chaining.
     */
    public Builder setIdentityBytes(com.google.protobuf.ByteString value) {
      if (value == null) {
        throw new NullPointerException();
      }
      checkByteStringIsUtf8(value);

      identity_ = value;
      onChanged();
      return this;
    }

    private int provider_ = 0;
    /**
     * <code>.services.universalwallet.v1.IdentityProvider provider = 2;</code>
     *
     * @return The enum numeric value on the wire for provider.
     */
    @java.lang.Override
    public int getProviderValue() {
      return provider_;
    }
    /**
     * <code>.services.universalwallet.v1.IdentityProvider provider = 2;</code>
     *
     * @param value The enum numeric value on the wire for provider to set.
     * @return This builder for chaining.
     */
    public Builder setProviderValue(int value) {

      provider_ = value;
      onChanged();
      return this;
    }
    /**
     * <code>.services.universalwallet.v1.IdentityProvider provider = 2;</code>
     *
     * @return The provider.
     */
    @java.lang.Override
    public trinsic.services.universalwallet.v1.IdentityProvider getProvider() {
      @SuppressWarnings("deprecation")
      trinsic.services.universalwallet.v1.IdentityProvider result =
          trinsic.services.universalwallet.v1.IdentityProvider.valueOf(provider_);
      return result == null
          ? trinsic.services.universalwallet.v1.IdentityProvider.UNRECOGNIZED
          : result;
    }
    /**
     * <code>.services.universalwallet.v1.IdentityProvider provider = 2;</code>
     *
     * @param value The provider to set.
     * @return This builder for chaining.
     */
    public Builder setProvider(trinsic.services.universalwallet.v1.IdentityProvider value) {
      if (value == null) {
        throw new NullPointerException();
      }

      provider_ = value.getNumber();
      onChanged();
      return this;
    }
    /**
     * <code>.services.universalwallet.v1.IdentityProvider provider = 2;</code>
     *
     * @return This builder for chaining.
     */
    public Builder clearProvider() {

      provider_ = 0;
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

    // @@protoc_insertion_point(builder_scope:services.universalwallet.v1.AddExternalIdentityInitRequest)
  }

  // @@protoc_insertion_point(class_scope:services.universalwallet.v1.AddExternalIdentityInitRequest)
  private static final trinsic.services.universalwallet.v1.AddExternalIdentityInitRequest
      DEFAULT_INSTANCE;

  static {
    DEFAULT_INSTANCE = new trinsic.services.universalwallet.v1.AddExternalIdentityInitRequest();
  }

  public static trinsic.services.universalwallet.v1.AddExternalIdentityInitRequest
      getDefaultInstance() {
    return DEFAULT_INSTANCE;
  }

  private static final com.google.protobuf.Parser<AddExternalIdentityInitRequest> PARSER =
      new com.google.protobuf.AbstractParser<AddExternalIdentityInitRequest>() {
        @java.lang.Override
        public AddExternalIdentityInitRequest parsePartialFrom(
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

  public static com.google.protobuf.Parser<AddExternalIdentityInitRequest> parser() {
    return PARSER;
  }

  @java.lang.Override
  public com.google.protobuf.Parser<AddExternalIdentityInitRequest> getParserForType() {
    return PARSER;
  }

  @java.lang.Override
  public trinsic.services.universalwallet.v1.AddExternalIdentityInitRequest
      getDefaultInstanceForType() {
    return DEFAULT_INSTANCE;
  }
}
