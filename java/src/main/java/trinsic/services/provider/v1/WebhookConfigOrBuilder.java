// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: services/provider/v1/provider.proto

package trinsic.services.provider.v1;

public interface WebhookConfigOrBuilder
    extends
    // @@protoc_insertion_point(interface_extends:services.provider.v1.WebhookConfig)
    com.google.protobuf.MessageOrBuilder {

  /**
   *
   *
   * <pre>
   * UUID of the webhook
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
   * UUID of the webhook
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
   * Destination to post webhook calls to
   * </pre>
   *
   * <code>string destination_url = 2;</code>
   *
   * @return The destinationUrl.
   */
  java.lang.String getDestinationUrl();
  /**
   *
   *
   * <pre>
   * Destination to post webhook calls to
   * </pre>
   *
   * <code>string destination_url = 2;</code>
   *
   * @return The bytes for destinationUrl.
   */
  com.google.protobuf.ByteString getDestinationUrlBytes();

  /**
   *
   *
   * <pre>
   * Events the webhook is subscribed to
   * </pre>
   *
   * <code>repeated string events = 4;</code>
   *
   * @return A list containing the events.
   */
  java.util.List<java.lang.String> getEventsList();
  /**
   *
   *
   * <pre>
   * Events the webhook is subscribed to
   * </pre>
   *
   * <code>repeated string events = 4;</code>
   *
   * @return The count of events.
   */
  int getEventsCount();
  /**
   *
   *
   * <pre>
   * Events the webhook is subscribed to
   * </pre>
   *
   * <code>repeated string events = 4;</code>
   *
   * @param index The index of the element to return.
   * @return The events at the given index.
   */
  java.lang.String getEvents(int index);
  /**
   *
   *
   * <pre>
   * Events the webhook is subscribed to
   * </pre>
   *
   * <code>repeated string events = 4;</code>
   *
   * @param index The index of the value to return.
   * @return The bytes of the events at the given index.
   */
  com.google.protobuf.ByteString getEventsBytes(int index);

  /**
   *
   *
   * <pre>
   * Whether we are able to sucessfully send events to the webhook
   * </pre>
   *
   * <code>string status = 5;</code>
   *
   * @return The status.
   */
  java.lang.String getStatus();
  /**
   *
   *
   * <pre>
   * Whether we are able to sucessfully send events to the webhook
   * </pre>
   *
   * <code>string status = 5;</code>
   *
   * @return The bytes for status.
   */
  com.google.protobuf.ByteString getStatusBytes();
}
