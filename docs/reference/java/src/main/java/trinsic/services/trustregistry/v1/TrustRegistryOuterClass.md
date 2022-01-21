# Documentation

## `public enum RegistrationStatus implements com.google.protobuf.ProtocolMessageEnum`

Protobuf enum {@code services.trustregistry.v1.RegistrationStatus}

## `CURRENT(0),`

<pre> - the entity is currently authorized, as of time of the query. </pre>

`CURRENT = 0;`

## `EXPIRED(1),`

<pre> - entity rights have expired. </pre>

`EXPIRED = 1;`

## `TERMINATED(2),`

<pre> - entity has voluntarily ceased Issuer role under the specific EGF. </pre>

`TERMINATED = 2;`

## `REVOKED(3),`

<pre> - entity authority under specific EGF was terminated by the governing authority. </pre>

`REVOKED = 3;`

## `NOT_FOUND(10), UNRECOGNIZED(-1),`

`NOT_FOUND = 10;`

## `public static final int CURRENT_VALUE = 0`

<pre> - the entity is currently authorized, as of time of the query. </pre>

`CURRENT = 0;`

## `public static final int EXPIRED_VALUE = 1`

<pre> - entity rights have expired. </pre>

`EXPIRED = 1;`

## `public static final int TERMINATED_VALUE = 2`

<pre> - entity has voluntarily ceased Issuer role under the specific EGF. </pre>

`TERMINATED = 2;`

## `public static final int REVOKED_VALUE = 3`

<pre> - entity authority under specific EGF was terminated by the governing authority. </pre>

`REVOKED = 3;`

## `public static final int NOT_FOUND_VALUE = 10`

`NOT_FOUND = 10;`

## `@java.lang.Deprecated public static RegistrationStatus valueOf(int value)`

 * **Parameters:** `value` — The numeric wire value of the corresponding enum entry.
 * **Returns:** The enum associated with the given numeric wire value.
 * **Deprecated**

## `public static RegistrationStatus forNumber(int value)`

 * **Parameters:** `value` — The numeric wire value of the corresponding enum entry.
 * **Returns:** The enum associated with the given numeric wire value.

## `boolean hasGovernanceFramework()`

`.services.trustregistry.v1.GovernanceFramework governance_framework = 1;`

 * **Returns:** Whether the governanceFramework field is set.

## `trinsic.services.trustregistry.v1.TrustRegistryOuterClass.GovernanceFramework getGovernanceFramework()`

`.services.trustregistry.v1.GovernanceFramework governance_framework = 1;`

 * **Returns:** The governanceFramework.

## `trinsic.services.trustregistry.v1.TrustRegistryOuterClass.GovernanceFrameworkOrBuilder getGovernanceFrameworkOrBuilder()`

`.services.trustregistry.v1.GovernanceFramework governance_framework = 1;`

## `public static final class AddFrameworkRequest extends com.google.protobuf.GeneratedMessageV3 implements`

Protobuf type {@code services.trustregistry.v1.AddFrameworkRequest}

## `@java.lang.Override public boolean hasGovernanceFramework()`

`.services.trustregistry.v1.GovernanceFramework governance_framework = 1;`

 * **Returns:** Whether the governanceFramework field is set.

## `@java.lang.Override public trinsic.services.trustregistry.v1.TrustRegistryOuterClass.GovernanceFramework getGovernanceFramework()`

`.services.trustregistry.v1.GovernanceFramework governance_framework = 1;`

 * **Returns:** The governanceFramework.

## `@java.lang.Override public trinsic.services.trustregistry.v1.TrustRegistryOuterClass.GovernanceFrameworkOrBuilder getGovernanceFrameworkOrBuilder()`

`.services.trustregistry.v1.GovernanceFramework governance_framework = 1;`

## `public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder> implements`

Protobuf type {@code services.trustregistry.v1.AddFrameworkRequest}

## `public boolean hasGovernanceFramework()`

`.services.trustregistry.v1.GovernanceFramework governance_framework = 1;`

 * **Returns:** Whether the governanceFramework field is set.

## `public trinsic.services.trustregistry.v1.TrustRegistryOuterClass.GovernanceFramework getGovernanceFramework()`

`.services.trustregistry.v1.GovernanceFramework governance_framework = 1;`

 * **Returns:** The governanceFramework.

## `public Builder setGovernanceFramework(trinsic.services.trustregistry.v1.TrustRegistryOuterClass.GovernanceFramework value)`

`.services.trustregistry.v1.GovernanceFramework governance_framework = 1;`

## `public Builder setGovernanceFramework( trinsic.services.trustregistry.v1.TrustRegistryOuterClass.GovernanceFramework.Builder builderForValue)`

`.services.trustregistry.v1.GovernanceFramework governance_framework = 1;`

## `public Builder mergeGovernanceFramework(trinsic.services.trustregistry.v1.TrustRegistryOuterClass.GovernanceFramework value)`

`.services.trustregistry.v1.GovernanceFramework governance_framework = 1;`

## `public Builder clearGovernanceFramework()`

`.services.trustregistry.v1.GovernanceFramework governance_framework = 1;`

## `public trinsic.services.trustregistry.v1.TrustRegistryOuterClass.GovernanceFramework.Builder getGovernanceFrameworkBuilder()`

`.services.trustregistry.v1.GovernanceFramework governance_framework = 1;`

## `public trinsic.services.trustregistry.v1.TrustRegistryOuterClass.GovernanceFrameworkOrBuilder getGovernanceFrameworkOrBuilder()`

`.services.trustregistry.v1.GovernanceFramework governance_framework = 1;`

## `private com.google.protobuf.SingleFieldBuilderV3< trinsic.services.trustregistry.v1.TrustRegistryOuterClass.GovernanceFramework, trinsic.services.trustregistry.v1.TrustRegistryOuterClass.GovernanceFramework.Builder, trinsic.services.trustregistry.v1.TrustRegistryOuterClass.GovernanceFrameworkOrBuilder> getGovernanceFrameworkFieldBuilder()`

`.services.trustregistry.v1.GovernanceFramework governance_framework = 1;`

## `int getStatusValue()`

`.services.common.v1.ResponseStatus status = 1;`

 * **Returns:** The enum numeric value on the wire for status.

## `trinsic.services.common.v1.CommonOuterClass.ResponseStatus getStatus()`

`.services.common.v1.ResponseStatus status = 1;`

 * **Returns:** The status.

## `public static final class AddFrameworkResponse extends com.google.protobuf.GeneratedMessageV3 implements`

Protobuf type {@code services.trustregistry.v1.AddFrameworkResponse}

## `@java.lang.Override public int getStatusValue()`

`.services.common.v1.ResponseStatus status = 1;`

 * **Returns:** The enum numeric value on the wire for status.

## `@java.lang.Override public trinsic.services.common.v1.CommonOuterClass.ResponseStatus getStatus()`

`.services.common.v1.ResponseStatus status = 1;`

 * **Returns:** The status.

## `public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder> implements`

Protobuf type {@code services.trustregistry.v1.AddFrameworkResponse}

## `@java.lang.Override public int getStatusValue()`

`.services.common.v1.ResponseStatus status = 1;`

 * **Returns:** The enum numeric value on the wire for status.

## `public Builder setStatusValue(int value)`

`.services.common.v1.ResponseStatus status = 1;`

 * **Parameters:** `value` — The enum numeric value on the wire for status to set.
 * **Returns:** This builder for chaining.

## `@java.lang.Override public trinsic.services.common.v1.CommonOuterClass.ResponseStatus getStatus()`

`.services.common.v1.ResponseStatus status = 1;`

 * **Returns:** The status.

## `public Builder setStatus(trinsic.services.common.v1.CommonOuterClass.ResponseStatus value)`

`.services.common.v1.ResponseStatus status = 1;`

 * **Parameters:** `value` — The status to set.
 * **Returns:** This builder for chaining.

## `public Builder clearStatus()`

`.services.common.v1.ResponseStatus status = 1;`

 * **Returns:** This builder for chaining.

## `boolean hasGovernanceFramework()`

`.services.trustregistry.v1.GovernanceFramework governance_framework = 1;`

 * **Returns:** Whether the governanceFramework field is set.

## `trinsic.services.trustregistry.v1.TrustRegistryOuterClass.GovernanceFramework getGovernanceFramework()`

`.services.trustregistry.v1.GovernanceFramework governance_framework = 1;`

 * **Returns:** The governanceFramework.

## `trinsic.services.trustregistry.v1.TrustRegistryOuterClass.GovernanceFrameworkOrBuilder getGovernanceFrameworkOrBuilder()`

`.services.trustregistry.v1.GovernanceFramework governance_framework = 1;`

## `public static final class RemoveFrameworkRequest extends com.google.protobuf.GeneratedMessageV3 implements`

Protobuf type {@code services.trustregistry.v1.RemoveFrameworkRequest}

## `@java.lang.Override public boolean hasGovernanceFramework()`

`.services.trustregistry.v1.GovernanceFramework governance_framework = 1;`

 * **Returns:** Whether the governanceFramework field is set.

## `@java.lang.Override public trinsic.services.trustregistry.v1.TrustRegistryOuterClass.GovernanceFramework getGovernanceFramework()`

`.services.trustregistry.v1.GovernanceFramework governance_framework = 1;`

 * **Returns:** The governanceFramework.

## `@java.lang.Override public trinsic.services.trustregistry.v1.TrustRegistryOuterClass.GovernanceFrameworkOrBuilder getGovernanceFrameworkOrBuilder()`

`.services.trustregistry.v1.GovernanceFramework governance_framework = 1;`

## `public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder> implements`

Protobuf type {@code services.trustregistry.v1.RemoveFrameworkRequest}

## `public boolean hasGovernanceFramework()`

`.services.trustregistry.v1.GovernanceFramework governance_framework = 1;`

 * **Returns:** Whether the governanceFramework field is set.

## `public trinsic.services.trustregistry.v1.TrustRegistryOuterClass.GovernanceFramework getGovernanceFramework()`

`.services.trustregistry.v1.GovernanceFramework governance_framework = 1;`

 * **Returns:** The governanceFramework.

## `public Builder setGovernanceFramework(trinsic.services.trustregistry.v1.TrustRegistryOuterClass.GovernanceFramework value)`

`.services.trustregistry.v1.GovernanceFramework governance_framework = 1;`

## `public Builder setGovernanceFramework( trinsic.services.trustregistry.v1.TrustRegistryOuterClass.GovernanceFramework.Builder builderForValue)`

`.services.trustregistry.v1.GovernanceFramework governance_framework = 1;`

## `public Builder mergeGovernanceFramework(trinsic.services.trustregistry.v1.TrustRegistryOuterClass.GovernanceFramework value)`

`.services.trustregistry.v1.GovernanceFramework governance_framework = 1;`

## `public Builder clearGovernanceFramework()`

`.services.trustregistry.v1.GovernanceFramework governance_framework = 1;`

## `public trinsic.services.trustregistry.v1.TrustRegistryOuterClass.GovernanceFramework.Builder getGovernanceFrameworkBuilder()`

`.services.trustregistry.v1.GovernanceFramework governance_framework = 1;`

## `public trinsic.services.trustregistry.v1.TrustRegistryOuterClass.GovernanceFrameworkOrBuilder getGovernanceFrameworkOrBuilder()`

`.services.trustregistry.v1.GovernanceFramework governance_framework = 1;`

## `private com.google.protobuf.SingleFieldBuilderV3< trinsic.services.trustregistry.v1.TrustRegistryOuterClass.GovernanceFramework, trinsic.services.trustregistry.v1.TrustRegistryOuterClass.GovernanceFramework.Builder, trinsic.services.trustregistry.v1.TrustRegistryOuterClass.GovernanceFrameworkOrBuilder> getGovernanceFrameworkFieldBuilder()`

`.services.trustregistry.v1.GovernanceFramework governance_framework = 1;`

## `int getStatusValue()`

`.services.common.v1.ResponseStatus status = 1;`

 * **Returns:** The enum numeric value on the wire for status.

## `trinsic.services.common.v1.CommonOuterClass.ResponseStatus getStatus()`

`.services.common.v1.ResponseStatus status = 1;`

 * **Returns:** The status.

## `public static final class RemoveFrameworkResponse extends com.google.protobuf.GeneratedMessageV3 implements`

Protobuf type {@code services.trustregistry.v1.RemoveFrameworkResponse}

## `@java.lang.Override public int getStatusValue()`

`.services.common.v1.ResponseStatus status = 1;`

 * **Returns:** The enum numeric value on the wire for status.

## `@java.lang.Override public trinsic.services.common.v1.CommonOuterClass.ResponseStatus getStatus()`

`.services.common.v1.ResponseStatus status = 1;`

 * **Returns:** The status.

## `public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder> implements`

Protobuf type {@code services.trustregistry.v1.RemoveFrameworkResponse}

## `@java.lang.Override public int getStatusValue()`

`.services.common.v1.ResponseStatus status = 1;`

 * **Returns:** The enum numeric value on the wire for status.

## `public Builder setStatusValue(int value)`

`.services.common.v1.ResponseStatus status = 1;`

 * **Parameters:** `value` — The enum numeric value on the wire for status to set.
 * **Returns:** This builder for chaining.

## `@java.lang.Override public trinsic.services.common.v1.CommonOuterClass.ResponseStatus getStatus()`

`.services.common.v1.ResponseStatus status = 1;`

 * **Returns:** The status.

## `public Builder setStatus(trinsic.services.common.v1.CommonOuterClass.ResponseStatus value)`

`.services.common.v1.ResponseStatus status = 1;`

 * **Parameters:** `value` — The status to set.
 * **Returns:** This builder for chaining.

## `public Builder clearStatus()`

`.services.common.v1.ResponseStatus status = 1;`

 * **Returns:** This builder for chaining.

## `java.lang.String getQuery()`

<pre> SELECT c from c where c.type == 'GovernanceFramework' </pre>

`string query = 1;`

 * **Returns:** The query.

## `com.google.protobuf.ByteString getQueryBytes()`

<pre> SELECT c from c where c.type == 'GovernanceFramework' </pre>

`string query = 1;`

 * **Returns:** The bytes for query.

## `java.lang.String getContinuationToken()`

`string continuation_token = 2;`

 * **Returns:** The continuationToken.

## `com.google.protobuf.ByteString getContinuationTokenBytes()`

`string continuation_token = 2;`

 * **Returns:** The bytes for continuationToken.

## `boolean hasOptions()`

`.services.common.v1.RequestOptions options = 5;`

 * **Returns:** Whether the options field is set.

## `trinsic.services.common.v1.CommonOuterClass.RequestOptions getOptions()`

`.services.common.v1.RequestOptions options = 5;`

 * **Returns:** The options.

## `trinsic.services.common.v1.CommonOuterClass.RequestOptionsOrBuilder getOptionsOrBuilder()`

`.services.common.v1.RequestOptions options = 5;`

## `public static final class SearchRegistryRequest extends com.google.protobuf.GeneratedMessageV3 implements`

Protobuf type {@code services.trustregistry.v1.SearchRegistryRequest}

## `@java.lang.Override public java.lang.String getQuery()`

<pre> SELECT c from c where c.type == 'GovernanceFramework' </pre>

`string query = 1;`

 * **Returns:** The query.

## `@java.lang.Override public com.google.protobuf.ByteString getQueryBytes()`

<pre> SELECT c from c where c.type == 'GovernanceFramework' </pre>

`string query = 1;`

 * **Returns:** The bytes for query.

## `@java.lang.Override public java.lang.String getContinuationToken()`

`string continuation_token = 2;`

 * **Returns:** The continuationToken.

## `@java.lang.Override public com.google.protobuf.ByteString getContinuationTokenBytes()`

`string continuation_token = 2;`

 * **Returns:** The bytes for continuationToken.

## `@java.lang.Override public boolean hasOptions()`

`.services.common.v1.RequestOptions options = 5;`

 * **Returns:** Whether the options field is set.

## `@java.lang.Override public trinsic.services.common.v1.CommonOuterClass.RequestOptions getOptions()`

`.services.common.v1.RequestOptions options = 5;`

 * **Returns:** The options.

## `@java.lang.Override public trinsic.services.common.v1.CommonOuterClass.RequestOptionsOrBuilder getOptionsOrBuilder()`

`.services.common.v1.RequestOptions options = 5;`

## `public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder> implements`

Protobuf type {@code services.trustregistry.v1.SearchRegistryRequest}

## `public java.lang.String getQuery()`

<pre> SELECT c from c where c.type == 'GovernanceFramework' </pre>

`string query = 1;`

 * **Returns:** The query.

## `public com.google.protobuf.ByteString getQueryBytes()`

<pre> SELECT c from c where c.type == 'GovernanceFramework' </pre>

`string query = 1;`

 * **Returns:** The bytes for query.

## `public Builder setQuery( java.lang.String value)`

<pre> SELECT c from c where c.type == 'GovernanceFramework' </pre>

`string query = 1;`

 * **Parameters:** `value` — The query to set.
 * **Returns:** This builder for chaining.

## `public Builder clearQuery()`

<pre> SELECT c from c where c.type == 'GovernanceFramework' </pre>

`string query = 1;`

 * **Returns:** This builder for chaining.

## `public Builder setQueryBytes( com.google.protobuf.ByteString value)`

<pre> SELECT c from c where c.type == 'GovernanceFramework' </pre>

`string query = 1;`

 * **Parameters:** `value` — The bytes for query to set.
 * **Returns:** This builder for chaining.

## `public java.lang.String getContinuationToken()`

`string continuation_token = 2;`

 * **Returns:** The continuationToken.

## `public com.google.protobuf.ByteString getContinuationTokenBytes()`

`string continuation_token = 2;`

 * **Returns:** The bytes for continuationToken.

## `public Builder setContinuationToken( java.lang.String value)`

`string continuation_token = 2;`

 * **Parameters:** `value` — The continuationToken to set.
 * **Returns:** This builder for chaining.

## `public Builder clearContinuationToken()`

`string continuation_token = 2;`

 * **Returns:** This builder for chaining.

## `public Builder setContinuationTokenBytes( com.google.protobuf.ByteString value)`

`string continuation_token = 2;`

 * **Parameters:** `value` — The bytes for continuationToken to set.
 * **Returns:** This builder for chaining.

## `public boolean hasOptions()`

`.services.common.v1.RequestOptions options = 5;`

 * **Returns:** Whether the options field is set.

## `public trinsic.services.common.v1.CommonOuterClass.RequestOptions getOptions()`

`.services.common.v1.RequestOptions options = 5;`

 * **Returns:** The options.

## `public Builder setOptions(trinsic.services.common.v1.CommonOuterClass.RequestOptions value)`

`.services.common.v1.RequestOptions options = 5;`

## `public Builder setOptions( trinsic.services.common.v1.CommonOuterClass.RequestOptions.Builder builderForValue)`

`.services.common.v1.RequestOptions options = 5;`

## `public Builder mergeOptions(trinsic.services.common.v1.CommonOuterClass.RequestOptions value)`

`.services.common.v1.RequestOptions options = 5;`

## `public Builder clearOptions()`

`.services.common.v1.RequestOptions options = 5;`

## `public trinsic.services.common.v1.CommonOuterClass.RequestOptions.Builder getOptionsBuilder()`

`.services.common.v1.RequestOptions options = 5;`

## `public trinsic.services.common.v1.CommonOuterClass.RequestOptionsOrBuilder getOptionsOrBuilder()`

`.services.common.v1.RequestOptions options = 5;`

## `private com.google.protobuf.SingleFieldBuilderV3< trinsic.services.common.v1.CommonOuterClass.RequestOptions, trinsic.services.common.v1.CommonOuterClass.RequestOptions.Builder, trinsic.services.common.v1.CommonOuterClass.RequestOptionsOrBuilder> getOptionsFieldBuilder()`

`.services.common.v1.RequestOptions options = 5;`

## `java.lang.String getItemsJson()`

`string items_json = 1;`

 * **Returns:** The itemsJson.

## `com.google.protobuf.ByteString getItemsJsonBytes()`

`string items_json = 1;`

 * **Returns:** The bytes for itemsJson.

## `boolean getHasMore()`

`bool has_more = 2;`

 * **Returns:** The hasMore.

## `int getCount()`

`int32 count = 3;`

 * **Returns:** The count.

## `java.lang.String getContinuationToken()`

`string continuation_token = 4;`

 * **Returns:** The continuationToken.

## `com.google.protobuf.ByteString getContinuationTokenBytes()`

`string continuation_token = 4;`

 * **Returns:** The bytes for continuationToken.

## `public static final class SearchRegistryResponse extends com.google.protobuf.GeneratedMessageV3 implements`

Protobuf type {@code services.trustregistry.v1.SearchRegistryResponse}

## `@java.lang.Override public java.lang.String getItemsJson()`

`string items_json = 1;`

 * **Returns:** The itemsJson.

## `@java.lang.Override public com.google.protobuf.ByteString getItemsJsonBytes()`

`string items_json = 1;`

 * **Returns:** The bytes for itemsJson.

## `@java.lang.Override public boolean getHasMore()`

`bool has_more = 2;`

 * **Returns:** The hasMore.

## `@java.lang.Override public int getCount()`

`int32 count = 3;`

 * **Returns:** The count.

## `@java.lang.Override public java.lang.String getContinuationToken()`

`string continuation_token = 4;`

 * **Returns:** The continuationToken.

## `@java.lang.Override public com.google.protobuf.ByteString getContinuationTokenBytes()`

`string continuation_token = 4;`

 * **Returns:** The bytes for continuationToken.

## `public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder> implements`

Protobuf type {@code services.trustregistry.v1.SearchRegistryResponse}

## `public java.lang.String getItemsJson()`

`string items_json = 1;`

 * **Returns:** The itemsJson.

## `public com.google.protobuf.ByteString getItemsJsonBytes()`

`string items_json = 1;`

 * **Returns:** The bytes for itemsJson.

## `public Builder setItemsJson( java.lang.String value)`

`string items_json = 1;`

 * **Parameters:** `value` — The itemsJson to set.
 * **Returns:** This builder for chaining.

## `public Builder clearItemsJson()`

`string items_json = 1;`

 * **Returns:** This builder for chaining.

## `public Builder setItemsJsonBytes( com.google.protobuf.ByteString value)`

`string items_json = 1;`

 * **Parameters:** `value` — The bytes for itemsJson to set.
 * **Returns:** This builder for chaining.

## `@java.lang.Override public boolean getHasMore()`

`bool has_more = 2;`

 * **Returns:** The hasMore.

## `public Builder setHasMore(boolean value)`

`bool has_more = 2;`

 * **Parameters:** `value` — The hasMore to set.
 * **Returns:** This builder for chaining.

## `public Builder clearHasMore()`

`bool has_more = 2;`

 * **Returns:** This builder for chaining.

## `@java.lang.Override public int getCount()`

`int32 count = 3;`

 * **Returns:** The count.

## `public Builder setCount(int value)`

`int32 count = 3;`

 * **Parameters:** `value` — The count to set.
 * **Returns:** This builder for chaining.

## `public Builder clearCount()`

`int32 count = 3;`

 * **Returns:** This builder for chaining.

## `public java.lang.String getContinuationToken()`

`string continuation_token = 4;`

 * **Returns:** The continuationToken.

## `public com.google.protobuf.ByteString getContinuationTokenBytes()`

`string continuation_token = 4;`

 * **Returns:** The bytes for continuationToken.

## `public Builder setContinuationToken( java.lang.String value)`

`string continuation_token = 4;`

 * **Parameters:** `value` — The continuationToken to set.
 * **Returns:** This builder for chaining.

## `public Builder clearContinuationToken()`

`string continuation_token = 4;`

 * **Returns:** This builder for chaining.

## `public Builder setContinuationTokenBytes( com.google.protobuf.ByteString value)`

`string continuation_token = 4;`

 * **Parameters:** `value` — The bytes for continuationToken to set.
 * **Returns:** This builder for chaining.

## `java.lang.String getGovernanceFrameworkUri()`

`string governance_framework_uri = 1;`

 * **Returns:** The governanceFrameworkUri.

## `com.google.protobuf.ByteString getGovernanceFrameworkUriBytes()`

`string governance_framework_uri = 1;`

 * **Returns:** The bytes for governanceFrameworkUri.

## `java.lang.String getTrustRegistryUri()`

`string trust_registry_uri = 2;`

 * **Returns:** The trustRegistryUri.

## `com.google.protobuf.ByteString getTrustRegistryUriBytes()`

`string trust_registry_uri = 2;`

 * **Returns:** The bytes for trustRegistryUri.

## `java.lang.String getDescription()`

`string description = 3;`

 * **Returns:** The description.

## `com.google.protobuf.ByteString getDescriptionBytes()`

`string description = 3;`

 * **Returns:** The bytes for description.

## `public static final class GovernanceFramework extends com.google.protobuf.GeneratedMessageV3 implements`

Protobuf type {@code services.trustregistry.v1.GovernanceFramework}

## `@java.lang.Override public java.lang.String getGovernanceFrameworkUri()`

`string governance_framework_uri = 1;`

 * **Returns:** The governanceFrameworkUri.

## `@java.lang.Override public com.google.protobuf.ByteString getGovernanceFrameworkUriBytes()`

`string governance_framework_uri = 1;`

 * **Returns:** The bytes for governanceFrameworkUri.

## `@java.lang.Override public java.lang.String getTrustRegistryUri()`

`string trust_registry_uri = 2;`

 * **Returns:** The trustRegistryUri.

## `@java.lang.Override public com.google.protobuf.ByteString getTrustRegistryUriBytes()`

`string trust_registry_uri = 2;`

 * **Returns:** The bytes for trustRegistryUri.

## `@java.lang.Override public java.lang.String getDescription()`

`string description = 3;`

 * **Returns:** The description.

## `@java.lang.Override public com.google.protobuf.ByteString getDescriptionBytes()`

`string description = 3;`

 * **Returns:** The bytes for description.

## `public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder> implements`

Protobuf type {@code services.trustregistry.v1.GovernanceFramework}

## `public java.lang.String getGovernanceFrameworkUri()`

`string governance_framework_uri = 1;`

 * **Returns:** The governanceFrameworkUri.

## `public com.google.protobuf.ByteString getGovernanceFrameworkUriBytes()`

`string governance_framework_uri = 1;`

 * **Returns:** The bytes for governanceFrameworkUri.

## `public Builder setGovernanceFrameworkUri( java.lang.String value)`

`string governance_framework_uri = 1;`

 * **Parameters:** `value` — The governanceFrameworkUri to set.
 * **Returns:** This builder for chaining.

## `public Builder clearGovernanceFrameworkUri()`

`string governance_framework_uri = 1;`

 * **Returns:** This builder for chaining.

## `public Builder setGovernanceFrameworkUriBytes( com.google.protobuf.ByteString value)`

`string governance_framework_uri = 1;`

 * **Parameters:** `value` — The bytes for governanceFrameworkUri to set.
 * **Returns:** This builder for chaining.

## `public java.lang.String getTrustRegistryUri()`

`string trust_registry_uri = 2;`

 * **Returns:** The trustRegistryUri.

## `public com.google.protobuf.ByteString getTrustRegistryUriBytes()`

`string trust_registry_uri = 2;`

 * **Returns:** The bytes for trustRegistryUri.

## `public Builder setTrustRegistryUri( java.lang.String value)`

`string trust_registry_uri = 2;`

 * **Parameters:** `value` — The trustRegistryUri to set.
 * **Returns:** This builder for chaining.

## `public Builder clearTrustRegistryUri()`

`string trust_registry_uri = 2;`

 * **Returns:** This builder for chaining.

## `public Builder setTrustRegistryUriBytes( com.google.protobuf.ByteString value)`

`string trust_registry_uri = 2;`

 * **Parameters:** `value` — The bytes for trustRegistryUri to set.
 * **Returns:** This builder for chaining.

## `public java.lang.String getDescription()`

`string description = 3;`

 * **Returns:** The description.

## `public com.google.protobuf.ByteString getDescriptionBytes()`

`string description = 3;`

 * **Returns:** The bytes for description.

## `public Builder setDescription( java.lang.String value)`

`string description = 3;`

 * **Parameters:** `value` — The description to set.
 * **Returns:** This builder for chaining.

## `public Builder clearDescription()`

`string description = 3;`

 * **Returns:** This builder for chaining.

## `public Builder setDescriptionBytes( com.google.protobuf.ByteString value)`

`string description = 3;`

 * **Parameters:** `value` — The bytes for description to set.
 * **Returns:** This builder for chaining.

## `boolean hasDidUri()`

`string did_uri = 1;`

 * **Returns:** Whether the didUri field is set.

## `java.lang.String getDidUri()`

`string did_uri = 1;`

 * **Returns:** The didUri.

## `com.google.protobuf.ByteString getDidUriBytes()`

`string did_uri = 1;`

 * **Returns:** The bytes for didUri.

## `boolean hasX509Cert()`

`string x509_cert = 2;`

 * **Returns:** Whether the x509Cert field is set.

## `java.lang.String getX509Cert()`

`string x509_cert = 2;`

 * **Returns:** The x509Cert.

## `com.google.protobuf.ByteString getX509CertBytes()`

`string x509_cert = 2;`

 * **Returns:** The bytes for x509Cert.

## `java.lang.String getCredentialTypeUri()`

`string credential_type_uri = 10;`

 * **Returns:** The credentialTypeUri.

## `com.google.protobuf.ByteString getCredentialTypeUriBytes()`

`string credential_type_uri = 10;`

 * **Returns:** The bytes for credentialTypeUri.

## `long getValidFromUtc()`

`uint64 valid_from_utc = 11;`

 * **Returns:** The validFromUtc.

## `long getValidUntilUtc()`

`uint64 valid_until_utc = 12;`

 * **Returns:** The validUntilUtc.

## `java.lang.String getGovernanceFrameworkUri()`

`string governance_framework_uri = 20;`

 * **Returns:** The governanceFrameworkUri.

## `com.google.protobuf.ByteString getGovernanceFrameworkUriBytes()`

`string governance_framework_uri = 20;`

 * **Returns:** The bytes for governanceFrameworkUri.

## `public static final class RegisterIssuerRequest extends com.google.protobuf.GeneratedMessageV3 implements`

Protobuf type {@code services.trustregistry.v1.RegisterIssuerRequest}

## `@java.lang.Deprecated public static AuthorityCase valueOf(int value)`

 * **Parameters:** `value` — The number of the enum to look for.
 * **Returns:** The enum associated with the given number.
 * **Deprecated**

## `public boolean hasDidUri()`

`string did_uri = 1;`

 * **Returns:** Whether the didUri field is set.

## `public java.lang.String getDidUri()`

`string did_uri = 1;`

 * **Returns:** The didUri.

## `public com.google.protobuf.ByteString getDidUriBytes()`

`string did_uri = 1;`

 * **Returns:** The bytes for didUri.

## `public boolean hasX509Cert()`

`string x509_cert = 2;`

 * **Returns:** Whether the x509Cert field is set.

## `public java.lang.String getX509Cert()`

`string x509_cert = 2;`

 * **Returns:** The x509Cert.

## `public com.google.protobuf.ByteString getX509CertBytes()`

`string x509_cert = 2;`

 * **Returns:** The bytes for x509Cert.

## `@java.lang.Override public java.lang.String getCredentialTypeUri()`

`string credential_type_uri = 10;`

 * **Returns:** The credentialTypeUri.

## `@java.lang.Override public com.google.protobuf.ByteString getCredentialTypeUriBytes()`

`string credential_type_uri = 10;`

 * **Returns:** The bytes for credentialTypeUri.

## `@java.lang.Override public long getValidFromUtc()`

`uint64 valid_from_utc = 11;`

 * **Returns:** The validFromUtc.

## `@java.lang.Override public long getValidUntilUtc()`

`uint64 valid_until_utc = 12;`

 * **Returns:** The validUntilUtc.

## `@java.lang.Override public java.lang.String getGovernanceFrameworkUri()`

`string governance_framework_uri = 20;`

 * **Returns:** The governanceFrameworkUri.

## `@java.lang.Override public com.google.protobuf.ByteString getGovernanceFrameworkUriBytes()`

`string governance_framework_uri = 20;`

 * **Returns:** The bytes for governanceFrameworkUri.

## `public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder> implements`

Protobuf type {@code services.trustregistry.v1.RegisterIssuerRequest}

## `@java.lang.Override public boolean hasDidUri()`

`string did_uri = 1;`

 * **Returns:** Whether the didUri field is set.

## `@java.lang.Override public java.lang.String getDidUri()`

`string did_uri = 1;`

 * **Returns:** The didUri.

## `@java.lang.Override public com.google.protobuf.ByteString getDidUriBytes()`

`string did_uri = 1;`

 * **Returns:** The bytes for didUri.

## `public Builder setDidUri( java.lang.String value)`

`string did_uri = 1;`

 * **Parameters:** `value` — The didUri to set.
 * **Returns:** This builder for chaining.

## `public Builder clearDidUri()`

`string did_uri = 1;`

 * **Returns:** This builder for chaining.

## `public Builder setDidUriBytes( com.google.protobuf.ByteString value)`

`string did_uri = 1;`

 * **Parameters:** `value` — The bytes for didUri to set.
 * **Returns:** This builder for chaining.

## `@java.lang.Override public boolean hasX509Cert()`

`string x509_cert = 2;`

 * **Returns:** Whether the x509Cert field is set.

## `@java.lang.Override public java.lang.String getX509Cert()`

`string x509_cert = 2;`

 * **Returns:** The x509Cert.

## `@java.lang.Override public com.google.protobuf.ByteString getX509CertBytes()`

`string x509_cert = 2;`

 * **Returns:** The bytes for x509Cert.

## `public Builder setX509Cert( java.lang.String value)`

`string x509_cert = 2;`

 * **Parameters:** `value` — The x509Cert to set.
 * **Returns:** This builder for chaining.

## `public Builder clearX509Cert()`

`string x509_cert = 2;`

 * **Returns:** This builder for chaining.

## `public Builder setX509CertBytes( com.google.protobuf.ByteString value)`

`string x509_cert = 2;`

 * **Parameters:** `value` — The bytes for x509Cert to set.
 * **Returns:** This builder for chaining.

## `public java.lang.String getCredentialTypeUri()`

`string credential_type_uri = 10;`

 * **Returns:** The credentialTypeUri.

## `public com.google.protobuf.ByteString getCredentialTypeUriBytes()`

`string credential_type_uri = 10;`

 * **Returns:** The bytes for credentialTypeUri.

## `public Builder setCredentialTypeUri( java.lang.String value)`

`string credential_type_uri = 10;`

 * **Parameters:** `value` — The credentialTypeUri to set.
 * **Returns:** This builder for chaining.

## `public Builder clearCredentialTypeUri()`

`string credential_type_uri = 10;`

 * **Returns:** This builder for chaining.

## `public Builder setCredentialTypeUriBytes( com.google.protobuf.ByteString value)`

`string credential_type_uri = 10;`

 * **Parameters:** `value` — The bytes for credentialTypeUri to set.
 * **Returns:** This builder for chaining.

## `@java.lang.Override public long getValidFromUtc()`

`uint64 valid_from_utc = 11;`

 * **Returns:** The validFromUtc.

## `public Builder setValidFromUtc(long value)`

`uint64 valid_from_utc = 11;`

 * **Parameters:** `value` — The validFromUtc to set.
 * **Returns:** This builder for chaining.

## `public Builder clearValidFromUtc()`

`uint64 valid_from_utc = 11;`

 * **Returns:** This builder for chaining.

## `@java.lang.Override public long getValidUntilUtc()`

`uint64 valid_until_utc = 12;`

 * **Returns:** The validUntilUtc.

## `public Builder setValidUntilUtc(long value)`

`uint64 valid_until_utc = 12;`

 * **Parameters:** `value` — The validUntilUtc to set.
 * **Returns:** This builder for chaining.

## `public Builder clearValidUntilUtc()`

`uint64 valid_until_utc = 12;`

 * **Returns:** This builder for chaining.

## `public java.lang.String getGovernanceFrameworkUri()`

`string governance_framework_uri = 20;`

 * **Returns:** The governanceFrameworkUri.

## `public com.google.protobuf.ByteString getGovernanceFrameworkUriBytes()`

`string governance_framework_uri = 20;`

 * **Returns:** The bytes for governanceFrameworkUri.

## `public Builder setGovernanceFrameworkUri( java.lang.String value)`

`string governance_framework_uri = 20;`

 * **Parameters:** `value` — The governanceFrameworkUri to set.
 * **Returns:** This builder for chaining.

## `public Builder clearGovernanceFrameworkUri()`

`string governance_framework_uri = 20;`

 * **Returns:** This builder for chaining.

## `public Builder setGovernanceFrameworkUriBytes( com.google.protobuf.ByteString value)`

`string governance_framework_uri = 20;`

 * **Parameters:** `value` — The bytes for governanceFrameworkUri to set.
 * **Returns:** This builder for chaining.

## `int getStatusValue()`

`.services.common.v1.ResponseStatus status = 1;`

 * **Returns:** The enum numeric value on the wire for status.

## `trinsic.services.common.v1.CommonOuterClass.ResponseStatus getStatus()`

`.services.common.v1.ResponseStatus status = 1;`

 * **Returns:** The status.

## `public static final class RegisterIssuerResponse extends com.google.protobuf.GeneratedMessageV3 implements`

Protobuf type {@code services.trustregistry.v1.RegisterIssuerResponse}

## `@java.lang.Override public int getStatusValue()`

`.services.common.v1.ResponseStatus status = 1;`

 * **Returns:** The enum numeric value on the wire for status.

## `@java.lang.Override public trinsic.services.common.v1.CommonOuterClass.ResponseStatus getStatus()`

`.services.common.v1.ResponseStatus status = 1;`

 * **Returns:** The status.

## `public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder> implements`

Protobuf type {@code services.trustregistry.v1.RegisterIssuerResponse}

## `@java.lang.Override public int getStatusValue()`

`.services.common.v1.ResponseStatus status = 1;`

 * **Returns:** The enum numeric value on the wire for status.

## `public Builder setStatusValue(int value)`

`.services.common.v1.ResponseStatus status = 1;`

 * **Parameters:** `value` — The enum numeric value on the wire for status to set.
 * **Returns:** This builder for chaining.

## `@java.lang.Override public trinsic.services.common.v1.CommonOuterClass.ResponseStatus getStatus()`

`.services.common.v1.ResponseStatus status = 1;`

 * **Returns:** The status.

## `public Builder setStatus(trinsic.services.common.v1.CommonOuterClass.ResponseStatus value)`

`.services.common.v1.ResponseStatus status = 1;`

 * **Parameters:** `value` — The status to set.
 * **Returns:** This builder for chaining.

## `public Builder clearStatus()`

`.services.common.v1.ResponseStatus status = 1;`

 * **Returns:** This builder for chaining.

## `boolean hasDidUri()`

`string did_uri = 1;`

 * **Returns:** Whether the didUri field is set.

## `java.lang.String getDidUri()`

`string did_uri = 1;`

 * **Returns:** The didUri.

## `com.google.protobuf.ByteString getDidUriBytes()`

`string did_uri = 1;`

 * **Returns:** The bytes for didUri.

## `boolean hasX509Cert()`

`string x509_cert = 2;`

 * **Returns:** Whether the x509Cert field is set.

## `java.lang.String getX509Cert()`

`string x509_cert = 2;`

 * **Returns:** The x509Cert.

## `com.google.protobuf.ByteString getX509CertBytes()`

`string x509_cert = 2;`

 * **Returns:** The bytes for x509Cert.

## `java.lang.String getPresentationTypeUri()`

`string presentation_type_uri = 10;`

 * **Returns:** The presentationTypeUri.

## `com.google.protobuf.ByteString getPresentationTypeUriBytes()`

`string presentation_type_uri = 10;`

 * **Returns:** The bytes for presentationTypeUri.

## `long getValidFromUtc()`

`uint64 valid_from_utc = 11;`

 * **Returns:** The validFromUtc.

## `long getValidUntilUtc()`

`uint64 valid_until_utc = 12;`

 * **Returns:** The validUntilUtc.

## `java.lang.String getGovernanceFrameworkUri()`

`string governance_framework_uri = 20;`

 * **Returns:** The governanceFrameworkUri.

## `com.google.protobuf.ByteString getGovernanceFrameworkUriBytes()`

`string governance_framework_uri = 20;`

 * **Returns:** The bytes for governanceFrameworkUri.

## `public static final class RegisterVerifierRequest extends com.google.protobuf.GeneratedMessageV3 implements`

Protobuf type {@code services.trustregistry.v1.RegisterVerifierRequest}

## `@java.lang.Deprecated public static AuthorityCase valueOf(int value)`

 * **Parameters:** `value` — The number of the enum to look for.
 * **Returns:** The enum associated with the given number.
 * **Deprecated**

## `public boolean hasDidUri()`

`string did_uri = 1;`

 * **Returns:** Whether the didUri field is set.

## `public java.lang.String getDidUri()`

`string did_uri = 1;`

 * **Returns:** The didUri.

## `public com.google.protobuf.ByteString getDidUriBytes()`

`string did_uri = 1;`

 * **Returns:** The bytes for didUri.

## `public boolean hasX509Cert()`

`string x509_cert = 2;`

 * **Returns:** Whether the x509Cert field is set.

## `public java.lang.String getX509Cert()`

`string x509_cert = 2;`

 * **Returns:** The x509Cert.

## `public com.google.protobuf.ByteString getX509CertBytes()`

`string x509_cert = 2;`

 * **Returns:** The bytes for x509Cert.

## `@java.lang.Override public java.lang.String getPresentationTypeUri()`

`string presentation_type_uri = 10;`

 * **Returns:** The presentationTypeUri.

## `@java.lang.Override public com.google.protobuf.ByteString getPresentationTypeUriBytes()`

`string presentation_type_uri = 10;`

 * **Returns:** The bytes for presentationTypeUri.

## `@java.lang.Override public long getValidFromUtc()`

`uint64 valid_from_utc = 11;`

 * **Returns:** The validFromUtc.

## `@java.lang.Override public long getValidUntilUtc()`

`uint64 valid_until_utc = 12;`

 * **Returns:** The validUntilUtc.

## `@java.lang.Override public java.lang.String getGovernanceFrameworkUri()`

`string governance_framework_uri = 20;`

 * **Returns:** The governanceFrameworkUri.

## `@java.lang.Override public com.google.protobuf.ByteString getGovernanceFrameworkUriBytes()`

`string governance_framework_uri = 20;`

 * **Returns:** The bytes for governanceFrameworkUri.

## `public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder> implements`

Protobuf type {@code services.trustregistry.v1.RegisterVerifierRequest}

## `@java.lang.Override public boolean hasDidUri()`

`string did_uri = 1;`

 * **Returns:** Whether the didUri field is set.

## `@java.lang.Override public java.lang.String getDidUri()`

`string did_uri = 1;`

 * **Returns:** The didUri.

## `@java.lang.Override public com.google.protobuf.ByteString getDidUriBytes()`

`string did_uri = 1;`

 * **Returns:** The bytes for didUri.

## `public Builder setDidUri( java.lang.String value)`

`string did_uri = 1;`

 * **Parameters:** `value` — The didUri to set.
 * **Returns:** This builder for chaining.

## `public Builder clearDidUri()`

`string did_uri = 1;`

 * **Returns:** This builder for chaining.

## `public Builder setDidUriBytes( com.google.protobuf.ByteString value)`

`string did_uri = 1;`

 * **Parameters:** `value` — The bytes for didUri to set.
 * **Returns:** This builder for chaining.

## `@java.lang.Override public boolean hasX509Cert()`

`string x509_cert = 2;`

 * **Returns:** Whether the x509Cert field is set.

## `@java.lang.Override public java.lang.String getX509Cert()`

`string x509_cert = 2;`

 * **Returns:** The x509Cert.

## `@java.lang.Override public com.google.protobuf.ByteString getX509CertBytes()`

`string x509_cert = 2;`

 * **Returns:** The bytes for x509Cert.

## `public Builder setX509Cert( java.lang.String value)`

`string x509_cert = 2;`

 * **Parameters:** `value` — The x509Cert to set.
 * **Returns:** This builder for chaining.

## `public Builder clearX509Cert()`

`string x509_cert = 2;`

 * **Returns:** This builder for chaining.

## `public Builder setX509CertBytes( com.google.protobuf.ByteString value)`

`string x509_cert = 2;`

 * **Parameters:** `value` — The bytes for x509Cert to set.
 * **Returns:** This builder for chaining.

## `public java.lang.String getPresentationTypeUri()`

`string presentation_type_uri = 10;`

 * **Returns:** The presentationTypeUri.

## `public com.google.protobuf.ByteString getPresentationTypeUriBytes()`

`string presentation_type_uri = 10;`

 * **Returns:** The bytes for presentationTypeUri.

## `public Builder setPresentationTypeUri( java.lang.String value)`

`string presentation_type_uri = 10;`

 * **Parameters:** `value` — The presentationTypeUri to set.
 * **Returns:** This builder for chaining.

## `public Builder clearPresentationTypeUri()`

`string presentation_type_uri = 10;`

 * **Returns:** This builder for chaining.

## `public Builder setPresentationTypeUriBytes( com.google.protobuf.ByteString value)`

`string presentation_type_uri = 10;`

 * **Parameters:** `value` — The bytes for presentationTypeUri to set.
 * **Returns:** This builder for chaining.

## `@java.lang.Override public long getValidFromUtc()`

`uint64 valid_from_utc = 11;`

 * **Returns:** The validFromUtc.

## `public Builder setValidFromUtc(long value)`

`uint64 valid_from_utc = 11;`

 * **Parameters:** `value` — The validFromUtc to set.
 * **Returns:** This builder for chaining.

## `public Builder clearValidFromUtc()`

`uint64 valid_from_utc = 11;`

 * **Returns:** This builder for chaining.

## `@java.lang.Override public long getValidUntilUtc()`

`uint64 valid_until_utc = 12;`

 * **Returns:** The validUntilUtc.

## `public Builder setValidUntilUtc(long value)`

`uint64 valid_until_utc = 12;`

 * **Parameters:** `value` — The validUntilUtc to set.
 * **Returns:** This builder for chaining.

## `public Builder clearValidUntilUtc()`

`uint64 valid_until_utc = 12;`

 * **Returns:** This builder for chaining.

## `public java.lang.String getGovernanceFrameworkUri()`

`string governance_framework_uri = 20;`

 * **Returns:** The governanceFrameworkUri.

## `public com.google.protobuf.ByteString getGovernanceFrameworkUriBytes()`

`string governance_framework_uri = 20;`

 * **Returns:** The bytes for governanceFrameworkUri.

## `public Builder setGovernanceFrameworkUri( java.lang.String value)`

`string governance_framework_uri = 20;`

 * **Parameters:** `value` — The governanceFrameworkUri to set.
 * **Returns:** This builder for chaining.

## `public Builder clearGovernanceFrameworkUri()`

`string governance_framework_uri = 20;`

 * **Returns:** This builder for chaining.

## `public Builder setGovernanceFrameworkUriBytes( com.google.protobuf.ByteString value)`

`string governance_framework_uri = 20;`

 * **Parameters:** `value` — The bytes for governanceFrameworkUri to set.
 * **Returns:** This builder for chaining.

## `int getStatusValue()`

`.services.common.v1.ResponseStatus status = 1;`

 * **Returns:** The enum numeric value on the wire for status.

## `trinsic.services.common.v1.CommonOuterClass.ResponseStatus getStatus()`

`.services.common.v1.ResponseStatus status = 1;`

 * **Returns:** The status.

## `public static final class RegisterVerifierResponse extends com.google.protobuf.GeneratedMessageV3 implements`

Protobuf type {@code services.trustregistry.v1.RegisterVerifierResponse}

## `@java.lang.Override public int getStatusValue()`

`.services.common.v1.ResponseStatus status = 1;`

 * **Returns:** The enum numeric value on the wire for status.

## `@java.lang.Override public trinsic.services.common.v1.CommonOuterClass.ResponseStatus getStatus()`

`.services.common.v1.ResponseStatus status = 1;`

 * **Returns:** The status.

## `public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder> implements`

Protobuf type {@code services.trustregistry.v1.RegisterVerifierResponse}

## `@java.lang.Override public int getStatusValue()`

`.services.common.v1.ResponseStatus status = 1;`

 * **Returns:** The enum numeric value on the wire for status.

## `public Builder setStatusValue(int value)`

`.services.common.v1.ResponseStatus status = 1;`

 * **Parameters:** `value` — The enum numeric value on the wire for status to set.
 * **Returns:** This builder for chaining.

## `@java.lang.Override public trinsic.services.common.v1.CommonOuterClass.ResponseStatus getStatus()`

`.services.common.v1.ResponseStatus status = 1;`

 * **Returns:** The status.

## `public Builder setStatus(trinsic.services.common.v1.CommonOuterClass.ResponseStatus value)`

`.services.common.v1.ResponseStatus status = 1;`

 * **Parameters:** `value` — The status to set.
 * **Returns:** This builder for chaining.

## `public Builder clearStatus()`

`.services.common.v1.ResponseStatus status = 1;`

 * **Returns:** This builder for chaining.

## `boolean hasDidUri()`

`string did_uri = 1;`

 * **Returns:** Whether the didUri field is set.

## `java.lang.String getDidUri()`

`string did_uri = 1;`

 * **Returns:** The didUri.

## `com.google.protobuf.ByteString getDidUriBytes()`

`string did_uri = 1;`

 * **Returns:** The bytes for didUri.

## `boolean hasX509Cert()`

`string x509_cert = 2;`

 * **Returns:** Whether the x509Cert field is set.

## `java.lang.String getX509Cert()`

`string x509_cert = 2;`

 * **Returns:** The x509Cert.

## `com.google.protobuf.ByteString getX509CertBytes()`

`string x509_cert = 2;`

 * **Returns:** The bytes for x509Cert.

## `java.lang.String getCredentialTypeUri()`

`string credential_type_uri = 10;`

 * **Returns:** The credentialTypeUri.

## `com.google.protobuf.ByteString getCredentialTypeUriBytes()`

`string credential_type_uri = 10;`

 * **Returns:** The bytes for credentialTypeUri.

## `java.lang.String getGovernanceFrameworkUri()`

`string governance_framework_uri = 20;`

 * **Returns:** The governanceFrameworkUri.

## `com.google.protobuf.ByteString getGovernanceFrameworkUriBytes()`

`string governance_framework_uri = 20;`

 * **Returns:** The bytes for governanceFrameworkUri.

## `public static final class UnregisterIssuerRequest extends com.google.protobuf.GeneratedMessageV3 implements`

Protobuf type {@code services.trustregistry.v1.UnregisterIssuerRequest}

## `@java.lang.Deprecated public static AuthorityCase valueOf(int value)`

 * **Parameters:** `value` — The number of the enum to look for.
 * **Returns:** The enum associated with the given number.
 * **Deprecated**

## `public boolean hasDidUri()`

`string did_uri = 1;`

 * **Returns:** Whether the didUri field is set.

## `public java.lang.String getDidUri()`

`string did_uri = 1;`

 * **Returns:** The didUri.

## `public com.google.protobuf.ByteString getDidUriBytes()`

`string did_uri = 1;`

 * **Returns:** The bytes for didUri.

## `public boolean hasX509Cert()`

`string x509_cert = 2;`

 * **Returns:** Whether the x509Cert field is set.

## `public java.lang.String getX509Cert()`

`string x509_cert = 2;`

 * **Returns:** The x509Cert.

## `public com.google.protobuf.ByteString getX509CertBytes()`

`string x509_cert = 2;`

 * **Returns:** The bytes for x509Cert.

## `@java.lang.Override public java.lang.String getCredentialTypeUri()`

`string credential_type_uri = 10;`

 * **Returns:** The credentialTypeUri.

## `@java.lang.Override public com.google.protobuf.ByteString getCredentialTypeUriBytes()`

`string credential_type_uri = 10;`

 * **Returns:** The bytes for credentialTypeUri.

## `@java.lang.Override public java.lang.String getGovernanceFrameworkUri()`

`string governance_framework_uri = 20;`

 * **Returns:** The governanceFrameworkUri.

## `@java.lang.Override public com.google.protobuf.ByteString getGovernanceFrameworkUriBytes()`

`string governance_framework_uri = 20;`

 * **Returns:** The bytes for governanceFrameworkUri.

## `public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder> implements`

Protobuf type {@code services.trustregistry.v1.UnregisterIssuerRequest}

## `@java.lang.Override public boolean hasDidUri()`

`string did_uri = 1;`

 * **Returns:** Whether the didUri field is set.

## `@java.lang.Override public java.lang.String getDidUri()`

`string did_uri = 1;`

 * **Returns:** The didUri.

## `@java.lang.Override public com.google.protobuf.ByteString getDidUriBytes()`

`string did_uri = 1;`

 * **Returns:** The bytes for didUri.

## `public Builder setDidUri( java.lang.String value)`

`string did_uri = 1;`

 * **Parameters:** `value` — The didUri to set.
 * **Returns:** This builder for chaining.

## `public Builder clearDidUri()`

`string did_uri = 1;`

 * **Returns:** This builder for chaining.

## `public Builder setDidUriBytes( com.google.protobuf.ByteString value)`

`string did_uri = 1;`

 * **Parameters:** `value` — The bytes for didUri to set.
 * **Returns:** This builder for chaining.

## `@java.lang.Override public boolean hasX509Cert()`

`string x509_cert = 2;`

 * **Returns:** Whether the x509Cert field is set.

## `@java.lang.Override public java.lang.String getX509Cert()`

`string x509_cert = 2;`

 * **Returns:** The x509Cert.

## `@java.lang.Override public com.google.protobuf.ByteString getX509CertBytes()`

`string x509_cert = 2;`

 * **Returns:** The bytes for x509Cert.

## `public Builder setX509Cert( java.lang.String value)`

`string x509_cert = 2;`

 * **Parameters:** `value` — The x509Cert to set.
 * **Returns:** This builder for chaining.

## `public Builder clearX509Cert()`

`string x509_cert = 2;`

 * **Returns:** This builder for chaining.

## `public Builder setX509CertBytes( com.google.protobuf.ByteString value)`

`string x509_cert = 2;`

 * **Parameters:** `value` — The bytes for x509Cert to set.
 * **Returns:** This builder for chaining.

## `public java.lang.String getCredentialTypeUri()`

`string credential_type_uri = 10;`

 * **Returns:** The credentialTypeUri.

## `public com.google.protobuf.ByteString getCredentialTypeUriBytes()`

`string credential_type_uri = 10;`

 * **Returns:** The bytes for credentialTypeUri.

## `public Builder setCredentialTypeUri( java.lang.String value)`

`string credential_type_uri = 10;`

 * **Parameters:** `value` — The credentialTypeUri to set.
 * **Returns:** This builder for chaining.

## `public Builder clearCredentialTypeUri()`

`string credential_type_uri = 10;`

 * **Returns:** This builder for chaining.

## `public Builder setCredentialTypeUriBytes( com.google.protobuf.ByteString value)`

`string credential_type_uri = 10;`

 * **Parameters:** `value` — The bytes for credentialTypeUri to set.
 * **Returns:** This builder for chaining.

## `public java.lang.String getGovernanceFrameworkUri()`

`string governance_framework_uri = 20;`

 * **Returns:** The governanceFrameworkUri.

## `public com.google.protobuf.ByteString getGovernanceFrameworkUriBytes()`

`string governance_framework_uri = 20;`

 * **Returns:** The bytes for governanceFrameworkUri.

## `public Builder setGovernanceFrameworkUri( java.lang.String value)`

`string governance_framework_uri = 20;`

 * **Parameters:** `value` — The governanceFrameworkUri to set.
 * **Returns:** This builder for chaining.

## `public Builder clearGovernanceFrameworkUri()`

`string governance_framework_uri = 20;`

 * **Returns:** This builder for chaining.

## `public Builder setGovernanceFrameworkUriBytes( com.google.protobuf.ByteString value)`

`string governance_framework_uri = 20;`

 * **Parameters:** `value` — The bytes for governanceFrameworkUri to set.
 * **Returns:** This builder for chaining.

## `int getStatusValue()`

`.services.common.v1.ResponseStatus status = 1;`

 * **Returns:** The enum numeric value on the wire for status.

## `trinsic.services.common.v1.CommonOuterClass.ResponseStatus getStatus()`

`.services.common.v1.ResponseStatus status = 1;`

 * **Returns:** The status.

## `public static final class UnregisterIssuerResponse extends com.google.protobuf.GeneratedMessageV3 implements`

Protobuf type {@code services.trustregistry.v1.UnregisterIssuerResponse}

## `@java.lang.Override public int getStatusValue()`

`.services.common.v1.ResponseStatus status = 1;`

 * **Returns:** The enum numeric value on the wire for status.

## `@java.lang.Override public trinsic.services.common.v1.CommonOuterClass.ResponseStatus getStatus()`

`.services.common.v1.ResponseStatus status = 1;`

 * **Returns:** The status.

## `public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder> implements`

Protobuf type {@code services.trustregistry.v1.UnregisterIssuerResponse}

## `@java.lang.Override public int getStatusValue()`

`.services.common.v1.ResponseStatus status = 1;`

 * **Returns:** The enum numeric value on the wire for status.

## `public Builder setStatusValue(int value)`

`.services.common.v1.ResponseStatus status = 1;`

 * **Parameters:** `value` — The enum numeric value on the wire for status to set.
 * **Returns:** This builder for chaining.

## `@java.lang.Override public trinsic.services.common.v1.CommonOuterClass.ResponseStatus getStatus()`

`.services.common.v1.ResponseStatus status = 1;`

 * **Returns:** The status.

## `public Builder setStatus(trinsic.services.common.v1.CommonOuterClass.ResponseStatus value)`

`.services.common.v1.ResponseStatus status = 1;`

 * **Parameters:** `value` — The status to set.
 * **Returns:** This builder for chaining.

## `public Builder clearStatus()`

`.services.common.v1.ResponseStatus status = 1;`

 * **Returns:** This builder for chaining.

## `boolean hasDidUri()`

`string did_uri = 1;`

 * **Returns:** Whether the didUri field is set.

## `java.lang.String getDidUri()`

`string did_uri = 1;`

 * **Returns:** The didUri.

## `com.google.protobuf.ByteString getDidUriBytes()`

`string did_uri = 1;`

 * **Returns:** The bytes for didUri.

## `boolean hasX509Cert()`

`string x509_cert = 2;`

 * **Returns:** Whether the x509Cert field is set.

## `java.lang.String getX509Cert()`

`string x509_cert = 2;`

 * **Returns:** The x509Cert.

## `com.google.protobuf.ByteString getX509CertBytes()`

`string x509_cert = 2;`

 * **Returns:** The bytes for x509Cert.

## `java.lang.String getPresentationTypeUri()`

`string presentation_type_uri = 10;`

 * **Returns:** The presentationTypeUri.

## `com.google.protobuf.ByteString getPresentationTypeUriBytes()`

`string presentation_type_uri = 10;`

 * **Returns:** The bytes for presentationTypeUri.

## `java.lang.String getGovernanceFrameworkUri()`

`string governance_framework_uri = 20;`

 * **Returns:** The governanceFrameworkUri.

## `com.google.protobuf.ByteString getGovernanceFrameworkUriBytes()`

`string governance_framework_uri = 20;`

 * **Returns:** The bytes for governanceFrameworkUri.

## `public static final class UnregisterVerifierRequest extends com.google.protobuf.GeneratedMessageV3 implements`

Protobuf type {@code services.trustregistry.v1.UnregisterVerifierRequest}

## `@java.lang.Deprecated public static AuthorityCase valueOf(int value)`

 * **Parameters:** `value` — The number of the enum to look for.
 * **Returns:** The enum associated with the given number.
 * **Deprecated**

## `public boolean hasDidUri()`

`string did_uri = 1;`

 * **Returns:** Whether the didUri field is set.

## `public java.lang.String getDidUri()`

`string did_uri = 1;`

 * **Returns:** The didUri.

## `public com.google.protobuf.ByteString getDidUriBytes()`

`string did_uri = 1;`

 * **Returns:** The bytes for didUri.

## `public boolean hasX509Cert()`

`string x509_cert = 2;`

 * **Returns:** Whether the x509Cert field is set.

## `public java.lang.String getX509Cert()`

`string x509_cert = 2;`

 * **Returns:** The x509Cert.

## `public com.google.protobuf.ByteString getX509CertBytes()`

`string x509_cert = 2;`

 * **Returns:** The bytes for x509Cert.

## `@java.lang.Override public java.lang.String getPresentationTypeUri()`

`string presentation_type_uri = 10;`

 * **Returns:** The presentationTypeUri.

## `@java.lang.Override public com.google.protobuf.ByteString getPresentationTypeUriBytes()`

`string presentation_type_uri = 10;`

 * **Returns:** The bytes for presentationTypeUri.

## `@java.lang.Override public java.lang.String getGovernanceFrameworkUri()`

`string governance_framework_uri = 20;`

 * **Returns:** The governanceFrameworkUri.

## `@java.lang.Override public com.google.protobuf.ByteString getGovernanceFrameworkUriBytes()`

`string governance_framework_uri = 20;`

 * **Returns:** The bytes for governanceFrameworkUri.

## `public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder> implements`

Protobuf type {@code services.trustregistry.v1.UnregisterVerifierRequest}

## `@java.lang.Override public boolean hasDidUri()`

`string did_uri = 1;`

 * **Returns:** Whether the didUri field is set.

## `@java.lang.Override public java.lang.String getDidUri()`

`string did_uri = 1;`

 * **Returns:** The didUri.

## `@java.lang.Override public com.google.protobuf.ByteString getDidUriBytes()`

`string did_uri = 1;`

 * **Returns:** The bytes for didUri.

## `public Builder setDidUri( java.lang.String value)`

`string did_uri = 1;`

 * **Parameters:** `value` — The didUri to set.
 * **Returns:** This builder for chaining.

## `public Builder clearDidUri()`

`string did_uri = 1;`

 * **Returns:** This builder for chaining.

## `public Builder setDidUriBytes( com.google.protobuf.ByteString value)`

`string did_uri = 1;`

 * **Parameters:** `value` — The bytes for didUri to set.
 * **Returns:** This builder for chaining.

## `@java.lang.Override public boolean hasX509Cert()`

`string x509_cert = 2;`

 * **Returns:** Whether the x509Cert field is set.

## `@java.lang.Override public java.lang.String getX509Cert()`

`string x509_cert = 2;`

 * **Returns:** The x509Cert.

## `@java.lang.Override public com.google.protobuf.ByteString getX509CertBytes()`

`string x509_cert = 2;`

 * **Returns:** The bytes for x509Cert.

## `public Builder setX509Cert( java.lang.String value)`

`string x509_cert = 2;`

 * **Parameters:** `value` — The x509Cert to set.
 * **Returns:** This builder for chaining.

## `public Builder clearX509Cert()`

`string x509_cert = 2;`

 * **Returns:** This builder for chaining.

## `public Builder setX509CertBytes( com.google.protobuf.ByteString value)`

`string x509_cert = 2;`

 * **Parameters:** `value` — The bytes for x509Cert to set.
 * **Returns:** This builder for chaining.

## `public java.lang.String getPresentationTypeUri()`

`string presentation_type_uri = 10;`

 * **Returns:** The presentationTypeUri.

## `public com.google.protobuf.ByteString getPresentationTypeUriBytes()`

`string presentation_type_uri = 10;`

 * **Returns:** The bytes for presentationTypeUri.

## `public Builder setPresentationTypeUri( java.lang.String value)`

`string presentation_type_uri = 10;`

 * **Parameters:** `value` — The presentationTypeUri to set.
 * **Returns:** This builder for chaining.

## `public Builder clearPresentationTypeUri()`

`string presentation_type_uri = 10;`

 * **Returns:** This builder for chaining.

## `public Builder setPresentationTypeUriBytes( com.google.protobuf.ByteString value)`

`string presentation_type_uri = 10;`

 * **Parameters:** `value` — The bytes for presentationTypeUri to set.
 * **Returns:** This builder for chaining.

## `public java.lang.String getGovernanceFrameworkUri()`

`string governance_framework_uri = 20;`

 * **Returns:** The governanceFrameworkUri.

## `public com.google.protobuf.ByteString getGovernanceFrameworkUriBytes()`

`string governance_framework_uri = 20;`

 * **Returns:** The bytes for governanceFrameworkUri.

## `public Builder setGovernanceFrameworkUri( java.lang.String value)`

`string governance_framework_uri = 20;`

 * **Parameters:** `value` — The governanceFrameworkUri to set.
 * **Returns:** This builder for chaining.

## `public Builder clearGovernanceFrameworkUri()`

`string governance_framework_uri = 20;`

 * **Returns:** This builder for chaining.

## `public Builder setGovernanceFrameworkUriBytes( com.google.protobuf.ByteString value)`

`string governance_framework_uri = 20;`

 * **Parameters:** `value` — The bytes for governanceFrameworkUri to set.
 * **Returns:** This builder for chaining.

## `int getStatusValue()`

`.services.common.v1.ResponseStatus status = 1;`

 * **Returns:** The enum numeric value on the wire for status.

## `trinsic.services.common.v1.CommonOuterClass.ResponseStatus getStatus()`

`.services.common.v1.ResponseStatus status = 1;`

 * **Returns:** The status.

## `public static final class UnregisterVerifierResponse extends com.google.protobuf.GeneratedMessageV3 implements`

Protobuf type {@code services.trustregistry.v1.UnregisterVerifierResponse}

## `@java.lang.Override public int getStatusValue()`

`.services.common.v1.ResponseStatus status = 1;`

 * **Returns:** The enum numeric value on the wire for status.

## `@java.lang.Override public trinsic.services.common.v1.CommonOuterClass.ResponseStatus getStatus()`

`.services.common.v1.ResponseStatus status = 1;`

 * **Returns:** The status.

## `public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder> implements`

Protobuf type {@code services.trustregistry.v1.UnregisterVerifierResponse}

## `@java.lang.Override public int getStatusValue()`

`.services.common.v1.ResponseStatus status = 1;`

 * **Returns:** The enum numeric value on the wire for status.

## `public Builder setStatusValue(int value)`

`.services.common.v1.ResponseStatus status = 1;`

 * **Parameters:** `value` — The enum numeric value on the wire for status to set.
 * **Returns:** This builder for chaining.

## `@java.lang.Override public trinsic.services.common.v1.CommonOuterClass.ResponseStatus getStatus()`

`.services.common.v1.ResponseStatus status = 1;`

 * **Returns:** The status.

## `public Builder setStatus(trinsic.services.common.v1.CommonOuterClass.ResponseStatus value)`

`.services.common.v1.ResponseStatus status = 1;`

 * **Parameters:** `value` — The status to set.
 * **Returns:** This builder for chaining.

## `public Builder clearStatus()`

`.services.common.v1.ResponseStatus status = 1;`

 * **Returns:** This builder for chaining.

## `java.lang.String getGovernanceFrameworkUri()`

`string governance_framework_uri = 1;`

 * **Returns:** The governanceFrameworkUri.

## `com.google.protobuf.ByteString getGovernanceFrameworkUriBytes()`

`string governance_framework_uri = 1;`

 * **Returns:** The bytes for governanceFrameworkUri.

## `boolean hasDidUri()`

`string did_uri = 2;`

 * **Returns:** Whether the didUri field is set.

## `java.lang.String getDidUri()`

`string did_uri = 2;`

 * **Returns:** The didUri.

## `com.google.protobuf.ByteString getDidUriBytes()`

`string did_uri = 2;`

 * **Returns:** The bytes for didUri.

## `boolean hasX509Cert()`

`string x509_cert = 3;`

 * **Returns:** Whether the x509Cert field is set.

## `java.lang.String getX509Cert()`

`string x509_cert = 3;`

 * **Returns:** The x509Cert.

## `com.google.protobuf.ByteString getX509CertBytes()`

`string x509_cert = 3;`

 * **Returns:** The bytes for x509Cert.

## `java.lang.String getCredentialTypeUri()`

`string credential_type_uri = 4;`

 * **Returns:** The credentialTypeUri.

## `com.google.protobuf.ByteString getCredentialTypeUriBytes()`

`string credential_type_uri = 4;`

 * **Returns:** The bytes for credentialTypeUri.

## `public static final class CheckIssuerStatusRequest extends com.google.protobuf.GeneratedMessageV3 implements`

Protobuf type {@code services.trustregistry.v1.CheckIssuerStatusRequest}

## `@java.lang.Deprecated public static MemberCase valueOf(int value)`

 * **Parameters:** `value` — The number of the enum to look for.
 * **Returns:** The enum associated with the given number.
 * **Deprecated**

## `@java.lang.Override public java.lang.String getGovernanceFrameworkUri()`

`string governance_framework_uri = 1;`

 * **Returns:** The governanceFrameworkUri.

## `@java.lang.Override public com.google.protobuf.ByteString getGovernanceFrameworkUriBytes()`

`string governance_framework_uri = 1;`

 * **Returns:** The bytes for governanceFrameworkUri.

## `public boolean hasDidUri()`

`string did_uri = 2;`

 * **Returns:** Whether the didUri field is set.

## `public java.lang.String getDidUri()`

`string did_uri = 2;`

 * **Returns:** The didUri.

## `public com.google.protobuf.ByteString getDidUriBytes()`

`string did_uri = 2;`

 * **Returns:** The bytes for didUri.

## `public boolean hasX509Cert()`

`string x509_cert = 3;`

 * **Returns:** Whether the x509Cert field is set.

## `public java.lang.String getX509Cert()`

`string x509_cert = 3;`

 * **Returns:** The x509Cert.

## `public com.google.protobuf.ByteString getX509CertBytes()`

`string x509_cert = 3;`

 * **Returns:** The bytes for x509Cert.

## `@java.lang.Override public java.lang.String getCredentialTypeUri()`

`string credential_type_uri = 4;`

 * **Returns:** The credentialTypeUri.

## `@java.lang.Override public com.google.protobuf.ByteString getCredentialTypeUriBytes()`

`string credential_type_uri = 4;`

 * **Returns:** The bytes for credentialTypeUri.

## `public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder> implements`

Protobuf type {@code services.trustregistry.v1.CheckIssuerStatusRequest}

## `public java.lang.String getGovernanceFrameworkUri()`

`string governance_framework_uri = 1;`

 * **Returns:** The governanceFrameworkUri.

## `public com.google.protobuf.ByteString getGovernanceFrameworkUriBytes()`

`string governance_framework_uri = 1;`

 * **Returns:** The bytes for governanceFrameworkUri.

## `public Builder setGovernanceFrameworkUri( java.lang.String value)`

`string governance_framework_uri = 1;`

 * **Parameters:** `value` — The governanceFrameworkUri to set.
 * **Returns:** This builder for chaining.

## `public Builder clearGovernanceFrameworkUri()`

`string governance_framework_uri = 1;`

 * **Returns:** This builder for chaining.

## `public Builder setGovernanceFrameworkUriBytes( com.google.protobuf.ByteString value)`

`string governance_framework_uri = 1;`

 * **Parameters:** `value` — The bytes for governanceFrameworkUri to set.
 * **Returns:** This builder for chaining.

## `@java.lang.Override public boolean hasDidUri()`

`string did_uri = 2;`

 * **Returns:** Whether the didUri field is set.

## `@java.lang.Override public java.lang.String getDidUri()`

`string did_uri = 2;`

 * **Returns:** The didUri.

## `@java.lang.Override public com.google.protobuf.ByteString getDidUriBytes()`

`string did_uri = 2;`

 * **Returns:** The bytes for didUri.

## `public Builder setDidUri( java.lang.String value)`

`string did_uri = 2;`

 * **Parameters:** `value` — The didUri to set.
 * **Returns:** This builder for chaining.

## `public Builder clearDidUri()`

`string did_uri = 2;`

 * **Returns:** This builder for chaining.

## `public Builder setDidUriBytes( com.google.protobuf.ByteString value)`

`string did_uri = 2;`

 * **Parameters:** `value` — The bytes for didUri to set.
 * **Returns:** This builder for chaining.

## `@java.lang.Override public boolean hasX509Cert()`

`string x509_cert = 3;`

 * **Returns:** Whether the x509Cert field is set.

## `@java.lang.Override public java.lang.String getX509Cert()`

`string x509_cert = 3;`

 * **Returns:** The x509Cert.

## `@java.lang.Override public com.google.protobuf.ByteString getX509CertBytes()`

`string x509_cert = 3;`

 * **Returns:** The bytes for x509Cert.

## `public Builder setX509Cert( java.lang.String value)`

`string x509_cert = 3;`

 * **Parameters:** `value` — The x509Cert to set.
 * **Returns:** This builder for chaining.

## `public Builder clearX509Cert()`

`string x509_cert = 3;`

 * **Returns:** This builder for chaining.

## `public Builder setX509CertBytes( com.google.protobuf.ByteString value)`

`string x509_cert = 3;`

 * **Parameters:** `value` — The bytes for x509Cert to set.
 * **Returns:** This builder for chaining.

## `public java.lang.String getCredentialTypeUri()`

`string credential_type_uri = 4;`

 * **Returns:** The credentialTypeUri.

## `public com.google.protobuf.ByteString getCredentialTypeUriBytes()`

`string credential_type_uri = 4;`

 * **Returns:** The bytes for credentialTypeUri.

## `public Builder setCredentialTypeUri( java.lang.String value)`

`string credential_type_uri = 4;`

 * **Parameters:** `value` — The credentialTypeUri to set.
 * **Returns:** This builder for chaining.

## `public Builder clearCredentialTypeUri()`

`string credential_type_uri = 4;`

 * **Returns:** This builder for chaining.

## `public Builder setCredentialTypeUriBytes( com.google.protobuf.ByteString value)`

`string credential_type_uri = 4;`

 * **Parameters:** `value` — The bytes for credentialTypeUri to set.
 * **Returns:** This builder for chaining.

## `int getStatusValue()`

`.services.trustregistry.v1.RegistrationStatus status = 1;`

 * **Returns:** The enum numeric value on the wire for status.

## `trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegistrationStatus getStatus()`

`.services.trustregistry.v1.RegistrationStatus status = 1;`

 * **Returns:** The status.

## `public static final class CheckIssuerStatusResponse extends com.google.protobuf.GeneratedMessageV3 implements`

Protobuf type {@code services.trustregistry.v1.CheckIssuerStatusResponse}

## `@java.lang.Override public int getStatusValue()`

`.services.trustregistry.v1.RegistrationStatus status = 1;`

 * **Returns:** The enum numeric value on the wire for status.

## `@java.lang.Override public trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegistrationStatus getStatus()`

`.services.trustregistry.v1.RegistrationStatus status = 1;`

 * **Returns:** The status.

## `public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder> implements`

Protobuf type {@code services.trustregistry.v1.CheckIssuerStatusResponse}

## `@java.lang.Override public int getStatusValue()`

`.services.trustregistry.v1.RegistrationStatus status = 1;`

 * **Returns:** The enum numeric value on the wire for status.

## `public Builder setStatusValue(int value)`

`.services.trustregistry.v1.RegistrationStatus status = 1;`

 * **Parameters:** `value` — The enum numeric value on the wire for status to set.
 * **Returns:** This builder for chaining.

## `@java.lang.Override public trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegistrationStatus getStatus()`

`.services.trustregistry.v1.RegistrationStatus status = 1;`

 * **Returns:** The status.

## `public Builder setStatus(trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegistrationStatus value)`

`.services.trustregistry.v1.RegistrationStatus status = 1;`

 * **Parameters:** `value` — The status to set.
 * **Returns:** This builder for chaining.

## `public Builder clearStatus()`

`.services.trustregistry.v1.RegistrationStatus status = 1;`

 * **Returns:** This builder for chaining.

## `java.lang.String getGovernanceFrameworkUri()`

`string governance_framework_uri = 1;`

 * **Returns:** The governanceFrameworkUri.

## `com.google.protobuf.ByteString getGovernanceFrameworkUriBytes()`

`string governance_framework_uri = 1;`

 * **Returns:** The bytes for governanceFrameworkUri.

## `boolean hasDidUri()`

`string did_uri = 2;`

 * **Returns:** Whether the didUri field is set.

## `java.lang.String getDidUri()`

`string did_uri = 2;`

 * **Returns:** The didUri.

## `com.google.protobuf.ByteString getDidUriBytes()`

`string did_uri = 2;`

 * **Returns:** The bytes for didUri.

## `boolean hasX509Cert()`

`string x509_cert = 3;`

 * **Returns:** Whether the x509Cert field is set.

## `java.lang.String getX509Cert()`

`string x509_cert = 3;`

 * **Returns:** The x509Cert.

## `com.google.protobuf.ByteString getX509CertBytes()`

`string x509_cert = 3;`

 * **Returns:** The bytes for x509Cert.

## `java.lang.String getPresentationTypeUri()`

`string presentation_type_uri = 4;`

 * **Returns:** The presentationTypeUri.

## `com.google.protobuf.ByteString getPresentationTypeUriBytes()`

`string presentation_type_uri = 4;`

 * **Returns:** The bytes for presentationTypeUri.

## `public static final class CheckVerifierStatusRequest extends com.google.protobuf.GeneratedMessageV3 implements`

Protobuf type {@code services.trustregistry.v1.CheckVerifierStatusRequest}

## `@java.lang.Deprecated public static MemberCase valueOf(int value)`

 * **Parameters:** `value` — The number of the enum to look for.
 * **Returns:** The enum associated with the given number.
 * **Deprecated**

## `@java.lang.Override public java.lang.String getGovernanceFrameworkUri()`

`string governance_framework_uri = 1;`

 * **Returns:** The governanceFrameworkUri.

## `@java.lang.Override public com.google.protobuf.ByteString getGovernanceFrameworkUriBytes()`

`string governance_framework_uri = 1;`

 * **Returns:** The bytes for governanceFrameworkUri.

## `public boolean hasDidUri()`

`string did_uri = 2;`

 * **Returns:** Whether the didUri field is set.

## `public java.lang.String getDidUri()`

`string did_uri = 2;`

 * **Returns:** The didUri.

## `public com.google.protobuf.ByteString getDidUriBytes()`

`string did_uri = 2;`

 * **Returns:** The bytes for didUri.

## `public boolean hasX509Cert()`

`string x509_cert = 3;`

 * **Returns:** Whether the x509Cert field is set.

## `public java.lang.String getX509Cert()`

`string x509_cert = 3;`

 * **Returns:** The x509Cert.

## `public com.google.protobuf.ByteString getX509CertBytes()`

`string x509_cert = 3;`

 * **Returns:** The bytes for x509Cert.

## `@java.lang.Override public java.lang.String getPresentationTypeUri()`

`string presentation_type_uri = 4;`

 * **Returns:** The presentationTypeUri.

## `@java.lang.Override public com.google.protobuf.ByteString getPresentationTypeUriBytes()`

`string presentation_type_uri = 4;`

 * **Returns:** The bytes for presentationTypeUri.

## `public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder> implements`

Protobuf type {@code services.trustregistry.v1.CheckVerifierStatusRequest}

## `public java.lang.String getGovernanceFrameworkUri()`

`string governance_framework_uri = 1;`

 * **Returns:** The governanceFrameworkUri.

## `public com.google.protobuf.ByteString getGovernanceFrameworkUriBytes()`

`string governance_framework_uri = 1;`

 * **Returns:** The bytes for governanceFrameworkUri.

## `public Builder setGovernanceFrameworkUri( java.lang.String value)`

`string governance_framework_uri = 1;`

 * **Parameters:** `value` — The governanceFrameworkUri to set.
 * **Returns:** This builder for chaining.

## `public Builder clearGovernanceFrameworkUri()`

`string governance_framework_uri = 1;`

 * **Returns:** This builder for chaining.

## `public Builder setGovernanceFrameworkUriBytes( com.google.protobuf.ByteString value)`

`string governance_framework_uri = 1;`

 * **Parameters:** `value` — The bytes for governanceFrameworkUri to set.
 * **Returns:** This builder for chaining.

## `@java.lang.Override public boolean hasDidUri()`

`string did_uri = 2;`

 * **Returns:** Whether the didUri field is set.

## `@java.lang.Override public java.lang.String getDidUri()`

`string did_uri = 2;`

 * **Returns:** The didUri.

## `@java.lang.Override public com.google.protobuf.ByteString getDidUriBytes()`

`string did_uri = 2;`

 * **Returns:** The bytes for didUri.

## `public Builder setDidUri( java.lang.String value)`

`string did_uri = 2;`

 * **Parameters:** `value` — The didUri to set.
 * **Returns:** This builder for chaining.

## `public Builder clearDidUri()`

`string did_uri = 2;`

 * **Returns:** This builder for chaining.

## `public Builder setDidUriBytes( com.google.protobuf.ByteString value)`

`string did_uri = 2;`

 * **Parameters:** `value` — The bytes for didUri to set.
 * **Returns:** This builder for chaining.

## `@java.lang.Override public boolean hasX509Cert()`

`string x509_cert = 3;`

 * **Returns:** Whether the x509Cert field is set.

## `@java.lang.Override public java.lang.String getX509Cert()`

`string x509_cert = 3;`

 * **Returns:** The x509Cert.

## `@java.lang.Override public com.google.protobuf.ByteString getX509CertBytes()`

`string x509_cert = 3;`

 * **Returns:** The bytes for x509Cert.

## `public Builder setX509Cert( java.lang.String value)`

`string x509_cert = 3;`

 * **Parameters:** `value` — The x509Cert to set.
 * **Returns:** This builder for chaining.

## `public Builder clearX509Cert()`

`string x509_cert = 3;`

 * **Returns:** This builder for chaining.

## `public Builder setX509CertBytes( com.google.protobuf.ByteString value)`

`string x509_cert = 3;`

 * **Parameters:** `value` — The bytes for x509Cert to set.
 * **Returns:** This builder for chaining.

## `public java.lang.String getPresentationTypeUri()`

`string presentation_type_uri = 4;`

 * **Returns:** The presentationTypeUri.

## `public com.google.protobuf.ByteString getPresentationTypeUriBytes()`

`string presentation_type_uri = 4;`

 * **Returns:** The bytes for presentationTypeUri.

## `public Builder setPresentationTypeUri( java.lang.String value)`

`string presentation_type_uri = 4;`

 * **Parameters:** `value` — The presentationTypeUri to set.
 * **Returns:** This builder for chaining.

## `public Builder clearPresentationTypeUri()`

`string presentation_type_uri = 4;`

 * **Returns:** This builder for chaining.

## `public Builder setPresentationTypeUriBytes( com.google.protobuf.ByteString value)`

`string presentation_type_uri = 4;`

 * **Parameters:** `value` — The bytes for presentationTypeUri to set.
 * **Returns:** This builder for chaining.

## `int getStatusValue()`

`.services.trustregistry.v1.RegistrationStatus status = 1;`

 * **Returns:** The enum numeric value on the wire for status.

## `trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegistrationStatus getStatus()`

`.services.trustregistry.v1.RegistrationStatus status = 1;`

 * **Returns:** The status.

## `public static final class CheckVerifierStatusResponse extends com.google.protobuf.GeneratedMessageV3 implements`

Protobuf type {@code services.trustregistry.v1.CheckVerifierStatusResponse}

## `@java.lang.Override public int getStatusValue()`

`.services.trustregistry.v1.RegistrationStatus status = 1;`

 * **Returns:** The enum numeric value on the wire for status.

## `@java.lang.Override public trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegistrationStatus getStatus()`

`.services.trustregistry.v1.RegistrationStatus status = 1;`

 * **Returns:** The status.

## `public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder> implements`

Protobuf type {@code services.trustregistry.v1.CheckVerifierStatusResponse}

## `@java.lang.Override public int getStatusValue()`

`.services.trustregistry.v1.RegistrationStatus status = 1;`

 * **Returns:** The enum numeric value on the wire for status.

## `public Builder setStatusValue(int value)`

`.services.trustregistry.v1.RegistrationStatus status = 1;`

 * **Parameters:** `value` — The enum numeric value on the wire for status to set.
 * **Returns:** This builder for chaining.

## `@java.lang.Override public trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegistrationStatus getStatus()`

`.services.trustregistry.v1.RegistrationStatus status = 1;`

 * **Returns:** The status.

## `public Builder setStatus(trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegistrationStatus value)`

`.services.trustregistry.v1.RegistrationStatus status = 1;`

 * **Parameters:** `value` — The status to set.
 * **Returns:** This builder for chaining.

## `public Builder clearStatus()`

`.services.trustregistry.v1.RegistrationStatus status = 1;`

 * **Returns:** This builder for chaining.

## `java.lang.String getGovernanceFrameworkUri()`

`string governance_framework_uri = 1;`

 * **Returns:** The governanceFrameworkUri.

## `com.google.protobuf.ByteString getGovernanceFrameworkUriBytes()`

`string governance_framework_uri = 1;`

 * **Returns:** The bytes for governanceFrameworkUri.

## `java.lang.String getQuery()`

`string query = 2;`

 * **Returns:** The query.

## `com.google.protobuf.ByteString getQueryBytes()`

`string query = 2;`

 * **Returns:** The bytes for query.

## `public static final class FetchDataRequest extends com.google.protobuf.GeneratedMessageV3 implements`

Protobuf type {@code services.trustregistry.v1.FetchDataRequest}

## `@java.lang.Override public java.lang.String getGovernanceFrameworkUri()`

`string governance_framework_uri = 1;`

 * **Returns:** The governanceFrameworkUri.

## `@java.lang.Override public com.google.protobuf.ByteString getGovernanceFrameworkUriBytes()`

`string governance_framework_uri = 1;`

 * **Returns:** The bytes for governanceFrameworkUri.

## `@java.lang.Override public java.lang.String getQuery()`

`string query = 2;`

 * **Returns:** The query.

## `@java.lang.Override public com.google.protobuf.ByteString getQueryBytes()`

`string query = 2;`

 * **Returns:** The bytes for query.

## `public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder> implements`

Protobuf type {@code services.trustregistry.v1.FetchDataRequest}

## `public java.lang.String getGovernanceFrameworkUri()`

`string governance_framework_uri = 1;`

 * **Returns:** The governanceFrameworkUri.

## `public com.google.protobuf.ByteString getGovernanceFrameworkUriBytes()`

`string governance_framework_uri = 1;`

 * **Returns:** The bytes for governanceFrameworkUri.

## `public Builder setGovernanceFrameworkUri( java.lang.String value)`

`string governance_framework_uri = 1;`

 * **Parameters:** `value` — The governanceFrameworkUri to set.
 * **Returns:** This builder for chaining.

## `public Builder clearGovernanceFrameworkUri()`

`string governance_framework_uri = 1;`

 * **Returns:** This builder for chaining.

## `public Builder setGovernanceFrameworkUriBytes( com.google.protobuf.ByteString value)`

`string governance_framework_uri = 1;`

 * **Parameters:** `value` — The bytes for governanceFrameworkUri to set.
 * **Returns:** This builder for chaining.

## `public java.lang.String getQuery()`

`string query = 2;`

 * **Returns:** The query.

## `public com.google.protobuf.ByteString getQueryBytes()`

`string query = 2;`

 * **Returns:** The bytes for query.

## `public Builder setQuery( java.lang.String value)`

`string query = 2;`

 * **Parameters:** `value` — The query to set.
 * **Returns:** This builder for chaining.

## `public Builder clearQuery()`

`string query = 2;`

 * **Returns:** This builder for chaining.

## `public Builder setQueryBytes( com.google.protobuf.ByteString value)`

`string query = 2;`

 * **Parameters:** `value` — The bytes for query to set.
 * **Returns:** This builder for chaining.

## `java.lang.String getResponseJson()`

`string response_json = 1;`

 * **Returns:** The responseJson.

## `com.google.protobuf.ByteString getResponseJsonBytes()`

`string response_json = 1;`

 * **Returns:** The bytes for responseJson.

## `boolean getHasMoreResults()`

`bool has_more_results = 2;`

 * **Returns:** The hasMoreResults.

## `java.lang.String getContinuationToken()`

`string continuation_token = 3;`

 * **Returns:** The continuationToken.

## `com.google.protobuf.ByteString getContinuationTokenBytes()`

`string continuation_token = 3;`

 * **Returns:** The bytes for continuationToken.

## `public static final class FetchDataResponse extends com.google.protobuf.GeneratedMessageV3 implements`

Protobuf type {@code services.trustregistry.v1.FetchDataResponse}

## `@java.lang.Override public java.lang.String getResponseJson()`

`string response_json = 1;`

 * **Returns:** The responseJson.

## `@java.lang.Override public com.google.protobuf.ByteString getResponseJsonBytes()`

`string response_json = 1;`

 * **Returns:** The bytes for responseJson.

## `@java.lang.Override public boolean getHasMoreResults()`

`bool has_more_results = 2;`

 * **Returns:** The hasMoreResults.

## `@java.lang.Override public java.lang.String getContinuationToken()`

`string continuation_token = 3;`

 * **Returns:** The continuationToken.

## `@java.lang.Override public com.google.protobuf.ByteString getContinuationTokenBytes()`

`string continuation_token = 3;`

 * **Returns:** The bytes for continuationToken.

## `public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder> implements`

Protobuf type {@code services.trustregistry.v1.FetchDataResponse}

## `public java.lang.String getResponseJson()`

`string response_json = 1;`

 * **Returns:** The responseJson.

## `public com.google.protobuf.ByteString getResponseJsonBytes()`

`string response_json = 1;`

 * **Returns:** The bytes for responseJson.

## `public Builder setResponseJson( java.lang.String value)`

`string response_json = 1;`

 * **Parameters:** `value` — The responseJson to set.
 * **Returns:** This builder for chaining.

## `public Builder clearResponseJson()`

`string response_json = 1;`

 * **Returns:** This builder for chaining.

## `public Builder setResponseJsonBytes( com.google.protobuf.ByteString value)`

`string response_json = 1;`

 * **Parameters:** `value` — The bytes for responseJson to set.
 * **Returns:** This builder for chaining.

## `@java.lang.Override public boolean getHasMoreResults()`

`bool has_more_results = 2;`

 * **Returns:** The hasMoreResults.

## `public Builder setHasMoreResults(boolean value)`

`bool has_more_results = 2;`

 * **Parameters:** `value` — The hasMoreResults to set.
 * **Returns:** This builder for chaining.

## `public Builder clearHasMoreResults()`

`bool has_more_results = 2;`

 * **Returns:** This builder for chaining.

## `public java.lang.String getContinuationToken()`

`string continuation_token = 3;`

 * **Returns:** The continuationToken.

## `public com.google.protobuf.ByteString getContinuationTokenBytes()`

`string continuation_token = 3;`

 * **Returns:** The bytes for continuationToken.

## `public Builder setContinuationToken( java.lang.String value)`

`string continuation_token = 3;`

 * **Parameters:** `value` — The continuationToken to set.
 * **Returns:** This builder for chaining.

## `public Builder clearContinuationToken()`

`string continuation_token = 3;`

 * **Returns:** This builder for chaining.

## `public Builder setContinuationTokenBytes( com.google.protobuf.ByteString value)`

`string continuation_token = 3;`

 * **Parameters:** `value` — The bytes for continuationToken to set.
 * **Returns:** This builder for chaining.
