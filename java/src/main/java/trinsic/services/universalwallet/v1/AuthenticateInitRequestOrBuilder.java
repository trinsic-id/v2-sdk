// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: services/universal-wallet/v1/universal-wallet.proto

package trinsic.services.universalwallet.v1;

public interface AuthenticateInitRequestOrBuilder
    extends
    // @@protoc_insertion_point(interface_extends:services.universalwallet.v1.AuthenticateInitRequest)
    com.google.protobuf.MessageOrBuilder {

  /**
   *
   *
   * <pre>
   * Identity to add to the wallet
   * </pre>
   *
   * <code>string identity = 1;</code>
   *
   * @return The identity.
   */
  java.lang.String getIdentity();
  /**
   *
   *
   * <pre>
   * Identity to add to the wallet
   * </pre>
   *
   * <code>string identity = 1;</code>
   *
   * @return The bytes for identity.
   */
  com.google.protobuf.ByteString getIdentityBytes();

  /**
   *
   *
   * <pre>
   * Identity provider
   * </pre>
   *
   * <code>.services.universalwallet.v1.IdentityProvider provider = 2;</code>
   *
   * @return The enum numeric value on the wire for provider.
   */
  int getProviderValue();
  /**
   *
   *
   * <pre>
   * Identity provider
   * </pre>
   *
   * <code>.services.universalwallet.v1.IdentityProvider provider = 2;</code>
   *
   * @return The provider.
   */
  trinsic.services.universalwallet.v1.IdentityProvider getProvider();

  /**
   *
   *
   * <pre>
   * Ecosystem ID to which the wallet belongs
   * </pre>
   *
   * <code>string ecosystem_id = 3;</code>
   *
   * @return The ecosystemId.
   */
  java.lang.String getEcosystemId();
  /**
   *
   *
   * <pre>
   * Ecosystem ID to which the wallet belongs
   * </pre>
   *
   * <code>string ecosystem_id = 3;</code>
   *
   * @return The bytes for ecosystemId.
   */
  com.google.protobuf.ByteString getEcosystemIdBytes();
}
