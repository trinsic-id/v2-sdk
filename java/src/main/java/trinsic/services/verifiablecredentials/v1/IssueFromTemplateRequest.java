// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: services/verifiable-credentials/v1/verifiable-credentials.proto

package trinsic.services.verifiablecredentials.v1;

/**
 *
 *
 * <pre>
 * Request to create and sign a JSON-LD Verifiable Credential from a template using public key tied to caller
 * </pre>
 *
 * Protobuf type {@code services.verifiablecredentials.v1.IssueFromTemplateRequest}
 */
public final class IssueFromTemplateRequest extends com.google.protobuf.GeneratedMessageV3
    implements
    // @@protoc_insertion_point(message_implements:services.verifiablecredentials.v1.IssueFromTemplateRequest)
    IssueFromTemplateRequestOrBuilder {
  private static final long serialVersionUID = 0L;
  // Use IssueFromTemplateRequest.newBuilder() to construct.
  private IssueFromTemplateRequest(com.google.protobuf.GeneratedMessageV3.Builder<?> builder) {
    super(builder);
  }

  private IssueFromTemplateRequest() {
    templateId_ = "";
    valuesJson_ = "";
    frameworkId_ = "";
  }

  @java.lang.Override
  @SuppressWarnings({"unused"})
  protected java.lang.Object newInstance(UnusedPrivateParameter unused) {
    return new IssueFromTemplateRequest();
  }

  @java.lang.Override
  public final com.google.protobuf.UnknownFieldSet getUnknownFields() {
    return this.unknownFields;
  }

  public static final com.google.protobuf.Descriptors.Descriptor getDescriptor() {
    return trinsic.services.verifiablecredentials.v1.VerifiableCredentials
        .internal_static_services_verifiablecredentials_v1_IssueFromTemplateRequest_descriptor;
  }

  @java.lang.Override
  protected com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
      internalGetFieldAccessorTable() {
    return trinsic.services.verifiablecredentials.v1.VerifiableCredentials
        .internal_static_services_verifiablecredentials_v1_IssueFromTemplateRequest_fieldAccessorTable
        .ensureFieldAccessorsInitialized(
            trinsic.services.verifiablecredentials.v1.IssueFromTemplateRequest.class,
            trinsic.services.verifiablecredentials.v1.IssueFromTemplateRequest.Builder.class);
  }

  public static final int TEMPLATE_ID_FIELD_NUMBER = 1;
  private volatile java.lang.Object templateId_;
  /**
   *
   *
   * <pre>
   * ID of template to use
   * </pre>
   *
   * <code>string template_id = 1;</code>
   *
   * @return The templateId.
   */
  @java.lang.Override
  public java.lang.String getTemplateId() {
    java.lang.Object ref = templateId_;
    if (ref instanceof java.lang.String) {
      return (java.lang.String) ref;
    } else {
      com.google.protobuf.ByteString bs = (com.google.protobuf.ByteString) ref;
      java.lang.String s = bs.toStringUtf8();
      templateId_ = s;
      return s;
    }
  }
  /**
   *
   *
   * <pre>
   * ID of template to use
   * </pre>
   *
   * <code>string template_id = 1;</code>
   *
   * @return The bytes for templateId.
   */
  @java.lang.Override
  public com.google.protobuf.ByteString getTemplateIdBytes() {
    java.lang.Object ref = templateId_;
    if (ref instanceof java.lang.String) {
      com.google.protobuf.ByteString b =
          com.google.protobuf.ByteString.copyFromUtf8((java.lang.String) ref);
      templateId_ = b;
      return b;
    } else {
      return (com.google.protobuf.ByteString) ref;
    }
  }

  public static final int VALUES_JSON_FIELD_NUMBER = 2;
  private volatile java.lang.Object valuesJson_;
  /**
   *
   *
   * <pre>
   * JSON document string with keys corresponding to the fields of
   * the template referenced by `template_id`
   * </pre>
   *
   * <code>string values_json = 2;</code>
   *
   * @return The valuesJson.
   */
  @java.lang.Override
  public java.lang.String getValuesJson() {
    java.lang.Object ref = valuesJson_;
    if (ref instanceof java.lang.String) {
      return (java.lang.String) ref;
    } else {
      com.google.protobuf.ByteString bs = (com.google.protobuf.ByteString) ref;
      java.lang.String s = bs.toStringUtf8();
      valuesJson_ = s;
      return s;
    }
  }
  /**
   *
   *
   * <pre>
   * JSON document string with keys corresponding to the fields of
   * the template referenced by `template_id`
   * </pre>
   *
   * <code>string values_json = 2;</code>
   *
   * @return The bytes for valuesJson.
   */
  @java.lang.Override
  public com.google.protobuf.ByteString getValuesJsonBytes() {
    java.lang.Object ref = valuesJson_;
    if (ref instanceof java.lang.String) {
      com.google.protobuf.ByteString b =
          com.google.protobuf.ByteString.copyFromUtf8((java.lang.String) ref);
      valuesJson_ = b;
      return b;
    } else {
      return (com.google.protobuf.ByteString) ref;
    }
  }

  public static final int FRAMEWORK_ID_FIELD_NUMBER = 3;
  private volatile java.lang.Object frameworkId_;
  /**
   *
   *
   * <pre>
   * Governance framework ID to use with issuance of this credential.
   * If specified, the issued credential will contain extended issuer
   * metadata with membership info for the given ecosystem governance framework (EGF)
   * </pre>
   *
   * <code>string framework_id = 3 [(.services.options.optional) = true];</code>
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
   * Governance framework ID to use with issuance of this credential.
   * If specified, the issued credential will contain extended issuer
   * metadata with membership info for the given ecosystem governance framework (EGF)
   * </pre>
   *
   * <code>string framework_id = 3 [(.services.options.optional) = true];</code>
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
    if (!com.google.protobuf.GeneratedMessageV3.isStringEmpty(templateId_)) {
      com.google.protobuf.GeneratedMessageV3.writeString(output, 1, templateId_);
    }
    if (!com.google.protobuf.GeneratedMessageV3.isStringEmpty(valuesJson_)) {
      com.google.protobuf.GeneratedMessageV3.writeString(output, 2, valuesJson_);
    }
    if (!com.google.protobuf.GeneratedMessageV3.isStringEmpty(frameworkId_)) {
      com.google.protobuf.GeneratedMessageV3.writeString(output, 3, frameworkId_);
    }
    getUnknownFields().writeTo(output);
  }

  @java.lang.Override
  public int getSerializedSize() {
    int size = memoizedSize;
    if (size != -1) return size;

    size = 0;
    if (!com.google.protobuf.GeneratedMessageV3.isStringEmpty(templateId_)) {
      size += com.google.protobuf.GeneratedMessageV3.computeStringSize(1, templateId_);
    }
    if (!com.google.protobuf.GeneratedMessageV3.isStringEmpty(valuesJson_)) {
      size += com.google.protobuf.GeneratedMessageV3.computeStringSize(2, valuesJson_);
    }
    if (!com.google.protobuf.GeneratedMessageV3.isStringEmpty(frameworkId_)) {
      size += com.google.protobuf.GeneratedMessageV3.computeStringSize(3, frameworkId_);
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
    if (!(obj instanceof trinsic.services.verifiablecredentials.v1.IssueFromTemplateRequest)) {
      return super.equals(obj);
    }
    trinsic.services.verifiablecredentials.v1.IssueFromTemplateRequest other =
        (trinsic.services.verifiablecredentials.v1.IssueFromTemplateRequest) obj;

    if (!getTemplateId().equals(other.getTemplateId())) return false;
    if (!getValuesJson().equals(other.getValuesJson())) return false;
    if (!getFrameworkId().equals(other.getFrameworkId())) return false;
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
    hash = (37 * hash) + TEMPLATE_ID_FIELD_NUMBER;
    hash = (53 * hash) + getTemplateId().hashCode();
    hash = (37 * hash) + VALUES_JSON_FIELD_NUMBER;
    hash = (53 * hash) + getValuesJson().hashCode();
    hash = (37 * hash) + FRAMEWORK_ID_FIELD_NUMBER;
    hash = (53 * hash) + getFrameworkId().hashCode();
    hash = (29 * hash) + getUnknownFields().hashCode();
    memoizedHashCode = hash;
    return hash;
  }

  public static trinsic.services.verifiablecredentials.v1.IssueFromTemplateRequest parseFrom(
      java.nio.ByteBuffer data) throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data);
  }

  public static trinsic.services.verifiablecredentials.v1.IssueFromTemplateRequest parseFrom(
      java.nio.ByteBuffer data, com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data, extensionRegistry);
  }

  public static trinsic.services.verifiablecredentials.v1.IssueFromTemplateRequest parseFrom(
      com.google.protobuf.ByteString data)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data);
  }

  public static trinsic.services.verifiablecredentials.v1.IssueFromTemplateRequest parseFrom(
      com.google.protobuf.ByteString data,
      com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data, extensionRegistry);
  }

  public static trinsic.services.verifiablecredentials.v1.IssueFromTemplateRequest parseFrom(
      byte[] data) throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data);
  }

  public static trinsic.services.verifiablecredentials.v1.IssueFromTemplateRequest parseFrom(
      byte[] data, com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data, extensionRegistry);
  }

  public static trinsic.services.verifiablecredentials.v1.IssueFromTemplateRequest parseFrom(
      java.io.InputStream input) throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3.parseWithIOException(PARSER, input);
  }

  public static trinsic.services.verifiablecredentials.v1.IssueFromTemplateRequest parseFrom(
      java.io.InputStream input, com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3.parseWithIOException(
        PARSER, input, extensionRegistry);
  }

  public static trinsic.services.verifiablecredentials.v1.IssueFromTemplateRequest
      parseDelimitedFrom(java.io.InputStream input) throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
  }

  public static trinsic.services.verifiablecredentials.v1.IssueFromTemplateRequest
      parseDelimitedFrom(
          java.io.InputStream input, com.google.protobuf.ExtensionRegistryLite extensionRegistry)
          throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3.parseDelimitedWithIOException(
        PARSER, input, extensionRegistry);
  }

  public static trinsic.services.verifiablecredentials.v1.IssueFromTemplateRequest parseFrom(
      com.google.protobuf.CodedInputStream input) throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3.parseWithIOException(PARSER, input);
  }

  public static trinsic.services.verifiablecredentials.v1.IssueFromTemplateRequest parseFrom(
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
      trinsic.services.verifiablecredentials.v1.IssueFromTemplateRequest prototype) {
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
   * Request to create and sign a JSON-LD Verifiable Credential from a template using public key tied to caller
   * </pre>
   *
   * Protobuf type {@code services.verifiablecredentials.v1.IssueFromTemplateRequest}
   */
  public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder>
      implements
      // @@protoc_insertion_point(builder_implements:services.verifiablecredentials.v1.IssueFromTemplateRequest)
      trinsic.services.verifiablecredentials.v1.IssueFromTemplateRequestOrBuilder {
    public static final com.google.protobuf.Descriptors.Descriptor getDescriptor() {
      return trinsic.services.verifiablecredentials.v1.VerifiableCredentials
          .internal_static_services_verifiablecredentials_v1_IssueFromTemplateRequest_descriptor;
    }

    @java.lang.Override
    protected com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
        internalGetFieldAccessorTable() {
      return trinsic.services.verifiablecredentials.v1.VerifiableCredentials
          .internal_static_services_verifiablecredentials_v1_IssueFromTemplateRequest_fieldAccessorTable
          .ensureFieldAccessorsInitialized(
              trinsic.services.verifiablecredentials.v1.IssueFromTemplateRequest.class,
              trinsic.services.verifiablecredentials.v1.IssueFromTemplateRequest.Builder.class);
    }

    // Construct using
    // trinsic.services.verifiablecredentials.v1.IssueFromTemplateRequest.newBuilder()
    private Builder() {}

    private Builder(com.google.protobuf.GeneratedMessageV3.BuilderParent parent) {
      super(parent);
    }

    @java.lang.Override
    public Builder clear() {
      super.clear();
      templateId_ = "";

      valuesJson_ = "";

      frameworkId_ = "";

      return this;
    }

    @java.lang.Override
    public com.google.protobuf.Descriptors.Descriptor getDescriptorForType() {
      return trinsic.services.verifiablecredentials.v1.VerifiableCredentials
          .internal_static_services_verifiablecredentials_v1_IssueFromTemplateRequest_descriptor;
    }

    @java.lang.Override
    public trinsic.services.verifiablecredentials.v1.IssueFromTemplateRequest
        getDefaultInstanceForType() {
      return trinsic.services.verifiablecredentials.v1.IssueFromTemplateRequest
          .getDefaultInstance();
    }

    @java.lang.Override
    public trinsic.services.verifiablecredentials.v1.IssueFromTemplateRequest build() {
      trinsic.services.verifiablecredentials.v1.IssueFromTemplateRequest result = buildPartial();
      if (!result.isInitialized()) {
        throw newUninitializedMessageException(result);
      }
      return result;
    }

    @java.lang.Override
    public trinsic.services.verifiablecredentials.v1.IssueFromTemplateRequest buildPartial() {
      trinsic.services.verifiablecredentials.v1.IssueFromTemplateRequest result =
          new trinsic.services.verifiablecredentials.v1.IssueFromTemplateRequest(this);
      result.templateId_ = templateId_;
      result.valuesJson_ = valuesJson_;
      result.frameworkId_ = frameworkId_;
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
      if (other instanceof trinsic.services.verifiablecredentials.v1.IssueFromTemplateRequest) {
        return mergeFrom(
            (trinsic.services.verifiablecredentials.v1.IssueFromTemplateRequest) other);
      } else {
        super.mergeFrom(other);
        return this;
      }
    }

    public Builder mergeFrom(
        trinsic.services.verifiablecredentials.v1.IssueFromTemplateRequest other) {
      if (other
          == trinsic.services.verifiablecredentials.v1.IssueFromTemplateRequest
              .getDefaultInstance()) return this;
      if (!other.getTemplateId().isEmpty()) {
        templateId_ = other.templateId_;
        onChanged();
      }
      if (!other.getValuesJson().isEmpty()) {
        valuesJson_ = other.valuesJson_;
        onChanged();
      }
      if (!other.getFrameworkId().isEmpty()) {
        frameworkId_ = other.frameworkId_;
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
                templateId_ = input.readStringRequireUtf8();

                break;
              } // case 10
            case 18:
              {
                valuesJson_ = input.readStringRequireUtf8();

                break;
              } // case 18
            case 26:
              {
                frameworkId_ = input.readStringRequireUtf8();

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

    private java.lang.Object templateId_ = "";
    /**
     *
     *
     * <pre>
     * ID of template to use
     * </pre>
     *
     * <code>string template_id = 1;</code>
     *
     * @return The templateId.
     */
    public java.lang.String getTemplateId() {
      java.lang.Object ref = templateId_;
      if (!(ref instanceof java.lang.String)) {
        com.google.protobuf.ByteString bs = (com.google.protobuf.ByteString) ref;
        java.lang.String s = bs.toStringUtf8();
        templateId_ = s;
        return s;
      } else {
        return (java.lang.String) ref;
      }
    }
    /**
     *
     *
     * <pre>
     * ID of template to use
     * </pre>
     *
     * <code>string template_id = 1;</code>
     *
     * @return The bytes for templateId.
     */
    public com.google.protobuf.ByteString getTemplateIdBytes() {
      java.lang.Object ref = templateId_;
      if (ref instanceof String) {
        com.google.protobuf.ByteString b =
            com.google.protobuf.ByteString.copyFromUtf8((java.lang.String) ref);
        templateId_ = b;
        return b;
      } else {
        return (com.google.protobuf.ByteString) ref;
      }
    }
    /**
     *
     *
     * <pre>
     * ID of template to use
     * </pre>
     *
     * <code>string template_id = 1;</code>
     *
     * @param value The templateId to set.
     * @return This builder for chaining.
     */
    public Builder setTemplateId(java.lang.String value) {
      if (value == null) {
        throw new NullPointerException();
      }

      templateId_ = value;
      onChanged();
      return this;
    }
    /**
     *
     *
     * <pre>
     * ID of template to use
     * </pre>
     *
     * <code>string template_id = 1;</code>
     *
     * @return This builder for chaining.
     */
    public Builder clearTemplateId() {

      templateId_ = getDefaultInstance().getTemplateId();
      onChanged();
      return this;
    }
    /**
     *
     *
     * <pre>
     * ID of template to use
     * </pre>
     *
     * <code>string template_id = 1;</code>
     *
     * @param value The bytes for templateId to set.
     * @return This builder for chaining.
     */
    public Builder setTemplateIdBytes(com.google.protobuf.ByteString value) {
      if (value == null) {
        throw new NullPointerException();
      }
      checkByteStringIsUtf8(value);

      templateId_ = value;
      onChanged();
      return this;
    }

    private java.lang.Object valuesJson_ = "";
    /**
     *
     *
     * <pre>
     * JSON document string with keys corresponding to the fields of
     * the template referenced by `template_id`
     * </pre>
     *
     * <code>string values_json = 2;</code>
     *
     * @return The valuesJson.
     */
    public java.lang.String getValuesJson() {
      java.lang.Object ref = valuesJson_;
      if (!(ref instanceof java.lang.String)) {
        com.google.protobuf.ByteString bs = (com.google.protobuf.ByteString) ref;
        java.lang.String s = bs.toStringUtf8();
        valuesJson_ = s;
        return s;
      } else {
        return (java.lang.String) ref;
      }
    }
    /**
     *
     *
     * <pre>
     * JSON document string with keys corresponding to the fields of
     * the template referenced by `template_id`
     * </pre>
     *
     * <code>string values_json = 2;</code>
     *
     * @return The bytes for valuesJson.
     */
    public com.google.protobuf.ByteString getValuesJsonBytes() {
      java.lang.Object ref = valuesJson_;
      if (ref instanceof String) {
        com.google.protobuf.ByteString b =
            com.google.protobuf.ByteString.copyFromUtf8((java.lang.String) ref);
        valuesJson_ = b;
        return b;
      } else {
        return (com.google.protobuf.ByteString) ref;
      }
    }
    /**
     *
     *
     * <pre>
     * JSON document string with keys corresponding to the fields of
     * the template referenced by `template_id`
     * </pre>
     *
     * <code>string values_json = 2;</code>
     *
     * @param value The valuesJson to set.
     * @return This builder for chaining.
     */
    public Builder setValuesJson(java.lang.String value) {
      if (value == null) {
        throw new NullPointerException();
      }

      valuesJson_ = value;
      onChanged();
      return this;
    }
    /**
     *
     *
     * <pre>
     * JSON document string with keys corresponding to the fields of
     * the template referenced by `template_id`
     * </pre>
     *
     * <code>string values_json = 2;</code>
     *
     * @return This builder for chaining.
     */
    public Builder clearValuesJson() {

      valuesJson_ = getDefaultInstance().getValuesJson();
      onChanged();
      return this;
    }
    /**
     *
     *
     * <pre>
     * JSON document string with keys corresponding to the fields of
     * the template referenced by `template_id`
     * </pre>
     *
     * <code>string values_json = 2;</code>
     *
     * @param value The bytes for valuesJson to set.
     * @return This builder for chaining.
     */
    public Builder setValuesJsonBytes(com.google.protobuf.ByteString value) {
      if (value == null) {
        throw new NullPointerException();
      }
      checkByteStringIsUtf8(value);

      valuesJson_ = value;
      onChanged();
      return this;
    }

    private java.lang.Object frameworkId_ = "";
    /**
     *
     *
     * <pre>
     * Governance framework ID to use with issuance of this credential.
     * If specified, the issued credential will contain extended issuer
     * metadata with membership info for the given ecosystem governance framework (EGF)
     * </pre>
     *
     * <code>string framework_id = 3 [(.services.options.optional) = true];</code>
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
     * Governance framework ID to use with issuance of this credential.
     * If specified, the issued credential will contain extended issuer
     * metadata with membership info for the given ecosystem governance framework (EGF)
     * </pre>
     *
     * <code>string framework_id = 3 [(.services.options.optional) = true];</code>
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
     * Governance framework ID to use with issuance of this credential.
     * If specified, the issued credential will contain extended issuer
     * metadata with membership info for the given ecosystem governance framework (EGF)
     * </pre>
     *
     * <code>string framework_id = 3 [(.services.options.optional) = true];</code>
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
     * Governance framework ID to use with issuance of this credential.
     * If specified, the issued credential will contain extended issuer
     * metadata with membership info for the given ecosystem governance framework (EGF)
     * </pre>
     *
     * <code>string framework_id = 3 [(.services.options.optional) = true];</code>
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
     * Governance framework ID to use with issuance of this credential.
     * If specified, the issued credential will contain extended issuer
     * metadata with membership info for the given ecosystem governance framework (EGF)
     * </pre>
     *
     * <code>string framework_id = 3 [(.services.options.optional) = true];</code>
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

    @java.lang.Override
    public final Builder setUnknownFields(final com.google.protobuf.UnknownFieldSet unknownFields) {
      return super.setUnknownFields(unknownFields);
    }

    @java.lang.Override
    public final Builder mergeUnknownFields(
        final com.google.protobuf.UnknownFieldSet unknownFields) {
      return super.mergeUnknownFields(unknownFields);
    }

    // @@protoc_insertion_point(builder_scope:services.verifiablecredentials.v1.IssueFromTemplateRequest)
  }

  // @@protoc_insertion_point(class_scope:services.verifiablecredentials.v1.IssueFromTemplateRequest)
  private static final trinsic.services.verifiablecredentials.v1.IssueFromTemplateRequest
      DEFAULT_INSTANCE;

  static {
    DEFAULT_INSTANCE = new trinsic.services.verifiablecredentials.v1.IssueFromTemplateRequest();
  }

  public static trinsic.services.verifiablecredentials.v1.IssueFromTemplateRequest
      getDefaultInstance() {
    return DEFAULT_INSTANCE;
  }

  private static final com.google.protobuf.Parser<IssueFromTemplateRequest> PARSER =
      new com.google.protobuf.AbstractParser<IssueFromTemplateRequest>() {
        @java.lang.Override
        public IssueFromTemplateRequest parsePartialFrom(
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

  public static com.google.protobuf.Parser<IssueFromTemplateRequest> parser() {
    return PARSER;
  }

  @java.lang.Override
  public com.google.protobuf.Parser<IssueFromTemplateRequest> getParserForType() {
    return PARSER;
  }

  @java.lang.Override
  public trinsic.services.verifiablecredentials.v1.IssueFromTemplateRequest
      getDefaultInstanceForType() {
    return DEFAULT_INSTANCE;
  }
}
