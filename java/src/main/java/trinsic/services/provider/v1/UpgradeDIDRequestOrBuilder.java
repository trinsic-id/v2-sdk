// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: services/provider/v1/provider.proto

package trinsic.services.provider.v1;

public interface UpgradeDIDRequestOrBuilder
    extends
    // @@protoc_insertion_point(interface_extends:services.provider.v1.UpgradeDIDRequest)
    com.google.protobuf.MessageOrBuilder {

  /**
   *
   *
   * <pre>
   * Email address of account to upgrade.
   * Mutually exclusive with `walletId`.
   * </pre>
   *
   * <code>string email = 1;</code>
   *
   * @return Whether the email field is set.
   */
  boolean hasEmail();
  /**
   *
   *
   * <pre>
   * Email address of account to upgrade.
   * Mutually exclusive with `walletId`.
   * </pre>
   *
   * <code>string email = 1;</code>
   *
   * @return The email.
   */
  java.lang.String getEmail();
  /**
   *
   *
   * <pre>
   * Email address of account to upgrade.
   * Mutually exclusive with `walletId`.
   * </pre>
   *
   * <code>string email = 1;</code>
   *
   * @return The bytes for email.
   */
  com.google.protobuf.ByteString getEmailBytes();

  /**
   *
   *
   * <pre>
   * Wallet ID of account to upgrade.
   * Mutually exclusive with `email`.
   * </pre>
   *
   * <code>string wallet_id = 2;</code>
   *
   * @return Whether the walletId field is set.
   */
  boolean hasWalletId();
  /**
   *
   *
   * <pre>
   * Wallet ID of account to upgrade.
   * Mutually exclusive with `email`.
   * </pre>
   *
   * <code>string wallet_id = 2;</code>
   *
   * @return The walletId.
   */
  java.lang.String getWalletId();
  /**
   *
   *
   * <pre>
   * Wallet ID of account to upgrade.
   * Mutually exclusive with `email`.
   * </pre>
   *
   * <code>string wallet_id = 2;</code>
   *
   * @return The bytes for walletId.
   */
  com.google.protobuf.ByteString getWalletIdBytes();

  /**
   *
   *
   * <pre>
   * DID Method to which wallet should be upgraded
   * </pre>
   *
   * <code>.services.common.v1.SupportedDIDMethod method = 3;</code>
   *
   * @return The enum numeric value on the wire for method.
   */
  int getMethodValue();
  /**
   *
   *
   * <pre>
   * DID Method to which wallet should be upgraded
   * </pre>
   *
   * <code>.services.common.v1.SupportedDIDMethod method = 3;</code>
   *
   * @return The method.
   */
  trinsic.services.common.v1.SupportedDIDMethod getMethod();

  /**
   *
   *
   * <pre>
   * Configuration for creation of DID on ION network
   * </pre>
   *
   * <code>.services.provider.v1.IONOptions ion_options = 4;</code>
   *
   * @return Whether the ionOptions field is set.
   */
  boolean hasIonOptions();
  /**
   *
   *
   * <pre>
   * Configuration for creation of DID on ION network
   * </pre>
   *
   * <code>.services.provider.v1.IONOptions ion_options = 4;</code>
   *
   * @return The ionOptions.
   */
  trinsic.services.provider.v1.IONOptions getIonOptions();
  /**
   *
   *
   * <pre>
   * Configuration for creation of DID on ION network
   * </pre>
   *
   * <code>.services.provider.v1.IONOptions ion_options = 4;</code>
   */
  trinsic.services.provider.v1.IONOptionsOrBuilder getIonOptionsOrBuilder();

  public trinsic.services.provider.v1.UpgradeDIDRequest.AccountCase getAccountCase();

  public trinsic.services.provider.v1.UpgradeDIDRequest.OptionsCase getOptionsCase();
}
