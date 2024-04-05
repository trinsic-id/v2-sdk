// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: services/trust-registry/v1/trust-registry.proto

package trinsic.services.trustregistry.v1;

public interface ListAuthorizedMembersRequestOrBuilder
    extends
    // @@protoc_insertion_point(interface_extends:services.trustregistry.v1.ListAuthorizedMembersRequest)
    com.google.protobuf.MessageOrBuilder {

  /**
   *
   *
   * <pre>
   * id of schema that needs to be checked
   * </pre>
   *
   * <code>optional string schema_uri = 1;</code>
   *
   * @return Whether the schemaUri field is set.
   */
  boolean hasSchemaUri();
  /**
   *
   *
   * <pre>
   * id of schema that needs to be checked
   * </pre>
   *
   * <code>optional string schema_uri = 1;</code>
   *
   * @return The schemaUri.
   */
  java.lang.String getSchemaUri();
  /**
   *
   *
   * <pre>
   * id of schema that needs to be checked
   * </pre>
   *
   * <code>optional string schema_uri = 1;</code>
   *
   * @return The bytes for schemaUri.
   */
  com.google.protobuf.ByteString getSchemaUriBytes();

  /**
   *
   *
   * <pre>
   * Token to fetch next set of results, from previous `ListAuthorizedMembersResponse`
   * </pre>
   *
   * <code>optional string continuation_token = 2;</code>
   *
   * @return Whether the continuationToken field is set.
   */
  boolean hasContinuationToken();
  /**
   *
   *
   * <pre>
   * Token to fetch next set of results, from previous `ListAuthorizedMembersResponse`
   * </pre>
   *
   * <code>optional string continuation_token = 2;</code>
   *
   * @return The continuationToken.
   */
  java.lang.String getContinuationToken();
  /**
   *
   *
   * <pre>
   * Token to fetch next set of results, from previous `ListAuthorizedMembersResponse`
   * </pre>
   *
   * <code>optional string continuation_token = 2;</code>
   *
   * @return The bytes for continuationToken.
   */
  com.google.protobuf.ByteString getContinuationTokenBytes();
}