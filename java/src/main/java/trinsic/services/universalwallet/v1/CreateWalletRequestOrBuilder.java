// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: services/universal-wallet/v1/universal-wallet.proto

package trinsic.services.universalwallet.v1;

public interface CreateWalletRequestOrBuilder
    extends
    // @@protoc_insertion_point(interface_extends:services.universalwallet.v1.CreateWalletRequest)
    com.google.protobuf.MessageOrBuilder {

  /**
   *
   *
   * <pre>
   * Ecosystem ID of the wallet to create
   * </pre>
   *
   * <code>string ecosystem_id = 1;</code>
   *
   * @return The ecosystemId.
   */
  java.lang.String getEcosystemId();
  /**
   *
   *
   * <pre>
   * Ecosystem ID of the wallet to create
   * </pre>
   *
   * <code>string ecosystem_id = 1;</code>
   *
   * @return The bytes for ecosystemId.
   */
  com.google.protobuf.ByteString getEcosystemIdBytes();

  /**
   *
   *
   * <pre>
   * Wallet name or description.
   * Use this field to add vendor specific information about this wallet,
   * such as email, phone, internal ID, or anything you'd like to associate
   * with this wallet. This field is searchable.
   * </pre>
   *
   * <code>optional string description = 2 [(.services.options.optional) = true];</code>
   *
   * @return Whether the description field is set.
   */
  boolean hasDescription();
  /**
   *
   *
   * <pre>
   * Wallet name or description.
   * Use this field to add vendor specific information about this wallet,
   * such as email, phone, internal ID, or anything you'd like to associate
   * with this wallet. This field is searchable.
   * </pre>
   *
   * <code>optional string description = 2 [(.services.options.optional) = true];</code>
   *
   * @return The description.
   */
  java.lang.String getDescription();
  /**
   *
   *
   * <pre>
   * Wallet name or description.
   * Use this field to add vendor specific information about this wallet,
   * such as email, phone, internal ID, or anything you'd like to associate
   * with this wallet. This field is searchable.
   * </pre>
   *
   * <code>optional string description = 2 [(.services.options.optional) = true];</code>
   *
   * @return The bytes for description.
   */
  com.google.protobuf.ByteString getDescriptionBytes();

  /**
   *
   *
   * <pre>
   * Optional identity to add to the wallet (email or sms).
   * Use this field when inviting participants into an ecosystem.
   * If this field is set, an auth token will not be sent in the response.
   * </pre>
   *
   * <code>
   * optional .services.universalwallet.v1.CreateWalletRequest.ExternalIdentity identity = 3 [(.services.options.optional) = true];
   * </code>
   *
   * @return Whether the identity field is set.
   */
  boolean hasIdentity();
  /**
   *
   *
   * <pre>
   * Optional identity to add to the wallet (email or sms).
   * Use this field when inviting participants into an ecosystem.
   * If this field is set, an auth token will not be sent in the response.
   * </pre>
   *
   * <code>
   * optional .services.universalwallet.v1.CreateWalletRequest.ExternalIdentity identity = 3 [(.services.options.optional) = true];
   * </code>
   *
   * @return The identity.
   */
  trinsic.services.universalwallet.v1.CreateWalletRequest.ExternalIdentity getIdentity();
  /**
   *
   *
   * <pre>
   * Optional identity to add to the wallet (email or sms).
   * Use this field when inviting participants into an ecosystem.
   * If this field is set, an auth token will not be sent in the response.
   * </pre>
   *
   * <code>
   * optional .services.universalwallet.v1.CreateWalletRequest.ExternalIdentity identity = 3 [(.services.options.optional) = true];
   * </code>
   */
  trinsic.services.universalwallet.v1.CreateWalletRequest.ExternalIdentityOrBuilder
      getIdentityOrBuilder();
}
