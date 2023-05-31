// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: services/provider/v1/provider.proto

package trinsic.services.provider.v1;

public interface SearchWalletConfigurationsRequestOrBuilder
    extends
    // @@protoc_insertion_point(interface_extends:services.provider.v1.SearchWalletConfigurationsRequest)
    com.google.protobuf.MessageOrBuilder {

  /**
   *
   *
   * <pre>
   * SQL filter to execute. `SELECT * FROM c WHERE [**queryFilter**]`
   * </pre>
   *
   * <code>string query_filter = 1;</code>
   *
   * @return The queryFilter.
   */
  java.lang.String getQueryFilter();
  /**
   *
   *
   * <pre>
   * SQL filter to execute. `SELECT * FROM c WHERE [**queryFilter**]`
   * </pre>
   *
   * <code>string query_filter = 1;</code>
   *
   * @return The bytes for queryFilter.
   */
  com.google.protobuf.ByteString getQueryFilterBytes();

  /**
   *
   *
   * <pre>
   * Token provided by previous `SearchResponse`
   * if more data is available for query
   * </pre>
   *
   * <code>string continuation_token = 2 [(.services.options.optional) = true];</code>
   *
   * @return The continuationToken.
   */
  java.lang.String getContinuationToken();
  /**
   *
   *
   * <pre>
   * Token provided by previous `SearchResponse`
   * if more data is available for query
   * </pre>
   *
   * <code>string continuation_token = 2 [(.services.options.optional) = true];</code>
   *
   * @return The bytes for continuationToken.
   */
  com.google.protobuf.ByteString getContinuationTokenBytes();
}
