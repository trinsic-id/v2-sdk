// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: services/trust-registry/v1/trust-registry.proto

package trinsic.services.trustregistry.v1;

/** Protobuf type {@code services.trustregistry.v1.ListAuthorizedMembersRequest} */
public final class ListAuthorizedMembersRequest extends com.google.protobuf.GeneratedMessageV3
    implements
    // @@protoc_insertion_point(message_implements:services.trustregistry.v1.ListAuthorizedMembersRequest)
    ListAuthorizedMembersRequestOrBuilder {
  private static final long serialVersionUID = 0L;
  // Use ListAuthorizedMembersRequest.newBuilder() to construct.
  private ListAuthorizedMembersRequest(com.google.protobuf.GeneratedMessageV3.Builder<?> builder) {
    super(builder);
  }

  private ListAuthorizedMembersRequest() {
    frameworkId_ = "";
    schemaUri_ = "";
    continuationToken_ = "";
  }

  @java.lang.Override
  @SuppressWarnings({"unused"})
  protected java.lang.Object newInstance(UnusedPrivateParameter unused) {
    return new ListAuthorizedMembersRequest();
  }

  @java.lang.Override
  public final com.google.protobuf.UnknownFieldSet getUnknownFields() {
    return this.unknownFields;
  }

  public static final com.google.protobuf.Descriptors.Descriptor getDescriptor() {
    return trinsic.services.trustregistry.v1.TrustRegistryOuterClass
        .internal_static_services_trustregistry_v1_ListAuthorizedMembersRequest_descriptor;
  }

  @java.lang.Override
  protected com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
      internalGetFieldAccessorTable() {
    return trinsic.services.trustregistry.v1.TrustRegistryOuterClass
        .internal_static_services_trustregistry_v1_ListAuthorizedMembersRequest_fieldAccessorTable
        .ensureFieldAccessorsInitialized(
            trinsic.services.trustregistry.v1.ListAuthorizedMembersRequest.class,
            trinsic.services.trustregistry.v1.ListAuthorizedMembersRequest.Builder.class);
  }

  private int bitField0_;
  public static final int FRAMEWORK_ID_FIELD_NUMBER = 1;
  private volatile java.lang.Object frameworkId_;
  /**
   *
   *
   * <pre>
   * The ID of the ecosystem governance framework.
   * This ID may be found in the 'trustRegistry' field in the
   * verifiable credential model
   * </pre>
   *
   * <code>string framework_id = 1;</code>
   *
   * @return The frameworkId.
   */
  @java.lang.Override
  public java.lang.String getFrameworkId() {
    java.lang.Object ref = frameworkId_;
    if (ref instanceof java.lang.String) {
      return (java.lang.String) ref;
    } else {
      com.google.protobuf.ByteString bs = (com.google.protobuf.ByteString) ref;
      java.lang.String s = bs.toStringUtf8();
      frameworkId_ = s;
      return s;
    }
  }
  /**
   *
   *
   * <pre>
   * The ID of the ecosystem governance framework.
   * This ID may be found in the 'trustRegistry' field in the
   * verifiable credential model
   * </pre>
   *
   * <code>string framework_id = 1;</code>
   *
   * @return The bytes for frameworkId.
   */
  @java.lang.Override
  public com.google.protobuf.ByteString getFrameworkIdBytes() {
    java.lang.Object ref = frameworkId_;
    if (ref instanceof java.lang.String) {
      com.google.protobuf.ByteString b =
          com.google.protobuf.ByteString.copyFromUtf8((java.lang.String) ref);
      frameworkId_ = b;
      return b;
    } else {
      return (com.google.protobuf.ByteString) ref;
    }
  }

  public static final int SCHEMA_URI_FIELD_NUMBER = 2;
  private volatile java.lang.Object schemaUri_;
  /**
   *
   *
   * <pre>
   * id of schema that needs to be checked
   * </pre>
   *
   * <code>optional string schema_uri = 2;</code>
   *
   * @return Whether the schemaUri field is set.
   */
  @java.lang.Override
  public boolean hasSchemaUri() {
    return ((bitField0_ & 0x00000001) != 0);
  }
  /**
   *
   *
   * <pre>
   * id of schema that needs to be checked
   * </pre>
   *
   * <code>optional string schema_uri = 2;</code>
   *
   * @return The schemaUri.
   */
  @java.lang.Override
  public java.lang.String getSchemaUri() {
    java.lang.Object ref = schemaUri_;
    if (ref instanceof java.lang.String) {
      return (java.lang.String) ref;
    } else {
      com.google.protobuf.ByteString bs = (com.google.protobuf.ByteString) ref;
      java.lang.String s = bs.toStringUtf8();
      schemaUri_ = s;
      return s;
    }
  }
  /**
   *
   *
   * <pre>
   * id of schema that needs to be checked
   * </pre>
   *
   * <code>optional string schema_uri = 2;</code>
   *
   * @return The bytes for schemaUri.
   */
  @java.lang.Override
  public com.google.protobuf.ByteString getSchemaUriBytes() {
    java.lang.Object ref = schemaUri_;
    if (ref instanceof java.lang.String) {
      com.google.protobuf.ByteString b =
          com.google.protobuf.ByteString.copyFromUtf8((java.lang.String) ref);
      schemaUri_ = b;
      return b;
    } else {
      return (com.google.protobuf.ByteString) ref;
    }
  }

  public static final int CONTINUATION_TOKEN_FIELD_NUMBER = 3;
  private volatile java.lang.Object continuationToken_;
  /**
   *
   *
   * <pre>
   * Token to fetch next set of results, from previous `SearchRegistryResponse`
   * </pre>
   *
   * <code>optional string continuation_token = 3;</code>
   *
   * @return Whether the continuationToken field is set.
   */
  @java.lang.Override
  public boolean hasContinuationToken() {
    return ((bitField0_ & 0x00000002) != 0);
  }
  /**
   *
   *
   * <pre>
   * Token to fetch next set of results, from previous `SearchRegistryResponse`
   * </pre>
   *
   * <code>optional string continuation_token = 3;</code>
   *
   * @return The continuationToken.
   */
  @java.lang.Override
  public java.lang.String getContinuationToken() {
    java.lang.Object ref = continuationToken_;
    if (ref instanceof java.lang.String) {
      return (java.lang.String) ref;
    } else {
      com.google.protobuf.ByteString bs = (com.google.protobuf.ByteString) ref;
      java.lang.String s = bs.toStringUtf8();
      continuationToken_ = s;
      return s;
    }
  }
  /**
   *
   *
   * <pre>
   * Token to fetch next set of results, from previous `SearchRegistryResponse`
   * </pre>
   *
   * <code>optional string continuation_token = 3;</code>
   *
   * @return The bytes for continuationToken.
   */
  @java.lang.Override
  public com.google.protobuf.ByteString getContinuationTokenBytes() {
    java.lang.Object ref = continuationToken_;
    if (ref instanceof java.lang.String) {
      com.google.protobuf.ByteString b =
          com.google.protobuf.ByteString.copyFromUtf8((java.lang.String) ref);
      continuationToken_ = b;
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
    if (!com.google.protobuf.GeneratedMessageV3.isStringEmpty(frameworkId_)) {
      com.google.protobuf.GeneratedMessageV3.writeString(output, 1, frameworkId_);
    }
    if (((bitField0_ & 0x00000001) != 0)) {
      com.google.protobuf.GeneratedMessageV3.writeString(output, 2, schemaUri_);
    }
    if (((bitField0_ & 0x00000002) != 0)) {
      com.google.protobuf.GeneratedMessageV3.writeString(output, 3, continuationToken_);
    }
    getUnknownFields().writeTo(output);
  }

  @java.lang.Override
  public int getSerializedSize() {
    int size = memoizedSize;
    if (size != -1) return size;

    size = 0;
    if (!com.google.protobuf.GeneratedMessageV3.isStringEmpty(frameworkId_)) {
      size += com.google.protobuf.GeneratedMessageV3.computeStringSize(1, frameworkId_);
    }
    if (((bitField0_ & 0x00000001) != 0)) {
      size += com.google.protobuf.GeneratedMessageV3.computeStringSize(2, schemaUri_);
    }
    if (((bitField0_ & 0x00000002) != 0)) {
      size += com.google.protobuf.GeneratedMessageV3.computeStringSize(3, continuationToken_);
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
    if (!(obj instanceof trinsic.services.trustregistry.v1.ListAuthorizedMembersRequest)) {
      return super.equals(obj);
    }
    trinsic.services.trustregistry.v1.ListAuthorizedMembersRequest other =
        (trinsic.services.trustregistry.v1.ListAuthorizedMembersRequest) obj;

    if (!getFrameworkId().equals(other.getFrameworkId())) return false;
    if (hasSchemaUri() != other.hasSchemaUri()) return false;
    if (hasSchemaUri()) {
      if (!getSchemaUri().equals(other.getSchemaUri())) return false;
    }
    if (hasContinuationToken() != other.hasContinuationToken()) return false;
    if (hasContinuationToken()) {
      if (!getContinuationToken().equals(other.getContinuationToken())) return false;
    }
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
    hash = (37 * hash) + FRAMEWORK_ID_FIELD_NUMBER;
    hash = (53 * hash) + getFrameworkId().hashCode();
    if (hasSchemaUri()) {
      hash = (37 * hash) + SCHEMA_URI_FIELD_NUMBER;
      hash = (53 * hash) + getSchemaUri().hashCode();
    }
    if (hasContinuationToken()) {
      hash = (37 * hash) + CONTINUATION_TOKEN_FIELD_NUMBER;
      hash = (53 * hash) + getContinuationToken().hashCode();
    }
    hash = (29 * hash) + getUnknownFields().hashCode();
    memoizedHashCode = hash;
    return hash;
  }

  public static trinsic.services.trustregistry.v1.ListAuthorizedMembersRequest parseFrom(
      java.nio.ByteBuffer data) throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data);
  }

  public static trinsic.services.trustregistry.v1.ListAuthorizedMembersRequest parseFrom(
      java.nio.ByteBuffer data, com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data, extensionRegistry);
  }

  public static trinsic.services.trustregistry.v1.ListAuthorizedMembersRequest parseFrom(
      com.google.protobuf.ByteString data)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data);
  }

  public static trinsic.services.trustregistry.v1.ListAuthorizedMembersRequest parseFrom(
      com.google.protobuf.ByteString data,
      com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data, extensionRegistry);
  }

  public static trinsic.services.trustregistry.v1.ListAuthorizedMembersRequest parseFrom(
      byte[] data) throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data);
  }

  public static trinsic.services.trustregistry.v1.ListAuthorizedMembersRequest parseFrom(
      byte[] data, com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data, extensionRegistry);
  }

  public static trinsic.services.trustregistry.v1.ListAuthorizedMembersRequest parseFrom(
      java.io.InputStream input) throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3.parseWithIOException(PARSER, input);
  }

  public static trinsic.services.trustregistry.v1.ListAuthorizedMembersRequest parseFrom(
      java.io.InputStream input, com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3.parseWithIOException(
        PARSER, input, extensionRegistry);
  }

  public static trinsic.services.trustregistry.v1.ListAuthorizedMembersRequest parseDelimitedFrom(
      java.io.InputStream input) throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
  }

  public static trinsic.services.trustregistry.v1.ListAuthorizedMembersRequest parseDelimitedFrom(
      java.io.InputStream input, com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3.parseDelimitedWithIOException(
        PARSER, input, extensionRegistry);
  }

  public static trinsic.services.trustregistry.v1.ListAuthorizedMembersRequest parseFrom(
      com.google.protobuf.CodedInputStream input) throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3.parseWithIOException(PARSER, input);
  }

  public static trinsic.services.trustregistry.v1.ListAuthorizedMembersRequest parseFrom(
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
      trinsic.services.trustregistry.v1.ListAuthorizedMembersRequest prototype) {
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
  /** Protobuf type {@code services.trustregistry.v1.ListAuthorizedMembersRequest} */
  public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder>
      implements
      // @@protoc_insertion_point(builder_implements:services.trustregistry.v1.ListAuthorizedMembersRequest)
      trinsic.services.trustregistry.v1.ListAuthorizedMembersRequestOrBuilder {
    public static final com.google.protobuf.Descriptors.Descriptor getDescriptor() {
      return trinsic.services.trustregistry.v1.TrustRegistryOuterClass
          .internal_static_services_trustregistry_v1_ListAuthorizedMembersRequest_descriptor;
    }

    @java.lang.Override
    protected com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
        internalGetFieldAccessorTable() {
      return trinsic.services.trustregistry.v1.TrustRegistryOuterClass
          .internal_static_services_trustregistry_v1_ListAuthorizedMembersRequest_fieldAccessorTable
          .ensureFieldAccessorsInitialized(
              trinsic.services.trustregistry.v1.ListAuthorizedMembersRequest.class,
              trinsic.services.trustregistry.v1.ListAuthorizedMembersRequest.Builder.class);
    }

    // Construct using trinsic.services.trustregistry.v1.ListAuthorizedMembersRequest.newBuilder()
    private Builder() {}

    private Builder(com.google.protobuf.GeneratedMessageV3.BuilderParent parent) {
      super(parent);
    }

    @java.lang.Override
    public Builder clear() {
      super.clear();
      frameworkId_ = "";

      schemaUri_ = "";
      bitField0_ = (bitField0_ & ~0x00000001);
      continuationToken_ = "";
      bitField0_ = (bitField0_ & ~0x00000002);
      return this;
    }

    @java.lang.Override
    public com.google.protobuf.Descriptors.Descriptor getDescriptorForType() {
      return trinsic.services.trustregistry.v1.TrustRegistryOuterClass
          .internal_static_services_trustregistry_v1_ListAuthorizedMembersRequest_descriptor;
    }

    @java.lang.Override
    public trinsic.services.trustregistry.v1.ListAuthorizedMembersRequest
        getDefaultInstanceForType() {
      return trinsic.services.trustregistry.v1.ListAuthorizedMembersRequest.getDefaultInstance();
    }

    @java.lang.Override
    public trinsic.services.trustregistry.v1.ListAuthorizedMembersRequest build() {
      trinsic.services.trustregistry.v1.ListAuthorizedMembersRequest result = buildPartial();
      if (!result.isInitialized()) {
        throw newUninitializedMessageException(result);
      }
      return result;
    }

    @java.lang.Override
    public trinsic.services.trustregistry.v1.ListAuthorizedMembersRequest buildPartial() {
      trinsic.services.trustregistry.v1.ListAuthorizedMembersRequest result =
          new trinsic.services.trustregistry.v1.ListAuthorizedMembersRequest(this);
      int from_bitField0_ = bitField0_;
      int to_bitField0_ = 0;
      result.frameworkId_ = frameworkId_;
      if (((from_bitField0_ & 0x00000001) != 0)) {
        to_bitField0_ |= 0x00000001;
      }
      result.schemaUri_ = schemaUri_;
      if (((from_bitField0_ & 0x00000002) != 0)) {
        to_bitField0_ |= 0x00000002;
      }
      result.continuationToken_ = continuationToken_;
      result.bitField0_ = to_bitField0_;
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
      if (other instanceof trinsic.services.trustregistry.v1.ListAuthorizedMembersRequest) {
        return mergeFrom((trinsic.services.trustregistry.v1.ListAuthorizedMembersRequest) other);
      } else {
        super.mergeFrom(other);
        return this;
      }
    }

    public Builder mergeFrom(trinsic.services.trustregistry.v1.ListAuthorizedMembersRequest other) {
      if (other
          == trinsic.services.trustregistry.v1.ListAuthorizedMembersRequest.getDefaultInstance())
        return this;
      if (!other.getFrameworkId().isEmpty()) {
        frameworkId_ = other.frameworkId_;
        onChanged();
      }
      if (other.hasSchemaUri()) {
        bitField0_ |= 0x00000001;
        schemaUri_ = other.schemaUri_;
        onChanged();
      }
      if (other.hasContinuationToken()) {
        bitField0_ |= 0x00000002;
        continuationToken_ = other.continuationToken_;
        onChanged();
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
                frameworkId_ = input.readStringRequireUtf8();

                break;
              } // case 10
            case 18:
              {
                schemaUri_ = input.readStringRequireUtf8();
                bitField0_ |= 0x00000001;
                break;
              } // case 18
            case 26:
              {
                continuationToken_ = input.readStringRequireUtf8();
                bitField0_ |= 0x00000002;
                break;
              } // case 26
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

    private int bitField0_;

    private java.lang.Object frameworkId_ = "";
    /**
     *
     *
     * <pre>
     * The ID of the ecosystem governance framework.
     * This ID may be found in the 'trustRegistry' field in the
     * verifiable credential model
     * </pre>
     *
     * <code>string framework_id = 1;</code>
     *
     * @return The frameworkId.
     */
    public java.lang.String getFrameworkId() {
      java.lang.Object ref = frameworkId_;
      if (!(ref instanceof java.lang.String)) {
        com.google.protobuf.ByteString bs = (com.google.protobuf.ByteString) ref;
        java.lang.String s = bs.toStringUtf8();
        frameworkId_ = s;
        return s;
      } else {
        return (java.lang.String) ref;
      }
    }
    /**
     *
     *
     * <pre>
     * The ID of the ecosystem governance framework.
     * This ID may be found in the 'trustRegistry' field in the
     * verifiable credential model
     * </pre>
     *
     * <code>string framework_id = 1;</code>
     *
     * @return The bytes for frameworkId.
     */
    public com.google.protobuf.ByteString getFrameworkIdBytes() {
      java.lang.Object ref = frameworkId_;
      if (ref instanceof String) {
        com.google.protobuf.ByteString b =
            com.google.protobuf.ByteString.copyFromUtf8((java.lang.String) ref);
        frameworkId_ = b;
        return b;
      } else {
        return (com.google.protobuf.ByteString) ref;
      }
    }
    /**
     *
     *
     * <pre>
     * The ID of the ecosystem governance framework.
     * This ID may be found in the 'trustRegistry' field in the
     * verifiable credential model
     * </pre>
     *
     * <code>string framework_id = 1;</code>
     *
     * @param value The frameworkId to set.
     * @return This builder for chaining.
     */
    public Builder setFrameworkId(java.lang.String value) {
      if (value == null) {
        throw new NullPointerException();
      }

      frameworkId_ = value;
      onChanged();
      return this;
    }
    /**
     *
     *
     * <pre>
     * The ID of the ecosystem governance framework.
     * This ID may be found in the 'trustRegistry' field in the
     * verifiable credential model
     * </pre>
     *
     * <code>string framework_id = 1;</code>
     *
     * @return This builder for chaining.
     */
    public Builder clearFrameworkId() {

      frameworkId_ = getDefaultInstance().getFrameworkId();
      onChanged();
      return this;
    }
    /**
     *
     *
     * <pre>
     * The ID of the ecosystem governance framework.
     * This ID may be found in the 'trustRegistry' field in the
     * verifiable credential model
     * </pre>
     *
     * <code>string framework_id = 1;</code>
     *
     * @param value The bytes for frameworkId to set.
     * @return This builder for chaining.
     */
    public Builder setFrameworkIdBytes(com.google.protobuf.ByteString value) {
      if (value == null) {
        throw new NullPointerException();
      }
      checkByteStringIsUtf8(value);

      frameworkId_ = value;
      onChanged();
      return this;
    }

    private java.lang.Object schemaUri_ = "";
    /**
     *
     *
     * <pre>
     * id of schema that needs to be checked
     * </pre>
     *
     * <code>optional string schema_uri = 2;</code>
     *
     * @return Whether the schemaUri field is set.
     */
    public boolean hasSchemaUri() {
      return ((bitField0_ & 0x00000001) != 0);
    }
    /**
     *
     *
     * <pre>
     * id of schema that needs to be checked
     * </pre>
     *
     * <code>optional string schema_uri = 2;</code>
     *
     * @return The schemaUri.
     */
    public java.lang.String getSchemaUri() {
      java.lang.Object ref = schemaUri_;
      if (!(ref instanceof java.lang.String)) {
        com.google.protobuf.ByteString bs = (com.google.protobuf.ByteString) ref;
        java.lang.String s = bs.toStringUtf8();
        schemaUri_ = s;
        return s;
      } else {
        return (java.lang.String) ref;
      }
    }
    /**
     *
     *
     * <pre>
     * id of schema that needs to be checked
     * </pre>
     *
     * <code>optional string schema_uri = 2;</code>
     *
     * @return The bytes for schemaUri.
     */
    public com.google.protobuf.ByteString getSchemaUriBytes() {
      java.lang.Object ref = schemaUri_;
      if (ref instanceof String) {
        com.google.protobuf.ByteString b =
            com.google.protobuf.ByteString.copyFromUtf8((java.lang.String) ref);
        schemaUri_ = b;
        return b;
      } else {
        return (com.google.protobuf.ByteString) ref;
      }
    }
    /**
     *
     *
     * <pre>
     * id of schema that needs to be checked
     * </pre>
     *
     * <code>optional string schema_uri = 2;</code>
     *
     * @param value The schemaUri to set.
     * @return This builder for chaining.
     */
    public Builder setSchemaUri(java.lang.String value) {
      if (value == null) {
        throw new NullPointerException();
      }
      bitField0_ |= 0x00000001;
      schemaUri_ = value;
      onChanged();
      return this;
    }
    /**
     *
     *
     * <pre>
     * id of schema that needs to be checked
     * </pre>
     *
     * <code>optional string schema_uri = 2;</code>
     *
     * @return This builder for chaining.
     */
    public Builder clearSchemaUri() {
      bitField0_ = (bitField0_ & ~0x00000001);
      schemaUri_ = getDefaultInstance().getSchemaUri();
      onChanged();
      return this;
    }
    /**
     *
     *
     * <pre>
     * id of schema that needs to be checked
     * </pre>
     *
     * <code>optional string schema_uri = 2;</code>
     *
     * @param value The bytes for schemaUri to set.
     * @return This builder for chaining.
     */
    public Builder setSchemaUriBytes(com.google.protobuf.ByteString value) {
      if (value == null) {
        throw new NullPointerException();
      }
      checkByteStringIsUtf8(value);
      bitField0_ |= 0x00000001;
      schemaUri_ = value;
      onChanged();
      return this;
    }

    private java.lang.Object continuationToken_ = "";
    /**
     *
     *
     * <pre>
     * Token to fetch next set of results, from previous `SearchRegistryResponse`
     * </pre>
     *
     * <code>optional string continuation_token = 3;</code>
     *
     * @return Whether the continuationToken field is set.
     */
    public boolean hasContinuationToken() {
      return ((bitField0_ & 0x00000002) != 0);
    }
    /**
     *
     *
     * <pre>
     * Token to fetch next set of results, from previous `SearchRegistryResponse`
     * </pre>
     *
     * <code>optional string continuation_token = 3;</code>
     *
     * @return The continuationToken.
     */
    public java.lang.String getContinuationToken() {
      java.lang.Object ref = continuationToken_;
      if (!(ref instanceof java.lang.String)) {
        com.google.protobuf.ByteString bs = (com.google.protobuf.ByteString) ref;
        java.lang.String s = bs.toStringUtf8();
        continuationToken_ = s;
        return s;
      } else {
        return (java.lang.String) ref;
      }
    }
    /**
     *
     *
     * <pre>
     * Token to fetch next set of results, from previous `SearchRegistryResponse`
     * </pre>
     *
     * <code>optional string continuation_token = 3;</code>
     *
     * @return The bytes for continuationToken.
     */
    public com.google.protobuf.ByteString getContinuationTokenBytes() {
      java.lang.Object ref = continuationToken_;
      if (ref instanceof String) {
        com.google.protobuf.ByteString b =
            com.google.protobuf.ByteString.copyFromUtf8((java.lang.String) ref);
        continuationToken_ = b;
        return b;
      } else {
        return (com.google.protobuf.ByteString) ref;
      }
    }
    /**
     *
     *
     * <pre>
     * Token to fetch next set of results, from previous `SearchRegistryResponse`
     * </pre>
     *
     * <code>optional string continuation_token = 3;</code>
     *
     * @param value The continuationToken to set.
     * @return This builder for chaining.
     */
    public Builder setContinuationToken(java.lang.String value) {
      if (value == null) {
        throw new NullPointerException();
      }
      bitField0_ |= 0x00000002;
      continuationToken_ = value;
      onChanged();
      return this;
    }
    /**
     *
     *
     * <pre>
     * Token to fetch next set of results, from previous `SearchRegistryResponse`
     * </pre>
     *
     * <code>optional string continuation_token = 3;</code>
     *
     * @return This builder for chaining.
     */
    public Builder clearContinuationToken() {
      bitField0_ = (bitField0_ & ~0x00000002);
      continuationToken_ = getDefaultInstance().getContinuationToken();
      onChanged();
      return this;
    }
    /**
     *
     *
     * <pre>
     * Token to fetch next set of results, from previous `SearchRegistryResponse`
     * </pre>
     *
     * <code>optional string continuation_token = 3;</code>
     *
     * @param value The bytes for continuationToken to set.
     * @return This builder for chaining.
     */
    public Builder setContinuationTokenBytes(com.google.protobuf.ByteString value) {
      if (value == null) {
        throw new NullPointerException();
      }
      checkByteStringIsUtf8(value);
      bitField0_ |= 0x00000002;
      continuationToken_ = value;
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

    // @@protoc_insertion_point(builder_scope:services.trustregistry.v1.ListAuthorizedMembersRequest)
  }

  // @@protoc_insertion_point(class_scope:services.trustregistry.v1.ListAuthorizedMembersRequest)
  private static final trinsic.services.trustregistry.v1.ListAuthorizedMembersRequest
      DEFAULT_INSTANCE;

  static {
    DEFAULT_INSTANCE = new trinsic.services.trustregistry.v1.ListAuthorizedMembersRequest();
  }

  public static trinsic.services.trustregistry.v1.ListAuthorizedMembersRequest
      getDefaultInstance() {
    return DEFAULT_INSTANCE;
  }

  private static final com.google.protobuf.Parser<ListAuthorizedMembersRequest> PARSER =
      new com.google.protobuf.AbstractParser<ListAuthorizedMembersRequest>() {
        @java.lang.Override
        public ListAuthorizedMembersRequest parsePartialFrom(
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

  public static com.google.protobuf.Parser<ListAuthorizedMembersRequest> parser() {
    return PARSER;
  }

  @java.lang.Override
  public com.google.protobuf.Parser<ListAuthorizedMembersRequest> getParserForType() {
    return PARSER;
  }

  @java.lang.Override
  public trinsic.services.trustregistry.v1.ListAuthorizedMembersRequest
      getDefaultInstanceForType() {
    return DEFAULT_INSTANCE;
  }
}
