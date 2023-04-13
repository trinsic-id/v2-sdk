// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: services/provider/v1/provider.proto

package trinsic.services.provider.v1;

/**
 *
 *
 * <pre>
 * DEPRECATED, will be removed April 1st 2023
 * Response to `AddWebhookRequest`
 * </pre>
 *
 * Protobuf type {@code services.provider.v1.AddWebhookResponse}
 */
@java.lang.Deprecated
public final class AddWebhookResponse extends com.google.protobuf.GeneratedMessageV3
    implements
    // @@protoc_insertion_point(message_implements:services.provider.v1.AddWebhookResponse)
    AddWebhookResponseOrBuilder {
  private static final long serialVersionUID = 0L;
  // Use AddWebhookResponse.newBuilder() to construct.
  private AddWebhookResponse(com.google.protobuf.GeneratedMessageV3.Builder<?> builder) {
    super(builder);
  }

  private AddWebhookResponse() {}

  @java.lang.Override
  @SuppressWarnings({"unused"})
  protected java.lang.Object newInstance(UnusedPrivateParameter unused) {
    return new AddWebhookResponse();
  }

  @java.lang.Override
  public final com.google.protobuf.UnknownFieldSet getUnknownFields() {
    return this.unknownFields;
  }

  public static final com.google.protobuf.Descriptors.Descriptor getDescriptor() {
    return trinsic.services.provider.v1.ProviderOuterClass
        .internal_static_services_provider_v1_AddWebhookResponse_descriptor;
  }

  @java.lang.Override
  protected com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
      internalGetFieldAccessorTable() {
    return trinsic.services.provider.v1.ProviderOuterClass
        .internal_static_services_provider_v1_AddWebhookResponse_fieldAccessorTable
        .ensureFieldAccessorsInitialized(
            trinsic.services.provider.v1.AddWebhookResponse.class,
            trinsic.services.provider.v1.AddWebhookResponse.Builder.class);
  }

  public static final int ECOSYSTEM_FIELD_NUMBER = 1;
  private trinsic.services.provider.v1.Ecosystem ecosystem_;
  /**
   *
   *
   * <pre>
   * Ecosystem data with new webhook
   * </pre>
   *
   * <code>.services.provider.v1.Ecosystem ecosystem = 1;</code>
   *
   * @return Whether the ecosystem field is set.
   */
  @java.lang.Override
  public boolean hasEcosystem() {
    return ecosystem_ != null;
  }
  /**
   *
   *
   * <pre>
   * Ecosystem data with new webhook
   * </pre>
   *
   * <code>.services.provider.v1.Ecosystem ecosystem = 1;</code>
   *
   * @return The ecosystem.
   */
  @java.lang.Override
  public trinsic.services.provider.v1.Ecosystem getEcosystem() {
    return ecosystem_ == null
        ? trinsic.services.provider.v1.Ecosystem.getDefaultInstance()
        : ecosystem_;
  }
  /**
   *
   *
   * <pre>
   * Ecosystem data with new webhook
   * </pre>
   *
   * <code>.services.provider.v1.Ecosystem ecosystem = 1;</code>
   */
  @java.lang.Override
  public trinsic.services.provider.v1.EcosystemOrBuilder getEcosystemOrBuilder() {
    return getEcosystem();
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
    if (ecosystem_ != null) {
      output.writeMessage(1, getEcosystem());
    }
    getUnknownFields().writeTo(output);
  }

  @java.lang.Override
  public int getSerializedSize() {
    int size = memoizedSize;
    if (size != -1) return size;

    size = 0;
    if (ecosystem_ != null) {
      size += com.google.protobuf.CodedOutputStream.computeMessageSize(1, getEcosystem());
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
    if (!(obj instanceof trinsic.services.provider.v1.AddWebhookResponse)) {
      return super.equals(obj);
    }
    trinsic.services.provider.v1.AddWebhookResponse other =
        (trinsic.services.provider.v1.AddWebhookResponse) obj;

    if (hasEcosystem() != other.hasEcosystem()) return false;
    if (hasEcosystem()) {
      if (!getEcosystem().equals(other.getEcosystem())) return false;
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
    if (hasEcosystem()) {
      hash = (37 * hash) + ECOSYSTEM_FIELD_NUMBER;
      hash = (53 * hash) + getEcosystem().hashCode();
    }
    hash = (29 * hash) + getUnknownFields().hashCode();
    memoizedHashCode = hash;
    return hash;
  }

  public static trinsic.services.provider.v1.AddWebhookResponse parseFrom(java.nio.ByteBuffer data)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data);
  }

  public static trinsic.services.provider.v1.AddWebhookResponse parseFrom(
      java.nio.ByteBuffer data, com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data, extensionRegistry);
  }

  public static trinsic.services.provider.v1.AddWebhookResponse parseFrom(
      com.google.protobuf.ByteString data)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data);
  }

  public static trinsic.services.provider.v1.AddWebhookResponse parseFrom(
      com.google.protobuf.ByteString data,
      com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data, extensionRegistry);
  }

  public static trinsic.services.provider.v1.AddWebhookResponse parseFrom(byte[] data)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data);
  }

  public static trinsic.services.provider.v1.AddWebhookResponse parseFrom(
      byte[] data, com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data, extensionRegistry);
  }

  public static trinsic.services.provider.v1.AddWebhookResponse parseFrom(java.io.InputStream input)
      throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3.parseWithIOException(PARSER, input);
  }

  public static trinsic.services.provider.v1.AddWebhookResponse parseFrom(
      java.io.InputStream input, com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3.parseWithIOException(
        PARSER, input, extensionRegistry);
  }

  public static trinsic.services.provider.v1.AddWebhookResponse parseDelimitedFrom(
      java.io.InputStream input) throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
  }

  public static trinsic.services.provider.v1.AddWebhookResponse parseDelimitedFrom(
      java.io.InputStream input, com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3.parseDelimitedWithIOException(
        PARSER, input, extensionRegistry);
  }

  public static trinsic.services.provider.v1.AddWebhookResponse parseFrom(
      com.google.protobuf.CodedInputStream input) throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3.parseWithIOException(PARSER, input);
  }

  public static trinsic.services.provider.v1.AddWebhookResponse parseFrom(
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

  public static Builder newBuilder(trinsic.services.provider.v1.AddWebhookResponse prototype) {
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
   * DEPRECATED, will be removed April 1st 2023
   * Response to `AddWebhookRequest`
   * </pre>
   *
   * Protobuf type {@code services.provider.v1.AddWebhookResponse}
   */
  public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder>
      implements
      // @@protoc_insertion_point(builder_implements:services.provider.v1.AddWebhookResponse)
      trinsic.services.provider.v1.AddWebhookResponseOrBuilder {
    public static final com.google.protobuf.Descriptors.Descriptor getDescriptor() {
      return trinsic.services.provider.v1.ProviderOuterClass
          .internal_static_services_provider_v1_AddWebhookResponse_descriptor;
    }

    @java.lang.Override
    protected com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
        internalGetFieldAccessorTable() {
      return trinsic.services.provider.v1.ProviderOuterClass
          .internal_static_services_provider_v1_AddWebhookResponse_fieldAccessorTable
          .ensureFieldAccessorsInitialized(
              trinsic.services.provider.v1.AddWebhookResponse.class,
              trinsic.services.provider.v1.AddWebhookResponse.Builder.class);
    }

    // Construct using trinsic.services.provider.v1.AddWebhookResponse.newBuilder()
    private Builder() {}

    private Builder(com.google.protobuf.GeneratedMessageV3.BuilderParent parent) {
      super(parent);
    }

    @java.lang.Override
    public Builder clear() {
      super.clear();
      if (ecosystemBuilder_ == null) {
        ecosystem_ = null;
      } else {
        ecosystem_ = null;
        ecosystemBuilder_ = null;
      }
      return this;
    }

    @java.lang.Override
    public com.google.protobuf.Descriptors.Descriptor getDescriptorForType() {
      return trinsic.services.provider.v1.ProviderOuterClass
          .internal_static_services_provider_v1_AddWebhookResponse_descriptor;
    }

    @java.lang.Override
    public trinsic.services.provider.v1.AddWebhookResponse getDefaultInstanceForType() {
      return trinsic.services.provider.v1.AddWebhookResponse.getDefaultInstance();
    }

    @java.lang.Override
    public trinsic.services.provider.v1.AddWebhookResponse build() {
      trinsic.services.provider.v1.AddWebhookResponse result = buildPartial();
      if (!result.isInitialized()) {
        throw newUninitializedMessageException(result);
      }
      return result;
    }

    @java.lang.Override
    public trinsic.services.provider.v1.AddWebhookResponse buildPartial() {
      trinsic.services.provider.v1.AddWebhookResponse result =
          new trinsic.services.provider.v1.AddWebhookResponse(this);
      if (ecosystemBuilder_ == null) {
        result.ecosystem_ = ecosystem_;
      } else {
        result.ecosystem_ = ecosystemBuilder_.build();
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
      if (other instanceof trinsic.services.provider.v1.AddWebhookResponse) {
        return mergeFrom((trinsic.services.provider.v1.AddWebhookResponse) other);
      } else {
        super.mergeFrom(other);
        return this;
      }
    }

    public Builder mergeFrom(trinsic.services.provider.v1.AddWebhookResponse other) {
      if (other == trinsic.services.provider.v1.AddWebhookResponse.getDefaultInstance())
        return this;
      if (other.hasEcosystem()) {
        mergeEcosystem(other.getEcosystem());
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
                input.readMessage(getEcosystemFieldBuilder().getBuilder(), extensionRegistry);

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

    private trinsic.services.provider.v1.Ecosystem ecosystem_;
    private com.google.protobuf.SingleFieldBuilderV3<
            trinsic.services.provider.v1.Ecosystem,
            trinsic.services.provider.v1.Ecosystem.Builder,
            trinsic.services.provider.v1.EcosystemOrBuilder>
        ecosystemBuilder_;
    /**
     *
     *
     * <pre>
     * Ecosystem data with new webhook
     * </pre>
     *
     * <code>.services.provider.v1.Ecosystem ecosystem = 1;</code>
     *
     * @return Whether the ecosystem field is set.
     */
    public boolean hasEcosystem() {
      return ecosystemBuilder_ != null || ecosystem_ != null;
    }
    /**
     *
     *
     * <pre>
     * Ecosystem data with new webhook
     * </pre>
     *
     * <code>.services.provider.v1.Ecosystem ecosystem = 1;</code>
     *
     * @return The ecosystem.
     */
    public trinsic.services.provider.v1.Ecosystem getEcosystem() {
      if (ecosystemBuilder_ == null) {
        return ecosystem_ == null
            ? trinsic.services.provider.v1.Ecosystem.getDefaultInstance()
            : ecosystem_;
      } else {
        return ecosystemBuilder_.getMessage();
      }
    }
    /**
     *
     *
     * <pre>
     * Ecosystem data with new webhook
     * </pre>
     *
     * <code>.services.provider.v1.Ecosystem ecosystem = 1;</code>
     */
    public Builder setEcosystem(trinsic.services.provider.v1.Ecosystem value) {
      if (ecosystemBuilder_ == null) {
        if (value == null) {
          throw new NullPointerException();
        }
        ecosystem_ = value;
        onChanged();
      } else {
        ecosystemBuilder_.setMessage(value);
      }

      return this;
    }
    /**
     *
     *
     * <pre>
     * Ecosystem data with new webhook
     * </pre>
     *
     * <code>.services.provider.v1.Ecosystem ecosystem = 1;</code>
     */
    public Builder setEcosystem(trinsic.services.provider.v1.Ecosystem.Builder builderForValue) {
      if (ecosystemBuilder_ == null) {
        ecosystem_ = builderForValue.build();
        onChanged();
      } else {
        ecosystemBuilder_.setMessage(builderForValue.build());
      }

      return this;
    }
    /**
     *
     *
     * <pre>
     * Ecosystem data with new webhook
     * </pre>
     *
     * <code>.services.provider.v1.Ecosystem ecosystem = 1;</code>
     */
    public Builder mergeEcosystem(trinsic.services.provider.v1.Ecosystem value) {
      if (ecosystemBuilder_ == null) {
        if (ecosystem_ != null) {
          ecosystem_ =
              trinsic.services.provider.v1.Ecosystem.newBuilder(ecosystem_)
                  .mergeFrom(value)
                  .buildPartial();
        } else {
          ecosystem_ = value;
        }
        onChanged();
      } else {
        ecosystemBuilder_.mergeFrom(value);
      }

      return this;
    }
    /**
     *
     *
     * <pre>
     * Ecosystem data with new webhook
     * </pre>
     *
     * <code>.services.provider.v1.Ecosystem ecosystem = 1;</code>
     */
    public Builder clearEcosystem() {
      if (ecosystemBuilder_ == null) {
        ecosystem_ = null;
        onChanged();
      } else {
        ecosystem_ = null;
        ecosystemBuilder_ = null;
      }

      return this;
    }
    /**
     *
     *
     * <pre>
     * Ecosystem data with new webhook
     * </pre>
     *
     * <code>.services.provider.v1.Ecosystem ecosystem = 1;</code>
     */
    public trinsic.services.provider.v1.Ecosystem.Builder getEcosystemBuilder() {

      onChanged();
      return getEcosystemFieldBuilder().getBuilder();
    }
    /**
     *
     *
     * <pre>
     * Ecosystem data with new webhook
     * </pre>
     *
     * <code>.services.provider.v1.Ecosystem ecosystem = 1;</code>
     */
    public trinsic.services.provider.v1.EcosystemOrBuilder getEcosystemOrBuilder() {
      if (ecosystemBuilder_ != null) {
        return ecosystemBuilder_.getMessageOrBuilder();
      } else {
        return ecosystem_ == null
            ? trinsic.services.provider.v1.Ecosystem.getDefaultInstance()
            : ecosystem_;
      }
    }
    /**
     *
     *
     * <pre>
     * Ecosystem data with new webhook
     * </pre>
     *
     * <code>.services.provider.v1.Ecosystem ecosystem = 1;</code>
     */
    private com.google.protobuf.SingleFieldBuilderV3<
            trinsic.services.provider.v1.Ecosystem,
            trinsic.services.provider.v1.Ecosystem.Builder,
            trinsic.services.provider.v1.EcosystemOrBuilder>
        getEcosystemFieldBuilder() {
      if (ecosystemBuilder_ == null) {
        ecosystemBuilder_ =
            new com.google.protobuf.SingleFieldBuilderV3<
                trinsic.services.provider.v1.Ecosystem,
                trinsic.services.provider.v1.Ecosystem.Builder,
                trinsic.services.provider.v1.EcosystemOrBuilder>(
                getEcosystem(), getParentForChildren(), isClean());
        ecosystem_ = null;
      }
      return ecosystemBuilder_;
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

    // @@protoc_insertion_point(builder_scope:services.provider.v1.AddWebhookResponse)
  }

  // @@protoc_insertion_point(class_scope:services.provider.v1.AddWebhookResponse)
  private static final trinsic.services.provider.v1.AddWebhookResponse DEFAULT_INSTANCE;

  static {
    DEFAULT_INSTANCE = new trinsic.services.provider.v1.AddWebhookResponse();
  }

  public static trinsic.services.provider.v1.AddWebhookResponse getDefaultInstance() {
    return DEFAULT_INSTANCE;
  }

  private static final com.google.protobuf.Parser<AddWebhookResponse> PARSER =
      new com.google.protobuf.AbstractParser<AddWebhookResponse>() {
        @java.lang.Override
        public AddWebhookResponse parsePartialFrom(
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

  public static com.google.protobuf.Parser<AddWebhookResponse> parser() {
    return PARSER;
  }

  @java.lang.Override
  public com.google.protobuf.Parser<AddWebhookResponse> getParserForType() {
    return PARSER;
  }

  @java.lang.Override
  public trinsic.services.provider.v1.AddWebhookResponse getDefaultInstanceForType() {
    return DEFAULT_INSTANCE;
  }
}
