// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: services/verifiable-credentials/v1/verifiable-credentials.proto

package trinsic.services.verifiablecredentials.v1;

/**
 * <pre>
 * Request to check a credential's revocation status
 * </pre>
 *
 * Protobuf type {@code services.verifiablecredentials.v1.CheckStatusRequest}
 */
public final class CheckStatusRequest extends
    com.google.protobuf.GeneratedMessageV3 implements
    // @@protoc_insertion_point(message_implements:services.verifiablecredentials.v1.CheckStatusRequest)
    CheckStatusRequestOrBuilder {
private static final long serialVersionUID = 0L;
  // Use CheckStatusRequest.newBuilder() to construct.
  private CheckStatusRequest(com.google.protobuf.GeneratedMessageV3.Builder<?> builder) {
    super(builder);
  }
  private CheckStatusRequest() {
    credentialStatusId_ = "";
  }

  @java.lang.Override
  @SuppressWarnings({"unused"})
  protected java.lang.Object newInstance(
      UnusedPrivateParameter unused) {
    return new CheckStatusRequest();
  }

  @java.lang.Override
  public final com.google.protobuf.UnknownFieldSet
  getUnknownFields() {
    return this.unknownFields;
  }
  private CheckStatusRequest(
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

            credentialStatusId_ = s;
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
    return trinsic.services.verifiablecredentials.v1.VerifiableCredentials.internal_static_services_verifiablecredentials_v1_CheckStatusRequest_descriptor;
  }

  @java.lang.Override
  protected com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
      internalGetFieldAccessorTable() {
    return trinsic.services.verifiablecredentials.v1.VerifiableCredentials.internal_static_services_verifiablecredentials_v1_CheckStatusRequest_fieldAccessorTable
        .ensureFieldAccessorsInitialized(
            trinsic.services.verifiablecredentials.v1.CheckStatusRequest.class, trinsic.services.verifiablecredentials.v1.CheckStatusRequest.Builder.class);
  }

  public static final int CREDENTIAL_STATUS_ID_FIELD_NUMBER = 1;
  private volatile java.lang.Object credentialStatusId_;
  /**
   * <pre>
   * Credential Status ID to check. This is not the same as the credential's ID.
   * </pre>
   *
   * <code>string credential_status_id = 1;</code>
   * @return The credentialStatusId.
   */
  @java.lang.Override
  public java.lang.String getCredentialStatusId() {
    java.lang.Object ref = credentialStatusId_;
    if (ref instanceof java.lang.String) {
      return (java.lang.String) ref;
    } else {
      com.google.protobuf.ByteString bs = 
          (com.google.protobuf.ByteString) ref;
      java.lang.String s = bs.toStringUtf8();
      credentialStatusId_ = s;
      return s;
    }
  }
  /**
   * <pre>
   * Credential Status ID to check. This is not the same as the credential's ID.
   * </pre>
   *
   * <code>string credential_status_id = 1;</code>
   * @return The bytes for credentialStatusId.
   */
  @java.lang.Override
  public com.google.protobuf.ByteString
      getCredentialStatusIdBytes() {
    java.lang.Object ref = credentialStatusId_;
    if (ref instanceof java.lang.String) {
      com.google.protobuf.ByteString b = 
          com.google.protobuf.ByteString.copyFromUtf8(
              (java.lang.String) ref);
      credentialStatusId_ = b;
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
    if (!com.google.protobuf.GeneratedMessageV3.isStringEmpty(credentialStatusId_)) {
      com.google.protobuf.GeneratedMessageV3.writeString(output, 1, credentialStatusId_);
    }
    unknownFields.writeTo(output);
  }

  @java.lang.Override
  public int getSerializedSize() {
    int size = memoizedSize;
    if (size != -1) return size;

    size = 0;
    if (!com.google.protobuf.GeneratedMessageV3.isStringEmpty(credentialStatusId_)) {
      size += com.google.protobuf.GeneratedMessageV3.computeStringSize(1, credentialStatusId_);
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
    if (!(obj instanceof trinsic.services.verifiablecredentials.v1.CheckStatusRequest)) {
      return super.equals(obj);
    }
    trinsic.services.verifiablecredentials.v1.CheckStatusRequest other = (trinsic.services.verifiablecredentials.v1.CheckStatusRequest) obj;

    if (!getCredentialStatusId()
        .equals(other.getCredentialStatusId())) return false;
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
    hash = (37 * hash) + CREDENTIAL_STATUS_ID_FIELD_NUMBER;
    hash = (53 * hash) + getCredentialStatusId().hashCode();
    hash = (29 * hash) + unknownFields.hashCode();
    memoizedHashCode = hash;
    return hash;
  }

  public static trinsic.services.verifiablecredentials.v1.CheckStatusRequest parseFrom(
      java.nio.ByteBuffer data)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data);
  }
  public static trinsic.services.verifiablecredentials.v1.CheckStatusRequest parseFrom(
      java.nio.ByteBuffer data,
      com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data, extensionRegistry);
  }
  public static trinsic.services.verifiablecredentials.v1.CheckStatusRequest parseFrom(
      com.google.protobuf.ByteString data)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data);
  }
  public static trinsic.services.verifiablecredentials.v1.CheckStatusRequest parseFrom(
      com.google.protobuf.ByteString data,
      com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data, extensionRegistry);
  }
  public static trinsic.services.verifiablecredentials.v1.CheckStatusRequest parseFrom(byte[] data)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data);
  }
  public static trinsic.services.verifiablecredentials.v1.CheckStatusRequest parseFrom(
      byte[] data,
      com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data, extensionRegistry);
  }
  public static trinsic.services.verifiablecredentials.v1.CheckStatusRequest parseFrom(java.io.InputStream input)
      throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3
        .parseWithIOException(PARSER, input);
  }
  public static trinsic.services.verifiablecredentials.v1.CheckStatusRequest parseFrom(
      java.io.InputStream input,
      com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3
        .parseWithIOException(PARSER, input, extensionRegistry);
  }
  public static trinsic.services.verifiablecredentials.v1.CheckStatusRequest parseDelimitedFrom(java.io.InputStream input)
      throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3
        .parseDelimitedWithIOException(PARSER, input);
  }
  public static trinsic.services.verifiablecredentials.v1.CheckStatusRequest parseDelimitedFrom(
      java.io.InputStream input,
      com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3
        .parseDelimitedWithIOException(PARSER, input, extensionRegistry);
  }
  public static trinsic.services.verifiablecredentials.v1.CheckStatusRequest parseFrom(
      com.google.protobuf.CodedInputStream input)
      throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3
        .parseWithIOException(PARSER, input);
  }
  public static trinsic.services.verifiablecredentials.v1.CheckStatusRequest parseFrom(
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
  public static Builder newBuilder(trinsic.services.verifiablecredentials.v1.CheckStatusRequest prototype) {
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
   * Request to check a credential's revocation status
   * </pre>
   *
   * Protobuf type {@code services.verifiablecredentials.v1.CheckStatusRequest}
   */
  public static final class Builder extends
      com.google.protobuf.GeneratedMessageV3.Builder<Builder> implements
      // @@protoc_insertion_point(builder_implements:services.verifiablecredentials.v1.CheckStatusRequest)
      trinsic.services.verifiablecredentials.v1.CheckStatusRequestOrBuilder {
    public static final com.google.protobuf.Descriptors.Descriptor
        getDescriptor() {
      return trinsic.services.verifiablecredentials.v1.VerifiableCredentials.internal_static_services_verifiablecredentials_v1_CheckStatusRequest_descriptor;
    }

    @java.lang.Override
    protected com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
        internalGetFieldAccessorTable() {
      return trinsic.services.verifiablecredentials.v1.VerifiableCredentials.internal_static_services_verifiablecredentials_v1_CheckStatusRequest_fieldAccessorTable
          .ensureFieldAccessorsInitialized(
              trinsic.services.verifiablecredentials.v1.CheckStatusRequest.class, trinsic.services.verifiablecredentials.v1.CheckStatusRequest.Builder.class);
    }

    // Construct using trinsic.services.verifiablecredentials.v1.CheckStatusRequest.newBuilder()
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
      credentialStatusId_ = "";

      return this;
    }

    @java.lang.Override
    public com.google.protobuf.Descriptors.Descriptor
        getDescriptorForType() {
      return trinsic.services.verifiablecredentials.v1.VerifiableCredentials.internal_static_services_verifiablecredentials_v1_CheckStatusRequest_descriptor;
    }

    @java.lang.Override
    public trinsic.services.verifiablecredentials.v1.CheckStatusRequest getDefaultInstanceForType() {
      return trinsic.services.verifiablecredentials.v1.CheckStatusRequest.getDefaultInstance();
    }

    @java.lang.Override
    public trinsic.services.verifiablecredentials.v1.CheckStatusRequest build() {
      trinsic.services.verifiablecredentials.v1.CheckStatusRequest result = buildPartial();
      if (!result.isInitialized()) {
        throw newUninitializedMessageException(result);
      }
      return result;
    }

    @java.lang.Override
    public trinsic.services.verifiablecredentials.v1.CheckStatusRequest buildPartial() {
      trinsic.services.verifiablecredentials.v1.CheckStatusRequest result = new trinsic.services.verifiablecredentials.v1.CheckStatusRequest(this);
      result.credentialStatusId_ = credentialStatusId_;
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
      if (other instanceof trinsic.services.verifiablecredentials.v1.CheckStatusRequest) {
        return mergeFrom((trinsic.services.verifiablecredentials.v1.CheckStatusRequest)other);
      } else {
        super.mergeFrom(other);
        return this;
      }
    }

    public Builder mergeFrom(trinsic.services.verifiablecredentials.v1.CheckStatusRequest other) {
      if (other == trinsic.services.verifiablecredentials.v1.CheckStatusRequest.getDefaultInstance()) return this;
      if (!other.getCredentialStatusId().isEmpty()) {
        credentialStatusId_ = other.credentialStatusId_;
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
      trinsic.services.verifiablecredentials.v1.CheckStatusRequest parsedMessage = null;
      try {
        parsedMessage = PARSER.parsePartialFrom(input, extensionRegistry);
      } catch (com.google.protobuf.InvalidProtocolBufferException e) {
        parsedMessage = (trinsic.services.verifiablecredentials.v1.CheckStatusRequest) e.getUnfinishedMessage();
        throw e.unwrapIOException();
      } finally {
        if (parsedMessage != null) {
          mergeFrom(parsedMessage);
        }
      }
      return this;
    }

    private java.lang.Object credentialStatusId_ = "";
    /**
     * <pre>
     * Credential Status ID to check. This is not the same as the credential's ID.
     * </pre>
     *
     * <code>string credential_status_id = 1;</code>
     * @return The credentialStatusId.
     */
    public java.lang.String getCredentialStatusId() {
      java.lang.Object ref = credentialStatusId_;
      if (!(ref instanceof java.lang.String)) {
        com.google.protobuf.ByteString bs =
            (com.google.protobuf.ByteString) ref;
        java.lang.String s = bs.toStringUtf8();
        credentialStatusId_ = s;
        return s;
      } else {
        return (java.lang.String) ref;
      }
    }
    /**
     * <pre>
     * Credential Status ID to check. This is not the same as the credential's ID.
     * </pre>
     *
     * <code>string credential_status_id = 1;</code>
     * @return The bytes for credentialStatusId.
     */
    public com.google.protobuf.ByteString
        getCredentialStatusIdBytes() {
      java.lang.Object ref = credentialStatusId_;
      if (ref instanceof String) {
        com.google.protobuf.ByteString b = 
            com.google.protobuf.ByteString.copyFromUtf8(
                (java.lang.String) ref);
        credentialStatusId_ = b;
        return b;
      } else {
        return (com.google.protobuf.ByteString) ref;
      }
    }
    /**
     * <pre>
     * Credential Status ID to check. This is not the same as the credential's ID.
     * </pre>
     *
     * <code>string credential_status_id = 1;</code>
     * @param value The credentialStatusId to set.
     * @return This builder for chaining.
     */
    public Builder setCredentialStatusId(
        java.lang.String value) {
      if (value == null) {
    throw new NullPointerException();
  }
  
      credentialStatusId_ = value;
      onChanged();
      return this;
    }
    /**
     * <pre>
     * Credential Status ID to check. This is not the same as the credential's ID.
     * </pre>
     *
     * <code>string credential_status_id = 1;</code>
     * @return This builder for chaining.
     */
    public Builder clearCredentialStatusId() {
      
      credentialStatusId_ = getDefaultInstance().getCredentialStatusId();
      onChanged();
      return this;
    }
    /**
     * <pre>
     * Credential Status ID to check. This is not the same as the credential's ID.
     * </pre>
     *
     * <code>string credential_status_id = 1;</code>
     * @param value The bytes for credentialStatusId to set.
     * @return This builder for chaining.
     */
    public Builder setCredentialStatusIdBytes(
        com.google.protobuf.ByteString value) {
      if (value == null) {
    throw new NullPointerException();
  }
  checkByteStringIsUtf8(value);
      
      credentialStatusId_ = value;
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


    // @@protoc_insertion_point(builder_scope:services.verifiablecredentials.v1.CheckStatusRequest)
  }

  // @@protoc_insertion_point(class_scope:services.verifiablecredentials.v1.CheckStatusRequest)
  private static final trinsic.services.verifiablecredentials.v1.CheckStatusRequest DEFAULT_INSTANCE;
  static {
    DEFAULT_INSTANCE = new trinsic.services.verifiablecredentials.v1.CheckStatusRequest();
  }

  public static trinsic.services.verifiablecredentials.v1.CheckStatusRequest getDefaultInstance() {
    return DEFAULT_INSTANCE;
  }

  private static final com.google.protobuf.Parser<CheckStatusRequest>
      PARSER = new com.google.protobuf.AbstractParser<CheckStatusRequest>() {
    @java.lang.Override
    public CheckStatusRequest parsePartialFrom(
        com.google.protobuf.CodedInputStream input,
        com.google.protobuf.ExtensionRegistryLite extensionRegistry)
        throws com.google.protobuf.InvalidProtocolBufferException {
      return new CheckStatusRequest(input, extensionRegistry);
    }
  };

  public static com.google.protobuf.Parser<CheckStatusRequest> parser() {
    return PARSER;
  }

  @java.lang.Override
  public com.google.protobuf.Parser<CheckStatusRequest> getParserForType() {
    return PARSER;
  }

  @java.lang.Override
  public trinsic.services.verifiablecredentials.v1.CheckStatusRequest getDefaultInstanceForType() {
    return DEFAULT_INSTANCE;
  }

}

