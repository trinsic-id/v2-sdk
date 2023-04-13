// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: services/provider/v1/provider.proto

package trinsic.services.provider.v1;

public interface CreateEcosystemRequestOrBuilder
    extends
    // @@protoc_insertion_point(interface_extends:services.provider.v1.CreateEcosystemRequest)
    com.google.protobuf.MessageOrBuilder {

  /**
   *
   *
   * <pre>
   * Globally unique name for the Ecosystem. This name will be
   * part of the ecosystem-specific URLs and namespaces.
   * Allowed characters are lowercase letters, numbers, underscore and hyphen.
   * If not passed, ecosystem name will be auto-generated.
   * </pre>
   *
   * <code>string name = 1 [(.services.options.optional) = true];</code>
   *
   * @return The name.
   */
  java.lang.String getName();
  /**
   *
   *
   * <pre>
   * Globally unique name for the Ecosystem. This name will be
   * part of the ecosystem-specific URLs and namespaces.
   * Allowed characters are lowercase letters, numbers, underscore and hyphen.
   * If not passed, ecosystem name will be auto-generated.
   * </pre>
   *
   * <code>string name = 1 [(.services.options.optional) = true];</code>
   *
   * @return The bytes for name.
   */
  com.google.protobuf.ByteString getNameBytes();

  /**
   *
   *
   * <pre>
   * Ecosystem description
   * </pre>
   *
   * <code>string description = 2 [(.services.options.optional) = true];</code>
   *
   * @return The description.
   */
  java.lang.String getDescription();
  /**
   *
   *
   * <pre>
   * Ecosystem description
   * </pre>
   *
   * <code>string description = 2 [(.services.options.optional) = true];</code>
   *
   * @return The bytes for description.
   */
  com.google.protobuf.ByteString getDescriptionBytes();

  /**
   *
   *
   * <pre>
   * DEPRECATED, will be removed April 1st 2023
   * External URL associated with your organization or ecosystem entity
   * </pre>
   *
   * <code>string uri = 3 [deprecated = true, (.services.options.optional) = true];</code>
   *
   * @deprecated services.provider.v1.CreateEcosystemRequest.uri is deprecated. See
   *     services/provider/v1/provider.proto;l=141
   * @return The uri.
   */
  @java.lang.Deprecated
  java.lang.String getUri();
  /**
   *
   *
   * <pre>
   * DEPRECATED, will be removed April 1st 2023
   * External URL associated with your organization or ecosystem entity
   * </pre>
   *
   * <code>string uri = 3 [deprecated = true, (.services.options.optional) = true];</code>
   *
   * @deprecated services.provider.v1.CreateEcosystemRequest.uri is deprecated. See
   *     services/provider/v1/provider.proto;l=141
   * @return The bytes for uri.
   */
  @java.lang.Deprecated
  com.google.protobuf.ByteString getUriBytes();

  /**
   *
   *
   * <pre>
   * The account details of the owner of the ecosystem
   * </pre>
   *
   * <code>.services.account.v1.AccountDetails details = 4;</code>
   *
   * @return Whether the details field is set.
   */
  boolean hasDetails();
  /**
   *
   *
   * <pre>
   * The account details of the owner of the ecosystem
   * </pre>
   *
   * <code>.services.account.v1.AccountDetails details = 4;</code>
   *
   * @return The details.
   */
  trinsic.services.account.v1.AccountDetails getDetails();
  /**
   *
   *
   * <pre>
   * The account details of the owner of the ecosystem
   * </pre>
   *
   * <code>.services.account.v1.AccountDetails details = 4;</code>
   */
  trinsic.services.account.v1.AccountDetailsOrBuilder getDetailsOrBuilder();

  /**
   *
   *
   * <pre>
   * New domain URL
   * </pre>
   *
   * <code>string domain = 5;</code>
   *
   * @return The domain.
   */
  java.lang.String getDomain();
  /**
   *
   *
   * <pre>
   * New domain URL
   * </pre>
   *
   * <code>string domain = 5;</code>
   *
   * @return The bytes for domain.
   */
  com.google.protobuf.ByteString getDomainBytes();
}
