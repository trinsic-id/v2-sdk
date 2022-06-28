// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: services/verifiable-credentials/templates/v1/templates.proto

package trinsic.services.verifiablecredentials.templates.v1;

public interface TemplateDataOrBuilder
    extends
    // @@protoc_insertion_point(interface_extends:services.verifiablecredentials.templates.v1.TemplateData)
    com.google.protobuf.MessageOrBuilder {

  /**
   *
   *
   * <pre>
   * Template ID
   * </pre>
   *
   * <code>string id = 1 [json_name = "id"];</code>
   *
   * @return The id.
   */
  java.lang.String getId();
  /**
   *
   *
   * <pre>
   * Template ID
   * </pre>
   *
   * <code>string id = 1 [json_name = "id"];</code>
   *
   * @return The bytes for id.
   */
  com.google.protobuf.ByteString getIdBytes();

  /**
   *
   *
   * <pre>
   * Template name
   * </pre>
   *
   * <code>string name = 2;</code>
   *
   * @return The name.
   */
  java.lang.String getName();
  /**
   *
   *
   * <pre>
   * Template name
   * </pre>
   *
   * <code>string name = 2;</code>
   *
   * @return The bytes for name.
   */
  com.google.protobuf.ByteString getNameBytes();

  /**
   *
   *
   * <pre>
   * Template version number
   * </pre>
   *
   * <code>int32 version = 3;</code>
   *
   * @return The version.
   */
  int getVersion();

  /**
   *
   *
   * <pre>
   * Fields defined for the template
   * </pre>
   *
   * <code>map&lt;string, .services.verifiablecredentials.templates.v1.TemplateField&gt; fields = 4;
   * </code>
   */
  int getFieldsCount();
  /**
   *
   *
   * <pre>
   * Fields defined for the template
   * </pre>
   *
   * <code>map&lt;string, .services.verifiablecredentials.templates.v1.TemplateField&gt; fields = 4;
   * </code>
   */
  boolean containsFields(java.lang.String key);
  /** Use {@link #getFieldsMap()} instead. */
  @java.lang.Deprecated
  java.util.Map<java.lang.String, trinsic.services.verifiablecredentials.templates.v1.TemplateField>
      getFields();
  /**
   *
   *
   * <pre>
   * Fields defined for the template
   * </pre>
   *
   * <code>map&lt;string, .services.verifiablecredentials.templates.v1.TemplateField&gt; fields = 4;
   * </code>
   */
  java.util.Map<java.lang.String, trinsic.services.verifiablecredentials.templates.v1.TemplateField>
      getFieldsMap();
  /**
   *
   *
   * <pre>
   * Fields defined for the template
   * </pre>
   *
   * <code>map&lt;string, .services.verifiablecredentials.templates.v1.TemplateField&gt; fields = 4;
   * </code>
   */

  /* nullable */
  trinsic.services.verifiablecredentials.templates.v1.TemplateField getFieldsOrDefault(
      java.lang.String key,
      /* nullable */
      trinsic.services.verifiablecredentials.templates.v1.TemplateField defaultValue);
  /**
   *
   *
   * <pre>
   * Fields defined for the template
   * </pre>
   *
   * <code>map&lt;string, .services.verifiablecredentials.templates.v1.TemplateField&gt; fields = 4;
   * </code>
   */
  trinsic.services.verifiablecredentials.templates.v1.TemplateField getFieldsOrThrow(
      java.lang.String key);

  /**
   *
   *
   * <pre>
   * Whether credentials issued against this template may
   * contain fields not defined by template
   * </pre>
   *
   * <code>bool allow_additional_fields = 5;</code>
   *
   * @return The allowAdditionalFields.
   */
  boolean getAllowAdditionalFields();

  /**
   *
   *
   * <pre>
   * URI pointing to template JSON schema document
   * </pre>
   *
   * <code>string schema_uri = 6;</code>
   *
   * @return The schemaUri.
   */
  java.lang.String getSchemaUri();
  /**
   *
   *
   * <pre>
   * URI pointing to template JSON schema document
   * </pre>
   *
   * <code>string schema_uri = 6;</code>
   *
   * @return The bytes for schemaUri.
   */
  com.google.protobuf.ByteString getSchemaUriBytes();

  /**
   *
   *
   * <pre>
   * URI pointing to template JSON-LD context document
   * </pre>
   *
   * <code>string context_uri = 7;</code>
   *
   * @return The contextUri.
   */
  java.lang.String getContextUri();
  /**
   *
   *
   * <pre>
   * URI pointing to template JSON-LD context document
   * </pre>
   *
   * <code>string context_uri = 7;</code>
   *
   * @return The bytes for contextUri.
   */
  com.google.protobuf.ByteString getContextUriBytes();

  /**
   *
   *
   * <pre>
   * ID of ecosystem in which template resides
   * </pre>
   *
   * <code>string ecosystem_id = 8 [json_name = "ecosystemId"];</code>
   *
   * @return The ecosystemId.
   */
  java.lang.String getEcosystemId();
  /**
   *
   *
   * <pre>
   * ID of ecosystem in which template resides
   * </pre>
   *
   * <code>string ecosystem_id = 8 [json_name = "ecosystemId"];</code>
   *
   * @return The bytes for ecosystemId.
   */
  com.google.protobuf.ByteString getEcosystemIdBytes();

  /**
   *
   *
   * <pre>
   * Template type (`VerifiableCredential`)
   * </pre>
   *
   * <code>string type = 9 [json_name = "type"];</code>
   *
   * @return The type.
   */
  java.lang.String getType();
  /**
   *
   *
   * <pre>
   * Template type (`VerifiableCredential`)
   * </pre>
   *
   * <code>string type = 9 [json_name = "type"];</code>
   *
   * @return The bytes for type.
   */
  com.google.protobuf.ByteString getTypeBytes();

  /**
   *
   *
   * <pre>
   * ID of template creator
   * </pre>
   *
   * <code>string created_by = 10 [json_name = "createdBy"];</code>
   *
   * @return The createdBy.
   */
  java.lang.String getCreatedBy();
  /**
   *
   *
   * <pre>
   * ID of template creator
   * </pre>
   *
   * <code>string created_by = 10 [json_name = "createdBy"];</code>
   *
   * @return The bytes for createdBy.
   */
  com.google.protobuf.ByteString getCreatedByBytes();
}
