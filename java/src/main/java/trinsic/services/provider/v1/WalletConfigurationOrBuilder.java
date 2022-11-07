// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: services/provider/v1/provider.proto

package trinsic.services.provider.v1;

public interface WalletConfigurationOrBuilder
    extends
    // @@protoc_insertion_point(interface_extends:services.provider.v1.WalletConfiguration)
    com.google.protobuf.MessageOrBuilder {

  /**
   * <code>string name = 1;</code>
   *
   * @return The name.
   */
  java.lang.String getName();
  /**
   * <code>string name = 1;</code>
   *
   * @return The bytes for name.
   */
  com.google.protobuf.ByteString getNameBytes();

  /**
   * <code>string email = 2 [(.services.options.optional) = true];</code>
   *
   * @return The email.
   */
  java.lang.String getEmail();
  /**
   * <code>string email = 2 [(.services.options.optional) = true];</code>
   *
   * @return The bytes for email.
   */
  com.google.protobuf.ByteString getEmailBytes();

  /**
   * <code>string sms = 3 [(.services.options.optional) = true];</code>
   *
   * @return The sms.
   */
  java.lang.String getSms();
  /**
   * <code>string sms = 3 [(.services.options.optional) = true];</code>
   *
   * @return The bytes for sms.
   */
  com.google.protobuf.ByteString getSmsBytes();

  /**
   * <code>string wallet_id = 4;</code>
   *
   * @return The walletId.
   */
  java.lang.String getWalletId();
  /**
   * <code>string wallet_id = 4;</code>
   *
   * @return The bytes for walletId.
   */
  com.google.protobuf.ByteString getWalletIdBytes();

  /**
   * <code>string public_did = 5;</code>
   *
   * @return The publicDid.
   */
  java.lang.String getPublicDid();
  /**
   * <code>string public_did = 5;</code>
   *
   * @return The bytes for publicDid.
   */
  com.google.protobuf.ByteString getPublicDidBytes();

  /**
   * <code>string config_type = 6;</code>
   *
   * @return The configType.
   */
  java.lang.String getConfigType();
  /**
   * <code>string config_type = 6;</code>
   *
   * @return The bytes for configType.
   */
  com.google.protobuf.ByteString getConfigTypeBytes();
}
