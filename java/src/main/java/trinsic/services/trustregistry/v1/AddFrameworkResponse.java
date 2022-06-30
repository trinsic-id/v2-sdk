// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: services/trust-registry/v1/trust-registry.proto

package trinsic.services.trustregistry.v1;

/** Protobuf type {@code services.trustregistry.v1.AddFrameworkResponse} */
public final class AddFrameworkResponse extends com.google.protobuf.GeneratedMessageV3
    implements
    // @@protoc_insertion_point(message_implements:services.trustregistry.v1.AddFrameworkResponse)
    AddFrameworkResponseOrBuilder {
  private static final long serialVersionUID = 0L;
  // Use AddFrameworkResponse.newBuilder() to construct.
  private AddFrameworkResponse(com.google.protobuf.GeneratedMessageV3.Builder<?> builder) {
    super(builder);
  }

  private AddFrameworkResponse() {
    id_ = "";
    governingAuthority_ = "";
    trustRegistry_ = "";
  }

  @java.lang.Override
  @SuppressWarnings({"unused"})
  protected java.lang.Object newInstance(UnusedPrivateParameter unused) {
    return new AddFrameworkResponse();
  }

  @java.lang.Override
  public final com.google.protobuf.UnknownFieldSet getUnknownFields() {
    return this.unknownFields;
  }

  private AddFrameworkResponse(
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

              id_ = s;
              break;
            }
          case 18:
            {
              java.lang.String s = input.readStringRequireUtf8();

              governingAuthority_ = s;
              break;
            }
          case 26:
            {
              java.lang.String s = input.readStringRequireUtf8();

              trustRegistry_ = s;
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
    return trinsic.services.trustregistry.v1.TrustRegistryOuterClass
        .internal_static_services_trustregistry_v1_AddFrameworkResponse_descriptor;
  }

  @java.lang.Override
  protected com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
      internalGetFieldAccessorTable() {
    return trinsic.services.trustregistry.v1.TrustRegistryOuterClass
        .internal_static_services_trustregistry_v1_AddFrameworkResponse_fieldAccessorTable
        .ensureFieldAccessorsInitialized(
            trinsic.services.trustregistry.v1.AddFrameworkResponse.class,
            trinsic.services.trustregistry.v1.AddFrameworkResponse.Builder.class);
  }

  public static final int ID_FIELD_NUMBER = 1;
  private volatile java.lang.Object id_;
  /**
   *
   *
   * <pre>
   * Unique framework identifier
   * </pre>
   *
   * <code>string id = 1;</code>
   *
   * @return The id.
   */
  @java.lang.Override
  public java.lang.String getId() {
    java.lang.Object ref = id_;
    if (ref instanceof java.lang.String) {
      return (java.lang.String) ref;
    } else {
      com.google.protobuf.ByteString bs = (com.google.protobuf.ByteString) ref;
      java.lang.String s = bs.toStringUtf8();
      id_ = s;
      return s;
    }
  }
  /**
   *
   *
   * <pre>
   * Unique framework identifier
   * </pre>
   *
   * <code>string id = 1;</code>
   *
   * @return The bytes for id.
   */
  @java.lang.Override
  public com.google.protobuf.ByteString getIdBytes() {
    java.lang.Object ref = id_;
    if (ref instanceof java.lang.String) {
      com.google.protobuf.ByteString b =
          com.google.protobuf.ByteString.copyFromUtf8((java.lang.String) ref);
      id_ = b;
      return b;
    } else {
      return (com.google.protobuf.ByteString) ref;
    }
  }

  public static final int GOVERNING_AUTHORITY_FIELD_NUMBER = 2;
  private volatile java.lang.Object governingAuthority_;
  /**
   * <code>string governing_authority = 2;</code>
   *
   * @return The governingAuthority.
   */
  @java.lang.Override
  public java.lang.String getGoverningAuthority() {
    java.lang.Object ref = governingAuthority_;
    if (ref instanceof java.lang.String) {
      return (java.lang.String) ref;
    } else {
      com.google.protobuf.ByteString bs = (com.google.protobuf.ByteString) ref;
      java.lang.String s = bs.toStringUtf8();
      governingAuthority_ = s;
      return s;
    }
  }
  /**
   * <code>string governing_authority = 2;</code>
   *
   * @return The bytes for governingAuthority.
   */
  @java.lang.Override
  public com.google.protobuf.ByteString getGoverningAuthorityBytes() {
    java.lang.Object ref = governingAuthority_;
    if (ref instanceof java.lang.String) {
      com.google.protobuf.ByteString b =
          com.google.protobuf.ByteString.copyFromUtf8((java.lang.String) ref);
      governingAuthority_ = b;
      return b;
    } else {
      return (com.google.protobuf.ByteString) ref;
    }
  }

  public static final int TRUST_REGISTRY_FIELD_NUMBER = 3;
  private volatile java.lang.Object trustRegistry_;
  /**
   * <code>string trust_registry = 3;</code>
   *
   * @return The trustRegistry.
   */
  @java.lang.Override
  public java.lang.String getTrustRegistry() {
    java.lang.Object ref = trustRegistry_;
    if (ref instanceof java.lang.String) {
      return (java.lang.String) ref;
    } else {
      com.google.protobuf.ByteString bs = (com.google.protobuf.ByteString) ref;
      java.lang.String s = bs.toStringUtf8();
      trustRegistry_ = s;
      return s;
    }
  }
  /**
   * <code>string trust_registry = 3;</code>
   *
   * @return The bytes for trustRegistry.
   */
  @java.lang.Override
  public com.google.protobuf.ByteString getTrustRegistryBytes() {
    java.lang.Object ref = trustRegistry_;
    if (ref instanceof java.lang.String) {
      com.google.protobuf.ByteString b =
          com.google.protobuf.ByteString.copyFromUtf8((java.lang.String) ref);
      trustRegistry_ = b;
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
    if (!com.google.protobuf.GeneratedMessageV3.isStringEmpty(id_)) {
      com.google.protobuf.GeneratedMessageV3.writeString(output, 1, id_);
    }
    if (!com.google.protobuf.GeneratedMessageV3.isStringEmpty(governingAuthority_)) {
      com.google.protobuf.GeneratedMessageV3.writeString(output, 2, governingAuthority_);
    }
    if (!com.google.protobuf.GeneratedMessageV3.isStringEmpty(trustRegistry_)) {
      com.google.protobuf.GeneratedMessageV3.writeString(output, 3, trustRegistry_);
    }
    unknownFields.writeTo(output);
  }

  @java.lang.Override
  public int getSerializedSize() {
    int size = memoizedSize;
    if (size != -1) return size;

    size = 0;
    if (!com.google.protobuf.GeneratedMessageV3.isStringEmpty(id_)) {
      size += com.google.protobuf.GeneratedMessageV3.computeStringSize(1, id_);
    }
    if (!com.google.protobuf.GeneratedMessageV3.isStringEmpty(governingAuthority_)) {
      size += com.google.protobuf.GeneratedMessageV3.computeStringSize(2, governingAuthority_);
    }
    if (!com.google.protobuf.GeneratedMessageV3.isStringEmpty(trustRegistry_)) {
      size += com.google.protobuf.GeneratedMessageV3.computeStringSize(3, trustRegistry_);
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
    if (!(obj instanceof trinsic.services.trustregistry.v1.AddFrameworkResponse)) {
      return super.equals(obj);
    }
    trinsic.services.trustregistry.v1.AddFrameworkResponse other =
        (trinsic.services.trustregistry.v1.AddFrameworkResponse) obj;

    if (!getId().equals(other.getId())) return false;
    if (!getGoverningAuthority().equals(other.getGoverningAuthority())) return false;
    if (!getTrustRegistry().equals(other.getTrustRegistry())) return false;
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
    hash = (37 * hash) + ID_FIELD_NUMBER;
    hash = (53 * hash) + getId().hashCode();
    hash = (37 * hash) + GOVERNING_AUTHORITY_FIELD_NUMBER;
    hash = (53 * hash) + getGoverningAuthority().hashCode();
    hash = (37 * hash) + TRUST_REGISTRY_FIELD_NUMBER;
    hash = (53 * hash) + getTrustRegistry().hashCode();
    hash = (29 * hash) + unknownFields.hashCode();
    memoizedHashCode = hash;
    return hash;
  }

  public static trinsic.services.trustregistry.v1.AddFrameworkResponse parseFrom(
      java.nio.ByteBuffer data) throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data);
  }

  public static trinsic.services.trustregistry.v1.AddFrameworkResponse parseFrom(
      java.nio.ByteBuffer data, com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data, extensionRegistry);
  }

  public static trinsic.services.trustregistry.v1.AddFrameworkResponse parseFrom(
      com.google.protobuf.ByteString data)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data);
  }

  public static trinsic.services.trustregistry.v1.AddFrameworkResponse parseFrom(
      com.google.protobuf.ByteString data,
      com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data, extensionRegistry);
  }

  public static trinsic.services.trustregistry.v1.AddFrameworkResponse parseFrom(byte[] data)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data);
  }

  public static trinsic.services.trustregistry.v1.AddFrameworkResponse parseFrom(
      byte[] data, com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data, extensionRegistry);
  }

  public static trinsic.services.trustregistry.v1.AddFrameworkResponse parseFrom(
      java.io.InputStream input) throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3.parseWithIOException(PARSER, input);
  }

  public static trinsic.services.trustregistry.v1.AddFrameworkResponse parseFrom(
      java.io.InputStream input, com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3.parseWithIOException(
        PARSER, input, extensionRegistry);
  }

  public static trinsic.services.trustregistry.v1.AddFrameworkResponse parseDelimitedFrom(
      java.io.InputStream input) throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
  }

  public static trinsic.services.trustregistry.v1.AddFrameworkResponse parseDelimitedFrom(
      java.io.InputStream input, com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3.parseDelimitedWithIOException(
        PARSER, input, extensionRegistry);
  }

  public static trinsic.services.trustregistry.v1.AddFrameworkResponse parseFrom(
      com.google.protobuf.CodedInputStream input) throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3.parseWithIOException(PARSER, input);
  }

  public static trinsic.services.trustregistry.v1.AddFrameworkResponse parseFrom(
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
      trinsic.services.trustregistry.v1.AddFrameworkResponse prototype) {
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
  /** Protobuf type {@code services.trustregistry.v1.AddFrameworkResponse} */
  public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder>
      implements
      // @@protoc_insertion_point(builder_implements:services.trustregistry.v1.AddFrameworkResponse)
      trinsic.services.trustregistry.v1.AddFrameworkResponseOrBuilder {
    public static final com.google.protobuf.Descriptors.Descriptor getDescriptor() {
      return trinsic.services.trustregistry.v1.TrustRegistryOuterClass
          .internal_static_services_trustregistry_v1_AddFrameworkResponse_descriptor;
    }

    @java.lang.Override
    protected com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
        internalGetFieldAccessorTable() {
      return trinsic.services.trustregistry.v1.TrustRegistryOuterClass
          .internal_static_services_trustregistry_v1_AddFrameworkResponse_fieldAccessorTable
          .ensureFieldAccessorsInitialized(
              trinsic.services.trustregistry.v1.AddFrameworkResponse.class,
              trinsic.services.trustregistry.v1.AddFrameworkResponse.Builder.class);
    }

    // Construct using trinsic.services.trustregistry.v1.AddFrameworkResponse.newBuilder()
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
      id_ = "";

      governingAuthority_ = "";

      trustRegistry_ = "";

      return this;
    }

    @java.lang.Override
    public com.google.protobuf.Descriptors.Descriptor getDescriptorForType() {
      return trinsic.services.trustregistry.v1.TrustRegistryOuterClass
          .internal_static_services_trustregistry_v1_AddFrameworkResponse_descriptor;
    }

    @java.lang.Override
    public trinsic.services.trustregistry.v1.AddFrameworkResponse getDefaultInstanceForType() {
      return trinsic.services.trustregistry.v1.AddFrameworkResponse.getDefaultInstance();
    }

    @java.lang.Override
    public trinsic.services.trustregistry.v1.AddFrameworkResponse build() {
      trinsic.services.trustregistry.v1.AddFrameworkResponse result = buildPartial();
      if (!result.isInitialized()) {
        throw newUninitializedMessageException(result);
      }
      return result;
    }

    @java.lang.Override
    public trinsic.services.trustregistry.v1.AddFrameworkResponse buildPartial() {
      trinsic.services.trustregistry.v1.AddFrameworkResponse result =
          new trinsic.services.trustregistry.v1.AddFrameworkResponse(this);
      result.id_ = id_;
      result.governingAuthority_ = governingAuthority_;
      result.trustRegistry_ = trustRegistry_;
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
      if (other instanceof trinsic.services.trustregistry.v1.AddFrameworkResponse) {
        return mergeFrom((trinsic.services.trustregistry.v1.AddFrameworkResponse) other);
      } else {
        super.mergeFrom(other);
        return this;
      }
    }

    public Builder mergeFrom(trinsic.services.trustregistry.v1.AddFrameworkResponse other) {
      if (other == trinsic.services.trustregistry.v1.AddFrameworkResponse.getDefaultInstance())
        return this;
      if (!other.getId().isEmpty()) {
        id_ = other.id_;
        onChanged();
      }
      if (!other.getGoverningAuthority().isEmpty()) {
        governingAuthority_ = other.governingAuthority_;
        onChanged();
      }
      if (!other.getTrustRegistry().isEmpty()) {
        trustRegistry_ = other.trustRegistry_;
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
      trinsic.services.trustregistry.v1.AddFrameworkResponse parsedMessage = null;
      try {
        parsedMessage = PARSER.parsePartialFrom(input, extensionRegistry);
      } catch (com.google.protobuf.InvalidProtocolBufferException e) {
        parsedMessage =
            (trinsic.services.trustregistry.v1.AddFrameworkResponse) e.getUnfinishedMessage();
        throw e.unwrapIOException();
      } finally {
        if (parsedMessage != null) {
          mergeFrom(parsedMessage);
        }
      }
      return this;
    }

    private java.lang.Object id_ = "";
    /**
     *
     *
     * <pre>
     * Unique framework identifier
     * </pre>
     *
     * <code>string id = 1;</code>
     *
     * @return The id.
     */
    public java.lang.String getId() {
      java.lang.Object ref = id_;
      if (!(ref instanceof java.lang.String)) {
        com.google.protobuf.ByteString bs = (com.google.protobuf.ByteString) ref;
        java.lang.String s = bs.toStringUtf8();
        id_ = s;
        return s;
      } else {
        return (java.lang.String) ref;
      }
    }
    /**
     *
     *
     * <pre>
     * Unique framework identifier
     * </pre>
     *
     * <code>string id = 1;</code>
     *
     * @return The bytes for id.
     */
    public com.google.protobuf.ByteString getIdBytes() {
      java.lang.Object ref = id_;
      if (ref instanceof String) {
        com.google.protobuf.ByteString b =
            com.google.protobuf.ByteString.copyFromUtf8((java.lang.String) ref);
        id_ = b;
        return b;
      } else {
        return (com.google.protobuf.ByteString) ref;
      }
    }
    /**
     *
     *
     * <pre>
     * Unique framework identifier
     * </pre>
     *
     * <code>string id = 1;</code>
     *
     * @param value The id to set.
     * @return This builder for chaining.
     */
    public Builder setId(java.lang.String value) {
      if (value == null) {
        throw new NullPointerException();
      }

      id_ = value;
      onChanged();
      return this;
    }
    /**
     *
     *
     * <pre>
     * Unique framework identifier
     * </pre>
     *
     * <code>string id = 1;</code>
     *
     * @return This builder for chaining.
     */
    public Builder clearId() {

      id_ = getDefaultInstance().getId();
      onChanged();
      return this;
    }
    /**
     *
     *
     * <pre>
     * Unique framework identifier
     * </pre>
     *
     * <code>string id = 1;</code>
     *
     * @param value The bytes for id to set.
     * @return This builder for chaining.
     */
    public Builder setIdBytes(com.google.protobuf.ByteString value) {
      if (value == null) {
        throw new NullPointerException();
      }
      checkByteStringIsUtf8(value);

      id_ = value;
      onChanged();
      return this;
    }

    private java.lang.Object governingAuthority_ = "";
    /**
     * <code>string governing_authority = 2;</code>
     *
     * @return The governingAuthority.
     */
    public java.lang.String getGoverningAuthority() {
      java.lang.Object ref = governingAuthority_;
      if (!(ref instanceof java.lang.String)) {
        com.google.protobuf.ByteString bs = (com.google.protobuf.ByteString) ref;
        java.lang.String s = bs.toStringUtf8();
        governingAuthority_ = s;
        return s;
      } else {
        return (java.lang.String) ref;
      }
    }
    /**
     * <code>string governing_authority = 2;</code>
     *
     * @return The bytes for governingAuthority.
     */
    public com.google.protobuf.ByteString getGoverningAuthorityBytes() {
      java.lang.Object ref = governingAuthority_;
      if (ref instanceof String) {
        com.google.protobuf.ByteString b =
            com.google.protobuf.ByteString.copyFromUtf8((java.lang.String) ref);
        governingAuthority_ = b;
        return b;
      } else {
        return (com.google.protobuf.ByteString) ref;
      }
    }
    /**
     * <code>string governing_authority = 2;</code>
     *
     * @param value The governingAuthority to set.
     * @return This builder for chaining.
     */
    public Builder setGoverningAuthority(java.lang.String value) {
      if (value == null) {
        throw new NullPointerException();
      }

      governingAuthority_ = value;
      onChanged();
      return this;
    }
    /**
     * <code>string governing_authority = 2;</code>
     *
     * @return This builder for chaining.
     */
    public Builder clearGoverningAuthority() {

      governingAuthority_ = getDefaultInstance().getGoverningAuthority();
      onChanged();
      return this;
    }
    /**
     * <code>string governing_authority = 2;</code>
     *
     * @param value The bytes for governingAuthority to set.
     * @return This builder for chaining.
     */
    public Builder setGoverningAuthorityBytes(com.google.protobuf.ByteString value) {
      if (value == null) {
        throw new NullPointerException();
      }
      checkByteStringIsUtf8(value);

      governingAuthority_ = value;
      onChanged();
      return this;
    }

    private java.lang.Object trustRegistry_ = "";
    /**
     * <code>string trust_registry = 3;</code>
     *
     * @return The trustRegistry.
     */
    public java.lang.String getTrustRegistry() {
      java.lang.Object ref = trustRegistry_;
      if (!(ref instanceof java.lang.String)) {
        com.google.protobuf.ByteString bs = (com.google.protobuf.ByteString) ref;
        java.lang.String s = bs.toStringUtf8();
        trustRegistry_ = s;
        return s;
      } else {
        return (java.lang.String) ref;
      }
    }
    /**
     * <code>string trust_registry = 3;</code>
     *
     * @return The bytes for trustRegistry.
     */
    public com.google.protobuf.ByteString getTrustRegistryBytes() {
      java.lang.Object ref = trustRegistry_;
      if (ref instanceof String) {
        com.google.protobuf.ByteString b =
            com.google.protobuf.ByteString.copyFromUtf8((java.lang.String) ref);
        trustRegistry_ = b;
        return b;
      } else {
        return (com.google.protobuf.ByteString) ref;
      }
    }
    /**
     * <code>string trust_registry = 3;</code>
     *
     * @param value The trustRegistry to set.
     * @return This builder for chaining.
     */
    public Builder setTrustRegistry(java.lang.String value) {
      if (value == null) {
        throw new NullPointerException();
      }

      trustRegistry_ = value;
      onChanged();
      return this;
    }
    /**
     * <code>string trust_registry = 3;</code>
     *
     * @return This builder for chaining.
     */
    public Builder clearTrustRegistry() {

      trustRegistry_ = getDefaultInstance().getTrustRegistry();
      onChanged();
      return this;
    }
    /**
     * <code>string trust_registry = 3;</code>
     *
     * @param value The bytes for trustRegistry to set.
     * @return This builder for chaining.
     */
    public Builder setTrustRegistryBytes(com.google.protobuf.ByteString value) {
      if (value == null) {
        throw new NullPointerException();
      }
      checkByteStringIsUtf8(value);

      trustRegistry_ = value;
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

    // @@protoc_insertion_point(builder_scope:services.trustregistry.v1.AddFrameworkResponse)
  }

  // @@protoc_insertion_point(class_scope:services.trustregistry.v1.AddFrameworkResponse)
  private static final trinsic.services.trustregistry.v1.AddFrameworkResponse DEFAULT_INSTANCE;

  static {
    DEFAULT_INSTANCE = new trinsic.services.trustregistry.v1.AddFrameworkResponse();
  }

  public static trinsic.services.trustregistry.v1.AddFrameworkResponse getDefaultInstance() {
    return DEFAULT_INSTANCE;
  }

  private static final com.google.protobuf.Parser<AddFrameworkResponse> PARSER =
      new com.google.protobuf.AbstractParser<AddFrameworkResponse>() {
        @java.lang.Override
        public AddFrameworkResponse parsePartialFrom(
            com.google.protobuf.CodedInputStream input,
            com.google.protobuf.ExtensionRegistryLite extensionRegistry)
            throws com.google.protobuf.InvalidProtocolBufferException {
          return new AddFrameworkResponse(input, extensionRegistry);
        }
      };

  public static com.google.protobuf.Parser<AddFrameworkResponse> parser() {
    return PARSER;
  }

  @java.lang.Override
  public com.google.protobuf.Parser<AddFrameworkResponse> getParserForType() {
    return PARSER;
  }

  @java.lang.Override
  public trinsic.services.trustregistry.v1.AddFrameworkResponse getDefaultInstanceForType() {
    return DEFAULT_INSTANCE;
  }
}