// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: services/verifiable-credentials/templates/v1/templates.proto

package trinsic.services.verifiablecredentials.templates.v1;

/**
 *
 *
 * <pre>
 * A patch to apply to an existing template field
 * </pre>
 *
 * Protobuf type {@code services.verifiablecredentials.templates.v1.TemplateFieldPatch}
 */
public final class TemplateFieldPatch extends com.google.protobuf.GeneratedMessageV3
    implements
    // @@protoc_insertion_point(message_implements:services.verifiablecredentials.templates.v1.TemplateFieldPatch)
    TemplateFieldPatchOrBuilder {
  private static final long serialVersionUID = 0L;
  // Use TemplateFieldPatch.newBuilder() to construct.
  private TemplateFieldPatch(com.google.protobuf.GeneratedMessageV3.Builder<?> builder) {
    super(builder);
  }

  private TemplateFieldPatch() {
    title_ = "";
    description_ = "";
  }

  @java.lang.Override
  @SuppressWarnings({"unused"})
  protected java.lang.Object newInstance(UnusedPrivateParameter unused) {
    return new TemplateFieldPatch();
  }

  @java.lang.Override
  public final com.google.protobuf.UnknownFieldSet getUnknownFields() {
    return this.unknownFields;
  }

  public static final com.google.protobuf.Descriptors.Descriptor getDescriptor() {
    return trinsic.services.verifiablecredentials.templates.v1.Templates
        .internal_static_services_verifiablecredentials_templates_v1_TemplateFieldPatch_descriptor;
  }

  @java.lang.Override
  protected com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
      internalGetFieldAccessorTable() {
    return trinsic.services.verifiablecredentials.templates.v1.Templates
        .internal_static_services_verifiablecredentials_templates_v1_TemplateFieldPatch_fieldAccessorTable
        .ensureFieldAccessorsInitialized(
            trinsic.services.verifiablecredentials.templates.v1.TemplateFieldPatch.class,
            trinsic.services.verifiablecredentials.templates.v1.TemplateFieldPatch.Builder.class);
  }

  private int bitField0_;
  public static final int TITLE_FIELD_NUMBER = 1;
  private volatile java.lang.Object title_;
  /**
   *
   *
   * <pre>
   * Human-readable name of the field
   * </pre>
   *
   * <code>optional string title = 1;</code>
   *
   * @return Whether the title field is set.
   */
  @java.lang.Override
  public boolean hasTitle() {
    return ((bitField0_ & 0x00000001) != 0);
  }
  /**
   *
   *
   * <pre>
   * Human-readable name of the field
   * </pre>
   *
   * <code>optional string title = 1;</code>
   *
   * @return The title.
   */
  @java.lang.Override
  public java.lang.String getTitle() {
    java.lang.Object ref = title_;
    if (ref instanceof java.lang.String) {
      return (java.lang.String) ref;
    } else {
      com.google.protobuf.ByteString bs = (com.google.protobuf.ByteString) ref;
      java.lang.String s = bs.toStringUtf8();
      title_ = s;
      return s;
    }
  }
  /**
   *
   *
   * <pre>
   * Human-readable name of the field
   * </pre>
   *
   * <code>optional string title = 1;</code>
   *
   * @return The bytes for title.
   */
  @java.lang.Override
  public com.google.protobuf.ByteString getTitleBytes() {
    java.lang.Object ref = title_;
    if (ref instanceof java.lang.String) {
      com.google.protobuf.ByteString b =
          com.google.protobuf.ByteString.copyFromUtf8((java.lang.String) ref);
      title_ = b;
      return b;
    } else {
      return (com.google.protobuf.ByteString) ref;
    }
  }

  public static final int DESCRIPTION_FIELD_NUMBER = 2;
  private volatile java.lang.Object description_;
  /**
   *
   *
   * <pre>
   * Human-readable description of the field
   * </pre>
   *
   * <code>optional string description = 2;</code>
   *
   * @return Whether the description field is set.
   */
  @java.lang.Override
  public boolean hasDescription() {
    return ((bitField0_ & 0x00000002) != 0);
  }
  /**
   *
   *
   * <pre>
   * Human-readable description of the field
   * </pre>
   *
   * <code>optional string description = 2;</code>
   *
   * @return The description.
   */
  @java.lang.Override
  public java.lang.String getDescription() {
    java.lang.Object ref = description_;
    if (ref instanceof java.lang.String) {
      return (java.lang.String) ref;
    } else {
      com.google.protobuf.ByteString bs = (com.google.protobuf.ByteString) ref;
      java.lang.String s = bs.toStringUtf8();
      description_ = s;
      return s;
    }
  }
  /**
   *
   *
   * <pre>
   * Human-readable description of the field
   * </pre>
   *
   * <code>optional string description = 2;</code>
   *
   * @return The bytes for description.
   */
  @java.lang.Override
  public com.google.protobuf.ByteString getDescriptionBytes() {
    java.lang.Object ref = description_;
    if (ref instanceof java.lang.String) {
      com.google.protobuf.ByteString b =
          com.google.protobuf.ByteString.copyFromUtf8((java.lang.String) ref);
      description_ = b;
      return b;
    } else {
      return (com.google.protobuf.ByteString) ref;
    }
  }

  public static final int URI_DATA_FIELD_NUMBER = 3;
  private trinsic.services.verifiablecredentials.templates.v1.UriFieldData uriData_;
  /**
   *
   *
   * <pre>
   * How to deal with this URI field when rendering credential. Only use if `type` is `URI`.
   * </pre>
   *
   * <code>optional .services.verifiablecredentials.templates.v1.UriFieldData uri_data = 3;</code>
   *
   * @return Whether the uriData field is set.
   */
  @java.lang.Override
  public boolean hasUriData() {
    return ((bitField0_ & 0x00000004) != 0);
  }
  /**
   *
   *
   * <pre>
   * How to deal with this URI field when rendering credential. Only use if `type` is `URI`.
   * </pre>
   *
   * <code>optional .services.verifiablecredentials.templates.v1.UriFieldData uri_data = 3;</code>
   *
   * @return The uriData.
   */
  @java.lang.Override
  public trinsic.services.verifiablecredentials.templates.v1.UriFieldData getUriData() {
    return uriData_ == null
        ? trinsic.services.verifiablecredentials.templates.v1.UriFieldData.getDefaultInstance()
        : uriData_;
  }
  /**
   *
   *
   * <pre>
   * How to deal with this URI field when rendering credential. Only use if `type` is `URI`.
   * </pre>
   *
   * <code>optional .services.verifiablecredentials.templates.v1.UriFieldData uri_data = 3;</code>
   */
  @java.lang.Override
  public trinsic.services.verifiablecredentials.templates.v1.UriFieldDataOrBuilder
      getUriDataOrBuilder() {
    return uriData_ == null
        ? trinsic.services.verifiablecredentials.templates.v1.UriFieldData.getDefaultInstance()
        : uriData_;
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
    if (((bitField0_ & 0x00000001) != 0)) {
      com.google.protobuf.GeneratedMessageV3.writeString(output, 1, title_);
    }
    if (((bitField0_ & 0x00000002) != 0)) {
      com.google.protobuf.GeneratedMessageV3.writeString(output, 2, description_);
    }
    if (((bitField0_ & 0x00000004) != 0)) {
      output.writeMessage(3, getUriData());
    }
    getUnknownFields().writeTo(output);
  }

  @java.lang.Override
  public int getSerializedSize() {
    int size = memoizedSize;
    if (size != -1) return size;

    size = 0;
    if (((bitField0_ & 0x00000001) != 0)) {
      size += com.google.protobuf.GeneratedMessageV3.computeStringSize(1, title_);
    }
    if (((bitField0_ & 0x00000002) != 0)) {
      size += com.google.protobuf.GeneratedMessageV3.computeStringSize(2, description_);
    }
    if (((bitField0_ & 0x00000004) != 0)) {
      size += com.google.protobuf.CodedOutputStream.computeMessageSize(3, getUriData());
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
    if (!(obj instanceof trinsic.services.verifiablecredentials.templates.v1.TemplateFieldPatch)) {
      return super.equals(obj);
    }
    trinsic.services.verifiablecredentials.templates.v1.TemplateFieldPatch other =
        (trinsic.services.verifiablecredentials.templates.v1.TemplateFieldPatch) obj;

    if (hasTitle() != other.hasTitle()) return false;
    if (hasTitle()) {
      if (!getTitle().equals(other.getTitle())) return false;
    }
    if (hasDescription() != other.hasDescription()) return false;
    if (hasDescription()) {
      if (!getDescription().equals(other.getDescription())) return false;
    }
    if (hasUriData() != other.hasUriData()) return false;
    if (hasUriData()) {
      if (!getUriData().equals(other.getUriData())) return false;
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
    if (hasTitle()) {
      hash = (37 * hash) + TITLE_FIELD_NUMBER;
      hash = (53 * hash) + getTitle().hashCode();
    }
    if (hasDescription()) {
      hash = (37 * hash) + DESCRIPTION_FIELD_NUMBER;
      hash = (53 * hash) + getDescription().hashCode();
    }
    if (hasUriData()) {
      hash = (37 * hash) + URI_DATA_FIELD_NUMBER;
      hash = (53 * hash) + getUriData().hashCode();
    }
    hash = (29 * hash) + getUnknownFields().hashCode();
    memoizedHashCode = hash;
    return hash;
  }

  public static trinsic.services.verifiablecredentials.templates.v1.TemplateFieldPatch parseFrom(
      java.nio.ByteBuffer data) throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data);
  }

  public static trinsic.services.verifiablecredentials.templates.v1.TemplateFieldPatch parseFrom(
      java.nio.ByteBuffer data, com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data, extensionRegistry);
  }

  public static trinsic.services.verifiablecredentials.templates.v1.TemplateFieldPatch parseFrom(
      com.google.protobuf.ByteString data)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data);
  }

  public static trinsic.services.verifiablecredentials.templates.v1.TemplateFieldPatch parseFrom(
      com.google.protobuf.ByteString data,
      com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data, extensionRegistry);
  }

  public static trinsic.services.verifiablecredentials.templates.v1.TemplateFieldPatch parseFrom(
      byte[] data) throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data);
  }

  public static trinsic.services.verifiablecredentials.templates.v1.TemplateFieldPatch parseFrom(
      byte[] data, com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data, extensionRegistry);
  }

  public static trinsic.services.verifiablecredentials.templates.v1.TemplateFieldPatch parseFrom(
      java.io.InputStream input) throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3.parseWithIOException(PARSER, input);
  }

  public static trinsic.services.verifiablecredentials.templates.v1.TemplateFieldPatch parseFrom(
      java.io.InputStream input, com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3.parseWithIOException(
        PARSER, input, extensionRegistry);
  }

  public static trinsic.services.verifiablecredentials.templates.v1.TemplateFieldPatch
      parseDelimitedFrom(java.io.InputStream input) throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
  }

  public static trinsic.services.verifiablecredentials.templates.v1.TemplateFieldPatch
      parseDelimitedFrom(
          java.io.InputStream input, com.google.protobuf.ExtensionRegistryLite extensionRegistry)
          throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3.parseDelimitedWithIOException(
        PARSER, input, extensionRegistry);
  }

  public static trinsic.services.verifiablecredentials.templates.v1.TemplateFieldPatch parseFrom(
      com.google.protobuf.CodedInputStream input) throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3.parseWithIOException(PARSER, input);
  }

  public static trinsic.services.verifiablecredentials.templates.v1.TemplateFieldPatch parseFrom(
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
      trinsic.services.verifiablecredentials.templates.v1.TemplateFieldPatch prototype) {
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
   * A patch to apply to an existing template field
   * </pre>
   *
   * Protobuf type {@code services.verifiablecredentials.templates.v1.TemplateFieldPatch}
   */
  public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder>
      implements
      // @@protoc_insertion_point(builder_implements:services.verifiablecredentials.templates.v1.TemplateFieldPatch)
      trinsic.services.verifiablecredentials.templates.v1.TemplateFieldPatchOrBuilder {
    public static final com.google.protobuf.Descriptors.Descriptor getDescriptor() {
      return trinsic.services.verifiablecredentials.templates.v1.Templates
          .internal_static_services_verifiablecredentials_templates_v1_TemplateFieldPatch_descriptor;
    }

    @java.lang.Override
    protected com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
        internalGetFieldAccessorTable() {
      return trinsic.services.verifiablecredentials.templates.v1.Templates
          .internal_static_services_verifiablecredentials_templates_v1_TemplateFieldPatch_fieldAccessorTable
          .ensureFieldAccessorsInitialized(
              trinsic.services.verifiablecredentials.templates.v1.TemplateFieldPatch.class,
              trinsic.services.verifiablecredentials.templates.v1.TemplateFieldPatch.Builder.class);
    }

    // Construct using
    // trinsic.services.verifiablecredentials.templates.v1.TemplateFieldPatch.newBuilder()
    private Builder() {
      maybeForceBuilderInitialization();
    }

    private Builder(com.google.protobuf.GeneratedMessageV3.BuilderParent parent) {
      super(parent);
      maybeForceBuilderInitialization();
    }

    private void maybeForceBuilderInitialization() {
      if (com.google.protobuf.GeneratedMessageV3.alwaysUseFieldBuilders) {
        getUriDataFieldBuilder();
      }
    }

    @java.lang.Override
    public Builder clear() {
      super.clear();
      title_ = "";
      bitField0_ = (bitField0_ & ~0x00000001);
      description_ = "";
      bitField0_ = (bitField0_ & ~0x00000002);
      if (uriDataBuilder_ == null) {
        uriData_ = null;
      } else {
        uriDataBuilder_.clear();
      }
      bitField0_ = (bitField0_ & ~0x00000004);
      return this;
    }

    @java.lang.Override
    public com.google.protobuf.Descriptors.Descriptor getDescriptorForType() {
      return trinsic.services.verifiablecredentials.templates.v1.Templates
          .internal_static_services_verifiablecredentials_templates_v1_TemplateFieldPatch_descriptor;
    }

    @java.lang.Override
    public trinsic.services.verifiablecredentials.templates.v1.TemplateFieldPatch
        getDefaultInstanceForType() {
      return trinsic.services.verifiablecredentials.templates.v1.TemplateFieldPatch
          .getDefaultInstance();
    }

    @java.lang.Override
    public trinsic.services.verifiablecredentials.templates.v1.TemplateFieldPatch build() {
      trinsic.services.verifiablecredentials.templates.v1.TemplateFieldPatch result =
          buildPartial();
      if (!result.isInitialized()) {
        throw newUninitializedMessageException(result);
      }
      return result;
    }

    @java.lang.Override
    public trinsic.services.verifiablecredentials.templates.v1.TemplateFieldPatch buildPartial() {
      trinsic.services.verifiablecredentials.templates.v1.TemplateFieldPatch result =
          new trinsic.services.verifiablecredentials.templates.v1.TemplateFieldPatch(this);
      int from_bitField0_ = bitField0_;
      int to_bitField0_ = 0;
      if (((from_bitField0_ & 0x00000001) != 0)) {
        to_bitField0_ |= 0x00000001;
      }
      result.title_ = title_;
      if (((from_bitField0_ & 0x00000002) != 0)) {
        to_bitField0_ |= 0x00000002;
      }
      result.description_ = description_;
      if (((from_bitField0_ & 0x00000004) != 0)) {
        if (uriDataBuilder_ == null) {
          result.uriData_ = uriData_;
        } else {
          result.uriData_ = uriDataBuilder_.build();
        }
        to_bitField0_ |= 0x00000004;
      }
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
      if (other instanceof trinsic.services.verifiablecredentials.templates.v1.TemplateFieldPatch) {
        return mergeFrom(
            (trinsic.services.verifiablecredentials.templates.v1.TemplateFieldPatch) other);
      } else {
        super.mergeFrom(other);
        return this;
      }
    }

    public Builder mergeFrom(
        trinsic.services.verifiablecredentials.templates.v1.TemplateFieldPatch other) {
      if (other
          == trinsic.services.verifiablecredentials.templates.v1.TemplateFieldPatch
              .getDefaultInstance()) return this;
      if (other.hasTitle()) {
        bitField0_ |= 0x00000001;
        title_ = other.title_;
        onChanged();
      }
      if (other.hasDescription()) {
        bitField0_ |= 0x00000002;
        description_ = other.description_;
        onChanged();
      }
      if (other.hasUriData()) {
        mergeUriData(other.getUriData());
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
                title_ = input.readStringRequireUtf8();
                bitField0_ |= 0x00000001;
                break;
              } // case 10
            case 18:
              {
                description_ = input.readStringRequireUtf8();
                bitField0_ |= 0x00000002;
                break;
              } // case 18
            case 26:
              {
                input.readMessage(getUriDataFieldBuilder().getBuilder(), extensionRegistry);
                bitField0_ |= 0x00000004;
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

    private java.lang.Object title_ = "";
    /**
     *
     *
     * <pre>
     * Human-readable name of the field
     * </pre>
     *
     * <code>optional string title = 1;</code>
     *
     * @return Whether the title field is set.
     */
    public boolean hasTitle() {
      return ((bitField0_ & 0x00000001) != 0);
    }
    /**
     *
     *
     * <pre>
     * Human-readable name of the field
     * </pre>
     *
     * <code>optional string title = 1;</code>
     *
     * @return The title.
     */
    public java.lang.String getTitle() {
      java.lang.Object ref = title_;
      if (!(ref instanceof java.lang.String)) {
        com.google.protobuf.ByteString bs = (com.google.protobuf.ByteString) ref;
        java.lang.String s = bs.toStringUtf8();
        title_ = s;
        return s;
      } else {
        return (java.lang.String) ref;
      }
    }
    /**
     *
     *
     * <pre>
     * Human-readable name of the field
     * </pre>
     *
     * <code>optional string title = 1;</code>
     *
     * @return The bytes for title.
     */
    public com.google.protobuf.ByteString getTitleBytes() {
      java.lang.Object ref = title_;
      if (ref instanceof String) {
        com.google.protobuf.ByteString b =
            com.google.protobuf.ByteString.copyFromUtf8((java.lang.String) ref);
        title_ = b;
        return b;
      } else {
        return (com.google.protobuf.ByteString) ref;
      }
    }
    /**
     *
     *
     * <pre>
     * Human-readable name of the field
     * </pre>
     *
     * <code>optional string title = 1;</code>
     *
     * @param value The title to set.
     * @return This builder for chaining.
     */
    public Builder setTitle(java.lang.String value) {
      if (value == null) {
        throw new NullPointerException();
      }
      bitField0_ |= 0x00000001;
      title_ = value;
      onChanged();
      return this;
    }
    /**
     *
     *
     * <pre>
     * Human-readable name of the field
     * </pre>
     *
     * <code>optional string title = 1;</code>
     *
     * @return This builder for chaining.
     */
    public Builder clearTitle() {
      bitField0_ = (bitField0_ & ~0x00000001);
      title_ = getDefaultInstance().getTitle();
      onChanged();
      return this;
    }
    /**
     *
     *
     * <pre>
     * Human-readable name of the field
     * </pre>
     *
     * <code>optional string title = 1;</code>
     *
     * @param value The bytes for title to set.
     * @return This builder for chaining.
     */
    public Builder setTitleBytes(com.google.protobuf.ByteString value) {
      if (value == null) {
        throw new NullPointerException();
      }
      checkByteStringIsUtf8(value);
      bitField0_ |= 0x00000001;
      title_ = value;
      onChanged();
      return this;
    }

    private java.lang.Object description_ = "";
    /**
     *
     *
     * <pre>
     * Human-readable description of the field
     * </pre>
     *
     * <code>optional string description = 2;</code>
     *
     * @return Whether the description field is set.
     */
    public boolean hasDescription() {
      return ((bitField0_ & 0x00000002) != 0);
    }
    /**
     *
     *
     * <pre>
     * Human-readable description of the field
     * </pre>
     *
     * <code>optional string description = 2;</code>
     *
     * @return The description.
     */
    public java.lang.String getDescription() {
      java.lang.Object ref = description_;
      if (!(ref instanceof java.lang.String)) {
        com.google.protobuf.ByteString bs = (com.google.protobuf.ByteString) ref;
        java.lang.String s = bs.toStringUtf8();
        description_ = s;
        return s;
      } else {
        return (java.lang.String) ref;
      }
    }
    /**
     *
     *
     * <pre>
     * Human-readable description of the field
     * </pre>
     *
     * <code>optional string description = 2;</code>
     *
     * @return The bytes for description.
     */
    public com.google.protobuf.ByteString getDescriptionBytes() {
      java.lang.Object ref = description_;
      if (ref instanceof String) {
        com.google.protobuf.ByteString b =
            com.google.protobuf.ByteString.copyFromUtf8((java.lang.String) ref);
        description_ = b;
        return b;
      } else {
        return (com.google.protobuf.ByteString) ref;
      }
    }
    /**
     *
     *
     * <pre>
     * Human-readable description of the field
     * </pre>
     *
     * <code>optional string description = 2;</code>
     *
     * @param value The description to set.
     * @return This builder for chaining.
     */
    public Builder setDescription(java.lang.String value) {
      if (value == null) {
        throw new NullPointerException();
      }
      bitField0_ |= 0x00000002;
      description_ = value;
      onChanged();
      return this;
    }
    /**
     *
     *
     * <pre>
     * Human-readable description of the field
     * </pre>
     *
     * <code>optional string description = 2;</code>
     *
     * @return This builder for chaining.
     */
    public Builder clearDescription() {
      bitField0_ = (bitField0_ & ~0x00000002);
      description_ = getDefaultInstance().getDescription();
      onChanged();
      return this;
    }
    /**
     *
     *
     * <pre>
     * Human-readable description of the field
     * </pre>
     *
     * <code>optional string description = 2;</code>
     *
     * @param value The bytes for description to set.
     * @return This builder for chaining.
     */
    public Builder setDescriptionBytes(com.google.protobuf.ByteString value) {
      if (value == null) {
        throw new NullPointerException();
      }
      checkByteStringIsUtf8(value);
      bitField0_ |= 0x00000002;
      description_ = value;
      onChanged();
      return this;
    }

    private trinsic.services.verifiablecredentials.templates.v1.UriFieldData uriData_;
    private com.google.protobuf.SingleFieldBuilderV3<
            trinsic.services.verifiablecredentials.templates.v1.UriFieldData,
            trinsic.services.verifiablecredentials.templates.v1.UriFieldData.Builder,
            trinsic.services.verifiablecredentials.templates.v1.UriFieldDataOrBuilder>
        uriDataBuilder_;
    /**
     *
     *
     * <pre>
     * How to deal with this URI field when rendering credential. Only use if `type` is `URI`.
     * </pre>
     *
     * <code>optional .services.verifiablecredentials.templates.v1.UriFieldData uri_data = 3;</code>
     *
     * @return Whether the uriData field is set.
     */
    public boolean hasUriData() {
      return ((bitField0_ & 0x00000004) != 0);
    }
    /**
     *
     *
     * <pre>
     * How to deal with this URI field when rendering credential. Only use if `type` is `URI`.
     * </pre>
     *
     * <code>optional .services.verifiablecredentials.templates.v1.UriFieldData uri_data = 3;</code>
     *
     * @return The uriData.
     */
    public trinsic.services.verifiablecredentials.templates.v1.UriFieldData getUriData() {
      if (uriDataBuilder_ == null) {
        return uriData_ == null
            ? trinsic.services.verifiablecredentials.templates.v1.UriFieldData.getDefaultInstance()
            : uriData_;
      } else {
        return uriDataBuilder_.getMessage();
      }
    }
    /**
     *
     *
     * <pre>
     * How to deal with this URI field when rendering credential. Only use if `type` is `URI`.
     * </pre>
     *
     * <code>optional .services.verifiablecredentials.templates.v1.UriFieldData uri_data = 3;</code>
     */
    public Builder setUriData(
        trinsic.services.verifiablecredentials.templates.v1.UriFieldData value) {
      if (uriDataBuilder_ == null) {
        if (value == null) {
          throw new NullPointerException();
        }
        uriData_ = value;
        onChanged();
      } else {
        uriDataBuilder_.setMessage(value);
      }
      bitField0_ |= 0x00000004;
      return this;
    }
    /**
     *
     *
     * <pre>
     * How to deal with this URI field when rendering credential. Only use if `type` is `URI`.
     * </pre>
     *
     * <code>optional .services.verifiablecredentials.templates.v1.UriFieldData uri_data = 3;</code>
     */
    public Builder setUriData(
        trinsic.services.verifiablecredentials.templates.v1.UriFieldData.Builder builderForValue) {
      if (uriDataBuilder_ == null) {
        uriData_ = builderForValue.build();
        onChanged();
      } else {
        uriDataBuilder_.setMessage(builderForValue.build());
      }
      bitField0_ |= 0x00000004;
      return this;
    }
    /**
     *
     *
     * <pre>
     * How to deal with this URI field when rendering credential. Only use if `type` is `URI`.
     * </pre>
     *
     * <code>optional .services.verifiablecredentials.templates.v1.UriFieldData uri_data = 3;</code>
     */
    public Builder mergeUriData(
        trinsic.services.verifiablecredentials.templates.v1.UriFieldData value) {
      if (uriDataBuilder_ == null) {
        if (((bitField0_ & 0x00000004) != 0)
            && uriData_ != null
            && uriData_
                != trinsic.services.verifiablecredentials.templates.v1.UriFieldData
                    .getDefaultInstance()) {
          uriData_ =
              trinsic.services.verifiablecredentials.templates.v1.UriFieldData.newBuilder(uriData_)
                  .mergeFrom(value)
                  .buildPartial();
        } else {
          uriData_ = value;
        }
        onChanged();
      } else {
        uriDataBuilder_.mergeFrom(value);
      }
      bitField0_ |= 0x00000004;
      return this;
    }
    /**
     *
     *
     * <pre>
     * How to deal with this URI field when rendering credential. Only use if `type` is `URI`.
     * </pre>
     *
     * <code>optional .services.verifiablecredentials.templates.v1.UriFieldData uri_data = 3;</code>
     */
    public Builder clearUriData() {
      if (uriDataBuilder_ == null) {
        uriData_ = null;
        onChanged();
      } else {
        uriDataBuilder_.clear();
      }
      bitField0_ = (bitField0_ & ~0x00000004);
      return this;
    }
    /**
     *
     *
     * <pre>
     * How to deal with this URI field when rendering credential. Only use if `type` is `URI`.
     * </pre>
     *
     * <code>optional .services.verifiablecredentials.templates.v1.UriFieldData uri_data = 3;</code>
     */
    public trinsic.services.verifiablecredentials.templates.v1.UriFieldData.Builder
        getUriDataBuilder() {
      bitField0_ |= 0x00000004;
      onChanged();
      return getUriDataFieldBuilder().getBuilder();
    }
    /**
     *
     *
     * <pre>
     * How to deal with this URI field when rendering credential. Only use if `type` is `URI`.
     * </pre>
     *
     * <code>optional .services.verifiablecredentials.templates.v1.UriFieldData uri_data = 3;</code>
     */
    public trinsic.services.verifiablecredentials.templates.v1.UriFieldDataOrBuilder
        getUriDataOrBuilder() {
      if (uriDataBuilder_ != null) {
        return uriDataBuilder_.getMessageOrBuilder();
      } else {
        return uriData_ == null
            ? trinsic.services.verifiablecredentials.templates.v1.UriFieldData.getDefaultInstance()
            : uriData_;
      }
    }
    /**
     *
     *
     * <pre>
     * How to deal with this URI field when rendering credential. Only use if `type` is `URI`.
     * </pre>
     *
     * <code>optional .services.verifiablecredentials.templates.v1.UriFieldData uri_data = 3;</code>
     */
    private com.google.protobuf.SingleFieldBuilderV3<
            trinsic.services.verifiablecredentials.templates.v1.UriFieldData,
            trinsic.services.verifiablecredentials.templates.v1.UriFieldData.Builder,
            trinsic.services.verifiablecredentials.templates.v1.UriFieldDataOrBuilder>
        getUriDataFieldBuilder() {
      if (uriDataBuilder_ == null) {
        uriDataBuilder_ =
            new com.google.protobuf.SingleFieldBuilderV3<
                trinsic.services.verifiablecredentials.templates.v1.UriFieldData,
                trinsic.services.verifiablecredentials.templates.v1.UriFieldData.Builder,
                trinsic.services.verifiablecredentials.templates.v1.UriFieldDataOrBuilder>(
                getUriData(), getParentForChildren(), isClean());
        uriData_ = null;
      }
      return uriDataBuilder_;
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

    // @@protoc_insertion_point(builder_scope:services.verifiablecredentials.templates.v1.TemplateFieldPatch)
  }

  // @@protoc_insertion_point(class_scope:services.verifiablecredentials.templates.v1.TemplateFieldPatch)
  private static final trinsic.services.verifiablecredentials.templates.v1.TemplateFieldPatch
      DEFAULT_INSTANCE;

  static {
    DEFAULT_INSTANCE = new trinsic.services.verifiablecredentials.templates.v1.TemplateFieldPatch();
  }

  public static trinsic.services.verifiablecredentials.templates.v1.TemplateFieldPatch
      getDefaultInstance() {
    return DEFAULT_INSTANCE;
  }

  private static final com.google.protobuf.Parser<TemplateFieldPatch> PARSER =
      new com.google.protobuf.AbstractParser<TemplateFieldPatch>() {
        @java.lang.Override
        public TemplateFieldPatch parsePartialFrom(
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

  public static com.google.protobuf.Parser<TemplateFieldPatch> parser() {
    return PARSER;
  }

  @java.lang.Override
  public com.google.protobuf.Parser<TemplateFieldPatch> getParserForType() {
    return PARSER;
  }

  @java.lang.Override
  public trinsic.services.verifiablecredentials.templates.v1.TemplateFieldPatch
      getDefaultInstanceForType() {
    return DEFAULT_INSTANCE;
  }
}