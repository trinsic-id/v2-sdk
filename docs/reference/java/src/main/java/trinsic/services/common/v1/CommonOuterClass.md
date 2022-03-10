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
