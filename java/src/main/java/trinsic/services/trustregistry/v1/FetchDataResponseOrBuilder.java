// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: services/trust-registry/v1/trust-registry.proto

package trinsic.services.trustregistry.v1;

public interface FetchDataResponseOrBuilder
    extends
    // @@protoc_insertion_point(interface_extends:services.trustregistry.v1.FetchDataResponse)
    com.google.protobuf.MessageOrBuilder {

  /**
   * <code>string response_json = 1;</code>
   *
   * @return The responseJson.
   */
  java.lang.String getResponseJson();
  /**
   * <code>string response_json = 1;</code>
   *
   * @return The bytes for responseJson.
   */
  com.google.protobuf.ByteString getResponseJsonBytes();

  /**
   * <code>bool has_more_results = 2;</code>
   *
   * @return The hasMoreResults.
   */
  boolean getHasMoreResults();

  /**
   * <code>string continuation_token = 3;</code>
   *
   * @return The continuationToken.
   */
  java.lang.String getContinuationToken();
  /**
   * <code>string continuation_token = 3;</code>
   *
   * @return The bytes for continuationToken.
   */
  com.google.protobuf.ByteString getContinuationTokenBytes();
}