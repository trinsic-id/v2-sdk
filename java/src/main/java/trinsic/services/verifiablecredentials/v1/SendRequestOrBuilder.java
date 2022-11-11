// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: services/verifiable-credentials/v1/verifiable-credentials.proto

package trinsic.services.verifiablecredentials.v1;

public interface SendRequestOrBuilder
    extends
    // @@protoc_insertion_point(interface_extends:services.verifiablecredentials.v1.SendRequest)
    com.google.protobuf.MessageOrBuilder {

  /**
   *
   *
   * <pre>
   * Email address of user to send item to
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
   * Email address of user to send item to
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
   * Email address of user to send item to
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
   * DID of recipient (presently unsupported)
   * </pre>
   *
   * <code>string did_uri = 2 [deprecated = true];</code>
   *
   * @deprecated services.verifiablecredentials.v1.SendRequest.did_uri is deprecated. See
   *     services/verifiable-credentials/v1/verifiable-credentials.proto;l=108
   * @return Whether the didUri field is set.
   */
  @java.lang.Deprecated
  boolean hasDidUri();
  /**
   *
   *
   * <pre>
   * DID of recipient (presently unsupported)
   * </pre>
   *
   * <code>string did_uri = 2 [deprecated = true];</code>
   *
   * @deprecated services.verifiablecredentials.v1.SendRequest.did_uri is deprecated. See
   *     services/verifiable-credentials/v1/verifiable-credentials.proto;l=108
   * @return The didUri.
   */
  @java.lang.Deprecated
  java.lang.String getDidUri();
  /**
   *
   *
   * <pre>
   * DID of recipient (presently unsupported)
   * </pre>
   *
   * <code>string did_uri = 2 [deprecated = true];</code>
   *
   * @deprecated services.verifiablecredentials.v1.SendRequest.did_uri is deprecated. See
   *     services/verifiable-credentials/v1/verifiable-credentials.proto;l=108
   * @return The bytes for didUri.
   */
  @java.lang.Deprecated
  com.google.protobuf.ByteString getDidUriBytes();

  /**
   *
   *
   * <pre>
   * DIDComm out-of-band invitation JSON (presently unsupported)
   * </pre>
   *
   * <code>string didcomm_invitation_json = 3 [deprecated = true];</code>
   *
   * @deprecated services.verifiablecredentials.v1.SendRequest.didcomm_invitation_json is
   *     deprecated. See services/verifiable-credentials/v1/verifiable-credentials.proto;l=110
   * @return Whether the didcommInvitationJson field is set.
   */
  @java.lang.Deprecated
  boolean hasDidcommInvitationJson();
  /**
   *
   *
   * <pre>
   * DIDComm out-of-band invitation JSON (presently unsupported)
   * </pre>
   *
   * <code>string didcomm_invitation_json = 3 [deprecated = true];</code>
   *
   * @deprecated services.verifiablecredentials.v1.SendRequest.didcomm_invitation_json is
   *     deprecated. See services/verifiable-credentials/v1/verifiable-credentials.proto;l=110
   * @return The didcommInvitationJson.
   */
  @java.lang.Deprecated
  java.lang.String getDidcommInvitationJson();
  /**
   *
   *
   * <pre>
   * DIDComm out-of-band invitation JSON (presently unsupported)
   * </pre>
   *
   * <code>string didcomm_invitation_json = 3 [deprecated = true];</code>
   *
   * @deprecated services.verifiablecredentials.v1.SendRequest.didcomm_invitation_json is
   *     deprecated. See services/verifiable-credentials/v1/verifiable-credentials.proto;l=110
   * @return The bytes for didcommInvitationJson.
   */
  @java.lang.Deprecated
  com.google.protobuf.ByteString getDidcommInvitationJsonBytes();

  /**
   *
   *
   * <pre>
   * Send email notification that credential has been sent to a wallet
   * </pre>
   *
   * <code>bool send_notification = 4;</code>
   *
   * @return The sendNotification.
   */
  boolean getSendNotification();

  /**
   *
   *
   * <pre>
   * JSON document to send to recipient
   * </pre>
   *
   * <code>string document_json = 100;</code>
   *
   * @return The documentJson.
   */
  java.lang.String getDocumentJson();
  /**
   *
   *
   * <pre>
   * JSON document to send to recipient
   * </pre>
   *
   * <code>string document_json = 100;</code>
   *
   * @return The bytes for documentJson.
   */
  com.google.protobuf.ByteString getDocumentJsonBytes();

  public trinsic.services.verifiablecredentials.v1.SendRequest.DeliveryMethodCase
      getDeliveryMethodCase();
}
