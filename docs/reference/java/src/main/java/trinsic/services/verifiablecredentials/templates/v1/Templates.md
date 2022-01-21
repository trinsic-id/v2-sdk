# Documentation

## `public enum FieldType implements com.google.protobuf.ProtocolMessageEnum`

Protobuf enum {@code services.verifiablecredentials.templates.v1.FieldType}

## `STRING(0),`

`STRING = 0;`

## `NUMBER(1),`

`NUMBER = 1;`

## `BOOL(2),`

`BOOL = 2;`

## `DATETIME(4), UNRECOGNIZED(-1),`

`DATETIME = 4;`

## `public static final int STRING_VALUE = 0`

`STRING = 0;`

## `public static final int NUMBER_VALUE = 1`

`NUMBER = 1;`

## `public static final int BOOL_VALUE = 2`

`BOOL = 2;`

## `public static final int DATETIME_VALUE = 4`

`DATETIME = 4;`

## `@java.lang.Deprecated public static FieldType valueOf(int value)`

 * **Parameters:** `value` — The numeric wire value of the corresponding enum entry.
 * **Returns:** The enum associated with the given numeric wire value.
 * **Deprecated**

## `public static FieldType forNumber(int value)`

 * **Parameters:** `value` — The numeric wire value of the corresponding enum entry.
 * **Returns:** The enum associated with the given numeric wire value.

## `java.lang.String getId()`

`string id = 1;`

 * **Returns:** The id.

## `com.google.protobuf.ByteString getIdBytes()`

`string id = 1;`

 * **Returns:** The bytes for id.

## `public static final class GetCredentialTemplateRequest extends com.google.protobuf.GeneratedMessageV3 implements`

Protobuf type {@code services.verifiablecredentials.templates.v1.GetCredentialTemplateRequest}

## `@java.lang.Override public java.lang.String getId()`

`string id = 1;`

 * **Returns:** The id.

## `@java.lang.Override public com.google.protobuf.ByteString getIdBytes()`

`string id = 1;`

 * **Returns:** The bytes for id.

## `public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder> implements`

Protobuf type {@code services.verifiablecredentials.templates.v1.GetCredentialTemplateRequest}

## `public java.lang.String getId()`

`string id = 1;`

 * **Returns:** The id.

## `public com.google.protobuf.ByteString getIdBytes()`

`string id = 1;`

 * **Returns:** The bytes for id.

## `public Builder setId( java.lang.String value)`

`string id = 1;`

 * **Parameters:** `value` — The id to set.
 * **Returns:** This builder for chaining.

## `public Builder clearId()`

`string id = 1;`

 * **Returns:** This builder for chaining.

## `public Builder setIdBytes( com.google.protobuf.ByteString value)`

`string id = 1;`

 * **Parameters:** `value` — The bytes for id to set.
 * **Returns:** This builder for chaining.

## `boolean hasTemplate()`

`.services.verifiablecredentials.templates.v1.TemplateData template = 1;`

 * **Returns:** Whether the template field is set.

## `trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateData getTemplate()`

`.services.verifiablecredentials.templates.v1.TemplateData template = 1;`

 * **Returns:** The template.

## `trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateDataOrBuilder getTemplateOrBuilder()`

`.services.verifiablecredentials.templates.v1.TemplateData template = 1;`

## `public static final class GetCredentialTemplateResponse extends com.google.protobuf.GeneratedMessageV3 implements`

Protobuf type {@code services.verifiablecredentials.templates.v1.GetCredentialTemplateResponse}

## `@java.lang.Override public boolean hasTemplate()`

`.services.verifiablecredentials.templates.v1.TemplateData template = 1;`

 * **Returns:** Whether the template field is set.

## `@java.lang.Override public trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateData getTemplate()`

`.services.verifiablecredentials.templates.v1.TemplateData template = 1;`

 * **Returns:** The template.

## `@java.lang.Override public trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateDataOrBuilder getTemplateOrBuilder()`

`.services.verifiablecredentials.templates.v1.TemplateData template = 1;`

## `public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder> implements`

Protobuf type {@code services.verifiablecredentials.templates.v1.GetCredentialTemplateResponse}

## `public boolean hasTemplate()`

`.services.verifiablecredentials.templates.v1.TemplateData template = 1;`

 * **Returns:** Whether the template field is set.

## `public trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateData getTemplate()`

`.services.verifiablecredentials.templates.v1.TemplateData template = 1;`

 * **Returns:** The template.

## `public Builder setTemplate(trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateData value)`

`.services.verifiablecredentials.templates.v1.TemplateData template = 1;`

## `public Builder setTemplate( trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateData.Builder builderForValue)`

`.services.verifiablecredentials.templates.v1.TemplateData template = 1;`

## `public Builder mergeTemplate(trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateData value)`

`.services.verifiablecredentials.templates.v1.TemplateData template = 1;`

## `public Builder clearTemplate()`

`.services.verifiablecredentials.templates.v1.TemplateData template = 1;`

## `public trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateData.Builder getTemplateBuilder()`

`.services.verifiablecredentials.templates.v1.TemplateData template = 1;`

## `public trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateDataOrBuilder getTemplateOrBuilder()`

`.services.verifiablecredentials.templates.v1.TemplateData template = 1;`

## `private com.google.protobuf.SingleFieldBuilderV3< trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateData, trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateData.Builder, trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateDataOrBuilder> getTemplateFieldBuilder()`

`.services.verifiablecredentials.templates.v1.TemplateData template = 1;`

## `java.lang.String getQuery()`

<pre> SELECT * FROM c WHERE c.name = 'Diploma' </pre>

`string query = 1;`

 * **Returns:** The query.

## `com.google.protobuf.ByteString getQueryBytes()`

<pre> SELECT * FROM c WHERE c.name = 'Diploma' </pre>

`string query = 1;`

 * **Returns:** The bytes for query.

## `java.lang.String getContinuationToken()`

`string continuation_token = 2;`

 * **Returns:** The continuationToken.

## `com.google.protobuf.ByteString getContinuationTokenBytes()`

`string continuation_token = 2;`

 * **Returns:** The bytes for continuationToken.

## `public static final class SearchCredentialTemplatesRequest extends com.google.protobuf.GeneratedMessageV3 implements`

Protobuf type {@code services.verifiablecredentials.templates.v1.SearchCredentialTemplatesRequest}

## `@java.lang.Override public java.lang.String getQuery()`

<pre> SELECT * FROM c WHERE c.name = 'Diploma' </pre>

`string query = 1;`

 * **Returns:** The query.

## `@java.lang.Override public com.google.protobuf.ByteString getQueryBytes()`

<pre> SELECT * FROM c WHERE c.name = 'Diploma' </pre>

`string query = 1;`

 * **Returns:** The bytes for query.

## `@java.lang.Override public java.lang.String getContinuationToken()`

`string continuation_token = 2;`

 * **Returns:** The continuationToken.

## `@java.lang.Override public com.google.protobuf.ByteString getContinuationTokenBytes()`

`string continuation_token = 2;`

 * **Returns:** The bytes for continuationToken.

## `public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder> implements`

Protobuf type {@code services.verifiablecredentials.templates.v1.SearchCredentialTemplatesRequest}

## `public java.lang.String getQuery()`

<pre> SELECT * FROM c WHERE c.name = 'Diploma' </pre>

`string query = 1;`

 * **Returns:** The query.

## `public com.google.protobuf.ByteString getQueryBytes()`

<pre> SELECT * FROM c WHERE c.name = 'Diploma' </pre>

`string query = 1;`

 * **Returns:** The bytes for query.

## `public Builder setQuery( java.lang.String value)`

<pre> SELECT * FROM c WHERE c.name = 'Diploma' </pre>

`string query = 1;`

 * **Parameters:** `value` — The query to set.
 * **Returns:** This builder for chaining.

## `public Builder clearQuery()`

<pre> SELECT * FROM c WHERE c.name = 'Diploma' </pre>

`string query = 1;`

 * **Returns:** This builder for chaining.

## `public Builder setQueryBytes( com.google.protobuf.ByteString value)`

<pre> SELECT * FROM c WHERE c.name = 'Diploma' </pre>

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

## `public static final class SearchCredentialTemplatesResponse extends com.google.protobuf.GeneratedMessageV3 implements`

Protobuf type {@code services.verifiablecredentials.templates.v1.SearchCredentialTemplatesResponse}

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

Protobuf type {@code services.verifiablecredentials.templates.v1.SearchCredentialTemplatesResponse}

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

## `java.lang.String getQuery()`

<pre> SELECT * FROM c WHERE c.name = 'Diploma' </pre>

`string query = 1;`

 * **Returns:** The query.

## `com.google.protobuf.ByteString getQueryBytes()`

<pre> SELECT * FROM c WHERE c.name = 'Diploma' </pre>

`string query = 1;`

 * **Returns:** The bytes for query.

## `java.lang.String getContinuationToken()`

`string continuation_token = 2;`

 * **Returns:** The continuationToken.

## `com.google.protobuf.ByteString getContinuationTokenBytes()`

`string continuation_token = 2;`

 * **Returns:** The bytes for continuationToken.

## `public static final class ListCredentialTemplatesRequest extends com.google.protobuf.GeneratedMessageV3 implements`

Protobuf type {@code services.verifiablecredentials.templates.v1.ListCredentialTemplatesRequest}

## `@java.lang.Override public java.lang.String getQuery()`

<pre> SELECT * FROM c WHERE c.name = 'Diploma' </pre>

`string query = 1;`

 * **Returns:** The query.

## `@java.lang.Override public com.google.protobuf.ByteString getQueryBytes()`

<pre> SELECT * FROM c WHERE c.name = 'Diploma' </pre>

`string query = 1;`

 * **Returns:** The bytes for query.

## `@java.lang.Override public java.lang.String getContinuationToken()`

`string continuation_token = 2;`

 * **Returns:** The continuationToken.

## `@java.lang.Override public com.google.protobuf.ByteString getContinuationTokenBytes()`

`string continuation_token = 2;`

 * **Returns:** The bytes for continuationToken.

## `public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder> implements`

Protobuf type {@code services.verifiablecredentials.templates.v1.ListCredentialTemplatesRequest}

## `public java.lang.String getQuery()`

<pre> SELECT * FROM c WHERE c.name = 'Diploma' </pre>

`string query = 1;`

 * **Returns:** The query.

## `public com.google.protobuf.ByteString getQueryBytes()`

<pre> SELECT * FROM c WHERE c.name = 'Diploma' </pre>

`string query = 1;`

 * **Returns:** The bytes for query.

## `public Builder setQuery( java.lang.String value)`

<pre> SELECT * FROM c WHERE c.name = 'Diploma' </pre>

`string query = 1;`

 * **Parameters:** `value` — The query to set.
 * **Returns:** This builder for chaining.

## `public Builder clearQuery()`

<pre> SELECT * FROM c WHERE c.name = 'Diploma' </pre>

`string query = 1;`

 * **Returns:** This builder for chaining.

## `public Builder setQueryBytes( com.google.protobuf.ByteString value)`

<pre> SELECT * FROM c WHERE c.name = 'Diploma' </pre>

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

## `java.util.List<trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateData> getTemplatesList()`

`repeated .services.verifiablecredentials.templates.v1.TemplateData templates = 1;`

## `trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateData getTemplates(int index)`

`repeated .services.verifiablecredentials.templates.v1.TemplateData templates = 1;`

## `int getTemplatesCount()`

`repeated .services.verifiablecredentials.templates.v1.TemplateData templates = 1;`

## `java.util.List<? extends trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateDataOrBuilder> getTemplatesOrBuilderList()`

`repeated .services.verifiablecredentials.templates.v1.TemplateData templates = 1;`

## `trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateDataOrBuilder getTemplatesOrBuilder( int index)`

`repeated .services.verifiablecredentials.templates.v1.TemplateData templates = 1;`

## `boolean getHasMoreResults()`

`bool has_more_results = 2;`

 * **Returns:** The hasMoreResults.

## `java.lang.String getContinuationToken()`

`string continuation_token = 3;`

 * **Returns:** The continuationToken.

## `com.google.protobuf.ByteString getContinuationTokenBytes()`

`string continuation_token = 3;`

 * **Returns:** The bytes for continuationToken.

## `public static final class ListCredentialTemplatesResponse extends com.google.protobuf.GeneratedMessageV3 implements`

Protobuf type {@code services.verifiablecredentials.templates.v1.ListCredentialTemplatesResponse}

## `@java.lang.Override public java.util.List<trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateData> getTemplatesList()`

`repeated .services.verifiablecredentials.templates.v1.TemplateData templates = 1;`

## `@java.lang.Override public java.util.List<? extends trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateDataOrBuilder> getTemplatesOrBuilderList()`

`repeated .services.verifiablecredentials.templates.v1.TemplateData templates = 1;`

## `@java.lang.Override public int getTemplatesCount()`

`repeated .services.verifiablecredentials.templates.v1.TemplateData templates = 1;`

## `@java.lang.Override public trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateData getTemplates(int index)`

`repeated .services.verifiablecredentials.templates.v1.TemplateData templates = 1;`

## `@java.lang.Override public trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateDataOrBuilder getTemplatesOrBuilder( int index)`

`repeated .services.verifiablecredentials.templates.v1.TemplateData templates = 1;`

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

Protobuf type {@code services.verifiablecredentials.templates.v1.ListCredentialTemplatesResponse}

## `public java.util.List<trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateData> getTemplatesList()`

`repeated .services.verifiablecredentials.templates.v1.TemplateData templates = 1;`

## `public int getTemplatesCount()`

`repeated .services.verifiablecredentials.templates.v1.TemplateData templates = 1;`

## `public trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateData getTemplates(int index)`

`repeated .services.verifiablecredentials.templates.v1.TemplateData templates = 1;`

## `public Builder setTemplates( int index, trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateData value)`

`repeated .services.verifiablecredentials.templates.v1.TemplateData templates = 1;`

## `public Builder setTemplates( int index, trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateData.Builder builderForValue)`

`repeated .services.verifiablecredentials.templates.v1.TemplateData templates = 1;`

## `public Builder addTemplates(trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateData value)`

`repeated .services.verifiablecredentials.templates.v1.TemplateData templates = 1;`

## `public Builder addTemplates( int index, trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateData value)`

`repeated .services.verifiablecredentials.templates.v1.TemplateData templates = 1;`

## `public Builder addTemplates( trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateData.Builder builderForValue)`

`repeated .services.verifiablecredentials.templates.v1.TemplateData templates = 1;`

## `public Builder addTemplates( int index, trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateData.Builder builderForValue)`

`repeated .services.verifiablecredentials.templates.v1.TemplateData templates = 1;`

## `public Builder addAllTemplates( java.lang.Iterable<? extends trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateData> values)`

`repeated .services.verifiablecredentials.templates.v1.TemplateData templates = 1;`

## `public Builder clearTemplates()`

`repeated .services.verifiablecredentials.templates.v1.TemplateData templates = 1;`

## `public Builder removeTemplates(int index)`

`repeated .services.verifiablecredentials.templates.v1.TemplateData templates = 1;`

## `public trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateData.Builder getTemplatesBuilder( int index)`

`repeated .services.verifiablecredentials.templates.v1.TemplateData templates = 1;`

## `public trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateDataOrBuilder getTemplatesOrBuilder( int index)`

`repeated .services.verifiablecredentials.templates.v1.TemplateData templates = 1;`

## `public java.util.List<? extends trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateDataOrBuilder> getTemplatesOrBuilderList()`

`repeated .services.verifiablecredentials.templates.v1.TemplateData templates = 1;`

## `public trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateData.Builder addTemplatesBuilder()`

`repeated .services.verifiablecredentials.templates.v1.TemplateData templates = 1;`

## `public trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateData.Builder addTemplatesBuilder( int index)`

`repeated .services.verifiablecredentials.templates.v1.TemplateData templates = 1;`

## `public java.util.List<trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateData.Builder> getTemplatesBuilderList()`

`repeated .services.verifiablecredentials.templates.v1.TemplateData templates = 1;`

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

## `java.lang.String getId()`

`string id = 1;`

 * **Returns:** The id.

## `com.google.protobuf.ByteString getIdBytes()`

`string id = 1;`

 * **Returns:** The bytes for id.

## `public static final class DeleteCredentialTemplateRequest extends com.google.protobuf.GeneratedMessageV3 implements`

Protobuf type {@code services.verifiablecredentials.templates.v1.DeleteCredentialTemplateRequest}

## `@java.lang.Override public java.lang.String getId()`

`string id = 1;`

 * **Returns:** The id.

## `@java.lang.Override public com.google.protobuf.ByteString getIdBytes()`

`string id = 1;`

 * **Returns:** The bytes for id.

## `public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder> implements`

Protobuf type {@code services.verifiablecredentials.templates.v1.DeleteCredentialTemplateRequest}

## `public java.lang.String getId()`

`string id = 1;`

 * **Returns:** The id.

## `public com.google.protobuf.ByteString getIdBytes()`

`string id = 1;`

 * **Returns:** The bytes for id.

## `public Builder setId( java.lang.String value)`

`string id = 1;`

 * **Parameters:** `value` — The id to set.
 * **Returns:** This builder for chaining.

## `public Builder clearId()`

`string id = 1;`

 * **Returns:** This builder for chaining.

## `public Builder setIdBytes( com.google.protobuf.ByteString value)`

`string id = 1;`

 * **Parameters:** `value` — The bytes for id to set.
 * **Returns:** This builder for chaining.

## `public static final class DeleteCredentialTemplateResponse extends com.google.protobuf.GeneratedMessageV3 implements`

Protobuf type {@code services.verifiablecredentials.templates.v1.DeleteCredentialTemplateResponse}

## `public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder> implements`

Protobuf type {@code services.verifiablecredentials.templates.v1.DeleteCredentialTemplateResponse}

## `java.lang.String getName()`

`string name = 1;`

 * **Returns:** The name.

## `com.google.protobuf.ByteString getNameBytes()`

`string name = 1;`

 * **Returns:** The bytes for name.

## `int getFieldsCount()`

`map&lt;string, .services.verifiablecredentials.templates.v1.TemplateField&gt; fields = 2;`

## `boolean containsFields( java.lang.String key)`

`map&lt;string, .services.verifiablecredentials.templates.v1.TemplateField&gt; fields = 2;`

## `@java.lang.Deprecated java.util.Map<java.lang.String, trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateField> getFields()`

Use {@link #getFieldsMap()} instead.

## `java.util.Map<java.lang.String, trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateField> getFieldsMap()`

`map&lt;string, .services.verifiablecredentials.templates.v1.TemplateField&gt; fields = 2;`

## `trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateField getFieldsOrDefault( java.lang.String key, trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateField defaultValue)`

`map&lt;string, .services.verifiablecredentials.templates.v1.TemplateField&gt; fields = 2;`

## `trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateField getFieldsOrThrow( java.lang.String key)`

`map&lt;string, .services.verifiablecredentials.templates.v1.TemplateField&gt; fields = 2;`

## `boolean getAllowAdditionalFields()`

`bool allow_additional_fields = 3;`

 * **Returns:** The allowAdditionalFields.

## `public static final class CreateCredentialTemplateRequest extends com.google.protobuf.GeneratedMessageV3 implements`

<pre> Request to create new template </pre>

Protobuf type {@code services.verifiablecredentials.templates.v1.CreateCredentialTemplateRequest}

## `@java.lang.Override public java.lang.String getName()`

`string name = 1;`

 * **Returns:** The name.

## `@java.lang.Override public com.google.protobuf.ByteString getNameBytes()`

`string name = 1;`

 * **Returns:** The bytes for name.

## `@java.lang.Override public boolean containsFields( java.lang.String key)`

`map&lt;string, .services.verifiablecredentials.templates.v1.TemplateField&gt; fields = 2;`

## `@java.lang.Override @java.lang.Deprecated public java.util.Map<java.lang.String, trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateField> getFields()`

Use {@link #getFieldsMap()} instead.

## `@java.lang.Override  public java.util.Map<java.lang.String, trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateField> getFieldsMap()`

`map&lt;string, .services.verifiablecredentials.templates.v1.TemplateField&gt; fields = 2;`

## `@java.lang.Override  public trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateField getFieldsOrDefault( java.lang.String key, trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateField defaultValue)`

`map&lt;string, .services.verifiablecredentials.templates.v1.TemplateField&gt; fields = 2;`

## `@java.lang.Override  public trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateField getFieldsOrThrow( java.lang.String key)`

`map&lt;string, .services.verifiablecredentials.templates.v1.TemplateField&gt; fields = 2;`

## `@java.lang.Override public boolean getAllowAdditionalFields()`

`bool allow_additional_fields = 3;`

 * **Returns:** The allowAdditionalFields.

## `public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder> implements`

<pre> Request to create new template </pre>

Protobuf type {@code services.verifiablecredentials.templates.v1.CreateCredentialTemplateRequest}

## `public java.lang.String getName()`

`string name = 1;`

 * **Returns:** The name.

## `public com.google.protobuf.ByteString getNameBytes()`

`string name = 1;`

 * **Returns:** The bytes for name.

## `public Builder setName( java.lang.String value)`

`string name = 1;`

 * **Parameters:** `value` — The name to set.
 * **Returns:** This builder for chaining.

## `public Builder clearName()`

`string name = 1;`

 * **Returns:** This builder for chaining.

## `public Builder setNameBytes( com.google.protobuf.ByteString value)`

`string name = 1;`

 * **Parameters:** `value` — The bytes for name to set.
 * **Returns:** This builder for chaining.

## `@java.lang.Override public boolean containsFields( java.lang.String key)`

`map&lt;string, .services.verifiablecredentials.templates.v1.TemplateField&gt; fields = 2;`

## `@java.lang.Override @java.lang.Deprecated public java.util.Map<java.lang.String, trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateField> getFields()`

Use {@link #getFieldsMap()} instead.

## `@java.lang.Override  public java.util.Map<java.lang.String, trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateField> getFieldsMap()`

`map&lt;string, .services.verifiablecredentials.templates.v1.TemplateField&gt; fields = 2;`

## `@java.lang.Override  public trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateField getFieldsOrDefault( java.lang.String key, trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateField defaultValue)`

`map&lt;string, .services.verifiablecredentials.templates.v1.TemplateField&gt; fields = 2;`

## `@java.lang.Override  public trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateField getFieldsOrThrow( java.lang.String key)`

`map&lt;string, .services.verifiablecredentials.templates.v1.TemplateField&gt; fields = 2;`

## `public Builder removeFields( java.lang.String key)`

`map&lt;string, .services.verifiablecredentials.templates.v1.TemplateField&gt; fields = 2;`

## `@java.lang.Deprecated public java.util.Map<java.lang.String, trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateField> getMutableFields()`

Use alternate mutation accessors instead.

## `public Builder putFields( java.lang.String key, trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateField value)`

`map&lt;string, .services.verifiablecredentials.templates.v1.TemplateField&gt; fields = 2;`

## `public Builder putAllFields( java.util.Map<java.lang.String, trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateField> values)`

`map&lt;string, .services.verifiablecredentials.templates.v1.TemplateField&gt; fields = 2;`

## `@java.lang.Override public boolean getAllowAdditionalFields()`

`bool allow_additional_fields = 3;`

 * **Returns:** The allowAdditionalFields.

## `public Builder setAllowAdditionalFields(boolean value)`

`bool allow_additional_fields = 3;`

 * **Parameters:** `value` — The allowAdditionalFields to set.
 * **Returns:** This builder for chaining.

## `public Builder clearAllowAdditionalFields()`

`bool allow_additional_fields = 3;`

 * **Returns:** This builder for chaining.

## `boolean hasData()`

`.services.verifiablecredentials.templates.v1.TemplateData data = 1;`

 * **Returns:** Whether the data field is set.

## `trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateData getData()`

`.services.verifiablecredentials.templates.v1.TemplateData data = 1;`

 * **Returns:** The data.

## `trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateDataOrBuilder getDataOrBuilder()`

`.services.verifiablecredentials.templates.v1.TemplateData data = 1;`

## `public static final class CreateCredentialTemplateResponse extends com.google.protobuf.GeneratedMessageV3 implements`

Protobuf type {@code services.verifiablecredentials.templates.v1.CreateCredentialTemplateResponse}

## `@java.lang.Override public boolean hasData()`

`.services.verifiablecredentials.templates.v1.TemplateData data = 1;`

 * **Returns:** Whether the data field is set.

## `@java.lang.Override public trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateData getData()`

`.services.verifiablecredentials.templates.v1.TemplateData data = 1;`

 * **Returns:** The data.

## `@java.lang.Override public trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateDataOrBuilder getDataOrBuilder()`

`.services.verifiablecredentials.templates.v1.TemplateData data = 1;`

## `public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder> implements`

Protobuf type {@code services.verifiablecredentials.templates.v1.CreateCredentialTemplateResponse}

## `public boolean hasData()`

`.services.verifiablecredentials.templates.v1.TemplateData data = 1;`

 * **Returns:** Whether the data field is set.

## `public trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateData getData()`

`.services.verifiablecredentials.templates.v1.TemplateData data = 1;`

 * **Returns:** The data.

## `public Builder setData(trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateData value)`

`.services.verifiablecredentials.templates.v1.TemplateData data = 1;`

## `public Builder setData( trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateData.Builder builderForValue)`

`.services.verifiablecredentials.templates.v1.TemplateData data = 1;`

## `public Builder mergeData(trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateData value)`

`.services.verifiablecredentials.templates.v1.TemplateData data = 1;`

## `public Builder clearData()`

`.services.verifiablecredentials.templates.v1.TemplateData data = 1;`

## `public trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateData.Builder getDataBuilder()`

`.services.verifiablecredentials.templates.v1.TemplateData data = 1;`

## `public trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateDataOrBuilder getDataOrBuilder()`

`.services.verifiablecredentials.templates.v1.TemplateData data = 1;`

## `private com.google.protobuf.SingleFieldBuilderV3< trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateData, trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateData.Builder, trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateDataOrBuilder> getDataFieldBuilder()`

`.services.verifiablecredentials.templates.v1.TemplateData data = 1;`

## `java.lang.String getDescription()`

`string description = 2;`

 * **Returns:** The description.

## `com.google.protobuf.ByteString getDescriptionBytes()`

`string description = 2;`

 * **Returns:** The bytes for description.

## `boolean getOptional()`

`bool optional = 3;`

 * **Returns:** The optional.

## `int getTypeValue()`

`.services.verifiablecredentials.templates.v1.FieldType type = 4;`

 * **Returns:** The enum numeric value on the wire for type.

## `trinsic.services.verifiablecredentials.templates.v1.Templates.FieldType getType()`

`.services.verifiablecredentials.templates.v1.FieldType type = 4;`

 * **Returns:** The type.

## `public static final class TemplateField extends com.google.protobuf.GeneratedMessageV3 implements`

Protobuf type {@code services.verifiablecredentials.templates.v1.TemplateField}

## `@java.lang.Override public java.lang.String getDescription()`

`string description = 2;`

 * **Returns:** The description.

## `@java.lang.Override public com.google.protobuf.ByteString getDescriptionBytes()`

`string description = 2;`

 * **Returns:** The bytes for description.

## `@java.lang.Override public boolean getOptional()`

`bool optional = 3;`

 * **Returns:** The optional.

## `@java.lang.Override public int getTypeValue()`

`.services.verifiablecredentials.templates.v1.FieldType type = 4;`

 * **Returns:** The enum numeric value on the wire for type.

## `@java.lang.Override public trinsic.services.verifiablecredentials.templates.v1.Templates.FieldType getType()`

`.services.verifiablecredentials.templates.v1.FieldType type = 4;`

 * **Returns:** The type.

## `public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder> implements`

Protobuf type {@code services.verifiablecredentials.templates.v1.TemplateField}

## `public java.lang.String getDescription()`

`string description = 2;`

 * **Returns:** The description.

## `public com.google.protobuf.ByteString getDescriptionBytes()`

`string description = 2;`

 * **Returns:** The bytes for description.

## `public Builder setDescription( java.lang.String value)`

`string description = 2;`

 * **Parameters:** `value` — The description to set.
 * **Returns:** This builder for chaining.

## `public Builder clearDescription()`

`string description = 2;`

 * **Returns:** This builder for chaining.

## `public Builder setDescriptionBytes( com.google.protobuf.ByteString value)`

`string description = 2;`

 * **Parameters:** `value` — The bytes for description to set.
 * **Returns:** This builder for chaining.

## `@java.lang.Override public boolean getOptional()`

`bool optional = 3;`

 * **Returns:** The optional.

## `public Builder setOptional(boolean value)`

`bool optional = 3;`

 * **Parameters:** `value` — The optional to set.
 * **Returns:** This builder for chaining.

## `public Builder clearOptional()`

`bool optional = 3;`

 * **Returns:** This builder for chaining.

## `@java.lang.Override public int getTypeValue()`

`.services.verifiablecredentials.templates.v1.FieldType type = 4;`

 * **Returns:** The enum numeric value on the wire for type.

## `public Builder setTypeValue(int value)`

`.services.verifiablecredentials.templates.v1.FieldType type = 4;`

 * **Parameters:** `value` — The enum numeric value on the wire for type to set.
 * **Returns:** This builder for chaining.

## `@java.lang.Override public trinsic.services.verifiablecredentials.templates.v1.Templates.FieldType getType()`

`.services.verifiablecredentials.templates.v1.FieldType type = 4;`

 * **Returns:** The type.

## `public Builder setType(trinsic.services.verifiablecredentials.templates.v1.Templates.FieldType value)`

`.services.verifiablecredentials.templates.v1.FieldType type = 4;`

 * **Parameters:** `value` — The type to set.
 * **Returns:** This builder for chaining.

## `public Builder clearType()`

`.services.verifiablecredentials.templates.v1.FieldType type = 4;`

 * **Returns:** This builder for chaining.

## `java.lang.String getId()`

`string id = 1;`

 * **Returns:** The id.

## `com.google.protobuf.ByteString getIdBytes()`

`string id = 1;`

 * **Returns:** The bytes for id.

## `public static final class GetTemplateRequest extends com.google.protobuf.GeneratedMessageV3 implements`

Protobuf type {@code services.verifiablecredentials.templates.v1.GetTemplateRequest}

## `@java.lang.Override public java.lang.String getId()`

`string id = 1;`

 * **Returns:** The id.

## `@java.lang.Override public com.google.protobuf.ByteString getIdBytes()`

`string id = 1;`

 * **Returns:** The bytes for id.

## `public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder> implements`

Protobuf type {@code services.verifiablecredentials.templates.v1.GetTemplateRequest}

## `public java.lang.String getId()`

`string id = 1;`

 * **Returns:** The id.

## `public com.google.protobuf.ByteString getIdBytes()`

`string id = 1;`

 * **Returns:** The bytes for id.

## `public Builder setId( java.lang.String value)`

`string id = 1;`

 * **Parameters:** `value` — The id to set.
 * **Returns:** This builder for chaining.

## `public Builder clearId()`

`string id = 1;`

 * **Returns:** This builder for chaining.

## `public Builder setIdBytes( com.google.protobuf.ByteString value)`

`string id = 1;`

 * **Parameters:** `value` — The bytes for id to set.
 * **Returns:** This builder for chaining.

## `boolean hasData()`

`.services.verifiablecredentials.templates.v1.TemplateData data = 1;`

 * **Returns:** Whether the data field is set.

## `trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateData getData()`

`.services.verifiablecredentials.templates.v1.TemplateData data = 1;`

 * **Returns:** The data.

## `trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateDataOrBuilder getDataOrBuilder()`

`.services.verifiablecredentials.templates.v1.TemplateData data = 1;`

## `public static final class GetTemplateResponse extends com.google.protobuf.GeneratedMessageV3 implements`

Protobuf type {@code services.verifiablecredentials.templates.v1.GetTemplateResponse}

## `@java.lang.Override public boolean hasData()`

`.services.verifiablecredentials.templates.v1.TemplateData data = 1;`

 * **Returns:** Whether the data field is set.

## `@java.lang.Override public trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateData getData()`

`.services.verifiablecredentials.templates.v1.TemplateData data = 1;`

 * **Returns:** The data.

## `@java.lang.Override public trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateDataOrBuilder getDataOrBuilder()`

`.services.verifiablecredentials.templates.v1.TemplateData data = 1;`

## `public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder> implements`

Protobuf type {@code services.verifiablecredentials.templates.v1.GetTemplateResponse}

## `public boolean hasData()`

`.services.verifiablecredentials.templates.v1.TemplateData data = 1;`

 * **Returns:** Whether the data field is set.

## `public trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateData getData()`

`.services.verifiablecredentials.templates.v1.TemplateData data = 1;`

 * **Returns:** The data.

## `public Builder setData(trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateData value)`

`.services.verifiablecredentials.templates.v1.TemplateData data = 1;`

## `public Builder setData( trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateData.Builder builderForValue)`

`.services.verifiablecredentials.templates.v1.TemplateData data = 1;`

## `public Builder mergeData(trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateData value)`

`.services.verifiablecredentials.templates.v1.TemplateData data = 1;`

## `public Builder clearData()`

`.services.verifiablecredentials.templates.v1.TemplateData data = 1;`

## `public trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateData.Builder getDataBuilder()`

`.services.verifiablecredentials.templates.v1.TemplateData data = 1;`

## `public trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateDataOrBuilder getDataOrBuilder()`

`.services.verifiablecredentials.templates.v1.TemplateData data = 1;`

## `private com.google.protobuf.SingleFieldBuilderV3< trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateData, trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateData.Builder, trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateDataOrBuilder> getDataFieldBuilder()`

`.services.verifiablecredentials.templates.v1.TemplateData data = 1;`

## `public static final class ListTemplatesRequest extends com.google.protobuf.GeneratedMessageV3 implements`

Protobuf type {@code services.verifiablecredentials.templates.v1.ListTemplatesRequest}

## `public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder> implements`

Protobuf type {@code services.verifiablecredentials.templates.v1.ListTemplatesRequest}

## `java.util.List<trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateData> getTemplatesList()`

`repeated .services.verifiablecredentials.templates.v1.TemplateData templates = 1;`

## `trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateData getTemplates(int index)`

`repeated .services.verifiablecredentials.templates.v1.TemplateData templates = 1;`

## `int getTemplatesCount()`

`repeated .services.verifiablecredentials.templates.v1.TemplateData templates = 1;`

## `java.util.List<? extends trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateDataOrBuilder> getTemplatesOrBuilderList()`

`repeated .services.verifiablecredentials.templates.v1.TemplateData templates = 1;`

## `trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateDataOrBuilder getTemplatesOrBuilder( int index)`

`repeated .services.verifiablecredentials.templates.v1.TemplateData templates = 1;`

## `public static final class ListTemplatesResponse extends com.google.protobuf.GeneratedMessageV3 implements`

Protobuf type {@code services.verifiablecredentials.templates.v1.ListTemplatesResponse}

## `@java.lang.Override public java.util.List<trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateData> getTemplatesList()`

`repeated .services.verifiablecredentials.templates.v1.TemplateData templates = 1;`

## `@java.lang.Override public java.util.List<? extends trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateDataOrBuilder> getTemplatesOrBuilderList()`

`repeated .services.verifiablecredentials.templates.v1.TemplateData templates = 1;`

## `@java.lang.Override public int getTemplatesCount()`

`repeated .services.verifiablecredentials.templates.v1.TemplateData templates = 1;`

## `@java.lang.Override public trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateData getTemplates(int index)`

`repeated .services.verifiablecredentials.templates.v1.TemplateData templates = 1;`

## `@java.lang.Override public trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateDataOrBuilder getTemplatesOrBuilder( int index)`

`repeated .services.verifiablecredentials.templates.v1.TemplateData templates = 1;`

## `public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder> implements`

Protobuf type {@code services.verifiablecredentials.templates.v1.ListTemplatesResponse}

## `public java.util.List<trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateData> getTemplatesList()`

`repeated .services.verifiablecredentials.templates.v1.TemplateData templates = 1;`

## `public int getTemplatesCount()`

`repeated .services.verifiablecredentials.templates.v1.TemplateData templates = 1;`

## `public trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateData getTemplates(int index)`

`repeated .services.verifiablecredentials.templates.v1.TemplateData templates = 1;`

## `public Builder setTemplates( int index, trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateData value)`

`repeated .services.verifiablecredentials.templates.v1.TemplateData templates = 1;`

## `public Builder setTemplates( int index, trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateData.Builder builderForValue)`

`repeated .services.verifiablecredentials.templates.v1.TemplateData templates = 1;`

## `public Builder addTemplates(trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateData value)`

`repeated .services.verifiablecredentials.templates.v1.TemplateData templates = 1;`

## `public Builder addTemplates( int index, trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateData value)`

`repeated .services.verifiablecredentials.templates.v1.TemplateData templates = 1;`

## `public Builder addTemplates( trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateData.Builder builderForValue)`

`repeated .services.verifiablecredentials.templates.v1.TemplateData templates = 1;`

## `public Builder addTemplates( int index, trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateData.Builder builderForValue)`

`repeated .services.verifiablecredentials.templates.v1.TemplateData templates = 1;`

## `public Builder addAllTemplates( java.lang.Iterable<? extends trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateData> values)`

`repeated .services.verifiablecredentials.templates.v1.TemplateData templates = 1;`

## `public Builder clearTemplates()`

`repeated .services.verifiablecredentials.templates.v1.TemplateData templates = 1;`

## `public Builder removeTemplates(int index)`

`repeated .services.verifiablecredentials.templates.v1.TemplateData templates = 1;`

## `public trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateData.Builder getTemplatesBuilder( int index)`

`repeated .services.verifiablecredentials.templates.v1.TemplateData templates = 1;`

## `public trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateDataOrBuilder getTemplatesOrBuilder( int index)`

`repeated .services.verifiablecredentials.templates.v1.TemplateData templates = 1;`

## `public java.util.List<? extends trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateDataOrBuilder> getTemplatesOrBuilderList()`

`repeated .services.verifiablecredentials.templates.v1.TemplateData templates = 1;`

## `public trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateData.Builder addTemplatesBuilder()`

`repeated .services.verifiablecredentials.templates.v1.TemplateData templates = 1;`

## `public trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateData.Builder addTemplatesBuilder( int index)`

`repeated .services.verifiablecredentials.templates.v1.TemplateData templates = 1;`

## `public java.util.List<trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateData.Builder> getTemplatesBuilderList()`

`repeated .services.verifiablecredentials.templates.v1.TemplateData templates = 1;`

## `java.lang.String getId()`

`string id = 1 [json_name = "id"];`

 * **Returns:** The id.

## `com.google.protobuf.ByteString getIdBytes()`

`string id = 1 [json_name = "id"];`

 * **Returns:** The bytes for id.

## `java.lang.String getName()`

`string name = 2;`

 * **Returns:** The name.

## `com.google.protobuf.ByteString getNameBytes()`

`string name = 2;`

 * **Returns:** The bytes for name.

## `int getVersion()`

`int32 version = 3;`

 * **Returns:** The version.

## `int getFieldsCount()`

`map&lt;string, .services.verifiablecredentials.templates.v1.TemplateField&gt; fields = 4;`

## `boolean containsFields( java.lang.String key)`

`map&lt;string, .services.verifiablecredentials.templates.v1.TemplateField&gt; fields = 4;`

## `@java.lang.Deprecated java.util.Map<java.lang.String, trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateField> getFields()`

Use {@link #getFieldsMap()} instead.

## `java.util.Map<java.lang.String, trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateField> getFieldsMap()`

`map&lt;string, .services.verifiablecredentials.templates.v1.TemplateField&gt; fields = 4;`

## `trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateField getFieldsOrDefault( java.lang.String key, trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateField defaultValue)`

`map&lt;string, .services.verifiablecredentials.templates.v1.TemplateField&gt; fields = 4;`

## `trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateField getFieldsOrThrow( java.lang.String key)`

`map&lt;string, .services.verifiablecredentials.templates.v1.TemplateField&gt; fields = 4;`

## `boolean getAllowAdditionalFields()`

`bool allow_additional_fields = 5;`

 * **Returns:** The allowAdditionalFields.

## `java.lang.String getSchemaUri()`

`string schema_uri = 6;`

 * **Returns:** The schemaUri.

## `com.google.protobuf.ByteString getSchemaUriBytes()`

`string schema_uri = 6;`

 * **Returns:** The bytes for schemaUri.

## `java.lang.String getContextUri()`

`string context_uri = 7;`

 * **Returns:** The contextUri.

## `com.google.protobuf.ByteString getContextUriBytes()`

`string context_uri = 7;`

 * **Returns:** The bytes for contextUri.

## `java.lang.String getEcosystemId()`

`string ecosystem_id = 8 [json_name = "_ecosystemId"];`

 * **Returns:** The ecosystemId.

## `com.google.protobuf.ByteString getEcosystemIdBytes()`

`string ecosystem_id = 8 [json_name = "_ecosystemId"];`

 * **Returns:** The bytes for ecosystemId.

## `java.lang.String getType()`

`string type = 9 [json_name = "type"];`

 * **Returns:** The type.

## `com.google.protobuf.ByteString getTypeBytes()`

`string type = 9 [json_name = "type"];`

 * **Returns:** The bytes for type.

## `public static final class TemplateData extends com.google.protobuf.GeneratedMessageV3 implements`

Protobuf type {@code services.verifiablecredentials.templates.v1.TemplateData}

## `@java.lang.Override public java.lang.String getId()`

`string id = 1 [json_name = "id"];`

 * **Returns:** The id.

## `@java.lang.Override public com.google.protobuf.ByteString getIdBytes()`

`string id = 1 [json_name = "id"];`

 * **Returns:** The bytes for id.

## `@java.lang.Override public java.lang.String getName()`

`string name = 2;`

 * **Returns:** The name.

## `@java.lang.Override public com.google.protobuf.ByteString getNameBytes()`

`string name = 2;`

 * **Returns:** The bytes for name.

## `@java.lang.Override public int getVersion()`

`int32 version = 3;`

 * **Returns:** The version.

## `@java.lang.Override public boolean containsFields( java.lang.String key)`

`map&lt;string, .services.verifiablecredentials.templates.v1.TemplateField&gt; fields = 4;`

## `@java.lang.Override @java.lang.Deprecated public java.util.Map<java.lang.String, trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateField> getFields()`

Use {@link #getFieldsMap()} instead.

## `@java.lang.Override  public java.util.Map<java.lang.String, trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateField> getFieldsMap()`

`map&lt;string, .services.verifiablecredentials.templates.v1.TemplateField&gt; fields = 4;`

## `@java.lang.Override  public trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateField getFieldsOrDefault( java.lang.String key, trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateField defaultValue)`

`map&lt;string, .services.verifiablecredentials.templates.v1.TemplateField&gt; fields = 4;`

## `@java.lang.Override  public trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateField getFieldsOrThrow( java.lang.String key)`

`map&lt;string, .services.verifiablecredentials.templates.v1.TemplateField&gt; fields = 4;`

## `@java.lang.Override public boolean getAllowAdditionalFields()`

`bool allow_additional_fields = 5;`

 * **Returns:** The allowAdditionalFields.

## `@java.lang.Override public java.lang.String getSchemaUri()`

`string schema_uri = 6;`

 * **Returns:** The schemaUri.

## `@java.lang.Override public com.google.protobuf.ByteString getSchemaUriBytes()`

`string schema_uri = 6;`

 * **Returns:** The bytes for schemaUri.

## `@java.lang.Override public java.lang.String getContextUri()`

`string context_uri = 7;`

 * **Returns:** The contextUri.

## `@java.lang.Override public com.google.protobuf.ByteString getContextUriBytes()`

`string context_uri = 7;`

 * **Returns:** The bytes for contextUri.

## `@java.lang.Override public java.lang.String getEcosystemId()`

`string ecosystem_id = 8 [json_name = "_ecosystemId"];`

 * **Returns:** The ecosystemId.

## `@java.lang.Override public com.google.protobuf.ByteString getEcosystemIdBytes()`

`string ecosystem_id = 8 [json_name = "_ecosystemId"];`

 * **Returns:** The bytes for ecosystemId.

## `@java.lang.Override public java.lang.String getType()`

`string type = 9 [json_name = "type"];`

 * **Returns:** The type.

## `@java.lang.Override public com.google.protobuf.ByteString getTypeBytes()`

`string type = 9 [json_name = "type"];`

 * **Returns:** The bytes for type.

## `public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder> implements`

Protobuf type {@code services.verifiablecredentials.templates.v1.TemplateData}

## `public java.lang.String getId()`

`string id = 1 [json_name = "id"];`

 * **Returns:** The id.

## `public com.google.protobuf.ByteString getIdBytes()`

`string id = 1 [json_name = "id"];`

 * **Returns:** The bytes for id.

## `public Builder setId( java.lang.String value)`

`string id = 1 [json_name = "id"];`

 * **Parameters:** `value` — The id to set.
 * **Returns:** This builder for chaining.

## `public Builder clearId()`

`string id = 1 [json_name = "id"];`

 * **Returns:** This builder for chaining.

## `public Builder setIdBytes( com.google.protobuf.ByteString value)`

`string id = 1 [json_name = "id"];`

 * **Parameters:** `value` — The bytes for id to set.
 * **Returns:** This builder for chaining.

## `public java.lang.String getName()`

`string name = 2;`

 * **Returns:** The name.

## `public com.google.protobuf.ByteString getNameBytes()`

`string name = 2;`

 * **Returns:** The bytes for name.

## `public Builder setName( java.lang.String value)`

`string name = 2;`

 * **Parameters:** `value` — The name to set.
 * **Returns:** This builder for chaining.

## `public Builder clearName()`

`string name = 2;`

 * **Returns:** This builder for chaining.

## `public Builder setNameBytes( com.google.protobuf.ByteString value)`

`string name = 2;`

 * **Parameters:** `value` — The bytes for name to set.
 * **Returns:** This builder for chaining.

## `@java.lang.Override public int getVersion()`

`int32 version = 3;`

 * **Returns:** The version.

## `public Builder setVersion(int value)`

`int32 version = 3;`

 * **Parameters:** `value` — The version to set.
 * **Returns:** This builder for chaining.

## `public Builder clearVersion()`

`int32 version = 3;`

 * **Returns:** This builder for chaining.

## `@java.lang.Override public boolean containsFields( java.lang.String key)`

`map&lt;string, .services.verifiablecredentials.templates.v1.TemplateField&gt; fields = 4;`

## `@java.lang.Override @java.lang.Deprecated public java.util.Map<java.lang.String, trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateField> getFields()`

Use {@link #getFieldsMap()} instead.

## `@java.lang.Override  public java.util.Map<java.lang.String, trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateField> getFieldsMap()`

`map&lt;string, .services.verifiablecredentials.templates.v1.TemplateField&gt; fields = 4;`

## `@java.lang.Override  public trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateField getFieldsOrDefault( java.lang.String key, trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateField defaultValue)`

`map&lt;string, .services.verifiablecredentials.templates.v1.TemplateField&gt; fields = 4;`

## `@java.lang.Override  public trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateField getFieldsOrThrow( java.lang.String key)`

`map&lt;string, .services.verifiablecredentials.templates.v1.TemplateField&gt; fields = 4;`

## `public Builder removeFields( java.lang.String key)`

`map&lt;string, .services.verifiablecredentials.templates.v1.TemplateField&gt; fields = 4;`

## `@java.lang.Deprecated public java.util.Map<java.lang.String, trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateField> getMutableFields()`

Use alternate mutation accessors instead.

## `public Builder putFields( java.lang.String key, trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateField value)`

`map&lt;string, .services.verifiablecredentials.templates.v1.TemplateField&gt; fields = 4;`

## `public Builder putAllFields( java.util.Map<java.lang.String, trinsic.services.verifiablecredentials.templates.v1.Templates.TemplateField> values)`

`map&lt;string, .services.verifiablecredentials.templates.v1.TemplateField&gt; fields = 4;`

## `@java.lang.Override public boolean getAllowAdditionalFields()`

`bool allow_additional_fields = 5;`

 * **Returns:** The allowAdditionalFields.

## `public Builder setAllowAdditionalFields(boolean value)`

`bool allow_additional_fields = 5;`

 * **Parameters:** `value` — The allowAdditionalFields to set.
 * **Returns:** This builder for chaining.

## `public Builder clearAllowAdditionalFields()`

`bool allow_additional_fields = 5;`

 * **Returns:** This builder for chaining.

## `public java.lang.String getSchemaUri()`

`string schema_uri = 6;`

 * **Returns:** The schemaUri.

## `public com.google.protobuf.ByteString getSchemaUriBytes()`

`string schema_uri = 6;`

 * **Returns:** The bytes for schemaUri.

## `public Builder setSchemaUri( java.lang.String value)`

`string schema_uri = 6;`

 * **Parameters:** `value` — The schemaUri to set.
 * **Returns:** This builder for chaining.

## `public Builder clearSchemaUri()`

`string schema_uri = 6;`

 * **Returns:** This builder for chaining.

## `public Builder setSchemaUriBytes( com.google.protobuf.ByteString value)`

`string schema_uri = 6;`

 * **Parameters:** `value` — The bytes for schemaUri to set.
 * **Returns:** This builder for chaining.

## `public java.lang.String getContextUri()`

`string context_uri = 7;`

 * **Returns:** The contextUri.

## `public com.google.protobuf.ByteString getContextUriBytes()`

`string context_uri = 7;`

 * **Returns:** The bytes for contextUri.

## `public Builder setContextUri( java.lang.String value)`

`string context_uri = 7;`

 * **Parameters:** `value` — The contextUri to set.
 * **Returns:** This builder for chaining.

## `public Builder clearContextUri()`

`string context_uri = 7;`

 * **Returns:** This builder for chaining.

## `public Builder setContextUriBytes( com.google.protobuf.ByteString value)`

`string context_uri = 7;`

 * **Parameters:** `value` — The bytes for contextUri to set.
 * **Returns:** This builder for chaining.

## `public java.lang.String getEcosystemId()`

`string ecosystem_id = 8 [json_name = "_ecosystemId"];`

 * **Returns:** The ecosystemId.

## `public com.google.protobuf.ByteString getEcosystemIdBytes()`

`string ecosystem_id = 8 [json_name = "_ecosystemId"];`

 * **Returns:** The bytes for ecosystemId.

## `public Builder setEcosystemId( java.lang.String value)`

`string ecosystem_id = 8 [json_name = "_ecosystemId"];`

 * **Parameters:** `value` — The ecosystemId to set.
 * **Returns:** This builder for chaining.

## `public Builder clearEcosystemId()`

`string ecosystem_id = 8 [json_name = "_ecosystemId"];`

 * **Returns:** This builder for chaining.

## `public Builder setEcosystemIdBytes( com.google.protobuf.ByteString value)`

`string ecosystem_id = 8 [json_name = "_ecosystemId"];`

 * **Parameters:** `value` — The bytes for ecosystemId to set.
 * **Returns:** This builder for chaining.

## `public java.lang.String getType()`

`string type = 9 [json_name = "type"];`

 * **Returns:** The type.

## `public com.google.protobuf.ByteString getTypeBytes()`

`string type = 9 [json_name = "type"];`

 * **Returns:** The bytes for type.

## `public Builder setType( java.lang.String value)`

`string type = 9 [json_name = "type"];`

 * **Parameters:** `value` — The type to set.
 * **Returns:** This builder for chaining.

## `public Builder clearType()`

`string type = 9 [json_name = "type"];`

 * **Returns:** This builder for chaining.

## `public Builder setTypeBytes( com.google.protobuf.ByteString value)`

`string type = 9 [json_name = "type"];`

 * **Parameters:** `value` — The bytes for type to set.
 * **Returns:** This builder for chaining.
