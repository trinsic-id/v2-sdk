// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: services/verifiable-credentials/templates/v1/templates.proto

package trinsic.services.verifiablecredentials.templates.v1;

public interface UpdateVerificationTemplateRequestOrBuilder
    extends
    // @@protoc_insertion_point(interface_extends:services.verifiablecredentials.templates.v1.UpdateVerificationTemplateRequest)
    com.google.protobuf.MessageOrBuilder {

  /**
   *
   *
   * <pre>
   * ID of Template to update
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
   * ID of Template to update
   * </pre>
   *
   * <code>string id = 1;</code>
   *
   * @return The bytes for id.
   */
  com.google.protobuf.ByteString getIdBytes();

  /**
   *
   *
   * <pre>
   * New human-readable title of Template
   * </pre>
   *
   * <code>optional string title = 2;</code>
   *
   * @return Whether the title field is set.
   */
  boolean hasTitle();
  /**
   *
   *
   * <pre>
   * New human-readable title of Template
   * </pre>
   *
   * <code>optional string title = 2;</code>
   *
   * @return The title.
   */
  java.lang.String getTitle();
  /**
   *
   *
   * <pre>
   * New human-readable title of Template
   * </pre>
   *
   * <code>optional string title = 2;</code>
   *
   * @return The bytes for title.
   */
  com.google.protobuf.ByteString getTitleBytes();

  /**
   *
   *
   * <pre>
   * New human-readable description of Template
   * </pre>
   *
   * <code>optional string description = 3;</code>
   *
   * @return Whether the description field is set.
   */
  boolean hasDescription();
  /**
   *
   *
   * <pre>
   * New human-readable description of Template
   * </pre>
   *
   * <code>optional string description = 3;</code>
   *
   * @return The description.
   */
  java.lang.String getDescription();
  /**
   *
   *
   * <pre>
   * New human-readable description of Template
   * </pre>
   *
   * <code>optional string description = 3;</code>
   *
   * @return The bytes for description.
   */
  com.google.protobuf.ByteString getDescriptionBytes();

  /**
   *
   *
   * <pre>
   * Fields to update within the Template
   * </pre>
   *
   * <code>
   * map&lt;string, .services.verifiablecredentials.templates.v1.VerificationTemplateFieldPatch&gt; fields = 4;
   * </code>
   */
  int getFieldsCount();
  /**
   *
   *
   * <pre>
   * Fields to update within the Template
   * </pre>
   *
   * <code>
   * map&lt;string, .services.verifiablecredentials.templates.v1.VerificationTemplateFieldPatch&gt; fields = 4;
   * </code>
   */
  boolean containsFields(java.lang.String key);
  /** Use {@link #getFieldsMap()} instead. */
  @java.lang.Deprecated
  java.util.Map<
          java.lang.String,
          trinsic.services.verifiablecredentials.templates.v1.VerificationTemplateFieldPatch>
      getFields();
  /**
   *
   *
   * <pre>
   * Fields to update within the Template
   * </pre>
   *
   * <code>
   * map&lt;string, .services.verifiablecredentials.templates.v1.VerificationTemplateFieldPatch&gt; fields = 4;
   * </code>
   */
  java.util.Map<
          java.lang.String,
          trinsic.services.verifiablecredentials.templates.v1.VerificationTemplateFieldPatch>
      getFieldsMap();
  /**
   *
   *
   * <pre>
   * Fields to update within the Template
   * </pre>
   *
   * <code>
   * map&lt;string, .services.verifiablecredentials.templates.v1.VerificationTemplateFieldPatch&gt; fields = 4;
   * </code>
   */

  /* nullable */
  trinsic.services.verifiablecredentials.templates.v1.VerificationTemplateFieldPatch
      getFieldsOrDefault(
          java.lang.String key,
          /* nullable */
          trinsic.services.verifiablecredentials.templates.v1.VerificationTemplateFieldPatch
              defaultValue);
  /**
   *
   *
   * <pre>
   * Fields to update within the Template
   * </pre>
   *
   * <code>
   * map&lt;string, .services.verifiablecredentials.templates.v1.VerificationTemplateFieldPatch&gt; fields = 4;
   * </code>
   */
  trinsic.services.verifiablecredentials.templates.v1.VerificationTemplateFieldPatch
      getFieldsOrThrow(java.lang.String key);
}
