// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: services/provider/v1/provider.proto

package trinsic.services.provider.v1;

public interface InviteRequestOrBuilder extends
    // @@protoc_insertion_point(interface_extends:services.provider.v1.InviteRequest)
    com.google.protobuf.MessageOrBuilder {

  /**
   * <pre>
   * Type of participant being invited (individual/organization)
   * </pre>
   *
   * <code>.services.provider.v1.ParticipantType participant = 1;</code>
   * @return The enum numeric value on the wire for participant.
   */
  int getParticipantValue();
  /**
   * <pre>
   * Type of participant being invited (individual/organization)
   * </pre>
   *
   * <code>.services.provider.v1.ParticipantType participant = 1;</code>
   * @return The participant.
   */
  trinsic.services.provider.v1.ParticipantType getParticipant();

  /**
   * <pre>
   * Description of invitation
   * </pre>
   *
   * <code>string description = 2 [(.services.options.optional) = true];</code>
   * @return The description.
   */
  java.lang.String getDescription();
  /**
   * <pre>
   * Description of invitation
   * </pre>
   *
   * <code>string description = 2 [(.services.options.optional) = true];</code>
   * @return The bytes for description.
   */
  com.google.protobuf.ByteString
      getDescriptionBytes();

  /**
   * <pre>
   * Account details of invitee
   * </pre>
   *
   * <code>.services.account.v1.AccountDetails details = 3 [(.services.options.optional) = true];</code>
   * @return Whether the details field is set.
   */
  boolean hasDetails();
  /**
   * <pre>
   * Account details of invitee
   * </pre>
   *
   * <code>.services.account.v1.AccountDetails details = 3 [(.services.options.optional) = true];</code>
   * @return The details.
   */
  trinsic.services.account.v1.AccountDetails getDetails();
  /**
   * <pre>
   * Account details of invitee
   * </pre>
   *
   * <code>.services.account.v1.AccountDetails details = 3 [(.services.options.optional) = true];</code>
   */
  trinsic.services.account.v1.AccountDetailsOrBuilder getDetailsOrBuilder();
}
