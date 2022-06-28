// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: services/universal-wallet/v1/universal-wallet.proto

package trinsic.services.universalwallet.v1;

/**
 *
 *
 * <pre>
 * Request to fetch an item from wallet
 * </pre>
 *
 * Protobuf type {@code services.universalwallet.v1.GetItemRequest}
 */
public final class GetItemRequest extends com.google.protobuf.GeneratedMessageV3
    implements
    // @@protoc_insertion_point(message_implements:services.universalwallet.v1.GetItemRequest)
    GetItemRequestOrBuilder {
  private static final long serialVersionUID = 0L;
  // Use GetItemRequest.newBuilder() to construct.
  private GetItemRequest(com.google.protobuf.GeneratedMessageV3.Builder<?> builder) {
    super(builder);
  }

  private GetItemRequest() {
    itemId_ = "";
  }

  @java.lang.Override
  @SuppressWarnings({"unused"})
  protected java.lang.Object newInstance(UnusedPrivateParameter unused) {
    return new GetItemRequest();
  }

  @java.lang.Override
  public final com.google.protobuf.UnknownFieldSet getUnknownFields() {
    return this.unknownFields;
  }

  private GetItemRequest(
      com.google.protobuf.CodedInputStream input,
      com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws com.google.protobuf.InvalidProtocolBufferException {
    this();
    if (extensionRegistry == null) {
      throw new java.lang.NullPointerException();
    }
    com.google.protobuf.UnknownFieldSet.Builder unknownFields =
        com.google.protobuf.UnknownFieldSet.newBuilder();
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
              java.lang.String s = input.readStringRequireUtf8();

              itemId_ = s;
              break;
            }
          default:
            {
              if (!parseUnknownField(input, unknownFields, extensionRegistry, tag)) {
                done = true;
              }
              break;
            }
        }
      }
    } catch (com.google.protobuf.InvalidProtocolBufferException e) {
      throw e.setUnfinishedMessage(this);
    } catch (com.google.protobuf.UninitializedMessageException e) {
      throw e.asInvalidProtocolBufferException().setUnfinishedMessage(this);
    } catch (java.io.IOException e) {
      throw new com.google.protobuf.InvalidProtocolBufferException(e).setUnfinishedMessage(this);
    } finally {
      this.unknownFields = unknownFields.build();
      makeExtensionsImmutable();
    }
  }

  public static final com.google.protobuf.Descriptors.Descriptor getDescriptor() {
    return trinsic.services.universalwallet.v1.UniversalWalletOuterClass
        .internal_static_services_universalwallet_v1_GetItemRequest_descriptor;
  }

  @java.lang.Override
  protected com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
      internalGetFieldAccessorTable() {
    return trinsic.services.universalwallet.v1.UniversalWalletOuterClass
        .internal_static_services_universalwallet_v1_GetItemRequest_fieldAccessorTable
        .ensureFieldAccessorsInitialized(
            trinsic.services.universalwallet.v1.GetItemRequest.class,
            trinsic.services.universalwallet.v1.GetItemRequest.Builder.class);
  }

  public static final int ITEM_ID_FIELD_NUMBER = 1;
  private volatile java.lang.Object itemId_;
  /**
   *
   *
   * <pre>
   * ID of item in wallet
   * </pre>
   *
   * <code>string item_id = 1;</code>
   *
   * @return The itemId.
   */
  @java.lang.Override
  public java.lang.String getItemId() {
    java.lang.Object ref = itemId_;
    if (ref instanceof java.lang.String) {
      return (java.lang.String) ref;
    } else {
      com.google.protobuf.ByteString bs = (com.google.protobuf.ByteString) ref;
      java.lang.String s = bs.toStringUtf8();
      itemId_ = s;
      return s;
    }
  }
  /**
   *
   *
   * <pre>
   * ID of item in wallet
   * </pre>
   *
   * <code>string item_id = 1;</code>
   *
   * @return The bytes for itemId.
   */
  @java.lang.Override
  public com.google.protobuf.ByteString getItemIdBytes() {
    java.lang.Object ref = itemId_;
    if (ref instanceof java.lang.String) {
      com.google.protobuf.ByteString b =
          com.google.protobuf.ByteString.copyFromUtf8((java.lang.String) ref);
      itemId_ = b;
      return b;
    } else {
      return (com.google.protobuf.ByteString) ref;
    }
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
    if (!com.google.protobuf.GeneratedMessageV3.isStringEmpty(itemId_)) {
      com.google.protobuf.GeneratedMessageV3.writeString(output, 1, itemId_);
    }
    unknownFields.writeTo(output);
  }

  @java.lang.Override
  public int getSerializedSize() {
    int size = memoizedSize;
    if (size != -1) return size;

    size = 0;
    if (!com.google.protobuf.GeneratedMessageV3.isStringEmpty(itemId_)) {
      size += com.google.protobuf.GeneratedMessageV3.computeStringSize(1, itemId_);
    }
    size += unknownFields.getSerializedSize();
    memoizedSize = size;
    return size;
  }

  @java.lang.Override
  public boolean equals(final java.lang.Object obj) {
    if (obj == this) {
      return true;
    }
    if (!(obj instanceof trinsic.services.universalwallet.v1.GetItemRequest)) {
      return super.equals(obj);
    }
    trinsic.services.universalwallet.v1.GetItemRequest other =
        (trinsic.services.universalwallet.v1.GetItemRequest) obj;

    if (!getItemId().equals(other.getItemId())) return false;
    if (!unknownFields.equals(other.unknownFields)) return false;
    return true;
  }

  @java.lang.Override
  public int hashCode() {
    if (memoizedHashCode != 0) {
      return memoizedHashCode;
    }
    int hash = 41;
    hash = (19 * hash) + getDescriptor().hashCode();
    hash = (37 * hash) + ITEM_ID_FIELD_NUMBER;
    hash = (53 * hash) + getItemId().hashCode();
    hash = (29 * hash) + unknownFields.hashCode();
    memoizedHashCode = hash;
    return hash;
  }

  public static trinsic.services.universalwallet.v1.GetItemRequest parseFrom(
      java.nio.ByteBuffer data) throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data);
  }

  public static trinsic.services.universalwallet.v1.GetItemRequest parseFrom(
      java.nio.ByteBuffer data, com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data, extensionRegistry);
  }

  public static trinsic.services.universalwallet.v1.GetItemRequest parseFrom(
      com.google.protobuf.ByteString data)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data);
  }

  public static trinsic.services.universalwallet.v1.GetItemRequest parseFrom(
      com.google.protobuf.ByteString data,
      com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data, extensionRegistry);
  }

  public static trinsic.services.universalwallet.v1.GetItemRequest parseFrom(byte[] data)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data);
  }

  public static trinsic.services.universalwallet.v1.GetItemRequest parseFrom(
      byte[] data, com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data, extensionRegistry);
  }

  public static trinsic.services.universalwallet.v1.GetItemRequest parseFrom(
      java.io.InputStream input) throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3.parseWithIOException(PARSER, input);
  }

  public static trinsic.services.universalwallet.v1.GetItemRequest parseFrom(
      java.io.InputStream input, com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3.parseWithIOException(
        PARSER, input, extensionRegistry);
  }

  public static trinsic.services.universalwallet.v1.GetItemRequest parseDelimitedFrom(
      java.io.InputStream input) throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
  }

  public static trinsic.services.universalwallet.v1.GetItemRequest parseDelimitedFrom(
      java.io.InputStream input, com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3.parseDelimitedWithIOException(
        PARSER, input, extensionRegistry);
  }

  public static trinsic.services.universalwallet.v1.GetItemRequest parseFrom(
      com.google.protobuf.CodedInputStream input) throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3.parseWithIOException(PARSER, input);
  }

  public static trinsic.services.universalwallet.v1.GetItemRequest parseFrom(
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

  public static Builder newBuilder(trinsic.services.universalwallet.v1.GetItemRequest prototype) {
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
   * Request to fetch an item from wallet
   * </pre>
   *
   * Protobuf type {@code services.universalwallet.v1.GetItemRequest}
   */
  public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder>
      implements
      // @@protoc_insertion_point(builder_implements:services.universalwallet.v1.GetItemRequest)
      trinsic.services.universalwallet.v1.GetItemRequestOrBuilder {
    public static final com.google.protobuf.Descriptors.Descriptor getDescriptor() {
      return trinsic.services.universalwallet.v1.UniversalWalletOuterClass
          .internal_static_services_universalwallet_v1_GetItemRequest_descriptor;
    }

    @java.lang.Override
    protected com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
        internalGetFieldAccessorTable() {
      return trinsic.services.universalwallet.v1.UniversalWalletOuterClass
          .internal_static_services_universalwallet_v1_GetItemRequest_fieldAccessorTable
          .ensureFieldAccessorsInitialized(
              trinsic.services.universalwallet.v1.GetItemRequest.class,
              trinsic.services.universalwallet.v1.GetItemRequest.Builder.class);
    }

    // Construct using trinsic.services.universalwallet.v1.GetItemRequest.newBuilder()
    private Builder() {
      maybeForceBuilderInitialization();
    }

    private Builder(com.google.protobuf.GeneratedMessageV3.BuilderParent parent) {
      super(parent);
      maybeForceBuilderInitialization();
    }

    private void maybeForceBuilderInitialization() {
      if (com.google.protobuf.GeneratedMessageV3.alwaysUseFieldBuilders) {}
    }

    @java.lang.Override
    public Builder clear() {
      super.clear();
      itemId_ = "";

      return this;
    }

    @java.lang.Override
    public com.google.protobuf.Descriptors.Descriptor getDescriptorForType() {
      return trinsic.services.universalwallet.v1.UniversalWalletOuterClass
          .internal_static_services_universalwallet_v1_GetItemRequest_descriptor;
    }

    @java.lang.Override
    public trinsic.services.universalwallet.v1.GetItemRequest getDefaultInstanceForType() {
      return trinsic.services.universalwallet.v1.GetItemRequest.getDefaultInstance();
    }

    @java.lang.Override
    public trinsic.services.universalwallet.v1.GetItemRequest build() {
      trinsic.services.universalwallet.v1.GetItemRequest result = buildPartial();
      if (!result.isInitialized()) {
        throw newUninitializedMessageException(result);
      }
      return result;
    }

    @java.lang.Override
    public trinsic.services.universalwallet.v1.GetItemRequest buildPartial() {
      trinsic.services.universalwallet.v1.GetItemRequest result =
          new trinsic.services.universalwallet.v1.GetItemRequest(this);
      result.itemId_ = itemId_;
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
      if (other instanceof trinsic.services.universalwallet.v1.GetItemRequest) {
        return mergeFrom((trinsic.services.universalwallet.v1.GetItemRequest) other);
      } else {
        super.mergeFrom(other);
        return this;
      }
    }

    public Builder mergeFrom(trinsic.services.universalwallet.v1.GetItemRequest other) {
      if (other == trinsic.services.universalwallet.v1.GetItemRequest.getDefaultInstance())
        return this;
      if (!other.getItemId().isEmpty()) {
        itemId_ = other.itemId_;
        onChanged();
      }
      this.mergeUnknownFields(other.unknownFields);
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
      trinsic.services.universalwallet.v1.GetItemRequest parsedMessage = null;
      try {
        parsedMessage = PARSER.parsePartialFrom(input, extensionRegistry);
      } catch (com.google.protobuf.InvalidProtocolBufferException e) {
        parsedMessage =
            (trinsic.services.universalwallet.v1.GetItemRequest) e.getUnfinishedMessage();
        throw e.unwrapIOException();
      } finally {
        if (parsedMessage != null) {
          mergeFrom(parsedMessage);
        }
      }
      return this;
    }

    private java.lang.Object itemId_ = "";
    /**
     *
     *
     * <pre>
     * ID of item in wallet
     * </pre>
     *
     * <code>string item_id = 1;</code>
     *
     * @return The itemId.
     */
    public java.lang.String getItemId() {
      java.lang.Object ref = itemId_;
      if (!(ref instanceof java.lang.String)) {
        com.google.protobuf.ByteString bs = (com.google.protobuf.ByteString) ref;
        java.lang.String s = bs.toStringUtf8();
        itemId_ = s;
        return s;
      } else {
        return (java.lang.String) ref;
      }
    }
    /**
     *
     *
     * <pre>
     * ID of item in wallet
     * </pre>
     *
     * <code>string item_id = 1;</code>
     *
     * @return The bytes for itemId.
     */
    public com.google.protobuf.ByteString getItemIdBytes() {
      java.lang.Object ref = itemId_;
      if (ref instanceof String) {
        com.google.protobuf.ByteString b =
            com.google.protobuf.ByteString.copyFromUtf8((java.lang.String) ref);
        itemId_ = b;
        return b;
      } else {
        return (com.google.protobuf.ByteString) ref;
      }
    }
    /**
     *
     *
     * <pre>
     * ID of item in wallet
     * </pre>
     *
     * <code>string item_id = 1;</code>
     *
     * @param value The itemId to set.
     * @return This builder for chaining.
     */
    public Builder setItemId(java.lang.String value) {
      if (value == null) {
        throw new NullPointerException();
      }

      itemId_ = value;
      onChanged();
      return this;
    }
    /**
     *
     *
     * <pre>
     * ID of item in wallet
     * </pre>
     *
     * <code>string item_id = 1;</code>
     *
     * @return This builder for chaining.
     */
    public Builder clearItemId() {

      itemId_ = getDefaultInstance().getItemId();
      onChanged();
      return this;
    }
    /**
     *
     *
     * <pre>
     * ID of item in wallet
     * </pre>
     *
     * <code>string item_id = 1;</code>
     *
     * @param value The bytes for itemId to set.
     * @return This builder for chaining.
     */
    public Builder setItemIdBytes(com.google.protobuf.ByteString value) {
      if (value == null) {
        throw new NullPointerException();
      }
      checkByteStringIsUtf8(value);

      itemId_ = value;
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

    // @@protoc_insertion_point(builder_scope:services.universalwallet.v1.GetItemRequest)
  }

  // @@protoc_insertion_point(class_scope:services.universalwallet.v1.GetItemRequest)
  private static final trinsic.services.universalwallet.v1.GetItemRequest DEFAULT_INSTANCE;

  static {
    DEFAULT_INSTANCE = new trinsic.services.universalwallet.v1.GetItemRequest();
  }

  public static trinsic.services.universalwallet.v1.GetItemRequest getDefaultInstance() {
    return DEFAULT_INSTANCE;
  }

  private static final com.google.protobuf.Parser<GetItemRequest> PARSER =
      new com.google.protobuf.AbstractParser<GetItemRequest>() {
        @java.lang.Override
        public GetItemRequest parsePartialFrom(
            com.google.protobuf.CodedInputStream input,
            com.google.protobuf.ExtensionRegistryLite extensionRegistry)
            throws com.google.protobuf.InvalidProtocolBufferException {
          return new GetItemRequest(input, extensionRegistry);
        }
      };

  public static com.google.protobuf.Parser<GetItemRequest> parser() {
    return PARSER;
  }

  @java.lang.Override
  public com.google.protobuf.Parser<GetItemRequest> getParserForType() {
    return PARSER;
  }

  @java.lang.Override
  public trinsic.services.universalwallet.v1.GetItemRequest getDefaultInstanceForType() {
    return DEFAULT_INSTANCE;
  }
}
