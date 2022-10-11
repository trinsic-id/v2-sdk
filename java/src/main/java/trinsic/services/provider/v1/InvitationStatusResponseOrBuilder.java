// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: services/provider/v1/provider.proto

package trinsic.services.provider.v1;

public interface InvitationStatusResponseOrBuilder extends
    // @@protoc_insertion_point(interface_extends:services.provider.v1.InvitationStatusResponse)
    com.google.protobuf.MessageOrBuilder {

  /**
   * <pre>
   * Status of invitation
   * </pre>
   *
   * <code>.services.provider.v1.InvitationStatusResponse.Status status = 1;</code>
   * @return The enum numeric value on the wire for status.
   */
  int getStatusValue();
  /**
   * <pre>
   * Status of invitation
   * </pre>
   *
   * <code>.services.provider.v1.InvitationStatusResponse.Status status = 1;</code>
   * @return The status.
   */
  trinsic.services.provider.v1.InvitationStatusResponse.Status getStatus();

  /**
   * <pre>
   * Human-readable string with details about invitation status
   * </pre>
   *
   * <code>string status_details = 2;</code>
   * @return The statusDetails.
   */
  java.lang.String getStatusDetails();
  /**
   * <pre>
   * Human-readable string with details about invitation status
   * </pre>
   *
   * <code>string status_details = 2;</code>
   * @return The bytes for statusDetails.
   */
  com.google.protobuf.ByteString
      getStatusDetailsBytes();
}
