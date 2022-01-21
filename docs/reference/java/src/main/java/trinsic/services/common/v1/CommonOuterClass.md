# Documentation

## `public enum ResponseStatus implements com.google.protobuf.ProtocolMessageEnum`

Protobuf enum {@code services.common.v1.ResponseStatus}

## `SUCCESS(0),`

`SUCCESS = 0;`

## `WALLET_ACCESS_DENIED(10),`

`WALLET_ACCESS_DENIED = 10;`

## `WALLET_EXISTS(11),`

`WALLET_EXISTS = 11;`

## `ITEM_NOT_FOUND(20),`

`ITEM_NOT_FOUND = 20;`

## `SERIALIZATION_ERROR(200),`

`SERIALIZATION_ERROR = 200;`

## `UNKNOWN_ERROR(100), UNRECOGNIZED(-1),`

`UNKNOWN_ERROR = 100;`

## `public static final int SUCCESS_VALUE = 0`

`SUCCESS = 0;`

## `public static final int WALLET_ACCESS_DENIED_VALUE = 10`

`WALLET_ACCESS_DENIED = 10;`

## `public static final int WALLET_EXISTS_VALUE = 11`

`WALLET_EXISTS = 11;`

## `public static final int ITEM_NOT_FOUND_VALUE = 20`

`ITEM_NOT_FOUND = 20;`

## `public static final int SERIALIZATION_ERROR_VALUE = 200`

`SERIALIZATION_ERROR = 200;`

## `public static final int UNKNOWN_ERROR_VALUE = 100`

`UNKNOWN_ERROR = 100;`

## `@java.lang.Deprecated public static ResponseStatus valueOf(int value)`

 * **Parameters:** `value` — The numeric wire value of the corresponding enum entry.
 * **Returns:** The enum associated with the given numeric wire value.
 * **Deprecated**

## `public static ResponseStatus forNumber(int value)`

 * **Parameters:** `value` — The numeric wire value of the corresponding enum entry.
 * **Returns:** The enum associated with the given numeric wire value.

## `public enum JsonFormat implements com.google.protobuf.ProtocolMessageEnum`

Protobuf enum {@code services.common.v1.JsonFormat}

## `Protobuf(0),`

`Protobuf = 0;`

## `Binary(1),`

`Binary = 1;`

## `String(2), UNRECOGNIZED(-1),`

`String = 2;`

## `public static final int Protobuf_VALUE = 0`

`Protobuf = 0;`

## `public static final int Binary_VALUE = 1`

`Binary = 1;`

## `public static final int String_VALUE = 2`

`String = 2;`

## `@java.lang.Deprecated public static JsonFormat valueOf(int value)`

 * **Parameters:** `value` — The numeric wire value of the corresponding enum entry.
 * **Returns:** The enum associated with the given numeric wire value.
 * **Deprecated**

## `public static JsonFormat forNumber(int value)`

 * **Parameters:** `value` — The numeric wire value of the corresponding enum entry.
 * **Returns:** The enum associated with the given numeric wire value.

## `int getResponseJsonFormatValue()`

`.services.common.v1.JsonFormat response_json_format = 1;`

 * **Returns:** The enum numeric value on the wire for responseJsonFormat.

## `trinsic.services.common.v1.CommonOuterClass.JsonFormat getResponseJsonFormat()`

`.services.common.v1.JsonFormat response_json_format = 1;`

 * **Returns:** The responseJsonFormat.

## `public static final class RequestOptions extends com.google.protobuf.GeneratedMessageV3 implements`

Protobuf type {@code services.common.v1.RequestOptions}

## `@java.lang.Override public int getResponseJsonFormatValue()`

`.services.common.v1.JsonFormat response_json_format = 1;`

 * **Returns:** The enum numeric value on the wire for responseJsonFormat.

## `@java.lang.Override public trinsic.services.common.v1.CommonOuterClass.JsonFormat getResponseJsonFormat()`

`.services.common.v1.JsonFormat response_json_format = 1;`

 * **Returns:** The responseJsonFormat.

## `public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder> implements`

Protobuf type {@code services.common.v1.RequestOptions}

## `@java.lang.Override public int getResponseJsonFormatValue()`

`.services.common.v1.JsonFormat response_json_format = 1;`

 * **Returns:** The enum numeric value on the wire for responseJsonFormat.

## `public Builder setResponseJsonFormatValue(int value)`

`.services.common.v1.JsonFormat response_json_format = 1;`

 * **Parameters:** `value` — The enum numeric value on the wire for responseJsonFormat to set.
 * **Returns:** This builder for chaining.

## `@java.lang.Override public trinsic.services.common.v1.CommonOuterClass.JsonFormat getResponseJsonFormat()`

`.services.common.v1.JsonFormat response_json_format = 1;`

 * **Returns:** The responseJsonFormat.

## `public Builder setResponseJsonFormat(trinsic.services.common.v1.CommonOuterClass.JsonFormat value)`

`.services.common.v1.JsonFormat response_json_format = 1;`

 * **Parameters:** `value` — The responseJsonFormat to set.
 * **Returns:** This builder for chaining.

## `public Builder clearResponseJsonFormat()`

`.services.common.v1.JsonFormat response_json_format = 1;`

 * **Returns:** This builder for chaining.

## `boolean hasJsonStruct()`

`.google.protobuf.Struct json_struct = 1;`

 * **Returns:** Whether the jsonStruct field is set.

## `com.google.protobuf.Struct getJsonStruct()`

`.google.protobuf.Struct json_struct = 1;`

 * **Returns:** The jsonStruct.

## `com.google.protobuf.StructOrBuilder getJsonStructOrBuilder()`

`.google.protobuf.Struct json_struct = 1;`

## `boolean hasJsonString()`

`string json_string = 2;`

 * **Returns:** Whether the jsonString field is set.

## `java.lang.String getJsonString()`

`string json_string = 2;`

 * **Returns:** The jsonString.

## `com.google.protobuf.ByteString getJsonStringBytes()`

`string json_string = 2;`

 * **Returns:** The bytes for jsonString.

## `boolean hasJsonBytes()`

`bytes json_bytes = 3;`

 * **Returns:** Whether the jsonBytes field is set.

## `com.google.protobuf.ByteString getJsonBytes()`

`bytes json_bytes = 3;`

 * **Returns:** The jsonBytes.

## `public static final class JsonPayload extends com.google.protobuf.GeneratedMessageV3 implements`

Protobuf type {@code services.common.v1.JsonPayload}

## `@java.lang.Deprecated public static JsonCase valueOf(int value)`

 * **Parameters:** `value` — The number of the enum to look for.
 * **Returns:** The enum associated with the given number.
 * **Deprecated**

## `@java.lang.Override public boolean hasJsonStruct()`

`.google.protobuf.Struct json_struct = 1;`

 * **Returns:** Whether the jsonStruct field is set.

## `@java.lang.Override public com.google.protobuf.Struct getJsonStruct()`

`.google.protobuf.Struct json_struct = 1;`

 * **Returns:** The jsonStruct.

## `@java.lang.Override public com.google.protobuf.StructOrBuilder getJsonStructOrBuilder()`

`.google.protobuf.Struct json_struct = 1;`

## `public boolean hasJsonString()`

`string json_string = 2;`

 * **Returns:** Whether the jsonString field is set.

## `public java.lang.String getJsonString()`

`string json_string = 2;`

 * **Returns:** The jsonString.

## `public com.google.protobuf.ByteString getJsonStringBytes()`

`string json_string = 2;`

 * **Returns:** The bytes for jsonString.

## `@java.lang.Override public boolean hasJsonBytes()`

`bytes json_bytes = 3;`

 * **Returns:** Whether the jsonBytes field is set.

## `@java.lang.Override public com.google.protobuf.ByteString getJsonBytes()`

`bytes json_bytes = 3;`

 * **Returns:** The jsonBytes.

## `public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder> implements`

Protobuf type {@code services.common.v1.JsonPayload}

## `@java.lang.Override public boolean hasJsonStruct()`

`.google.protobuf.Struct json_struct = 1;`

 * **Returns:** Whether the jsonStruct field is set.

## `@java.lang.Override public com.google.protobuf.Struct getJsonStruct()`

`.google.protobuf.Struct json_struct = 1;`

 * **Returns:** The jsonStruct.

## `public Builder setJsonStruct(com.google.protobuf.Struct value)`

`.google.protobuf.Struct json_struct = 1;`

## `public Builder setJsonStruct( com.google.protobuf.Struct.Builder builderForValue)`

`.google.protobuf.Struct json_struct = 1;`

## `public Builder mergeJsonStruct(com.google.protobuf.Struct value)`

`.google.protobuf.Struct json_struct = 1;`

## `public Builder clearJsonStruct()`

`.google.protobuf.Struct json_struct = 1;`

## `public com.google.protobuf.Struct.Builder getJsonStructBuilder()`

`.google.protobuf.Struct json_struct = 1;`

## `@java.lang.Override public com.google.protobuf.StructOrBuilder getJsonStructOrBuilder()`

`.google.protobuf.Struct json_struct = 1;`

## `private com.google.protobuf.SingleFieldBuilderV3< com.google.protobuf.Struct, com.google.protobuf.Struct.Builder, com.google.protobuf.StructOrBuilder> getJsonStructFieldBuilder()`

`.google.protobuf.Struct json_struct = 1;`

## `@java.lang.Override public boolean hasJsonString()`

`string json_string = 2;`

 * **Returns:** Whether the jsonString field is set.

## `@java.lang.Override public java.lang.String getJsonString()`

`string json_string = 2;`

 * **Returns:** The jsonString.

## `@java.lang.Override public com.google.protobuf.ByteString getJsonStringBytes()`

`string json_string = 2;`

 * **Returns:** The bytes for jsonString.

## `public Builder setJsonString( java.lang.String value)`

`string json_string = 2;`

 * **Parameters:** `value` — The jsonString to set.
 * **Returns:** This builder for chaining.

## `public Builder clearJsonString()`

`string json_string = 2;`

 * **Returns:** This builder for chaining.

## `public Builder setJsonStringBytes( com.google.protobuf.ByteString value)`

`string json_string = 2;`

 * **Parameters:** `value` — The bytes for jsonString to set.
 * **Returns:** This builder for chaining.

## `public boolean hasJsonBytes()`

`bytes json_bytes = 3;`

 * **Returns:** Whether the jsonBytes field is set.

## `public com.google.protobuf.ByteString getJsonBytes()`

`bytes json_bytes = 3;`

 * **Returns:** The jsonBytes.

## `public Builder setJsonBytes(com.google.protobuf.ByteString value)`

`bytes json_bytes = 3;`

 * **Parameters:** `value` — The jsonBytes to set.
 * **Returns:** This builder for chaining.

## `public Builder clearJsonBytes()`

`bytes json_bytes = 3;`

 * **Returns:** This builder for chaining.

## `java.lang.String getEndpoint()`

<pre> service endpoint </pre>

`string endpoint = 1;`

 * **Returns:** The endpoint.

## `com.google.protobuf.ByteString getEndpointBytes()`

<pre> service endpoint </pre>

`string endpoint = 1;`

 * **Returns:** The bytes for endpoint.

## `int getPort()`

<pre> service port </pre>

`int32 port = 2;`

 * **Returns:** The port.

## `boolean getUseTls()`

<pre> indicates if tls is used </pre>

`bool use_tls = 3;`

 * **Returns:** The useTls.

## `public static final class ServerConfig extends com.google.protobuf.GeneratedMessageV3 implements`

Protobuf type {@code services.common.v1.ServerConfig}

## `@java.lang.Override public java.lang.String getEndpoint()`

<pre> service endpoint </pre>

`string endpoint = 1;`

 * **Returns:** The endpoint.

## `@java.lang.Override public com.google.protobuf.ByteString getEndpointBytes()`

<pre> service endpoint </pre>

`string endpoint = 1;`

 * **Returns:** The bytes for endpoint.

## `@java.lang.Override public int getPort()`

<pre> service port </pre>

`int32 port = 2;`

 * **Returns:** The port.

## `@java.lang.Override public boolean getUseTls()`

<pre> indicates if tls is used </pre>

`bool use_tls = 3;`

 * **Returns:** The useTls.

## `public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder> implements`

Protobuf type {@code services.common.v1.ServerConfig}

## `public java.lang.String getEndpoint()`

<pre> service endpoint </pre>

`string endpoint = 1;`

 * **Returns:** The endpoint.

## `public com.google.protobuf.ByteString getEndpointBytes()`

<pre> service endpoint </pre>

`string endpoint = 1;`

 * **Returns:** The bytes for endpoint.

## `public Builder setEndpoint( java.lang.String value)`

<pre> service endpoint </pre>

`string endpoint = 1;`

 * **Parameters:** `value` — The endpoint to set.
 * **Returns:** This builder for chaining.

## `public Builder clearEndpoint()`

<pre> service endpoint </pre>

`string endpoint = 1;`

 * **Returns:** This builder for chaining.

## `public Builder setEndpointBytes( com.google.protobuf.ByteString value)`

<pre> service endpoint </pre>

`string endpoint = 1;`

 * **Parameters:** `value` — The bytes for endpoint to set.
 * **Returns:** This builder for chaining.

## `@java.lang.Override public int getPort()`

<pre> service port </pre>

`int32 port = 2;`

 * **Returns:** The port.

## `public Builder setPort(int value)`

<pre> service port </pre>

`int32 port = 2;`

 * **Parameters:** `value` — The port to set.
 * **Returns:** This builder for chaining.

## `public Builder clearPort()`

<pre> service port </pre>

`int32 port = 2;`

 * **Returns:** This builder for chaining.

## `@java.lang.Override public boolean getUseTls()`

<pre> indicates if tls is used </pre>

`bool use_tls = 3;`

 * **Returns:** The useTls.

## `public Builder setUseTls(boolean value)`

<pre> indicates if tls is used </pre>

`bool use_tls = 3;`

 * **Parameters:** `value` — The useTls to set.
 * **Returns:** This builder for chaining.

## `public Builder clearUseTls()`

<pre> indicates if tls is used </pre>

`bool use_tls = 3;`

 * **Returns:** This builder for chaining.

## `long getTimestamp()`

<pre> UTC unix millisecond timestamp the request was made </pre>

`int64 timestamp = 1;`

 * **Returns:** The timestamp.

## `com.google.protobuf.ByteString getRequestHash()`

<pre> blake3256 hash of the request body </pre>

`bytes request_hash = 2;`

 * **Returns:** The requestHash.

## `public static final class Nonce extends com.google.protobuf.GeneratedMessageV3 implements`

<pre> Nonce used to generate an oberon proof </pre>

Protobuf type {@code services.common.v1.Nonce}

## `@java.lang.Override public long getTimestamp()`

<pre> UTC unix millisecond timestamp the request was made </pre>

`int64 timestamp = 1;`

 * **Returns:** The timestamp.

## `@java.lang.Override public com.google.protobuf.ByteString getRequestHash()`

<pre> blake3256 hash of the request body </pre>

`bytes request_hash = 2;`

 * **Returns:** The requestHash.

## `public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder> implements`

<pre> Nonce used to generate an oberon proof </pre>

Protobuf type {@code services.common.v1.Nonce}

## `@java.lang.Override public long getTimestamp()`

<pre> UTC unix millisecond timestamp the request was made </pre>

`int64 timestamp = 1;`

 * **Returns:** The timestamp.

## `public Builder setTimestamp(long value)`

<pre> UTC unix millisecond timestamp the request was made </pre>

`int64 timestamp = 1;`

 * **Parameters:** `value` — The timestamp to set.
 * **Returns:** This builder for chaining.

## `public Builder clearTimestamp()`

<pre> UTC unix millisecond timestamp the request was made </pre>

`int64 timestamp = 1;`

 * **Returns:** This builder for chaining.

## `@java.lang.Override public com.google.protobuf.ByteString getRequestHash()`

<pre> blake3256 hash of the request body </pre>

`bytes request_hash = 2;`

 * **Returns:** The requestHash.

## `public Builder setRequestHash(com.google.protobuf.ByteString value)`

<pre> blake3256 hash of the request body </pre>

`bytes request_hash = 2;`

 * **Parameters:** `value` — The requestHash to set.
 * **Returns:** This builder for chaining.

## `public Builder clearRequestHash()`

<pre> blake3256 hash of the request body </pre>

`bytes request_hash = 2;`

 * **Returns:** This builder for chaining.
