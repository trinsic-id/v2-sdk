// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: services/trust-registry/v1/trust-registry.proto

package trinsic.services.trustregistry.v1;

public interface AddFrameworkResponseOrBuilder
    extends
    // @@protoc_insertion_point(interface_extends:services.trustregistry.v1.AddFrameworkResponse)
    com.google.protobuf.MessageOrBuilder {

  /**
   *
   *
   * <pre>
   * Unique framework identifier
   * </pre>
   *
   * <code>string id = 1;</code>
   *
   * @return The id.
   */
  java.lang.String getId();
  /**
   *
   *
   * <pre>
   * Unique framework identifier
   * </pre>
   *
   * <code>string id = 1;</code>
   *
   * @return The bytes for id.
   */
  com.google.protobuf.ByteString getIdBytes();

  /**
   * <code>string governing_authority = 2;</code>
   *
   * @return The governingAuthority.
   */
  java.lang.String getGoverningAuthority();
  /**
   * <code>string governing_authority = 2;</code>
   *
   * @return The bytes for governingAuthority.
   */
  com.google.protobuf.ByteString getGoverningAuthorityBytes();

  /**
   * <code>string trust_registry = 3;</code>
   *
   * @return The trustRegistry.
   */
  java.lang.String getTrustRegistry();
  /**
   * <code>string trust_registry = 3;</code>
   *
   * @return The bytes for trustRegistry.
   */
  com.google.protobuf.ByteString getTrustRegistryBytes();
}
