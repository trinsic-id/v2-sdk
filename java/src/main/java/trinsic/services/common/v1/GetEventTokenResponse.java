// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: services/provider/v1/provider.proto

package trinsic.services.common.v1;

/**
 *
 *
 * <pre>
 * response message containing a token (JWT) that can be used
 * to connect directly to the message streaming architecture
 * </pre>
 *
 * Protobuf type {@code services.provider.v1.GetEventTokenResponse}
 */
public final class GetEventTokenResponse extends com.google.protobuf.GeneratedMessageV3
    implements
    // @@protoc_insertion_point(message_implements:services.provider.v1.GetEventTokenResponse)
    GetEventTokenResponseOrBuilder {
  private static final long serialVersionUID = 0L;
  // Use GetEventTokenResponse.newBuilder() to construct.
  private GetEventTokenResponse(com.google.protobuf.GeneratedMessageV3.Builder<?> builder) {
    super(builder);
  }

  private GetEventTokenResponse() {
    token_ = "";
  }

  @java.lang.Override
  @SuppressWarnings({"unused"})
  protected java.lang.Object newInstance(UnusedPrivateParameter unused) {
    return new GetEventTokenResponse();
  }

  @java.lang.Override
  public final com.google.protobuf.UnknownFieldSet getUnknownFields() {
    return this.unknownFields;
  }

  private GetEventTokenResponse(
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

              token_ = s;
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
    return trinsic.services.common.v1.ProviderOuterClass
        .internal_static_services_provider_v1_GetEventTokenResponse_descriptor;
  }

  @java.lang.Override
  protected com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
      internalGetFieldAccessorTable() {
    return trinsic.services.common.v1.ProviderOuterClass
        .internal_static_services_provider_v1_GetEventTokenResponse_fieldAccessorTable
        .ensureFieldAccessorsInitialized(
            trinsic.services.common.v1.GetEventTokenResponse.class,
            trinsic.services.common.v1.GetEventTokenResponse.Builder.class);
  }

  public static final int TOKEN_FIELD_NUMBER = 1;
  private volatile java.lang.Object token_;
  /**
   *
   *
   * <pre>
   * a JWT bound to the PK provided in the request
   * </pre>
   *
   * <code>string token = 1;</code>
   *
   * @return The token.
   */
  @java.lang.Override
  public java.lang.String getToken() {
    java.lang.Object ref = token_;
    if (ref instanceof java.lang.String) {
      return (java.lang.String) ref;
    } else {
      com.google.protobuf.ByteString bs = (com.google.protobuf.ByteString) ref;
      java.lang.String s = bs.toStringUtf8();
      token_ = s;
      return s;
    }
  }
  /**
   *
   *
   * <pre>
   * a JWT bound to the PK provided in the request
   * </pre>
   *
   * <code>string token = 1;</code>
   *
   * @return The bytes for token.
   */
  @java.lang.Override
  public com.google.protobuf.ByteString getTokenBytes() {
    java.lang.Object ref = token_;
    if (ref instanceof java.lang.String) {
      com.google.protobuf.ByteString b =
          com.google.protobuf.ByteString.copyFromUtf8((java.lang.String) ref);
      token_ = b;
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
    if (!com.google.protobuf.GeneratedMessageV3.isStringEmpty(token_)) {
      com.google.protobuf.GeneratedMessageV3.writeString(output, 1, token_);
    }
    unknownFields.writeTo(output);
  }

  @java.lang.Override
  public int getSerializedSize() {
    int size = memoizedSize;
    if (size != -1) return size;

    size = 0;
    if (!com.google.protobuf.GeneratedMessageV3.isStringEmpty(token_)) {
      size += com.google.protobuf.GeneratedMessageV3.computeStringSize(1, token_);
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
    if (!(obj instanceof trinsic.services.common.v1.GetEventTokenResponse)) {
      return super.equals(obj);
    }
    trinsic.services.common.v1.GetEventTokenResponse other =
        (trinsic.services.common.v1.GetEventTokenResponse) obj;

    if (!getToken().equals(other.getToken())) return false;
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
    hash = (37 * hash) + TOKEN_FIELD_NUMBER;
    hash = (53 * hash) + getToken().hashCode();
    hash = (29 * hash) + unknownFields.hashCode();
    memoizedHashCode = hash;
    return hash;
  }

  public static trinsic.services.common.v1.GetEventTokenResponse parseFrom(java.nio.ByteBuffer data)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data);
  }

  public static trinsic.services.common.v1.GetEventTokenResponse parseFrom(
      java.nio.ByteBuffer data, com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data, extensionRegistry);
  }

  public static trinsic.services.common.v1.GetEventTokenResponse parseFrom(
      com.google.protobuf.ByteString data)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data);
  }

  public static trinsic.services.common.v1.GetEventTokenResponse parseFrom(
      com.google.protobuf.ByteString data,
      com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data, extensionRegistry);
  }

  public static trinsic.services.common.v1.GetEventTokenResponse parseFrom(byte[] data)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data);
  }

  public static trinsic.services.common.v1.GetEventTokenResponse parseFrom(
      byte[] data, com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data, extensionRegistry);
  }

  public static trinsic.services.common.v1.GetEventTokenResponse parseFrom(
      java.io.InputStream input) throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3.parseWithIOException(PARSER, input);
  }

  public static trinsic.services.common.v1.GetEventTokenResponse parseFrom(
      java.io.InputStream input, com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3.parseWithIOException(
        PARSER, input, extensionRegistry);
  }

  public static trinsic.services.common.v1.GetEventTokenResponse parseDelimitedFrom(
      java.io.InputStream input) throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
  }

  public static trinsic.services.common.v1.GetEventTokenResponse parseDelimitedFrom(
      java.io.InputStream input, com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3.parseDelimitedWithIOException(
        PARSER, input, extensionRegistry);
  }

  public static trinsic.services.common.v1.GetEventTokenResponse parseFrom(
      com.google.protobuf.CodedInputStream input) throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3.parseWithIOException(PARSER, input);
  }

  public static trinsic.services.common.v1.GetEventTokenResponse parseFrom(
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

  public static Builder newBuilder(trinsic.services.common.v1.GetEventTokenResponse prototype) {
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
   * response message containing a token (JWT) that can be used
   * to connect directly to the message streaming architecture
   * </pre>
   *
   * Protobuf type {@code services.provider.v1.GetEventTokenResponse}
   */
  public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder>
      implements
      // @@protoc_insertion_point(builder_implements:services.provider.v1.GetEventTokenResponse)
      trinsic.services.common.v1.GetEventTokenResponseOrBuilder {
    public static final com.google.protobuf.Descriptors.Descriptor getDescriptor() {
      return trinsic.services.common.v1.ProviderOuterClass
          .internal_static_services_provider_v1_GetEventTokenResponse_descriptor;
    }

    @java.lang.Override
    protected com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
        internalGetFieldAccessorTable() {
      return trinsic.services.common.v1.ProviderOuterClass
          .internal_static_services_provider_v1_GetEventTokenResponse_fieldAccessorTable
          .ensureFieldAccessorsInitialized(
              trinsic.services.common.v1.GetEventTokenResponse.class,
              trinsic.services.common.v1.GetEventTokenResponse.Builder.class);
    }

    // Construct using trinsic.services.common.v1.GetEventTokenResponse.newBuilder()
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
      token_ = "";

      return this;
    }

    @java.lang.Override
    public com.google.protobuf.Descriptors.Descriptor getDescriptorForType() {
      return trinsic.services.common.v1.ProviderOuterClass
          .internal_static_services_provider_v1_GetEventTokenResponse_descriptor;
    }

    @java.lang.Override
    public trinsic.services.common.v1.GetEventTokenResponse getDefaultInstanceForType() {
      return trinsic.services.common.v1.GetEventTokenResponse.getDefaultInstance();
    }

    @java.lang.Override
    public trinsic.services.common.v1.GetEventTokenResponse build() {
      trinsic.services.common.v1.GetEventTokenResponse result = buildPartial();
      if (!result.isInitialized()) {
        throw newUninitializedMessageException(result);
      }
      return result;
    }

    @java.lang.Override
    public trinsic.services.common.v1.GetEventTokenResponse buildPartial() {
      trinsic.services.common.v1.GetEventTokenResponse result =
          new trinsic.services.common.v1.GetEventTokenResponse(this);
      result.token_ = token_;
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
      if (other instanceof trinsic.services.common.v1.GetEventTokenResponse) {
        return mergeFrom((trinsic.services.common.v1.GetEventTokenResponse) other);
      } else {
        super.mergeFrom(other);
        return this;
      }
    }

    public Builder mergeFrom(trinsic.services.common.v1.GetEventTokenResponse other) {
      if (other == trinsic.services.common.v1.GetEventTokenResponse.getDefaultInstance())
        return this;
      if (!other.getToken().isEmpty()) {
        token_ = other.token_;
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
      trinsic.services.common.v1.GetEventTokenResponse parsedMessage = null;
      try {
        parsedMessage = PARSER.parsePartialFrom(input, extensionRegistry);
      } catch (com.google.protobuf.InvalidProtocolBufferException e) {
        parsedMessage = (trinsic.services.common.v1.GetEventTokenResponse) e.getUnfinishedMessage();
        throw e.unwrapIOException();
      } finally {
        if (parsedMessage != null) {
          mergeFrom(parsedMessage);
        }
      }
      return this;
    }

    private java.lang.Object token_ = "";
    /**
     *
     *
     * <pre>
     * a JWT bound to the PK provided in the request
     * </pre>
     *
     * <code>string token = 1;</code>
     *
     * @return The token.
     */
    public java.lang.String getToken() {
      java.lang.Object ref = token_;
      if (!(ref instanceof java.lang.String)) {
        com.google.protobuf.ByteString bs = (com.google.protobuf.ByteString) ref;
        java.lang.String s = bs.toStringUtf8();
        token_ = s;
        return s;
      } else {
        return (java.lang.String) ref;
      }
    }
    /**
     *
     *
     * <pre>
     * a JWT bound to the PK provided in the request
     * </pre>
     *
     * <code>string token = 1;</code>
     *
     * @return The bytes for token.
     */
    public com.google.protobuf.ByteString getTokenBytes() {
      java.lang.Object ref = token_;
      if (ref instanceof String) {
        com.google.protobuf.ByteString b =
            com.google.protobuf.ByteString.copyFromUtf8((java.lang.String) ref);
        token_ = b;
        return b;
      } else {
        return (com.google.protobuf.ByteString) ref;
      }
    }
    /**
     *
     *
     * <pre>
     * a JWT bound to the PK provided in the request
     * </pre>
     *
     * <code>string token = 1;</code>
     *
     * @param value The token to set.
     * @return This builder for chaining.
     */
    public Builder setToken(java.lang.String value) {
      if (value == null) {
        throw new NullPointerException();
      }

      token_ = value;
      onChanged();
      return this;
    }
    /**
     *
     *
     * <pre>
     * a JWT bound to the PK provided in the request
     * </pre>
     *
     * <code>string token = 1;</code>
     *
     * @return This builder for chaining.
     */
    public Builder clearToken() {

      token_ = getDefaultInstance().getToken();
      onChanged();
      return this;
    }
    /**
     *
     *
     * <pre>
     * a JWT bound to the PK provided in the request
     * </pre>
     *
     * <code>string token = 1;</code>
     *
     * @param value The bytes for token to set.
     * @return This builder for chaining.
     */
    public Builder setTokenBytes(com.google.protobuf.ByteString value) {
      if (value == null) {
        throw new NullPointerException();
      }
      checkByteStringIsUtf8(value);

      token_ = value;
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

    // @@protoc_insertion_point(builder_scope:services.provider.v1.GetEventTokenResponse)
  }

  // @@protoc_insertion_point(class_scope:services.provider.v1.GetEventTokenResponse)
  private static final trinsic.services.common.v1.GetEventTokenResponse DEFAULT_INSTANCE;

  static {
    DEFAULT_INSTANCE = new trinsic.services.common.v1.GetEventTokenResponse();
  }

  public static trinsic.services.common.v1.GetEventTokenResponse getDefaultInstance() {
    return DEFAULT_INSTANCE;
  }

  private static final com.google.protobuf.Parser<GetEventTokenResponse> PARSER =
      new com.google.protobuf.AbstractParser<GetEventTokenResponse>() {
        @java.lang.Override
        public GetEventTokenResponse parsePartialFrom(
            com.google.protobuf.CodedInputStream input,
            com.google.protobuf.ExtensionRegistryLite extensionRegistry)
            throws com.google.protobuf.InvalidProtocolBufferException {
          return new GetEventTokenResponse(input, extensionRegistry);
        }
      };

  public static com.google.protobuf.Parser<GetEventTokenResponse> parser() {
    return PARSER;
  }

  @java.lang.Override
  public com.google.protobuf.Parser<GetEventTokenResponse> getParserForType() {
    return PARSER;
  }

  @java.lang.Override
  public trinsic.services.common.v1.GetEventTokenResponse getDefaultInstanceForType() {
    return DEFAULT_INSTANCE;
  }
}
