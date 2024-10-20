// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: services/trust-registry/v1/trust-registry.proto

package trinsic.services.trustregistry.v1;

public interface GetMemberAuthorizationStatusRequestOrBuilder
    extends
    // @@protoc_insertion_point(interface_extends:services.trustregistry.v1.GetMemberAuthorizationStatusRequest)
    com.google.protobuf.MessageOrBuilder {

  /**
   *
   *
   * <pre>
   * DID URI of member
   * </pre>
   *
   * <code>string did_uri = 1;</code>
   *
   * @return The didUri.
   */
  java.lang.String getDidUri();
  /**
   *
   *
   * <pre>
   * DID URI of member
   * </pre>
   *
   * <code>string did_uri = 1;</code>
   *
   * @return The bytes for didUri.
   */
  com.google.protobuf.ByteString getDidUriBytes();

  /**
   *
   *
   * <pre>
   * URI of credential schema associated with member
   * </pre>
   *
   * <code>string schema_uri = 2;</code>
   *
   * @return The schemaUri.
   */
  java.lang.String getSchemaUri();
  /**
   *
   *
   * <pre>
   * URI of credential schema associated with member
   * </pre>
   *
   * <code>string schema_uri = 2;</code>
   *
   * @return The bytes for schemaUri.
   */
  com.google.protobuf.ByteString getSchemaUriBytes();
}