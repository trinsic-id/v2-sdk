// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: services/trust-registry/v1/trust-registry.proto

package trinsic.services.trustregistry.v1;

public interface RegisterMemberRequestOrBuilder
    extends
    // @@protoc_insertion_point(interface_extends:services.trustregistry.v1.RegisterMemberRequest)
    com.google.protobuf.MessageOrBuilder {

  /**
   *
   *
   * <pre>
   * DID URI of member to register
   * </pre>
   *
   * <code>string did_uri = 1;</code>
   *
   * @return Whether the didUri field is set.
   */
  boolean hasDidUri();
  /**
   *
   *
   * <pre>
   * DID URI of member to register
   * </pre>
   *
   * <code>string did_uri = 1;</code>
   *
   * @return The didUri.
   */
  java.lang.String getDidUri();
  /**
   *
   *
   * <pre>
   * DID URI of member to register
   * </pre>
   *
   * <code>string did_uri = 1;</code>
   *
   * @return The bytes for didUri.
   */
  com.google.protobuf.ByteString getDidUriBytes();

  /**
   *
   *
   * <pre>
   * Trinsic Wallet ID of member to register
   * </pre>
   *
   * <code>string wallet_id = 3;</code>
   *
   * @return Whether the walletId field is set.
   */
  boolean hasWalletId();
  /**
   *
   *
   * <pre>
   * Trinsic Wallet ID of member to register
   * </pre>
   *
   * <code>string wallet_id = 3;</code>
   *
   * @return The walletId.
   */
  java.lang.String getWalletId();
  /**
   *
   *
   * <pre>
   * Trinsic Wallet ID of member to register
   * </pre>
   *
   * <code>string wallet_id = 3;</code>
   *
   * @return The bytes for walletId.
   */
  com.google.protobuf.ByteString getWalletIdBytes();

  /**
   *
   *
   * <pre>
   * Email address of member to register. Must be associated with an existing Trinsic account.
   * </pre>
   *
   * <code>string email = 4;</code>
   *
   * @return Whether the email field is set.
   */
  boolean hasEmail();
  /**
   *
   *
   * <pre>
   * Email address of member to register. Must be associated with an existing Trinsic account.
   * </pre>
   *
   * <code>string email = 4;</code>
   *
   * @return The email.
   */
  java.lang.String getEmail();
  /**
   *
   *
   * <pre>
   * Email address of member to register. Must be associated with an existing Trinsic account.
   * </pre>
   *
   * <code>string email = 4;</code>
   *
   * @return The bytes for email.
   */
  com.google.protobuf.ByteString getEmailBytes();

  /**
   *
   *
   * <pre>
   * URI of credential schema to register member as authorized issuer of
   * </pre>
   *
   * <code>string schema_uri = 10;</code>
   *
   * @return The schemaUri.
   */
  java.lang.String getSchemaUri();
  /**
   *
   *
   * <pre>
   * URI of credential schema to register member as authorized issuer of
   * </pre>
   *
   * <code>string schema_uri = 10;</code>
   *
   * @return The bytes for schemaUri.
   */
  com.google.protobuf.ByteString getSchemaUriBytes();

  /**
   *
   *
   * <pre>
   * Unix Timestamp member is valid from. Member will not be considered valid before this timestamp.
   * </pre>
   *
   * <code>uint64 valid_from_utc = 11;</code>
   *
   * @return The validFromUtc.
   */
  long getValidFromUtc();

  /**
   *
   *
   * <pre>
   * Unix Timestamp member is valid until. Member will not be considered valid after this timestamp.
   * </pre>
   *
   * <code>uint64 valid_until_utc = 12;</code>
   *
   * @return The validUntilUtc.
   */
  long getValidUntilUtc();

  /**
   *
   *
   * <pre>
   * ID of the governance framework that member is being added to
   * </pre>
   *
   * <code>string framework_id = 30;</code>
   *
   * @return The frameworkId.
   */
  java.lang.String getFrameworkId();
  /**
   *
   *
   * <pre>
   * ID of the governance framework that member is being added to
   * </pre>
   *
   * <code>string framework_id = 30;</code>
   *
   * @return The bytes for frameworkId.
   */
  com.google.protobuf.ByteString getFrameworkIdBytes();

  public trinsic.services.trustregistry.v1.RegisterMemberRequest.MemberCase getMemberCase();
}