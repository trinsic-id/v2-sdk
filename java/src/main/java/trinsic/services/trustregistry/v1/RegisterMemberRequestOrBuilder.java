// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: services/trust-registry/v1/trust-registry.proto

package trinsic.services.trustregistry.v1;

public interface RegisterMemberRequestOrBuilder
    extends
    // @@protoc_insertion_point(interface_extends:services.trustregistry.v1.RegisterMemberRequest)
    com.google.protobuf.MessageOrBuilder {

  /**
   * <code>string did_uri = 1;</code>
   *
   * @return Whether the didUri field is set.
   */
  boolean hasDidUri();
  /**
   * <code>string did_uri = 1;</code>
   *
   * @return The didUri.
   */
  java.lang.String getDidUri();
  /**
   * <code>string did_uri = 1;</code>
   *
   * @return The bytes for didUri.
   */
  com.google.protobuf.ByteString getDidUriBytes();

  /**
   * <code>string wallet_id = 3;</code>
   *
   * @return Whether the walletId field is set.
   */
  boolean hasWalletId();
  /**
   * <code>string wallet_id = 3;</code>
   *
   * @return The walletId.
   */
  java.lang.String getWalletId();
  /**
   * <code>string wallet_id = 3;</code>
   *
   * @return The bytes for walletId.
   */
  com.google.protobuf.ByteString getWalletIdBytes();

  /**
   * <code>string email = 4;</code>
   *
   * @return Whether the email field is set.
   */
  boolean hasEmail();
  /**
   * <code>string email = 4;</code>
   *
   * @return The email.
   */
  java.lang.String getEmail();
  /**
   * <code>string email = 4;</code>
   *
   * @return The bytes for email.
   */
  com.google.protobuf.ByteString getEmailBytes();

  /**
   * <code>string schema_uri = 10;</code>
   *
   * @return The schemaUri.
   */
  java.lang.String getSchemaUri();
  /**
   * <code>string schema_uri = 10;</code>
   *
   * @return The bytes for schemaUri.
   */
  com.google.protobuf.ByteString getSchemaUriBytes();

  /**
   * <code>uint64 valid_from_utc = 11;</code>
   *
   * @return The validFromUtc.
   */
  long getValidFromUtc();

  /**
   * <code>uint64 valid_until_utc = 12;</code>
   *
   * @return The validUntilUtc.
   */
  long getValidUntilUtc();

  /**
   *
   *
   * <pre>
   * the id of the governance framework
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
   * the id of the governance framework
   * </pre>
   *
   * <code>string framework_id = 30;</code>
   *
   * @return The bytes for frameworkId.
   */
  com.google.protobuf.ByteString getFrameworkIdBytes();

  public trinsic.services.trustregistry.v1.RegisterMemberRequest.MemberCase getMemberCase();
}
