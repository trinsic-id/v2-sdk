// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: services/verifiable-credentials/templates/v1/templates.proto

package trinsic.services.verifiablecredentials.templates.v1;

public interface UriFieldDataOrBuilder
    extends
    // @@protoc_insertion_point(interface_extends:services.verifiablecredentials.templates.v1.UriFieldData)
    com.google.protobuf.MessageOrBuilder {

  /**
   *
   *
   * <pre>
   * Expected MIME Type of content pointed to by URI. Can be generic (eg, "image/") or specific ("image/png").
   * Defaults to "application/octet-stream".
   * </pre>
   *
   * <code>string mime_type = 1;</code>
   *
   * @return The mimeType.
   */
  java.lang.String getMimeType();
  /**
   *
   *
   * <pre>
   * Expected MIME Type of content pointed to by URI. Can be generic (eg, "image/") or specific ("image/png").
   * Defaults to "application/octet-stream".
   * </pre>
   *
   * <code>string mime_type = 1;</code>
   *
   * @return The bytes for mimeType.
   */
  com.google.protobuf.ByteString getMimeTypeBytes();

  /**
   *
   *
   * <pre>
   * How to display the URI value when rendering a credential.
   * </pre>
   *
   * <code>.services.verifiablecredentials.templates.v1.UriRenderMethod render_method = 2;</code>
   *
   * @return The enum numeric value on the wire for renderMethod.
   */
  int getRenderMethodValue();
  /**
   *
   *
   * <pre>
   * How to display the URI value when rendering a credential.
   * </pre>
   *
   * <code>.services.verifiablecredentials.templates.v1.UriRenderMethod render_method = 2;</code>
   *
   * @return The renderMethod.
   */
  trinsic.services.verifiablecredentials.templates.v1.UriRenderMethod getRenderMethod();
}