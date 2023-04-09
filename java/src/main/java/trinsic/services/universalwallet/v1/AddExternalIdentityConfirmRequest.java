// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: services/universal-wallet/v1/universal-wallet.proto

package trinsic.services.universalwallet.v1;

/** Protobuf type {@code services.universalwallet.v1.AddExternalIdentityConfirmRequest} */
public final class AddExternalIdentityConfirmRequest extends com.google.protobuf.GeneratedMessageV3
    implements
    // @@protoc_insertion_point(message_implements:services.universalwallet.v1.AddExternalIdentityConfirmRequest)
    AddExternalIdentityConfirmRequestOrBuilder {
  private static final long serialVersionUID = 0L;
  // Use AddExternalIdentityConfirmRequest.newBuilder() to construct.
  private AddExternalIdentityConfirmRequest(
      com.google.protobuf.GeneratedMessageV3.Builder<?> builder) {
    super(builder);
  }

  private AddExternalIdentityConfirmRequest() {
    challenge_ = "";
    response_ = "";
  }

  @java.lang.Override
  @SuppressWarnings({"unused"})
  protected java.lang.Object newInstance(UnusedPrivateParameter unused) {
    return new AddExternalIdentityConfirmRequest();
  }

  @java.lang.Override
  public final com.google.protobuf.UnknownFieldSet getUnknownFields() {
    return this.unknownFields;
  }

  public static final com.google.protobuf.Descriptors.Descriptor getDescriptor() {
    return trinsic.services.universalwallet.v1.UniversalWalletOuterClass
        .internal_static_services_universalwallet_v1_AddExternalIdentityConfirmRequest_descriptor;
  }

  @java.lang.Override
  protected com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
      internalGetFieldAccessorTable() {
    return trinsic.services.universalwallet.v1.UniversalWalletOuterClass
        .internal_static_services_universalwallet_v1_AddExternalIdentityConfirmRequest_fieldAccessorTable
        .ensureFieldAccessorsInitialized(
            trinsic.services.universalwallet.v1.AddExternalIdentityConfirmRequest.class,
            trinsic.services.universalwallet.v1.AddExternalIdentityConfirmRequest.Builder.class);
  }

  public static final int CHALLENGE_FIELD_NUMBER = 1;
  private volatile java.lang.Object challenge_;
  /**
   *
   *
   * <pre>
   * The challenge received from the `AddExternalIdentityInit` endpoint
   * </pre>
   *
   * <code>string challenge = 1;</code>
   *
   * @return The challenge.
   */
  @java.lang.Override
  public java.lang.String getChallenge() {
    java.lang.Object ref = challenge_;
    if (ref instanceof java.lang.String) {
      return (java.lang.String) ref;
    } else {
      com.google.protobuf.ByteString bs = (com.google.protobuf.ByteString) ref;
      java.lang.String s = bs.toStringUtf8();
      challenge_ = s;
      return s;
    }
  }
  /**
   *
   *
   * <pre>
   * The challenge received from the `AddExternalIdentityInit` endpoint
   * </pre>
   *
   * <code>string challenge = 1;</code>
   *
   * @return The bytes for challenge.
   */
  @java.lang.Override
  public com.google.protobuf.ByteString getChallengeBytes() {
    java.lang.Object ref = challenge_;
    if (ref instanceof java.lang.String) {
      com.google.protobuf.ByteString b =
          com.google.protobuf.ByteString.copyFromUtf8((java.lang.String) ref);
      challenge_ = b;
      return b;
    } else {
      return (com.google.protobuf.ByteString) ref;
    }
  }

  public static final int RESPONSE_FIELD_NUMBER = 2;
  private volatile java.lang.Object response_;
  /**
   *
   *
   * <pre>
   * The response to the challenge. If using Email or Phone,
   * this is the OTP code sent to the user's email or phone
   * </pre>
   *
   * <code>string response = 2;</code>
   *
   * @return The response.
   */
  @java.lang.Override
  public java.lang.String getResponse() {
    java.lang.Object ref = response_;
    if (ref instanceof java.lang.String) {
      return (java.lang.String) ref;
    } else {
      com.google.protobuf.ByteString bs = (com.google.protobuf.ByteString) ref;
      java.lang.String s = bs.toStringUtf8();
      response_ = s;
      return s;
    }
  }
  /**
   *
   *
   * <pre>
   * The response to the challenge. If using Email or Phone,
   * this is the OTP code sent to the user's email or phone
   * </pre>
   *
   * <code>string response = 2;</code>
   *
   * @return The bytes for response.
   */
  @java.lang.Override
  public com.google.protobuf.ByteString getResponseBytes() {
    java.lang.Object ref = response_;
    if (ref instanceof java.lang.String) {
      com.google.protobuf.ByteString b =
          com.google.protobuf.ByteString.copyFromUtf8((java.lang.String) ref);
      response_ = b;
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
    if (!com.google.protobuf.GeneratedMessageV3.isStringEmpty(challenge_)) {
      com.google.protobuf.GeneratedMessageV3.writeString(output, 1, challenge_);
    }
    if (!com.google.protobuf.GeneratedMessageV3.isStringEmpty(response_)) {
      com.google.protobuf.GeneratedMessageV3.writeString(output, 2, response_);
    }
    getUnknownFields().writeTo(output);
  }

  @java.lang.Override
  public int getSerializedSize() {
    int size = memoizedSize;
    if (size != -1) return size;

    size = 0;
    if (!com.google.protobuf.GeneratedMessageV3.isStringEmpty(challenge_)) {
      size += com.google.protobuf.GeneratedMessageV3.computeStringSize(1, challenge_);
    }
    if (!com.google.protobuf.GeneratedMessageV3.isStringEmpty(response_)) {
      size += com.google.protobuf.GeneratedMessageV3.computeStringSize(2, response_);
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
    if (!(obj instanceof trinsic.services.universalwallet.v1.AddExternalIdentityConfirmRequest)) {
      return super.equals(obj);
    }
    trinsic.services.universalwallet.v1.AddExternalIdentityConfirmRequest other =
        (trinsic.services.universalwallet.v1.AddExternalIdentityConfirmRequest) obj;

    if (!getChallenge().equals(other.getChallenge())) return false;
    if (!getResponse().equals(other.getResponse())) return false;
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
    hash = (37 * hash) + CHALLENGE_FIELD_NUMBER;
    hash = (53 * hash) + getChallenge().hashCode();
    hash = (37 * hash) + RESPONSE_FIELD_NUMBER;
    hash = (53 * hash) + getResponse().hashCode();
    hash = (29 * hash) + getUnknownFields().hashCode();
    memoizedHashCode = hash;
    return hash;
  }

  public static trinsic.services.universalwallet.v1.AddExternalIdentityConfirmRequest parseFrom(
      java.nio.ByteBuffer data) throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data);
  }

  public static trinsic.services.universalwallet.v1.AddExternalIdentityConfirmRequest parseFrom(
      java.nio.ByteBuffer data, com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data, extensionRegistry);
  }

  public static trinsic.services.universalwallet.v1.AddExternalIdentityConfirmRequest parseFrom(
      com.google.protobuf.ByteString data)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data);
  }

  public static trinsic.services.universalwallet.v1.AddExternalIdentityConfirmRequest parseFrom(
      com.google.protobuf.ByteString data,
      com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data, extensionRegistry);
  }

  public static trinsic.services.universalwallet.v1.AddExternalIdentityConfirmRequest parseFrom(
      byte[] data) throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data);
  }

  public static trinsic.services.universalwallet.v1.AddExternalIdentityConfirmRequest parseFrom(
      byte[] data, com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data, extensionRegistry);
  }

  public static trinsic.services.universalwallet.v1.AddExternalIdentityConfirmRequest parseFrom(
      java.io.InputStream input) throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3.parseWithIOException(PARSER, input);
  }

  public static trinsic.services.universalwallet.v1.AddExternalIdentityConfirmRequest parseFrom(
      java.io.InputStream input, com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3.parseWithIOException(
        PARSER, input, extensionRegistry);
  }

  public static trinsic.services.universalwallet.v1.AddExternalIdentityConfirmRequest
      parseDelimitedFrom(java.io.InputStream input) throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
  }

  public static trinsic.services.universalwallet.v1.AddExternalIdentityConfirmRequest
      parseDelimitedFrom(
          java.io.InputStream input, com.google.protobuf.ExtensionRegistryLite extensionRegistry)
          throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3.parseDelimitedWithIOException(
        PARSER, input, extensionRegistry);
  }

  public static trinsic.services.universalwallet.v1.AddExternalIdentityConfirmRequest parseFrom(
      com.google.protobuf.CodedInputStream input) throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3.parseWithIOException(PARSER, input);
  }

  public static trinsic.services.universalwallet.v1.AddExternalIdentityConfirmRequest parseFrom(
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
      trinsic.services.universalwallet.v1.AddExternalIdentityConfirmRequest prototype) {
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
  /** Protobuf type {@code services.universalwallet.v1.AddExternalIdentityConfirmRequest} */
  public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder>
      implements
      // @@protoc_insertion_point(builder_implements:services.universalwallet.v1.AddExternalIdentityConfirmRequest)
      trinsic.services.universalwallet.v1.AddExternalIdentityConfirmRequestOrBuilder {
    public static final com.google.protobuf.Descriptors.Descriptor getDescriptor() {
      return trinsic.services.universalwallet.v1.UniversalWalletOuterClass
          .internal_static_services_universalwallet_v1_AddExternalIdentityConfirmRequest_descriptor;
    }

    @java.lang.Override
    protected com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
        internalGetFieldAccessorTable() {
      return trinsic.services.universalwallet.v1.UniversalWalletOuterClass
          .internal_static_services_universalwallet_v1_AddExternalIdentityConfirmRequest_fieldAccessorTable
          .ensureFieldAccessorsInitialized(
              trinsic.services.universalwallet.v1.AddExternalIdentityConfirmRequest.class,
              trinsic.services.universalwallet.v1.AddExternalIdentityConfirmRequest.Builder.class);
    }

    // Construct using
    // trinsic.services.universalwallet.v1.AddExternalIdentityConfirmRequest.newBuilder()
    private Builder() {}

    private Builder(com.google.protobuf.GeneratedMessageV3.BuilderParent parent) {
      super(parent);
    }

    @java.lang.Override
    public Builder clear() {
      super.clear();
      challenge_ = "";

      response_ = "";

      return this;
    }

    @java.lang.Override
    public com.google.protobuf.Descriptors.Descriptor getDescriptorForType() {
      return trinsic.services.universalwallet.v1.UniversalWalletOuterClass
          .internal_static_services_universalwallet_v1_AddExternalIdentityConfirmRequest_descriptor;
    }

    @java.lang.Override
    public trinsic.services.universalwallet.v1.AddExternalIdentityConfirmRequest
        getDefaultInstanceForType() {
      return trinsic.services.universalwallet.v1.AddExternalIdentityConfirmRequest
          .getDefaultInstance();
    }

    @java.lang.Override
    public trinsic.services.universalwallet.v1.AddExternalIdentityConfirmRequest build() {
      trinsic.services.universalwallet.v1.AddExternalIdentityConfirmRequest result = buildPartial();
      if (!result.isInitialized()) {
        throw newUninitializedMessageException(result);
      }
      return result;
    }

    @java.lang.Override
    public trinsic.services.universalwallet.v1.AddExternalIdentityConfirmRequest buildPartial() {
      trinsic.services.universalwallet.v1.AddExternalIdentityConfirmRequest result =
          new trinsic.services.universalwallet.v1.AddExternalIdentityConfirmRequest(this);
      result.challenge_ = challenge_;
      result.response_ = response_;
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
      if (other instanceof trinsic.services.universalwallet.v1.AddExternalIdentityConfirmRequest) {
        return mergeFrom(
            (trinsic.services.universalwallet.v1.AddExternalIdentityConfirmRequest) other);
      } else {
        super.mergeFrom(other);
        return this;
      }
    }

    public Builder mergeFrom(
        trinsic.services.universalwallet.v1.AddExternalIdentityConfirmRequest other) {
      if (other
          == trinsic.services.universalwallet.v1.AddExternalIdentityConfirmRequest
              .getDefaultInstance()) return this;
      if (!other.getChallenge().isEmpty()) {
        challenge_ = other.challenge_;
        onChanged();
      }
      if (!other.getResponse().isEmpty()) {
        response_ = other.response_;
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
                challenge_ = input.readStringRequireUtf8();

                break;
              } // case 10
            case 18:
              {
                response_ = input.readStringRequireUtf8();

                break;
              } // case 18
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

    private java.lang.Object challenge_ = "";
    /**
     *
     *
     * <pre>
     * The challenge received from the `AddExternalIdentityInit` endpoint
     * </pre>
     *
     * <code>string challenge = 1;</code>
     *
     * @return The challenge.
     */
    public java.lang.String getChallenge() {
      java.lang.Object ref = challenge_;
      if (!(ref instanceof java.lang.String)) {
        com.google.protobuf.ByteString bs = (com.google.protobuf.ByteString) ref;
        java.lang.String s = bs.toStringUtf8();
        challenge_ = s;
        return s;
      } else {
        return (java.lang.String) ref;
      }
    }
    /**
     *
     *
     * <pre>
     * The challenge received from the `AddExternalIdentityInit` endpoint
     * </pre>
     *
     * <code>string challenge = 1;</code>
     *
     * @return The bytes for challenge.
     */
    public com.google.protobuf.ByteString getChallengeBytes() {
      java.lang.Object ref = challenge_;
      if (ref instanceof String) {
        com.google.protobuf.ByteString b =
            com.google.protobuf.ByteString.copyFromUtf8((java.lang.String) ref);
        challenge_ = b;
        return b;
      } else {
        return (com.google.protobuf.ByteString) ref;
      }
    }
    /**
     *
     *
     * <pre>
     * The challenge received from the `AddExternalIdentityInit` endpoint
     * </pre>
     *
     * <code>string challenge = 1;</code>
     *
     * @param value The challenge to set.
     * @return This builder for chaining.
     */
    public Builder setChallenge(java.lang.String value) {
      if (value == null) {
        throw new NullPointerException();
      }

      challenge_ = value;
      onChanged();
      return this;
    }
    /**
     *
     *
     * <pre>
     * The challenge received from the `AddExternalIdentityInit` endpoint
     * </pre>
     *
     * <code>string challenge = 1;</code>
     *
     * @return This builder for chaining.
     */
    public Builder clearChallenge() {

      challenge_ = getDefaultInstance().getChallenge();
      onChanged();
      return this;
    }
    /**
     *
     *
     * <pre>
     * The challenge received from the `AddExternalIdentityInit` endpoint
     * </pre>
     *
     * <code>string challenge = 1;</code>
     *
     * @param value The bytes for challenge to set.
     * @return This builder for chaining.
     */
    public Builder setChallengeBytes(com.google.protobuf.ByteString value) {
      if (value == null) {
        throw new NullPointerException();
      }
      checkByteStringIsUtf8(value);

      challenge_ = value;
      onChanged();
      return this;
    }

    private java.lang.Object response_ = "";
    /**
     *
     *
     * <pre>
     * The response to the challenge. If using Email or Phone,
     * this is the OTP code sent to the user's email or phone
     * </pre>
     *
     * <code>string response = 2;</code>
     *
     * @return The response.
     */
    public java.lang.String getResponse() {
      java.lang.Object ref = response_;
      if (!(ref instanceof java.lang.String)) {
        com.google.protobuf.ByteString bs = (com.google.protobuf.ByteString) ref;
        java.lang.String s = bs.toStringUtf8();
        response_ = s;
        return s;
      } else {
        return (java.lang.String) ref;
      }
    }
    /**
     *
     *
     * <pre>
     * The response to the challenge. If using Email or Phone,
     * this is the OTP code sent to the user's email or phone
     * </pre>
     *
     * <code>string response = 2;</code>
     *
     * @return The bytes for response.
     */
    public com.google.protobuf.ByteString getResponseBytes() {
      java.lang.Object ref = response_;
      if (ref instanceof String) {
        com.google.protobuf.ByteString b =
            com.google.protobuf.ByteString.copyFromUtf8((java.lang.String) ref);
        response_ = b;
        return b;
      } else {
        return (com.google.protobuf.ByteString) ref;
      }
    }
    /**
     *
     *
     * <pre>
     * The response to the challenge. If using Email or Phone,
     * this is the OTP code sent to the user's email or phone
     * </pre>
     *
     * <code>string response = 2;</code>
     *
     * @param value The response to set.
     * @return This builder for chaining.
     */
    public Builder setResponse(java.lang.String value) {
      if (value == null) {
        throw new NullPointerException();
      }

      response_ = value;
      onChanged();
      return this;
    }
    /**
     *
     *
     * <pre>
     * The response to the challenge. If using Email or Phone,
     * this is the OTP code sent to the user's email or phone
     * </pre>
     *
     * <code>string response = 2;</code>
     *
     * @return This builder for chaining.
     */
    public Builder clearResponse() {

      response_ = getDefaultInstance().getResponse();
      onChanged();
      return this;
    }
    /**
     *
     *
     * <pre>
     * The response to the challenge. If using Email or Phone,
     * this is the OTP code sent to the user's email or phone
     * </pre>
     *
     * <code>string response = 2;</code>
     *
     * @param value The bytes for response to set.
     * @return This builder for chaining.
     */
    public Builder setResponseBytes(com.google.protobuf.ByteString value) {
      if (value == null) {
        throw new NullPointerException();
      }
      checkByteStringIsUtf8(value);

      response_ = value;
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

    // @@protoc_insertion_point(builder_scope:services.universalwallet.v1.AddExternalIdentityConfirmRequest)
  }

  // @@protoc_insertion_point(class_scope:services.universalwallet.v1.AddExternalIdentityConfirmRequest)
  private static final trinsic.services.universalwallet.v1.AddExternalIdentityConfirmRequest
      DEFAULT_INSTANCE;

  static {
    DEFAULT_INSTANCE = new trinsic.services.universalwallet.v1.AddExternalIdentityConfirmRequest();
  }

  public static trinsic.services.universalwallet.v1.AddExternalIdentityConfirmRequest
      getDefaultInstance() {
    return DEFAULT_INSTANCE;
  }

  private static final com.google.protobuf.Parser<AddExternalIdentityConfirmRequest> PARSER =
      new com.google.protobuf.AbstractParser<AddExternalIdentityConfirmRequest>() {
        @java.lang.Override
        public AddExternalIdentityConfirmRequest parsePartialFrom(
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

  public static com.google.protobuf.Parser<AddExternalIdentityConfirmRequest> parser() {
    return PARSER;
  }

  @java.lang.Override
  public com.google.protobuf.Parser<AddExternalIdentityConfirmRequest> getParserForType() {
    return PARSER;
  }

  @java.lang.Override
  public trinsic.services.universalwallet.v1.AddExternalIdentityConfirmRequest
      getDefaultInstanceForType() {
    return DEFAULT_INSTANCE;
  }
}
