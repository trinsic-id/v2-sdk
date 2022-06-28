// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: services/verifiable-credentials/templates/v1/templates.proto

package trinsic.services.verifiablecredentials.templates.v1;

public interface SearchCredentialTemplatesResponseOrBuilder
    extends
    // @@protoc_insertion_point(interface_extends:services.verifiablecredentials.templates.v1.SearchCredentialTemplatesResponse)
    com.google.protobuf.MessageOrBuilder {

  /**
   *
   *
   * <pre>
   * Raw JSON data returned from query
   * </pre>
   *
   * <code>string items_json = 1;</code>
   *
   * @return The itemsJson.
   */
  java.lang.String getItemsJson();
  /**
   *
   *
   * <pre>
   * Raw JSON data returned from query
   * </pre>
   *
   * <code>string items_json = 1;</code>
   *
   * @return The bytes for itemsJson.
   */
  com.google.protobuf.ByteString getItemsJsonBytes();

  /**
   *
   *
   * <pre>
   * Whether more results are available for this query via `continuation_token`
   * </pre>
   *
   * <code>bool has_more = 2;</code>
   *
   * @return The hasMore.
   */
  boolean getHasMore();

  /**
   *
   *
   * <pre>
   * Count of items in `items_json`
   * int32 count = 3; unpopulated and unused
   * Token to fetch next set of results via `SearchCredentialTemplatesRequest`
   * </pre>
   *
   * <code>string continuation_token = 4;</code>
   *
   * @return The continuationToken.
   */
  java.lang.String getContinuationToken();
  /**
   *
   *
   * <pre>
   * Count of items in `items_json`
   * int32 count = 3; unpopulated and unused
   * Token to fetch next set of results via `SearchCredentialTemplatesRequest`
   * </pre>
   *
   * <code>string continuation_token = 4;</code>
   *
   * @return The bytes for continuationToken.
   */
  com.google.protobuf.ByteString getContinuationTokenBytes();
}
