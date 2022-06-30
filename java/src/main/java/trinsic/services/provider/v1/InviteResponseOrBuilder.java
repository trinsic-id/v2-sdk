// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: services/provider/v1/provider.proto

package trinsic.services.provider.v1;

public interface InviteResponseOrBuilder
    extends
    // @@protoc_insertion_point(interface_extends:services.provider.v1.InviteResponse)
    com.google.protobuf.MessageOrBuilder {

  /**
   *
   *
   * <pre>
   * ID of created invitation
   * </pre>
   *
   * <code>string invitation_id = 10;</code>
   *
   * @return The invitationId.
   */
  java.lang.String getInvitationId();
  /**
   *
   *
   * <pre>
   * ID of created invitation
   * </pre>
   *
   * <code>string invitation_id = 10;</code>
   *
   * @return The bytes for invitationId.
   */
  com.google.protobuf.ByteString getInvitationIdBytes();

  /**
   *
   *
   * <pre>
   * Invitation Code that must be passed with the account 'SignIn' request
   * to correlate this user with the invitation sent.
   * </pre>
   *
   * <code>string invitation_code = 11;</code>
   *
   * @return The invitationCode.
   */
  java.lang.String getInvitationCode();
  /**
   *
   *
   * <pre>
   * Invitation Code that must be passed with the account 'SignIn' request
   * to correlate this user with the invitation sent.
   * </pre>
   *
   * <code>string invitation_code = 11;</code>
   *
   * @return The bytes for invitationCode.
   */
  com.google.protobuf.ByteString getInvitationCodeBytes();
}