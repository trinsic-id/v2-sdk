// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: services/verifiable-credentials/v1/verifiable-credentials.proto

package trinsic.services.verifiablecredentials.v1;

public interface UpdateStatusRequestOrBuilder extends
    // @@protoc_insertion_point(interface_extends:services.verifiablecredentials.v1.UpdateStatusRequest)
    com.google.protobuf.MessageOrBuilder {

  /**
   * <pre>
   * Credential Status ID to update. This is not the same as the credential's ID.
   * </pre>
   *
   * <code>string credential_status_id = 1;</code>
   * @return The credentialStatusId.
   */
  java.lang.String getCredentialStatusId();
  /**
   * <pre>
   * Credential Status ID to update. This is not the same as the credential's ID.
   * </pre>
   *
   * <code>string credential_status_id = 1;</code>
   * @return The bytes for credentialStatusId.
   */
  com.google.protobuf.ByteString
      getCredentialStatusIdBytes();

  /**
   * <pre>
   * New revocation status of credential
   * </pre>
   *
   * <code>bool revoked = 2;</code>
   * @return The revoked.
   */
  boolean getRevoked();
}
