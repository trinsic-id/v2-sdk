// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: services/verifiable-credentials/templates/v1/templates.proto

package trinsic.services.verifiablecredentials.templates.v1;

/**
 * Protobuf type {@code
 * services.verifiablecredentials.templates.v1.UpdateVerificationTemplateResponse}
 */
public final class UpdateVerificationTemplateResponse extends com.google.protobuf.GeneratedMessageV3
    implements
    // @@protoc_insertion_point(message_implements:services.verifiablecredentials.templates.v1.UpdateVerificationTemplateResponse)
    UpdateVerificationTemplateResponseOrBuilder {
  private static final long serialVersionUID = 0L;
  // Use UpdateVerificationTemplateResponse.newBuilder() to construct.
  private UpdateVerificationTemplateResponse(
      com.google.protobuf.GeneratedMessageV3.Builder<?> builder) {
    super(builder);
  }

  private UpdateVerificationTemplateResponse() {}

  @java.lang.Override
  @SuppressWarnings({"unused"})
  protected java.lang.Object newInstance(UnusedPrivateParameter unused) {
    return new UpdateVerificationTemplateResponse();
  }

  @java.lang.Override
  public final com.google.protobuf.UnknownFieldSet getUnknownFields() {
    return this.unknownFields;
  }

  public static final com.google.protobuf.Descriptors.Descriptor getDescriptor() {
    return trinsic.services.verifiablecredentials.templates.v1.Templates
        .internal_static_services_verifiablecredentials_templates_v1_UpdateVerificationTemplateResponse_descriptor;
  }

  @java.lang.Override
  protected com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
      internalGetFieldAccessorTable() {
    return trinsic.services.verifiablecredentials.templates.v1.Templates
        .internal_static_services_verifiablecredentials_templates_v1_UpdateVerificationTemplateResponse_fieldAccessorTable
        .ensureFieldAccessorsInitialized(
            trinsic.services.verifiablecredentials.templates.v1.UpdateVerificationTemplateResponse
                .class,
            trinsic.services.verifiablecredentials.templates.v1.UpdateVerificationTemplateResponse
                .Builder.class);
  }

  public static final int TEMPLATE_FIELD_NUMBER = 1;
  private trinsic.services.verifiablecredentials.templates.v1.VerificationTemplateData template_;
  /**
   * <code>.services.verifiablecredentials.templates.v1.VerificationTemplateData template = 1;
   * </code>
   *
   * @return Whether the template field is set.
   */
  @java.lang.Override
  public boolean hasTemplate() {
    return template_ != null;
  }
  /**
   * <code>.services.verifiablecredentials.templates.v1.VerificationTemplateData template = 1;
   * </code>
   *
   * @return The template.
   */
  @java.lang.Override
  public trinsic.services.verifiablecredentials.templates.v1.VerificationTemplateData
      getTemplate() {
    return template_ == null
        ? trinsic.services.verifiablecredentials.templates.v1.VerificationTemplateData
            .getDefaultInstance()
        : template_;
  }
  /**
   * <code>.services.verifiablecredentials.templates.v1.VerificationTemplateData template = 1;
   * </code>
   */
  @java.lang.Override
  public trinsic.services.verifiablecredentials.templates.v1.VerificationTemplateDataOrBuilder
      getTemplateOrBuilder() {
    return getTemplate();
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
    if (template_ != null) {
      output.writeMessage(1, getTemplate());
    }
    getUnknownFields().writeTo(output);
  }

  @java.lang.Override
  public int getSerializedSize() {
    int size = memoizedSize;
    if (size != -1) return size;

    size = 0;
    if (template_ != null) {
      size += com.google.protobuf.CodedOutputStream.computeMessageSize(1, getTemplate());
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
    if (!(obj
        instanceof
        trinsic.services.verifiablecredentials.templates.v1.UpdateVerificationTemplateResponse)) {
      return super.equals(obj);
    }
    trinsic.services.verifiablecredentials.templates.v1.UpdateVerificationTemplateResponse other =
        (trinsic.services.verifiablecredentials.templates.v1.UpdateVerificationTemplateResponse)
            obj;

    if (hasTemplate() != other.hasTemplate()) return false;
    if (hasTemplate()) {
      if (!getTemplate().equals(other.getTemplate())) return false;
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
    if (hasTemplate()) {
      hash = (37 * hash) + TEMPLATE_FIELD_NUMBER;
      hash = (53 * hash) + getTemplate().hashCode();
    }
    hash = (29 * hash) + getUnknownFields().hashCode();
    memoizedHashCode = hash;
    return hash;
  }

  public static trinsic.services.verifiablecredentials.templates.v1
          .UpdateVerificationTemplateResponse
      parseFrom(java.nio.ByteBuffer data)
          throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data);
  }

  public static trinsic.services.verifiablecredentials.templates.v1
          .UpdateVerificationTemplateResponse
      parseFrom(
          java.nio.ByteBuffer data, com.google.protobuf.ExtensionRegistryLite extensionRegistry)
          throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data, extensionRegistry);
  }

  public static trinsic.services.verifiablecredentials.templates.v1
          .UpdateVerificationTemplateResponse
      parseFrom(com.google.protobuf.ByteString data)
          throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data);
  }

  public static trinsic.services.verifiablecredentials.templates.v1
          .UpdateVerificationTemplateResponse
      parseFrom(
          com.google.protobuf.ByteString data,
          com.google.protobuf.ExtensionRegistryLite extensionRegistry)
          throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data, extensionRegistry);
  }

  public static trinsic.services.verifiablecredentials.templates.v1
          .UpdateVerificationTemplateResponse
      parseFrom(byte[] data) throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data);
  }

  public static trinsic.services.verifiablecredentials.templates.v1
          .UpdateVerificationTemplateResponse
      parseFrom(byte[] data, com.google.protobuf.ExtensionRegistryLite extensionRegistry)
          throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data, extensionRegistry);
  }

  public static trinsic.services.verifiablecredentials.templates.v1
          .UpdateVerificationTemplateResponse
      parseFrom(java.io.InputStream input) throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3.parseWithIOException(PARSER, input);
  }

  public static trinsic.services.verifiablecredentials.templates.v1
          .UpdateVerificationTemplateResponse
      parseFrom(
          java.io.InputStream input, com.google.protobuf.ExtensionRegistryLite extensionRegistry)
          throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3.parseWithIOException(
        PARSER, input, extensionRegistry);
  }

  public static trinsic.services.verifiablecredentials.templates.v1
          .UpdateVerificationTemplateResponse
      parseDelimitedFrom(java.io.InputStream input) throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
  }

  public static trinsic.services.verifiablecredentials.templates.v1
          .UpdateVerificationTemplateResponse
      parseDelimitedFrom(
          java.io.InputStream input, com.google.protobuf.ExtensionRegistryLite extensionRegistry)
          throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3.parseDelimitedWithIOException(
        PARSER, input, extensionRegistry);
  }

  public static trinsic.services.verifiablecredentials.templates.v1
          .UpdateVerificationTemplateResponse
      parseFrom(com.google.protobuf.CodedInputStream input) throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3.parseWithIOException(PARSER, input);
  }

  public static trinsic.services.verifiablecredentials.templates.v1
          .UpdateVerificationTemplateResponse
      parseFrom(
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
      trinsic.services.verifiablecredentials.templates.v1.UpdateVerificationTemplateResponse
          prototype) {
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
   * Protobuf type {@code
   * services.verifiablecredentials.templates.v1.UpdateVerificationTemplateResponse}
   */
  public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder>
      implements
      // @@protoc_insertion_point(builder_implements:services.verifiablecredentials.templates.v1.UpdateVerificationTemplateResponse)
      trinsic.services.verifiablecredentials.templates.v1
          .UpdateVerificationTemplateResponseOrBuilder {
    public static final com.google.protobuf.Descriptors.Descriptor getDescriptor() {
      return trinsic.services.verifiablecredentials.templates.v1.Templates
          .internal_static_services_verifiablecredentials_templates_v1_UpdateVerificationTemplateResponse_descriptor;
    }

    @java.lang.Override
    protected com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
        internalGetFieldAccessorTable() {
      return trinsic.services.verifiablecredentials.templates.v1.Templates
          .internal_static_services_verifiablecredentials_templates_v1_UpdateVerificationTemplateResponse_fieldAccessorTable
          .ensureFieldAccessorsInitialized(
              trinsic.services.verifiablecredentials.templates.v1.UpdateVerificationTemplateResponse
                  .class,
              trinsic.services.verifiablecredentials.templates.v1.UpdateVerificationTemplateResponse
                  .Builder.class);
    }

    // Construct using
    // trinsic.services.verifiablecredentials.templates.v1.UpdateVerificationTemplateResponse.newBuilder()
    private Builder() {}

    private Builder(com.google.protobuf.GeneratedMessageV3.BuilderParent parent) {
      super(parent);
    }

    @java.lang.Override
    public Builder clear() {
      super.clear();
      if (templateBuilder_ == null) {
        template_ = null;
      } else {
        template_ = null;
        templateBuilder_ = null;
      }
      return this;
    }

    @java.lang.Override
    public com.google.protobuf.Descriptors.Descriptor getDescriptorForType() {
      return trinsic.services.verifiablecredentials.templates.v1.Templates
          .internal_static_services_verifiablecredentials_templates_v1_UpdateVerificationTemplateResponse_descriptor;
    }

    @java.lang.Override
    public trinsic.services.verifiablecredentials.templates.v1.UpdateVerificationTemplateResponse
        getDefaultInstanceForType() {
      return trinsic.services.verifiablecredentials.templates.v1.UpdateVerificationTemplateResponse
          .getDefaultInstance();
    }

    @java.lang.Override
    public trinsic.services.verifiablecredentials.templates.v1.UpdateVerificationTemplateResponse
        build() {
      trinsic.services.verifiablecredentials.templates.v1.UpdateVerificationTemplateResponse
          result = buildPartial();
      if (!result.isInitialized()) {
        throw newUninitializedMessageException(result);
      }
      return result;
    }

    @java.lang.Override
    public trinsic.services.verifiablecredentials.templates.v1.UpdateVerificationTemplateResponse
        buildPartial() {
      trinsic.services.verifiablecredentials.templates.v1.UpdateVerificationTemplateResponse
          result =
              new trinsic.services.verifiablecredentials.templates.v1
                  .UpdateVerificationTemplateResponse(this);
      if (templateBuilder_ == null) {
        result.template_ = template_;
      } else {
        result.template_ = templateBuilder_.build();
      }
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
      if (other
          instanceof
          trinsic.services.verifiablecredentials.templates.v1.UpdateVerificationTemplateResponse) {
        return mergeFrom(
            (trinsic.services.verifiablecredentials.templates.v1.UpdateVerificationTemplateResponse)
                other);
      } else {
        super.mergeFrom(other);
        return this;
      }
    }

    public Builder mergeFrom(
        trinsic.services.verifiablecredentials.templates.v1.UpdateVerificationTemplateResponse
            other) {
      if (other
          == trinsic.services.verifiablecredentials.templates.v1.UpdateVerificationTemplateResponse
              .getDefaultInstance()) return this;
      if (other.hasTemplate()) {
        mergeTemplate(other.getTemplate());
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
                input.readMessage(getTemplateFieldBuilder().getBuilder(), extensionRegistry);

                break;
              } // case 10
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

    private trinsic.services.verifiablecredentials.templates.v1.VerificationTemplateData template_;
    private com.google.protobuf.SingleFieldBuilderV3<
            trinsic.services.verifiablecredentials.templates.v1.VerificationTemplateData,
            trinsic.services.verifiablecredentials.templates.v1.VerificationTemplateData.Builder,
            trinsic.services.verifiablecredentials.templates.v1.VerificationTemplateDataOrBuilder>
        templateBuilder_;
    /**
     * <code>.services.verifiablecredentials.templates.v1.VerificationTemplateData template = 1;
     * </code>
     *
     * @return Whether the template field is set.
     */
    public boolean hasTemplate() {
      return templateBuilder_ != null || template_ != null;
    }
    /**
     * <code>.services.verifiablecredentials.templates.v1.VerificationTemplateData template = 1;
     * </code>
     *
     * @return The template.
     */
    public trinsic.services.verifiablecredentials.templates.v1.VerificationTemplateData
        getTemplate() {
      if (templateBuilder_ == null) {
        return template_ == null
            ? trinsic.services.verifiablecredentials.templates.v1.VerificationTemplateData
                .getDefaultInstance()
            : template_;
      } else {
        return templateBuilder_.getMessage();
      }
    }
    /**
     * <code>.services.verifiablecredentials.templates.v1.VerificationTemplateData template = 1;
     * </code>
     */
    public Builder setTemplate(
        trinsic.services.verifiablecredentials.templates.v1.VerificationTemplateData value) {
      if (templateBuilder_ == null) {
        if (value == null) {
          throw new NullPointerException();
        }
        template_ = value;
        onChanged();
      } else {
        templateBuilder_.setMessage(value);
      }

      return this;
    }
    /**
     * <code>.services.verifiablecredentials.templates.v1.VerificationTemplateData template = 1;
     * </code>
     */
    public Builder setTemplate(
        trinsic.services.verifiablecredentials.templates.v1.VerificationTemplateData.Builder
            builderForValue) {
      if (templateBuilder_ == null) {
        template_ = builderForValue.build();
        onChanged();
      } else {
        templateBuilder_.setMessage(builderForValue.build());
      }

      return this;
    }
    /**
     * <code>.services.verifiablecredentials.templates.v1.VerificationTemplateData template = 1;
     * </code>
     */
    public Builder mergeTemplate(
        trinsic.services.verifiablecredentials.templates.v1.VerificationTemplateData value) {
      if (templateBuilder_ == null) {
        if (template_ != null) {
          template_ =
              trinsic.services.verifiablecredentials.templates.v1.VerificationTemplateData
                  .newBuilder(template_)
                  .mergeFrom(value)
                  .buildPartial();
        } else {
          template_ = value;
        }
        onChanged();
      } else {
        templateBuilder_.mergeFrom(value);
      }

      return this;
    }
    /**
     * <code>.services.verifiablecredentials.templates.v1.VerificationTemplateData template = 1;
     * </code>
     */
    public Builder clearTemplate() {
      if (templateBuilder_ == null) {
        template_ = null;
        onChanged();
      } else {
        template_ = null;
        templateBuilder_ = null;
      }

      return this;
    }
    /**
     * <code>.services.verifiablecredentials.templates.v1.VerificationTemplateData template = 1;
     * </code>
     */
    public trinsic.services.verifiablecredentials.templates.v1.VerificationTemplateData.Builder
        getTemplateBuilder() {

      onChanged();
      return getTemplateFieldBuilder().getBuilder();
    }
    /**
     * <code>.services.verifiablecredentials.templates.v1.VerificationTemplateData template = 1;
     * </code>
     */
    public trinsic.services.verifiablecredentials.templates.v1.VerificationTemplateDataOrBuilder
        getTemplateOrBuilder() {
      if (templateBuilder_ != null) {
        return templateBuilder_.getMessageOrBuilder();
      } else {
        return template_ == null
            ? trinsic.services.verifiablecredentials.templates.v1.VerificationTemplateData
                .getDefaultInstance()
            : template_;
      }
    }
    /**
     * <code>.services.verifiablecredentials.templates.v1.VerificationTemplateData template = 1;
     * </code>
     */
    private com.google.protobuf.SingleFieldBuilderV3<
            trinsic.services.verifiablecredentials.templates.v1.VerificationTemplateData,
            trinsic.services.verifiablecredentials.templates.v1.VerificationTemplateData.Builder,
            trinsic.services.verifiablecredentials.templates.v1.VerificationTemplateDataOrBuilder>
        getTemplateFieldBuilder() {
      if (templateBuilder_ == null) {
        templateBuilder_ =
            new com.google.protobuf.SingleFieldBuilderV3<
                trinsic.services.verifiablecredentials.templates.v1.VerificationTemplateData,
                trinsic.services.verifiablecredentials.templates.v1.VerificationTemplateData
                    .Builder,
                trinsic.services.verifiablecredentials.templates.v1
                    .VerificationTemplateDataOrBuilder>(
                getTemplate(), getParentForChildren(), isClean());
        template_ = null;
      }
      return templateBuilder_;
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

    // @@protoc_insertion_point(builder_scope:services.verifiablecredentials.templates.v1.UpdateVerificationTemplateResponse)
  }

  // @@protoc_insertion_point(class_scope:services.verifiablecredentials.templates.v1.UpdateVerificationTemplateResponse)
  private static final trinsic.services.verifiablecredentials.templates.v1
          .UpdateVerificationTemplateResponse
      DEFAULT_INSTANCE;

  static {
    DEFAULT_INSTANCE =
        new trinsic.services.verifiablecredentials.templates.v1
            .UpdateVerificationTemplateResponse();
  }

  public static trinsic.services.verifiablecredentials.templates.v1
          .UpdateVerificationTemplateResponse
      getDefaultInstance() {
    return DEFAULT_INSTANCE;
  }

  private static final com.google.protobuf.Parser<UpdateVerificationTemplateResponse> PARSER =
      new com.google.protobuf.AbstractParser<UpdateVerificationTemplateResponse>() {
        @java.lang.Override
        public UpdateVerificationTemplateResponse parsePartialFrom(
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

  public static com.google.protobuf.Parser<UpdateVerificationTemplateResponse> parser() {
    return PARSER;
  }

  @java.lang.Override
  public com.google.protobuf.Parser<UpdateVerificationTemplateResponse> getParserForType() {
    return PARSER;
  }

  @java.lang.Override
  public trinsic.services.verifiablecredentials.templates.v1.UpdateVerificationTemplateResponse
      getDefaultInstanceForType() {
    return DEFAULT_INSTANCE;
  }
}
