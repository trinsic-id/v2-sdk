// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: services/account/v1/account.proto

package trinsic.services.account.v1;

/** Protobuf type {@code services.account.v1.LoginConfirmRequest} */
public final class LoginConfirmRequest extends com.google.protobuf.GeneratedMessageV3
    implements
    // @@protoc_insertion_point(message_implements:services.account.v1.LoginConfirmRequest)
    LoginConfirmRequestOrBuilder {
  private static final long serialVersionUID = 0L;
  // Use LoginConfirmRequest.newBuilder() to construct.
  private LoginConfirmRequest(com.google.protobuf.GeneratedMessageV3.Builder<?> builder) {
    super(builder);
  }

  private LoginConfirmRequest() {
    challenge_ = com.google.protobuf.ByteString.EMPTY;
    confirmationCodeHashed_ = com.google.protobuf.ByteString.EMPTY;
  }

  @java.lang.Override
  @SuppressWarnings({"unused"})
  protected java.lang.Object newInstance(UnusedPrivateParameter unused) {
    return new LoginConfirmRequest();
  }

  @java.lang.Override
  public final com.google.protobuf.UnknownFieldSet getUnknownFields() {
    return this.unknownFields;
  }

  private LoginConfirmRequest(
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
              challenge_ = input.readBytes();
              break;
            }
          case 18:
            {
              confirmationCodeHashed_ = input.readBytes();
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
    return trinsic.services.account.v1.AccountOuterClass
        .internal_static_services_account_v1_LoginConfirmRequest_descriptor;
  }

  @java.lang.Override
  protected com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
      internalGetFieldAccessorTable() {
    return trinsic.services.account.v1.AccountOuterClass
        .internal_static_services_account_v1_LoginConfirmRequest_fieldAccessorTable
        .ensureFieldAccessorsInitialized(
            trinsic.services.account.v1.LoginConfirmRequest.class,
            trinsic.services.account.v1.LoginConfirmRequest.Builder.class);
  }

  public static final int CHALLENGE_FIELD_NUMBER = 1;
  private com.google.protobuf.ByteString challenge_;
  /**
   *
   *
   * <pre>
   * Login challenge received during the Login call
   * </pre>
   *
   * <code>bytes challenge = 1;</code>
   *
   * @return The challenge.
   */
  @java.lang.Override
  public com.google.protobuf.ByteString getChallenge() {
    return challenge_;
  }

  public static final int CONFIRMATION_CODE_HASHED_FIELD_NUMBER = 2;
  private com.google.protobuf.ByteString confirmationCodeHashed_;
  /**
   *
   *
   * <pre>
   * Confirmation code received in email or SMS
   * hashed using Blake3
   * </pre>
   *
   * <code>bytes confirmation_code_hashed = 2;</code>
   *
   * @return The confirmationCodeHashed.
   */
  @java.lang.Override
  public com.google.protobuf.ByteString getConfirmationCodeHashed() {
    return confirmationCodeHashed_;
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
    if (!challenge_.isEmpty()) {
      output.writeBytes(1, challenge_);
    }
    if (!confirmationCodeHashed_.isEmpty()) {
      output.writeBytes(2, confirmationCodeHashed_);
    }
    unknownFields.writeTo(output);
  }

  @java.lang.Override
  public int getSerializedSize() {
    int size = memoizedSize;
    if (size != -1) return size;

    size = 0;
    if (!challenge_.isEmpty()) {
      size += com.google.protobuf.CodedOutputStream.computeBytesSize(1, challenge_);
    }
    if (!confirmationCodeHashed_.isEmpty()) {
      size += com.google.protobuf.CodedOutputStream.computeBytesSize(2, confirmationCodeHashed_);
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
    if (!(obj instanceof trinsic.services.account.v1.LoginConfirmRequest)) {
      return super.equals(obj);
    }
    trinsic.services.account.v1.LoginConfirmRequest other =
        (trinsic.services.account.v1.LoginConfirmRequest) obj;

    if (!getChallenge().equals(other.getChallenge())) return false;
    if (!getConfirmationCodeHashed().equals(other.getConfirmationCodeHashed())) return false;
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
    hash = (37 * hash) + CHALLENGE_FIELD_NUMBER;
    hash = (53 * hash) + getChallenge().hashCode();
    hash = (37 * hash) + CONFIRMATION_CODE_HASHED_FIELD_NUMBER;
    hash = (53 * hash) + getConfirmationCodeHashed().hashCode();
    hash = (29 * hash) + unknownFields.hashCode();
    memoizedHashCode = hash;
    return hash;
  }

  public static trinsic.services.account.v1.LoginConfirmRequest parseFrom(java.nio.ByteBuffer data)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data);
  }

  public static trinsic.services.account.v1.LoginConfirmRequest parseFrom(
      java.nio.ByteBuffer data, com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data, extensionRegistry);
  }

  public static trinsic.services.account.v1.LoginConfirmRequest parseFrom(
      com.google.protobuf.ByteString data)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data);
  }

  public static trinsic.services.account.v1.LoginConfirmRequest parseFrom(
      com.google.protobuf.ByteString data,
      com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data, extensionRegistry);
  }

  public static trinsic.services.account.v1.LoginConfirmRequest parseFrom(byte[] data)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data);
  }

  public static trinsic.services.account.v1.LoginConfirmRequest parseFrom(
      byte[] data, com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data, extensionRegistry);
  }

  public static trinsic.services.account.v1.LoginConfirmRequest parseFrom(java.io.InputStream input)
      throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3.parseWithIOException(PARSER, input);
  }

  public static trinsic.services.account.v1.LoginConfirmRequest parseFrom(
      java.io.InputStream input, com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3.parseWithIOException(
        PARSER, input, extensionRegistry);
  }

  public static trinsic.services.account.v1.LoginConfirmRequest parseDelimitedFrom(
      java.io.InputStream input) throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3.parseDelimitedWithIOException(PARSER, input);
  }

  public static trinsic.services.account.v1.LoginConfirmRequest parseDelimitedFrom(
      java.io.InputStream input, com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3.parseDelimitedWithIOException(
        PARSER, input, extensionRegistry);
  }

  public static trinsic.services.account.v1.LoginConfirmRequest parseFrom(
      com.google.protobuf.CodedInputStream input) throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3.parseWithIOException(PARSER, input);
  }

  public static trinsic.services.account.v1.LoginConfirmRequest parseFrom(
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

  public static Builder newBuilder(trinsic.services.account.v1.LoginConfirmRequest prototype) {
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
  /** Protobuf type {@code services.account.v1.LoginConfirmRequest} */
  public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder>
      implements
      // @@protoc_insertion_point(builder_implements:services.account.v1.LoginConfirmRequest)
      trinsic.services.account.v1.LoginConfirmRequestOrBuilder {
    public static final com.google.protobuf.Descriptors.Descriptor getDescriptor() {
      return trinsic.services.account.v1.AccountOuterClass
          .internal_static_services_account_v1_LoginConfirmRequest_descriptor;
    }

    @java.lang.Override
    protected com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
        internalGetFieldAccessorTable() {
      return trinsic.services.account.v1.AccountOuterClass
          .internal_static_services_account_v1_LoginConfirmRequest_fieldAccessorTable
          .ensureFieldAccessorsInitialized(
              trinsic.services.account.v1.LoginConfirmRequest.class,
              trinsic.services.account.v1.LoginConfirmRequest.Builder.class);
    }

    // Construct using trinsic.services.account.v1.LoginConfirmRequest.newBuilder()
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
      challenge_ = com.google.protobuf.ByteString.EMPTY;

      confirmationCodeHashed_ = com.google.protobuf.ByteString.EMPTY;

      return this;
    }

    @java.lang.Override
    public com.google.protobuf.Descriptors.Descriptor getDescriptorForType() {
      return trinsic.services.account.v1.AccountOuterClass
          .internal_static_services_account_v1_LoginConfirmRequest_descriptor;
    }

    @java.lang.Override
    public trinsic.services.account.v1.LoginConfirmRequest getDefaultInstanceForType() {
      return trinsic.services.account.v1.LoginConfirmRequest.getDefaultInstance();
    }

    @java.lang.Override
    public trinsic.services.account.v1.LoginConfirmRequest build() {
      trinsic.services.account.v1.LoginConfirmRequest result = buildPartial();
      if (!result.isInitialized()) {
        throw newUninitializedMessageException(result);
      }
      return result;
    }

    @java.lang.Override
    public trinsic.services.account.v1.LoginConfirmRequest buildPartial() {
      trinsic.services.account.v1.LoginConfirmRequest result =
          new trinsic.services.account.v1.LoginConfirmRequest(this);
      result.challenge_ = challenge_;
      result.confirmationCodeHashed_ = confirmationCodeHashed_;
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
      if (other instanceof trinsic.services.account.v1.LoginConfirmRequest) {
        return mergeFrom((trinsic.services.account.v1.LoginConfirmRequest) other);
      } else {
        super.mergeFrom(other);
        return this;
      }
    }

    public Builder mergeFrom(trinsic.services.account.v1.LoginConfirmRequest other) {
      if (other == trinsic.services.account.v1.LoginConfirmRequest.getDefaultInstance())
        return this;
      if (other.getChallenge() != com.google.protobuf.ByteString.EMPTY) {
        setChallenge(other.getChallenge());
      }
      if (other.getConfirmationCodeHashed() != com.google.protobuf.ByteString.EMPTY) {
        setConfirmationCodeHashed(other.getConfirmationCodeHashed());
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
      trinsic.services.account.v1.LoginConfirmRequest parsedMessage = null;
      try {
        parsedMessage = PARSER.parsePartialFrom(input, extensionRegistry);
      } catch (com.google.protobuf.InvalidProtocolBufferException e) {
        parsedMessage = (trinsic.services.account.v1.LoginConfirmRequest) e.getUnfinishedMessage();
        throw e.unwrapIOException();
      } finally {
        if (parsedMessage != null) {
          mergeFrom(parsedMessage);
        }
      }
      return this;
    }

    private com.google.protobuf.ByteString challenge_ = com.google.protobuf.ByteString.EMPTY;
    /**
     *
     *
     * <pre>
     * Login challenge received during the Login call
     * </pre>
     *
     * <code>bytes challenge = 1;</code>
     *
     * @return The challenge.
     */
    @java.lang.Override
    public com.google.protobuf.ByteString getChallenge() {
      return challenge_;
    }
    /**
     *
     *
     * <pre>
     * Login challenge received during the Login call
     * </pre>
     *
     * <code>bytes challenge = 1;</code>
     *
     * @param value The challenge to set.
     * @return This builder for chaining.
     */
    public Builder setChallenge(com.google.protobuf.ByteString value) {
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
     * Login challenge received during the Login call
     * </pre>
     *
     * <code>bytes challenge = 1;</code>
     *
     * @return This builder for chaining.
     */
    public Builder clearChallenge() {

      challenge_ = getDefaultInstance().getChallenge();
      onChanged();
      return this;
    }

    private com.google.protobuf.ByteString confirmationCodeHashed_ =
        com.google.protobuf.ByteString.EMPTY;
    /**
     *
     *
     * <pre>
     * Confirmation code received in email or SMS
     * hashed using Blake3
     * </pre>
     *
     * <code>bytes confirmation_code_hashed = 2;</code>
     *
     * @return The confirmationCodeHashed.
     */
    @java.lang.Override
    public com.google.protobuf.ByteString getConfirmationCodeHashed() {
      return confirmationCodeHashed_;
    }
    /**
     *
     *
     * <pre>
     * Confirmation code received in email or SMS
     * hashed using Blake3
     * </pre>
     *
     * <code>bytes confirmation_code_hashed = 2;</code>
     *
     * @param value The confirmationCodeHashed to set.
     * @return This builder for chaining.
     */
    public Builder setConfirmationCodeHashed(com.google.protobuf.ByteString value) {
      if (value == null) {
        throw new NullPointerException();
      }

      confirmationCodeHashed_ = value;
      onChanged();
      return this;
    }
    /**
     *
     *
     * <pre>
     * Confirmation code received in email or SMS
     * hashed using Blake3
     * </pre>
     *
     * <code>bytes confirmation_code_hashed = 2;</code>
     *
     * @return This builder for chaining.
     */
    public Builder clearConfirmationCodeHashed() {

      confirmationCodeHashed_ = getDefaultInstance().getConfirmationCodeHashed();
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

    // @@protoc_insertion_point(builder_scope:services.account.v1.LoginConfirmRequest)
  }

  // @@protoc_insertion_point(class_scope:services.account.v1.LoginConfirmRequest)
  private static final trinsic.services.account.v1.LoginConfirmRequest DEFAULT_INSTANCE;

  static {
    DEFAULT_INSTANCE = new trinsic.services.account.v1.LoginConfirmRequest();
  }

  public static trinsic.services.account.v1.LoginConfirmRequest getDefaultInstance() {
    return DEFAULT_INSTANCE;
  }

  private static final com.google.protobuf.Parser<LoginConfirmRequest> PARSER =
      new com.google.protobuf.AbstractParser<LoginConfirmRequest>() {
        @java.lang.Override
        public LoginConfirmRequest parsePartialFrom(
            com.google.protobuf.CodedInputStream input,
            com.google.protobuf.ExtensionRegistryLite extensionRegistry)
            throws com.google.protobuf.InvalidProtocolBufferException {
          return new LoginConfirmRequest(input, extensionRegistry);
        }
      };

  public static com.google.protobuf.Parser<LoginConfirmRequest> parser() {
    return PARSER;
  }

  @java.lang.Override
  public com.google.protobuf.Parser<LoginConfirmRequest> getParserForType() {
    return PARSER;
  }

  @java.lang.Override
  public trinsic.services.account.v1.LoginConfirmRequest getDefaultInstanceForType() {
    return DEFAULT_INSTANCE;
  }
}
