// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: services/provider/v1/provider.proto

package trinsic.services.provider.v1;

public interface EcosystemDisplayOrBuilder
    extends
    // @@protoc_insertion_point(interface_extends:services.provider.v1.EcosystemDisplay)
    com.google.protobuf.MessageOrBuilder {

  /**
   *
   *
   * <pre>
   *    Removed the Dark after discussion with team, as we don't provide a dark UI anywhere (yet) in our platform.
   *    EcosystemDisplayDetails dark = 1;
   * </pre>
   *
   * <code>.services.provider.v1.EcosystemDisplayDetails light = 2;</code>
   *
   * @return Whether the light field is set.
   */
  boolean hasLight();
  /**
   *
   *
   * <pre>
   *    Removed the Dark after discussion with team, as we don't provide a dark UI anywhere (yet) in our platform.
   *    EcosystemDisplayDetails dark = 1;
   * </pre>
   *
   * <code>.services.provider.v1.EcosystemDisplayDetails light = 2;</code>
   *
   * @return The light.
   */
  trinsic.services.provider.v1.EcosystemDisplayDetails getLight();
  /**
   *
   *
   * <pre>
   *    Removed the Dark after discussion with team, as we don't provide a dark UI anywhere (yet) in our platform.
   *    EcosystemDisplayDetails dark = 1;
   * </pre>
   *
   * <code>.services.provider.v1.EcosystemDisplayDetails light = 2;</code>
   */
  trinsic.services.provider.v1.EcosystemDisplayDetailsOrBuilder getLightOrBuilder();
}
