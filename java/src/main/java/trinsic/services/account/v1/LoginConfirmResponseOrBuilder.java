// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: services/account/v1/account.proto

package trinsic.services.account.v1;

public interface LoginConfirmResponseOrBuilder
    extends
    // @@protoc_insertion_point(interface_extends:services.account.v1.LoginConfirmResponse)
    com.google.protobuf.MessageOrBuilder {

  /**
   *
   *
   * <pre>
   * Profile response; must be unprotected using unhashed confirmation code.
   * Our SDKs will handle this process for you, and return to you an authentication token string.
   * </pre>
   *
   * <code>.services.account.v1.AccountProfile profile = 1;</code>
   *
   * @return Whether the profile field is set.
   */
  boolean hasProfile();
  /**
   *
   *
   * <pre>
   * Profile response; must be unprotected using unhashed confirmation code.
   * Our SDKs will handle this process for you, and return to you an authentication token string.
   * </pre>
   *
   * <code>.services.account.v1.AccountProfile profile = 1;</code>
   *
   * @return The profile.
   */
  trinsic.services.account.v1.AccountProfile getProfile();
  /**
   *
   *
   * <pre>
   * Profile response; must be unprotected using unhashed confirmation code.
   * Our SDKs will handle this process for you, and return to you an authentication token string.
   * </pre>
   *
   * <code>.services.account.v1.AccountProfile profile = 1;</code>
   */
  trinsic.services.account.v1.AccountProfileOrBuilder getProfileOrBuilder();
}