// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: services/verifiable-credentials/templates/v1/templates.proto

package trinsic.services.verifiablecredentials.templates.v1;

public interface AppleWalletOptionsOrBuilder
    extends
    // @@protoc_insertion_point(interface_extends:services.verifiablecredentials.templates.v1.AppleWalletOptions)
    com.google.protobuf.MessageOrBuilder {

  /**
   *
   *
   * <pre>
   * Background color, in hex format, of credential when stored in an Apple Wallet.
   * </pre>
   *
   * <code>string background_color = 1;</code>
   *
   * @return The backgroundColor.
   */
  java.lang.String getBackgroundColor();
  /**
   *
   *
   * <pre>
   * Background color, in hex format, of credential when stored in an Apple Wallet.
   * </pre>
   *
   * <code>string background_color = 1;</code>
   *
   * @return The bytes for backgroundColor.
   */
  com.google.protobuf.ByteString getBackgroundColorBytes();

  /**
   *
   *
   * <pre>
   * Foreground color, in hex format, of credential when stored in an Apple Wallet.
   * </pre>
   *
   * <code>string foreground_color = 2;</code>
   *
   * @return The foregroundColor.
   */
  java.lang.String getForegroundColor();
  /**
   *
   *
   * <pre>
   * Foreground color, in hex format, of credential when stored in an Apple Wallet.
   * </pre>
   *
   * <code>string foreground_color = 2;</code>
   *
   * @return The bytes for foregroundColor.
   */
  com.google.protobuf.ByteString getForegroundColorBytes();

  /**
   *
   *
   * <pre>
   * Label color, in hex format, of credential when stored in an Apple Wallet.
   * </pre>
   *
   * <code>string label_color = 3;</code>
   *
   * @return The labelColor.
   */
  java.lang.String getLabelColor();
  /**
   *
   *
   * <pre>
   * Label color, in hex format, of credential when stored in an Apple Wallet.
   * </pre>
   *
   * <code>string label_color = 3;</code>
   *
   * @return The bytes for labelColor.
   */
  com.google.protobuf.ByteString getLabelColorBytes();

  /**
   *
   *
   * <pre>
   * The ID of the template field which should be used as the primary field of a credential.
   * </pre>
   *
   * <code>string primary_field = 4;</code>
   *
   * @return The primaryField.
   */
  java.lang.String getPrimaryField();
  /**
   *
   *
   * <pre>
   * The ID of the template field which should be used as the primary field of a credential.
   * </pre>
   *
   * <code>string primary_field = 4;</code>
   *
   * @return The bytes for primaryField.
   */
  com.google.protobuf.ByteString getPrimaryFieldBytes();

  /**
   *
   *
   * <pre>
   * The secondary fields of the credential. This is a mapping between the order of a secondary field (0 or 1) and the field name.
   * </pre>
   *
   * <code>repeated string secondary_fields = 5;</code>
   *
   * @return A list containing the secondaryFields.
   */
  java.util.List<java.lang.String> getSecondaryFieldsList();
  /**
   *
   *
   * <pre>
   * The secondary fields of the credential. This is a mapping between the order of a secondary field (0 or 1) and the field name.
   * </pre>
   *
   * <code>repeated string secondary_fields = 5;</code>
   *
   * @return The count of secondaryFields.
   */
  int getSecondaryFieldsCount();
  /**
   *
   *
   * <pre>
   * The secondary fields of the credential. This is a mapping between the order of a secondary field (0 or 1) and the field name.
   * </pre>
   *
   * <code>repeated string secondary_fields = 5;</code>
   *
   * @param index The index of the element to return.
   * @return The secondaryFields at the given index.
   */
  java.lang.String getSecondaryFields(int index);
  /**
   *
   *
   * <pre>
   * The secondary fields of the credential. This is a mapping between the order of a secondary field (0 or 1) and the field name.
   * </pre>
   *
   * <code>repeated string secondary_fields = 5;</code>
   *
   * @param index The index of the value to return.
   * @return The bytes of the secondaryFields at the given index.
   */
  com.google.protobuf.ByteString getSecondaryFieldsBytes(int index);

  /**
   *
   *
   * <pre>
   * The auxiliary fields of the credential. This is a mapping between the order of an auxiliary field (0 or 1) and the field name.
   * </pre>
   *
   * <code>repeated string auxiliary_fields = 6;</code>
   *
   * @return A list containing the auxiliaryFields.
   */
  java.util.List<java.lang.String> getAuxiliaryFieldsList();
  /**
   *
   *
   * <pre>
   * The auxiliary fields of the credential. This is a mapping between the order of an auxiliary field (0 or 1) and the field name.
   * </pre>
   *
   * <code>repeated string auxiliary_fields = 6;</code>
   *
   * @return The count of auxiliaryFields.
   */
  int getAuxiliaryFieldsCount();
  /**
   *
   *
   * <pre>
   * The auxiliary fields of the credential. This is a mapping between the order of an auxiliary field (0 or 1) and the field name.
   * </pre>
   *
   * <code>repeated string auxiliary_fields = 6;</code>
   *
   * @param index The index of the element to return.
   * @return The auxiliaryFields at the given index.
   */
  java.lang.String getAuxiliaryFields(int index);
  /**
   *
   *
   * <pre>
   * The auxiliary fields of the credential. This is a mapping between the order of an auxiliary field (0 or 1) and the field name.
   * </pre>
   *
   * <code>repeated string auxiliary_fields = 6;</code>
   *
   * @param index The index of the value to return.
   * @return The bytes of the auxiliaryFields at the given index.
   */
  com.google.protobuf.ByteString getAuxiliaryFieldsBytes(int index);
}
