// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: services/provider/v1/provider.proto

package trinsic.services.provider.v1;

/**
 * <pre>
 * Request to fetch information about an ecosystem
 * </pre>
 *
 * Protobuf type {@code services.provider.v1.GetPublicEcosystemInfoRequest}
 */
public final class GetPublicEcosystemInfoRequest extends
    com.google.protobuf.GeneratedMessageV3 implements
    // @@protoc_insertion_point(message_implements:services.provider.v1.GetPublicEcosystemInfoRequest)
    GetPublicEcosystemInfoRequestOrBuilder {
private static final long serialVersionUID = 0L;
  // Use GetPublicEcosystemInfoRequest.newBuilder() to construct.
  private GetPublicEcosystemInfoRequest(com.google.protobuf.GeneratedMessageV3.Builder<?> builder) {
    super(builder);
  }
  private GetPublicEcosystemInfoRequest() {
    ecosystemId_ = "";
  }

  @java.lang.Override
  @SuppressWarnings({"unused"})
  protected java.lang.Object newInstance(
      UnusedPrivateParameter unused) {
    return new GetPublicEcosystemInfoRequest();
  }

  @java.lang.Override
  public final com.google.protobuf.UnknownFieldSet
  getUnknownFields() {
    return this.unknownFields;
  }
  private GetPublicEcosystemInfoRequest(
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
          case 10: {
            java.lang.String s = input.readStringRequireUtf8();

            ecosystemId_ = s;
            break;
          }
          default: {
            if (!parseUnknownField(
                input, unknownFields, extensionRegistry, tag)) {
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
      throw new com.google.protobuf.InvalidProtocolBufferException(
          e).setUnfinishedMessage(this);
    } finally {
      this.unknownFields = unknownFields.build();
      makeExtensionsImmutable();
    }
  }
  public static final com.google.protobuf.Descriptors.Descriptor
      getDescriptor() {
    return trinsic.services.provider.v1.ProviderOuterClass.internal_static_services_provider_v1_GetPublicEcosystemInfoRequest_descriptor;
  }

  @java.lang.Override
  protected com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
      internalGetFieldAccessorTable() {
    return trinsic.services.provider.v1.ProviderOuterClass.internal_static_services_provider_v1_GetPublicEcosystemInfoRequest_fieldAccessorTable
        .ensureFieldAccessorsInitialized(
            trinsic.services.provider.v1.GetPublicEcosystemInfoRequest.class, trinsic.services.provider.v1.GetPublicEcosystemInfoRequest.Builder.class);
  }

  public static final int ECOSYSTEM_ID_FIELD_NUMBER = 1;
  private volatile java.lang.Object ecosystemId_;
  /**
   * <code>string ecosystem_id = 1;</code>
   * @return The ecosystemId.
   */
  @java.lang.Override
  public java.lang.String getEcosystemId() {
    java.lang.Object ref = ecosystemId_;
    if (ref instanceof java.lang.String) {
      return (java.lang.String) ref;
    } else {
      com.google.protobuf.ByteString bs = 
          (com.google.protobuf.ByteString) ref;
      java.lang.String s = bs.toStringUtf8();
      ecosystemId_ = s;
      return s;
    }
  }
  /**
   * <code>string ecosystem_id = 1;</code>
   * @return The bytes for ecosystemId.
   */
  @java.lang.Override
  public com.google.protobuf.ByteString
      getEcosystemIdBytes() {
    java.lang.Object ref = ecosystemId_;
    if (ref instanceof java.lang.String) {
      com.google.protobuf.ByteString b = 
          com.google.protobuf.ByteString.copyFromUtf8(
              (java.lang.String) ref);
      ecosystemId_ = b;
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
  public void writeTo(com.google.protobuf.CodedOutputStream output)
                      throws java.io.IOException {
    if (!com.google.protobuf.GeneratedMessageV3.isStringEmpty(ecosystemId_)) {
      com.google.protobuf.GeneratedMessageV3.writeString(output, 1, ecosystemId_);
    }
    unknownFields.writeTo(output);
  }

  @java.lang.Override
  public int getSerializedSize() {
    int size = memoizedSize;
    if (size != -1) return size;

    size = 0;
    if (!com.google.protobuf.GeneratedMessageV3.isStringEmpty(ecosystemId_)) {
      size += com.google.protobuf.GeneratedMessageV3.computeStringSize(1, ecosystemId_);
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
    if (!(obj instanceof trinsic.services.provider.v1.GetPublicEcosystemInfoRequest)) {
      return super.equals(obj);
    }
    trinsic.services.provider.v1.GetPublicEcosystemInfoRequest other = (trinsic.services.provider.v1.GetPublicEcosystemInfoRequest) obj;

    if (!getEcosystemId()
        .equals(other.getEcosystemId())) return false;
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
    hash = (37 * hash) + ECOSYSTEM_ID_FIELD_NUMBER;
    hash = (53 * hash) + getEcosystemId().hashCode();
    hash = (29 * hash) + unknownFields.hashCode();
    memoizedHashCode = hash;
    return hash;
  }

  public static trinsic.services.provider.v1.GetPublicEcosystemInfoRequest parseFrom(
      java.nio.ByteBuffer data)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data);
  }
  public static trinsic.services.provider.v1.GetPublicEcosystemInfoRequest parseFrom(
      java.nio.ByteBuffer data,
      com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data, extensionRegistry);
  }
  public static trinsic.services.provider.v1.GetPublicEcosystemInfoRequest parseFrom(
      com.google.protobuf.ByteString data)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data);
  }
  public static trinsic.services.provider.v1.GetPublicEcosystemInfoRequest parseFrom(
      com.google.protobuf.ByteString data,
      com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data, extensionRegistry);
  }
  public static trinsic.services.provider.v1.GetPublicEcosystemInfoRequest parseFrom(byte[] data)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data);
  }
  public static trinsic.services.provider.v1.GetPublicEcosystemInfoRequest parseFrom(
      byte[] data,
      com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data, extensionRegistry);
  }
  public static trinsic.services.provider.v1.GetPublicEcosystemInfoRequest parseFrom(java.io.InputStream input)
      throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3
        .parseWithIOException(PARSER, input);
  }
  public static trinsic.services.provider.v1.GetPublicEcosystemInfoRequest parseFrom(
      java.io.InputStream input,
      com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3
        .parseWithIOException(PARSER, input, extensionRegistry);
  }
  public static trinsic.services.provider.v1.GetPublicEcosystemInfoRequest parseDelimitedFrom(java.io.InputStream input)
      throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3
        .parseDelimitedWithIOException(PARSER, input);
  }
  public static trinsic.services.provider.v1.GetPublicEcosystemInfoRequest parseDelimitedFrom(
      java.io.InputStream input,
      com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3
        .parseDelimitedWithIOException(PARSER, input, extensionRegistry);
  }
  public static trinsic.services.provider.v1.GetPublicEcosystemInfoRequest parseFrom(
      com.google.protobuf.CodedInputStream input)
      throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3
        .parseWithIOException(PARSER, input);
  }
  public static trinsic.services.provider.v1.GetPublicEcosystemInfoRequest parseFrom(
      com.google.protobuf.CodedInputStream input,
      com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3
        .parseWithIOException(PARSER, input, extensionRegistry);
  }

  @java.lang.Override
  public Builder newBuilderForType() { return newBuilder(); }
  public static Builder newBuilder() {
    return DEFAULT_INSTANCE.toBuilder();
  }
  public static Builder newBuilder(trinsic.services.provider.v1.GetPublicEcosystemInfoRequest prototype) {
    return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
  }
  @java.lang.Override
  public Builder toBuilder() {
    return this == DEFAULT_INSTANCE
        ? new Builder() : new Builder().mergeFrom(this);
  }

  @java.lang.Override
  protected Builder newBuilderForType(
      com.google.protobuf.GeneratedMessageV3.BuilderParent parent) {
    Builder builder = new Builder(parent);
    return builder;
  }
  /**
   * <pre>
   * Request to fetch information about an ecosystem
   * </pre>
   *
   * Protobuf type {@code services.provider.v1.GetPublicEcosystemInfoRequest}
   */
  public static final class Builder extends
      com.google.protobuf.GeneratedMessageV3.Builder<Builder> implements
      // @@protoc_insertion_point(builder_implements:services.provider.v1.GetPublicEcosystemInfoRequest)
      trinsic.services.provider.v1.GetPublicEcosystemInfoRequestOrBuilder {
    public static final com.google.protobuf.Descriptors.Descriptor
        getDescriptor() {
      return trinsic.services.provider.v1.ProviderOuterClass.internal_static_services_provider_v1_GetPublicEcosystemInfoRequest_descriptor;
    }

    @java.lang.Override
    protected com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
        internalGetFieldAccessorTable() {
      return trinsic.services.provider.v1.ProviderOuterClass.internal_static_services_provider_v1_GetPublicEcosystemInfoRequest_fieldAccessorTable
          .ensureFieldAccessorsInitialized(
              trinsic.services.provider.v1.GetPublicEcosystemInfoRequest.class, trinsic.services.provider.v1.GetPublicEcosystemInfoRequest.Builder.class);
    }

    // Construct using trinsic.services.provider.v1.GetPublicEcosystemInfoRequest.newBuilder()
    private Builder() {
      maybeForceBuilderInitialization();
    }

    private Builder(
        com.google.protobuf.GeneratedMessageV3.BuilderParent parent) {
      super(parent);
      maybeForceBuilderInitialization();
    }
    private void maybeForceBuilderInitialization() {
      if (com.google.protobuf.GeneratedMessageV3
              .alwaysUseFieldBuilders) {
      }
    }
    @java.lang.Override
    public Builder clear() {
      super.clear();
      ecosystemId_ = "";

      return this;
    }

    @java.lang.Override
    public com.google.protobuf.Descriptors.Descriptor
        getDescriptorForType() {
      return trinsic.services.provider.v1.ProviderOuterClass.internal_static_services_provider_v1_GetPublicEcosystemInfoRequest_descriptor;
    }

    @java.lang.Override
    public trinsic.services.provider.v1.GetPublicEcosystemInfoRequest getDefaultInstanceForType() {
      return trinsic.services.provider.v1.GetPublicEcosystemInfoRequest.getDefaultInstance();
    }

    @java.lang.Override
    public trinsic.services.provider.v1.GetPublicEcosystemInfoRequest build() {
      trinsic.services.provider.v1.GetPublicEcosystemInfoRequest result = buildPartial();
      if (!result.isInitialized()) {
        throw newUninitializedMessageException(result);
      }
      return result;
    }

    @java.lang.Override
    public trinsic.services.provider.v1.GetPublicEcosystemInfoRequest buildPartial() {
      trinsic.services.provider.v1.GetPublicEcosystemInfoRequest result = new trinsic.services.provider.v1.GetPublicEcosystemInfoRequest(this);
      result.ecosystemId_ = ecosystemId_;
      onBuilt();
      return result;
    }

    @java.lang.Override
    public Builder clone() {
      return super.clone();
    }
    @java.lang.Override
    public Builder setField(
        com.google.protobuf.Descriptors.FieldDescriptor field,
        java.lang.Object value) {
      return super.setField(field, value);
    }
    @java.lang.Override
    public Builder clearField(
        com.google.protobuf.Descriptors.FieldDescriptor field) {
      return super.clearField(field);
    }
    @java.lang.Override
    public Builder clearOneof(
        com.google.protobuf.Descriptors.OneofDescriptor oneof) {
      return super.clearOneof(oneof);
    }
    @java.lang.Override
    public Builder setRepeatedField(
        com.google.protobuf.Descriptors.FieldDescriptor field,
        int index, java.lang.Object value) {
      return super.setRepeatedField(field, index, value);
    }
    @java.lang.Override
    public Builder addRepeatedField(
        com.google.protobuf.Descriptors.FieldDescriptor field,
        java.lang.Object value) {
      return super.addRepeatedField(field, value);
    }
    @java.lang.Override
    public Builder mergeFrom(com.google.protobuf.Message other) {
      if (other instanceof trinsic.services.provider.v1.GetPublicEcosystemInfoRequest) {
        return mergeFrom((trinsic.services.provider.v1.GetPublicEcosystemInfoRequest)other);
      } else {
        super.mergeFrom(other);
        return this;
      }
    }

    public Builder mergeFrom(trinsic.services.provider.v1.GetPublicEcosystemInfoRequest other) {
      if (other == trinsic.services.provider.v1.GetPublicEcosystemInfoRequest.getDefaultInstance()) return this;
      if (!other.getEcosystemId().isEmpty()) {
        ecosystemId_ = other.ecosystemId_;
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
      trinsic.services.provider.v1.GetPublicEcosystemInfoRequest parsedMessage = null;
      try {
        parsedMessage = PARSER.parsePartialFrom(input, extensionRegistry);
      } catch (com.google.protobuf.InvalidProtocolBufferException e) {
        parsedMessage = (trinsic.services.provider.v1.GetPublicEcosystemInfoRequest) e.getUnfinishedMessage();
        throw e.unwrapIOException();
      } finally {
        if (parsedMessage != null) {
          mergeFrom(parsedMessage);
        }
      }
      return this;
    }

    private java.lang.Object ecosystemId_ = "";
    /**
     * <code>string ecosystem_id = 1;</code>
     * @return The ecosystemId.
     */
    public java.lang.String getEcosystemId() {
      java.lang.Object ref = ecosystemId_;
      if (!(ref instanceof java.lang.String)) {
        com.google.protobuf.ByteString bs =
            (com.google.protobuf.ByteString) ref;
        java.lang.String s = bs.toStringUtf8();
        ecosystemId_ = s;
        return s;
      } else {
        return (java.lang.String) ref;
      }
    }
    /**
     * <code>string ecosystem_id = 1;</code>
     * @return The bytes for ecosystemId.
     */
    public com.google.protobuf.ByteString
        getEcosystemIdBytes() {
      java.lang.Object ref = ecosystemId_;
      if (ref instanceof String) {
        com.google.protobuf.ByteString b = 
            com.google.protobuf.ByteString.copyFromUtf8(
                (java.lang.String) ref);
        ecosystemId_ = b;
        return b;
      } else {
        return (com.google.protobuf.ByteString) ref;
      }
    }
    /**
     * <code>string ecosystem_id = 1;</code>
     * @param value The ecosystemId to set.
     * @return This builder for chaining.
     */
    public Builder setEcosystemId(
        java.lang.String value) {
      if (value == null) {
    throw new NullPointerException();
  }
  
      ecosystemId_ = value;
      onChanged();
      return this;
    }
    /**
     * <code>string ecosystem_id = 1;</code>
     * @return This builder for chaining.
     */
    public Builder clearEcosystemId() {
      
      ecosystemId_ = getDefaultInstance().getEcosystemId();
      onChanged();
      return this;
    }
    /**
     * <code>string ecosystem_id = 1;</code>
     * @param value The bytes for ecosystemId to set.
     * @return This builder for chaining.
     */
    public Builder setEcosystemIdBytes(
        com.google.protobuf.ByteString value) {
      if (value == null) {
    throw new NullPointerException();
  }
  checkByteStringIsUtf8(value);
      
      ecosystemId_ = value;
      onChanged();
      return this;
    }
    @java.lang.Override
    public final Builder setUnknownFields(
        final com.google.protobuf.UnknownFieldSet unknownFields) {
      return super.setUnknownFields(unknownFields);
    }

    @java.lang.Override
    public final Builder mergeUnknownFields(
        final com.google.protobuf.UnknownFieldSet unknownFields) {
      return super.mergeUnknownFields(unknownFields);
    }


    // @@protoc_insertion_point(builder_scope:services.provider.v1.GetPublicEcosystemInfoRequest)
  }

  // @@protoc_insertion_point(class_scope:services.provider.v1.GetPublicEcosystemInfoRequest)
  private static final trinsic.services.provider.v1.GetPublicEcosystemInfoRequest DEFAULT_INSTANCE;
  static {
    DEFAULT_INSTANCE = new trinsic.services.provider.v1.GetPublicEcosystemInfoRequest();
  }

  public static trinsic.services.provider.v1.GetPublicEcosystemInfoRequest getDefaultInstance() {
    return DEFAULT_INSTANCE;
  }

  private static final com.google.protobuf.Parser<GetPublicEcosystemInfoRequest>
      PARSER = new com.google.protobuf.AbstractParser<GetPublicEcosystemInfoRequest>() {
    @java.lang.Override
    public GetPublicEcosystemInfoRequest parsePartialFrom(
        com.google.protobuf.CodedInputStream input,
        com.google.protobuf.ExtensionRegistryLite extensionRegistry)
        throws com.google.protobuf.InvalidProtocolBufferException {
      return new GetPublicEcosystemInfoRequest(input, extensionRegistry);
    }
  };

  public static com.google.protobuf.Parser<GetPublicEcosystemInfoRequest> parser() {
    return PARSER;
  }

  @java.lang.Override
  public com.google.protobuf.Parser<GetPublicEcosystemInfoRequest> getParserForType() {
    return PARSER;
  }

  @java.lang.Override
  public trinsic.services.provider.v1.GetPublicEcosystemInfoRequest getDefaultInstanceForType() {
    return DEFAULT_INSTANCE;
  }

}

