// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: services/provider/v1/provider.proto

package trinsic.services.provider.v1;

@java.lang.Deprecated
public interface InvitationStatusRequestOrBuilder
    extends
    // @@protoc_insertion_point(interface_extends:services.provider.v1.InvitationStatusRequest)
    com.google.protobuf.MessageOrBuilder {

  /**
   *
   *
   * <pre>
   * ID of invitation, received from `InviteResponse`
   * </pre>
   *
   * <code>string invitation_id = 1;</code>
   *
   * @return The invitationId.
   */
  java.lang.String getInvitationId();
  /**
   *
   *
   * <pre>
   * ID of invitation, received from `InviteResponse`
   * </pre>
   *
   * <code>string invitation_id = 1;</code>
   *
   * @return The bytes for invitationId.
   */
  com.google.protobuf.ByteString getInvitationIdBytes();
}
