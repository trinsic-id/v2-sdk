// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: services/provider/v1/provider.proto

package trinsic.services.provider.v1;

@java.lang.Deprecated
public interface GetPublicEcosystemInfoResponseOrBuilder
    extends
    // @@protoc_insertion_point(interface_extends:services.provider.v1.GetPublicEcosystemInfoResponse)
    com.google.protobuf.MessageOrBuilder {

  /**
   *
   *
   * <pre>
   * Ecosystem corresponding to requested `ecosystem_id`
   * </pre>
   *
   * <code>.services.provider.v1.PublicEcosystemInformation ecosystem = 1;</code>
   *
   * @return Whether the ecosystem field is set.
   */
  boolean hasEcosystem();
  /**
   *
   *
   * <pre>
   * Ecosystem corresponding to requested `ecosystem_id`
   * </pre>
   *
   * <code>.services.provider.v1.PublicEcosystemInformation ecosystem = 1;</code>
   *
   * @return The ecosystem.
   */
  trinsic.services.provider.v1.PublicEcosystemInformation getEcosystem();
  /**
   *
   *
   * <pre>
   * Ecosystem corresponding to requested `ecosystem_id`
   * </pre>
   *
   * <code>.services.provider.v1.PublicEcosystemInformation ecosystem = 1;</code>
   */
  trinsic.services.provider.v1.PublicEcosystemInformationOrBuilder getEcosystemOrBuilder();
}
