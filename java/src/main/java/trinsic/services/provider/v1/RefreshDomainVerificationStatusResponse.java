// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: services/provider/v1/provider.proto

package trinsic.services.provider.v1;

/**
 *
 *
 * <pre>
 * The below display can be removed only once the Dashboard is updating this itself - currently it uses this request
 * DEPRECATED, will be removed June 1st 2023
 * </pre>
 *
 * Protobuf type {@code services.provider.v1.RefreshDomainVerificationStatusResponse}
 */
@java.lang.Deprecated
public final class RefreshDomainVerificationStatusResponse
    extends com.google.protobuf.GeneratedMessageV3
    implements
    // @@protoc_insertion_point(message_implements:services.provider.v1.RefreshDomainVerificationStatusResponse)
    RefreshDomainVerificationStatusResponseOrBuilder {
  private static final long serialVersionUID = 0L;
  // Use RefreshDomainVerificationStatusResponse.newBuilder() to construct.
  private RefreshDomainVerificationStatusResponse(
      com.google.protobuf.GeneratedMessageV3.Builder<?> builder) {
    super(builder);
  }

  private RefreshDomainVerificationStatusResponse() {
    domain_ = "";
  }

  @java.lang.Override
  @SuppressWarnings({"unused"})
  protected java.lang.Object newInstance(UnusedPrivateParameter unused) {
    return new RefreshDomainVerificationStatusResponse();
  }

  @java.lang.Override
  public final com.google.protobuf.UnknownFieldSet getUnknownFields() {
    return this.unknownFields;
  }

  public static final com.google.protobuf.Descriptors.Descriptor getDescriptor() {
    return trinsic.services.provider.v1.ProviderOuterClass
        .internal_static_services_provider_v1_RefreshDomainVerificationStatusResponse_descriptor;
  }

  @java.lang.Override
  protected com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
      internalGetFieldAccessorTable() {
    return trinsic.services.provider.v1.ProviderOuterClass
        .internal_static_services_provider_v1_RefreshDomainVerificationStatusResponse_fieldAccessorTable
        .ensureFieldAccessorsInitialized(
            trinsic.services.provider.v1.RefreshDomainVerificationStatusResponse.class,
            trinsic.services.provider.v1.RefreshDomainVerificationStatusResponse.Builder.class);
  }

  public static final int DOMAIN_FIELD_NUMBER = 1;
  private volatile java.lang.Object domain_;
  /**
   *
   *
   * <pre>
   * Domain URL verified
   * </pre>
   *
   * <code>string domain = 1;</code>
   *
   * @return The domain.
   */
  @java.lang.Override
  public java.lang.String getDomain() {
    java.lang.Object ref = domain_;
    if (ref instanceof java.lang.String) {
      return (java.lang.String) ref;
    } else {
      com.google.protobuf.ByteString bs = (com.google.protobuf.ByteString) ref;
      java.lang.String s = bs.toStringUtf8();
      domain_ = s;
      return s;
    }
  }
  /**
   *
   *
   * <pre>
   * Domain URL verified
   * </pre>
   *
   * <code>string domain = 1;</code>
   *
   * @return The bytes for domain.
   */
  @java.lang.Override
  public com.google.protobuf.ByteString getDomainBytes() {
    java.lang.Object ref = domain_;
    if (ref instanceof java.lang.String) {
      com.google.protobuf.ByteString b =
          com.google.protobuf.ByteString.copyFromUtf8((java.lang.String) ref);
      domain_ = b;
      return b;
    } else {
      return (com.google.protobuf.ByteString) ref;
    }
  }

  public static final int DOMAIN_VERIFIED_FIELD_NUMBER = 2;
  private boolean domainVerified_;
  /**
   *
   *
   * <pre>
   * Specifies if the above `domain` was successfully verified
   * </pre>
   *
   * <code>bool domain_verified = 2;</code>
   *
   * @return The domainVerified.
   */
  @java.lang.Override
  public boolean getDomainVerified() {
    return domainVerified_;
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
    if (!com.google.protobuf.GeneratedMessageV3.isStringEmpty(domain_)) {
      com.google.protobuf.GeneratedMessageV3.writeString(output, 1, domain_);
    }
    if (domainVerified_ != false) {
      output.writeBool(2, domainVerified_);
    }
    getUnknownFields().writeTo(output);
  }

  @java.lang.Override
  public int getSerializedSize() {
    int size = memoizedSize;
    if (size != -1) return size;

    size = 0;
    if (!com.google.protobuf.GeneratedMessageV3.isStringEmpty(domain_)) {
      size += com.google.protobuf.GeneratedMessageV3.computeStringSize(1, domain_);
    }
    if (domainVerified_ != false) {
      size += com.google.protobuf.CodedOutputStream.computeBoolSize(2, domainVerified_);
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
    if (!(obj instanceof trinsic.services.provider.v1.RefreshDomainVerificationStatusResponse)) {
      return super.equals(obj);
    }
    trinsic.services.provider.v1.RefreshDomainVerificationStatusResponse other =
        (trinsic.services.provider.v1.RefreshDomainVerificationStatusResponse) obj;

    if (!getDomain().equals(other.getDomain())) return false;
    if (getDomainVerified() != other.getDomainVerified()) return false;
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
    hash = (37 * hash) + DOMAIN_FIELD_NUMBER;
    hash = (53 * hash) + getDomain().hashCode();
    hash = (37 * hash) + DOMAIN_VERIFIED_FIELD_NUMBER;
    hash = (53 * hash) + com.google.protobuf.Internal.hashBoolean(getDomainVerified());
    hash = (29 * hash) + getUnknownFields().hashCode();
    memoizedHashCode = hash;
    return hash;
  }

  public static trinsic.services.provider.v1.RefreshDomainVerificationStatusResponse parseFrom(
      java.nio.ByteBuffer data) throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data);
  }

  public static trinsic.services.provider.v1.RefreshDomainVerificationStatusResponse parseFrom(
      java.nio.ByteBuffer data, com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data, extensionRegistry);
  }

  public static trinsic.services.provider.v1.RefreshDomainVerificationStatusResponse parseFrom(
      com.google.protobuf.ByteString data)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data);
  }

  public static trinsic.services.provider.v1.RefreshDomainVerificationStatusResponse parseFrom(
      com.google.protobuf.ByteString data,
      com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data, extensionRegistry);
  }

  public static trinsic.services.provider.v1.RefreshDomainVerificationStatusResponse parseFrom(
      byte[] data) throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data);
  }

  public static trinsic.services.provider.v1.RefreshDomainVerificationStatusResponse parseFrom(
      byte[] data, com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data, extensionRegistry);
  }

  public static trinsic.services.provider.v1.RefreshDomainVerificationStatusResponse parseFrom(
      java.io.InputStream input) throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3.parseWithIOException(PARSER, input);
  }

  public static trinsic.services.provider.v1.RefreshDomainVerificationStatusResponse parseFrom(
      java.io.InputStream input, com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3.parseWithIOException(
        PARSER, input, extensionRegistry);
  }

  public static trinsic.services.provider.v1.RefreshDomainVerificationStatusResponse
      parseDelimitedFrom(java.io.InputStream input) throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
  }

  public static trinsic.services.provider.v1.RefreshDomainVerificationStatusResponse
      parseDelimitedFrom(
          java.io.InputStream input, com.google.protobuf.ExtensionRegistryLite extensionRegistry)
          throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3.parseDelimitedWithIOException(
        PARSER, input, extensionRegistry);
  }

  public static trinsic.services.provider.v1.RefreshDomainVerificationStatusResponse parseFrom(
      com.google.protobuf.CodedInputStream input) throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3.parseWithIOException(PARSER, input);
  }

  public static trinsic.services.provider.v1.RefreshDomainVerificationStatusResponse parseFrom(
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
      trinsic.services.provider.v1.RefreshDomainVerificationStatusResponse prototype) {
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
   * The below display can be removed only once the Dashboard is updating this itself - currently it uses this request
   * DEPRECATED, will be removed June 1st 2023
   * </pre>
   *
   * Protobuf type {@code services.provider.v1.RefreshDomainVerificationStatusResponse}
   */
  public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder>
      implements
      // @@protoc_insertion_point(builder_implements:services.provider.v1.RefreshDomainVerificationStatusResponse)
      trinsic.services.provider.v1.RefreshDomainVerificationStatusResponseOrBuilder {
    public static final com.google.protobuf.Descriptors.Descriptor getDescriptor() {
      return trinsic.services.provider.v1.ProviderOuterClass
          .internal_static_services_provider_v1_RefreshDomainVerificationStatusResponse_descriptor;
    }

    @java.lang.Override
    protected com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
        internalGetFieldAccessorTable() {
      return trinsic.services.provider.v1.ProviderOuterClass
          .internal_static_services_provider_v1_RefreshDomainVerificationStatusResponse_fieldAccessorTable
          .ensureFieldAccessorsInitialized(
              trinsic.services.provider.v1.RefreshDomainVerificationStatusResponse.class,
              trinsic.services.provider.v1.RefreshDomainVerificationStatusResponse.Builder.class);
    }

    // Construct using
    // trinsic.services.provider.v1.RefreshDomainVerificationStatusResponse.newBuilder()
    private Builder() {}

    private Builder(com.google.protobuf.GeneratedMessageV3.BuilderParent parent) {
      super(parent);
    }

    @java.lang.Override
    public Builder clear() {
      super.clear();
      domain_ = "";

      domainVerified_ = false;

      return this;
    }

    @java.lang.Override
    public com.google.protobuf.Descriptors.Descriptor getDescriptorForType() {
      return trinsic.services.provider.v1.ProviderOuterClass
          .internal_static_services_provider_v1_RefreshDomainVerificationStatusResponse_descriptor;
    }

    @java.lang.Override
    public trinsic.services.provider.v1.RefreshDomainVerificationStatusResponse
        getDefaultInstanceForType() {
      return trinsic.services.provider.v1.RefreshDomainVerificationStatusResponse
          .getDefaultInstance();
    }

    @java.lang.Override
    public trinsic.services.provider.v1.RefreshDomainVerificationStatusResponse build() {
      trinsic.services.provider.v1.RefreshDomainVerificationStatusResponse result = buildPartial();
      if (!result.isInitialized()) {
        throw newUninitializedMessageException(result);
      }
      return result;
    }

    @java.lang.Override
    public trinsic.services.provider.v1.RefreshDomainVerificationStatusResponse buildPartial() {
      trinsic.services.provider.v1.RefreshDomainVerificationStatusResponse result =
          new trinsic.services.provider.v1.RefreshDomainVerificationStatusResponse(this);
      result.domain_ = domain_;
      result.domainVerified_ = domainVerified_;
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
      if (other instanceof trinsic.services.provider.v1.RefreshDomainVerificationStatusResponse) {
        return mergeFrom(
            (trinsic.services.provider.v1.RefreshDomainVerificationStatusResponse) other);
      } else {
        super.mergeFrom(other);
        return this;
      }
    }

    public Builder mergeFrom(
        trinsic.services.provider.v1.RefreshDomainVerificationStatusResponse other) {
      if (other
          == trinsic.services.provider.v1.RefreshDomainVerificationStatusResponse
              .getDefaultInstance()) return this;
      if (!other.getDomain().isEmpty()) {
        domain_ = other.domain_;
        onChanged();
      }
      if (other.getDomainVerified() != false) {
        setDomainVerified(other.getDomainVerified());
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
                domain_ = input.readStringRequireUtf8();

                break;
              } // case 10
            case 16:
              {
                domainVerified_ = input.readBool();

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

    private java.lang.Object domain_ = "";
    /**
     *
     *
     * <pre>
     * Domain URL verified
     * </pre>
     *
     * <code>string domain = 1;</code>
     *
     * @return The domain.
     */
    public java.lang.String getDomain() {
      java.lang.Object ref = domain_;
      if (!(ref instanceof java.lang.String)) {
        com.google.protobuf.ByteString bs = (com.google.protobuf.ByteString) ref;
        java.lang.String s = bs.toStringUtf8();
        domain_ = s;
        return s;
      } else {
        return (java.lang.String) ref;
      }
    }
    /**
     *
     *
     * <pre>
     * Domain URL verified
     * </pre>
     *
     * <code>string domain = 1;</code>
     *
     * @return The bytes for domain.
     */
    public com.google.protobuf.ByteString getDomainBytes() {
      java.lang.Object ref = domain_;
      if (ref instanceof String) {
        com.google.protobuf.ByteString b =
            com.google.protobuf.ByteString.copyFromUtf8((java.lang.String) ref);
        domain_ = b;
        return b;
      } else {
        return (com.google.protobuf.ByteString) ref;
      }
    }
    /**
     *
     *
     * <pre>
     * Domain URL verified
     * </pre>
     *
     * <code>string domain = 1;</code>
     *
     * @param value The domain to set.
     * @return This builder for chaining.
     */
    public Builder setDomain(java.lang.String value) {
      if (value == null) {
        throw new NullPointerException();
      }

      domain_ = value;
      onChanged();
      return this;
    }
    /**
     *
     *
     * <pre>
     * Domain URL verified
     * </pre>
     *
     * <code>string domain = 1;</code>
     *
     * @return This builder for chaining.
     */
    public Builder clearDomain() {

      domain_ = getDefaultInstance().getDomain();
      onChanged();
      return this;
    }
    /**
     *
     *
     * <pre>
     * Domain URL verified
     * </pre>
     *
     * <code>string domain = 1;</code>
     *
     * @param value The bytes for domain to set.
     * @return This builder for chaining.
     */
    public Builder setDomainBytes(com.google.protobuf.ByteString value) {
      if (value == null) {
        throw new NullPointerException();
      }
      checkByteStringIsUtf8(value);

      domain_ = value;
      onChanged();
      return this;
    }

    private boolean domainVerified_;
    /**
     *
     *
     * <pre>
     * Specifies if the above `domain` was successfully verified
     * </pre>
     *
     * <code>bool domain_verified = 2;</code>
     *
     * @return The domainVerified.
     */
    @java.lang.Override
    public boolean getDomainVerified() {
      return domainVerified_;
    }
    /**
     *
     *
     * <pre>
     * Specifies if the above `domain` was successfully verified
     * </pre>
     *
     * <code>bool domain_verified = 2;</code>
     *
     * @param value The domainVerified to set.
     * @return This builder for chaining.
     */
    public Builder setDomainVerified(boolean value) {

      domainVerified_ = value;
      onChanged();
      return this;
    }
    /**
     *
     *
     * <pre>
     * Specifies if the above `domain` was successfully verified
     * </pre>
     *
     * <code>bool domain_verified = 2;</code>
     *
     * @return This builder for chaining.
     */
    public Builder clearDomainVerified() {

      domainVerified_ = false;
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

    // @@protoc_insertion_point(builder_scope:services.provider.v1.RefreshDomainVerificationStatusResponse)
  }

  // @@protoc_insertion_point(class_scope:services.provider.v1.RefreshDomainVerificationStatusResponse)
  private static final trinsic.services.provider.v1.RefreshDomainVerificationStatusResponse
      DEFAULT_INSTANCE;

  static {
    DEFAULT_INSTANCE = new trinsic.services.provider.v1.RefreshDomainVerificationStatusResponse();
  }

  public static trinsic.services.provider.v1.RefreshDomainVerificationStatusResponse
      getDefaultInstance() {
    return DEFAULT_INSTANCE;
  }

  private static final com.google.protobuf.Parser<RefreshDomainVerificationStatusResponse> PARSER =
      new com.google.protobuf.AbstractParser<RefreshDomainVerificationStatusResponse>() {
        @java.lang.Override
        public RefreshDomainVerificationStatusResponse parsePartialFrom(
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

  public static com.google.protobuf.Parser<RefreshDomainVerificationStatusResponse> parser() {
    return PARSER;
  }

  @java.lang.Override
  public com.google.protobuf.Parser<RefreshDomainVerificationStatusResponse> getParserForType() {
    return PARSER;
  }

  @java.lang.Override
  public trinsic.services.provider.v1.RefreshDomainVerificationStatusResponse
      getDefaultInstanceForType() {
    return DEFAULT_INSTANCE;
  }
}
