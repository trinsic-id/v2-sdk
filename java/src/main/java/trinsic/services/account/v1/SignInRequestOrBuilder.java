// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: services/account/v1/account.proto

package trinsic.services.account.v1;

public interface SignInRequestOrBuilder
    extends
    // @@protoc_insertion_point(interface_extends:services.account.v1.SignInRequest)
    com.google.protobuf.MessageOrBuilder {

  /**
   *
   *
   * <pre>
   * Account registration details
   * </pre>
   *
   * <code>.services.account.v1.AccountDetails details = 1 [(.services.options.optional) = true];
   * </code>
   *
   * @return Whether the details field is set.
   */
  boolean hasDetails();
  /**
   *
   *
   * <pre>
   * Account registration details
   * </pre>
   *
   * <code>.services.account.v1.AccountDetails details = 1 [(.services.options.optional) = true];
   * </code>
   *
   * @return The details.
   */
  trinsic.services.account.v1.AccountDetails getDetails();
  /**
   *
   *
   * <pre>
   * Account registration details
   * </pre>
   *
   * <code>.services.account.v1.AccountDetails details = 1 [(.services.options.optional) = true];
   * </code>
   */
  trinsic.services.account.v1.AccountDetailsOrBuilder getDetailsOrBuilder();

  /**
   *
   *
   * <pre>
   * DEPRECATED, will be removed April 1st 2023
   * Invitation code associated with this registration
   * </pre>
   *
   * <code>string invitation_code = 2 [deprecated = true, (.services.options.optional) = true];
   * </code>
   *
   * @deprecated services.account.v1.SignInRequest.invitation_code is deprecated. See
   *     services/account/v1/account.proto;l=17
   * @return The invitationCode.
   */
  @java.lang.Deprecated
  java.lang.String getInvitationCode();
  /**
   *
   *
   * <pre>
   * DEPRECATED, will be removed April 1st 2023
   * Invitation code associated with this registration
   * </pre>
   *
   * <code>string invitation_code = 2 [deprecated = true, (.services.options.optional) = true];
   * </code>
   *
   * @deprecated services.account.v1.SignInRequest.invitation_code is deprecated. See
   *     services/account/v1/account.proto;l=17
   * @return The bytes for invitationCode.
   */
  @java.lang.Deprecated
  com.google.protobuf.ByteString getInvitationCodeBytes();

  /**
   *
   *
   * <pre>
   * ID of Ecosystem to use
   * Ignored if `invitation_code` is passed
   * </pre>
   *
   * <code>string ecosystem_id = 3 [(.services.options.optional) = true];</code>
   *
   * @return The ecosystemId.
   */
  java.lang.String getEcosystemId();
  /**
   *
   *
   * <pre>
   * ID of Ecosystem to use
   * Ignored if `invitation_code` is passed
   * </pre>
   *
   * <code>string ecosystem_id = 3 [(.services.options.optional) = true];</code>
   *
   * @return The bytes for ecosystemId.
   */
  com.google.protobuf.ByteString getEcosystemIdBytes();
}
