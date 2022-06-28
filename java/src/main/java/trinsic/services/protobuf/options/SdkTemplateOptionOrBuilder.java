// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: services/options/field-options.proto

package trinsic.services.protobuf.options;

public interface SdkTemplateOptionOrBuilder
    extends
    // @@protoc_insertion_point(interface_extends:services.options.SdkTemplateOption)
    com.google.protobuf.MessageOrBuilder {

  /**
   *
   *
   * <pre>
   * Whether the service endpoint allows anonymous (no Oberon) authentication
   * This is used by the `protoc-gen-trinsic-sdk` plugin for metadata.
   * </pre>
   *
   * <code>optional bool anonymous = 1;</code>
   *
   * @return Whether the anonymous field is set.
   */
  boolean hasAnonymous();
  /**
   *
   *
   * <pre>
   * Whether the service endpoint allows anonymous (no Oberon) authentication
   * This is used by the `protoc-gen-trinsic-sdk` plugin for metadata.
   * </pre>
   *
   * <code>optional bool anonymous = 1;</code>
   *
   * @return The anonymous.
   */
  boolean getAnonymous();

  /**
   *
   *
   * <pre>
   * Whether the SDK template generator should ignoroe this method. This method will
   * be wrapped manually.
   * </pre>
   *
   * <code>optional bool ignore = 2;</code>
   *
   * @return Whether the ignore field is set.
   */
  boolean hasIgnore();
  /**
   *
   *
   * <pre>
   * Whether the SDK template generator should ignoroe this method. This method will
   * be wrapped manually.
   * </pre>
   *
   * <code>optional bool ignore = 2;</code>
   *
   * @return The ignore.
   */
  boolean getIgnore();
}
