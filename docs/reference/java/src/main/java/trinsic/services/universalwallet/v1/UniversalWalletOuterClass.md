# Documentation

## `java.lang.String getQuery()`

`string query = 1;`

 * **Returns:** The query.

## `com.google.protobuf.ByteString getQueryBytes()`

`string query = 1;`

 * **Returns:** The bytes for query.

## `java.lang.String getContinuationToken()`

`string continuation_token = 2;`

 * **Returns:** The continuationToken.

## `com.google.protobuf.ByteString getContinuationTokenBytes()`

`string continuation_token = 2;`

 * **Returns:** The bytes for continuationToken.

## `public static final class SearchRequest extends com.google.protobuf.GeneratedMessageV3 implements`

<pre> Search request object </pre>

Protobuf type {@code services.universalwallet.v1.SearchRequest}

## `@java.lang.Override public java.lang.String getQuery()`

`string query = 1;`

 * **Returns:** The query.

## `@java.lang.Override public com.google.protobuf.ByteString getQueryBytes()`

`string query = 1;`

 * **Returns:** The bytes for query.

## `@java.lang.Override public java.lang.String getContinuationToken()`

`string continuation_token = 2;`

 * **Returns:** The continuationToken.

## `@java.lang.Override public com.google.protobuf.ByteString getContinuationTokenBytes()`

`string continuation_token = 2;`

 * **Returns:** The bytes for continuationToken.

## `public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder> implements`

<pre> Search request object </pre>

Protobuf type {@code services.universalwallet.v1.SearchRequest}

## `public java.lang.String getQuery()`

`string query = 1;`

 * **Returns:** The query.

## `public com.google.protobuf.ByteString getQueryBytes()`

`string query = 1;`

 * **Returns:** The bytes for query.

## `public Builder setQuery( java.lang.String value)`

`string query = 1;`

 * **Parameters:** `value` — The query to set.
 * **Returns:** This builder for chaining.

## `public Builder clearQuery()`

`string query = 1;`

 * **Returns:** This builder for chaining.

## `public Builder setQueryBytes( com.google.protobuf.ByteString value)`

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

## `java.util.List<java.lang.String> getItemsList()`

`repeated string items = 1;`

 * **Returns:** A list containing the items.

## `int getItemsCount()`

`repeated string items = 1;`

 * **Returns:** The count of items.

## `java.lang.String getItems(int index)`

`repeated string items = 1;`

 * **Parameters:** `index` — The index of the element to return.
 * **Returns:** The items at the given index.

## `com.google.protobuf.ByteString getItemsBytes(int index)`

`repeated string items = 1;`

 * **Parameters:** `index` — The index of the value to return.
 * **Returns:** The bytes of the items at the given index.

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

## `public static final class SearchResponse extends com.google.protobuf.GeneratedMessageV3 implements`

<pre> Search response object </pre>

Protobuf type {@code services.universalwallet.v1.SearchResponse}

## `public com.google.protobuf.ProtocolStringList getItemsList()`

`repeated string items = 1;`

 * **Returns:** A list containing the items.

## `public int getItemsCount()`

`repeated string items = 1;`

 * **Returns:** The count of items.

## `public java.lang.String getItems(int index)`

`repeated string items = 1;`

 * **Parameters:** `index` — The index of the element to return.
 * **Returns:** The items at the given index.

## `public com.google.protobuf.ByteString getItemsBytes(int index)`

`repeated string items = 1;`

 * **Parameters:** `index` — The index of the value to return.
 * **Returns:** The bytes of the items at the given index.

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

<pre> Search response object </pre>

Protobuf type {@code services.universalwallet.v1.SearchResponse}

## `public com.google.protobuf.ProtocolStringList getItemsList()`

`repeated string items = 1;`

 * **Returns:** A list containing the items.

## `public int getItemsCount()`

`repeated string items = 1;`

 * **Returns:** The count of items.

## `public java.lang.String getItems(int index)`

`repeated string items = 1;`

 * **Parameters:** `index` — The index of the element to return.
 * **Returns:** The items at the given index.

## `public com.google.protobuf.ByteString getItemsBytes(int index)`

`repeated string items = 1;`

 * **Parameters:** `index` — The index of the value to return.
 * **Returns:** The bytes of the items at the given index.

## `public Builder setItems( int index, java.lang.String value)`

`repeated string items = 1;`

 * **Parameters:**
   * `index` — The index to set the value at.
   * `value` — The items to set.
 * **Returns:** This builder for chaining.

## `public Builder addItems( java.lang.String value)`

`repeated string items = 1;`

 * **Parameters:** `value` — The items to add.
 * **Returns:** This builder for chaining.

## `public Builder addAllItems( java.lang.Iterable<java.lang.String> values)`

`repeated string items = 1;`

 * **Parameters:** `values` — The items to add.
 * **Returns:** This builder for chaining.

## `public Builder clearItems()`

`repeated string items = 1;`

 * **Returns:** This builder for chaining.

## `public Builder addItemsBytes( com.google.protobuf.ByteString value)`

`repeated string items = 1;`

 * **Parameters:** `value` — The bytes of the items to add.
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

## `java.lang.String getItemId()`

<pre> The item identifier </pre>

`string item_id = 1;`

 * **Returns:** The itemId.

## `com.google.protobuf.ByteString getItemIdBytes()`

<pre> The item identifier </pre>

`string item_id = 1;`

 * **Returns:** The bytes for itemId.

## `public static final class GetItemRequest extends com.google.protobuf.GeneratedMessageV3 implements`

<pre> Get item request object </pre>

Protobuf type {@code services.universalwallet.v1.GetItemRequest}

## `@java.lang.Override public java.lang.String getItemId()`

<pre> The item identifier </pre>

`string item_id = 1;`

 * **Returns:** The itemId.

## `@java.lang.Override public com.google.protobuf.ByteString getItemIdBytes()`

<pre> The item identifier </pre>

`string item_id = 1;`

 * **Returns:** The bytes for itemId.

## `public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder> implements`

<pre> Get item request object </pre>

Protobuf type {@code services.universalwallet.v1.GetItemRequest}

## `public java.lang.String getItemId()`

<pre> The item identifier </pre>

`string item_id = 1;`

 * **Returns:** The itemId.

## `public com.google.protobuf.ByteString getItemIdBytes()`

<pre> The item identifier </pre>

`string item_id = 1;`

 * **Returns:** The bytes for itemId.

## `public Builder setItemId( java.lang.String value)`

<pre> The item identifier </pre>

`string item_id = 1;`

 * **Parameters:** `value` — The itemId to set.
 * **Returns:** This builder for chaining.

## `public Builder clearItemId()`

<pre> The item identifier </pre>

`string item_id = 1;`

 * **Returns:** This builder for chaining.

## `public Builder setItemIdBytes( com.google.protobuf.ByteString value)`

<pre> The item identifier </pre>

`string item_id = 1;`

 * **Parameters:** `value` — The bytes for itemId to set.
 * **Returns:** This builder for chaining.

## `java.lang.String getItemJson()`

<pre> The item data represented as stringified JSON </pre>

`string item_json = 1;`

 * **Returns:** The itemJson.

## `com.google.protobuf.ByteString getItemJsonBytes()`

<pre> The item data represented as stringified JSON </pre>

`string item_json = 1;`

 * **Returns:** The bytes for itemJson.

## `java.lang.String getItemType()`

<pre> User set item type that described the content of this item </pre>

`string item_type = 2;`

 * **Returns:** The itemType.

## `com.google.protobuf.ByteString getItemTypeBytes()`

<pre> User set item type that described the content of this item </pre>

`string item_type = 2;`

 * **Returns:** The bytes for itemType.

## `public static final class GetItemResponse extends com.google.protobuf.GeneratedMessageV3 implements`

<pre> Get item response object </pre>

Protobuf type {@code services.universalwallet.v1.GetItemResponse}

## `@java.lang.Override public java.lang.String getItemJson()`

<pre> The item data represented as stringified JSON </pre>

`string item_json = 1;`

 * **Returns:** The itemJson.

## `@java.lang.Override public com.google.protobuf.ByteString getItemJsonBytes()`

<pre> The item data represented as stringified JSON </pre>

`string item_json = 1;`

 * **Returns:** The bytes for itemJson.

## `@java.lang.Override public java.lang.String getItemType()`

<pre> User set item type that described the content of this item </pre>

`string item_type = 2;`

 * **Returns:** The itemType.

## `@java.lang.Override public com.google.protobuf.ByteString getItemTypeBytes()`

<pre> User set item type that described the content of this item </pre>

`string item_type = 2;`

 * **Returns:** The bytes for itemType.

## `public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder> implements`

<pre> Get item response object </pre>

Protobuf type {@code services.universalwallet.v1.GetItemResponse}

## `public java.lang.String getItemJson()`

<pre> The item data represented as stringified JSON </pre>

`string item_json = 1;`

 * **Returns:** The itemJson.

## `public com.google.protobuf.ByteString getItemJsonBytes()`

<pre> The item data represented as stringified JSON </pre>

`string item_json = 1;`

 * **Returns:** The bytes for itemJson.

## `public Builder setItemJson( java.lang.String value)`

<pre> The item data represented as stringified JSON </pre>

`string item_json = 1;`

 * **Parameters:** `value` — The itemJson to set.
 * **Returns:** This builder for chaining.

## `public Builder clearItemJson()`

<pre> The item data represented as stringified JSON </pre>

`string item_json = 1;`

 * **Returns:** This builder for chaining.

## `public Builder setItemJsonBytes( com.google.protobuf.ByteString value)`

<pre> The item data represented as stringified JSON </pre>

`string item_json = 1;`

 * **Parameters:** `value` — The bytes for itemJson to set.
 * **Returns:** This builder for chaining.

## `public java.lang.String getItemType()`

<pre> User set item type that described the content of this item </pre>

`string item_type = 2;`

 * **Returns:** The itemType.

## `public com.google.protobuf.ByteString getItemTypeBytes()`

<pre> User set item type that described the content of this item </pre>

`string item_type = 2;`

 * **Returns:** The bytes for itemType.

## `public Builder setItemType( java.lang.String value)`

<pre> User set item type that described the content of this item </pre>

`string item_type = 2;`

 * **Parameters:** `value` — The itemType to set.
 * **Returns:** This builder for chaining.

## `public Builder clearItemType()`

<pre> User set item type that described the content of this item </pre>

`string item_type = 2;`

 * **Returns:** This builder for chaining.

## `public Builder setItemTypeBytes( com.google.protobuf.ByteString value)`

<pre> User set item type that described the content of this item </pre>

`string item_type = 2;`

 * **Parameters:** `value` — The bytes for itemType to set.
 * **Returns:** This builder for chaining.

## `java.lang.String getItemId()`

<pre> The item identifier </pre>

`string item_id = 1;`

 * **Returns:** The itemId.

## `com.google.protobuf.ByteString getItemIdBytes()`

<pre> The item identifier </pre>

`string item_id = 1;`

 * **Returns:** The bytes for itemId.

## `java.lang.String getItemType()`

<pre> The item type that described the content of this item </pre>

`string item_type = 2;`

 * **Returns:** The itemType.

## `com.google.protobuf.ByteString getItemTypeBytes()`

<pre> The item type that described the content of this item </pre>

`string item_type = 2;`

 * **Returns:** The bytes for itemType.

## `public static final class UpdateItemRequest extends com.google.protobuf.GeneratedMessageV3 implements`

<pre> Update item request object </pre>

Protobuf type {@code services.universalwallet.v1.UpdateItemRequest}

## `@java.lang.Override public java.lang.String getItemId()`

<pre> The item identifier </pre>

`string item_id = 1;`

 * **Returns:** The itemId.

## `@java.lang.Override public com.google.protobuf.ByteString getItemIdBytes()`

<pre> The item identifier </pre>

`string item_id = 1;`

 * **Returns:** The bytes for itemId.

## `@java.lang.Override public java.lang.String getItemType()`

<pre> The item type that described the content of this item </pre>

`string item_type = 2;`

 * **Returns:** The itemType.

## `@java.lang.Override public com.google.protobuf.ByteString getItemTypeBytes()`

<pre> The item type that described the content of this item </pre>

`string item_type = 2;`

 * **Returns:** The bytes for itemType.

## `public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder> implements`

<pre> Update item request object </pre>

Protobuf type {@code services.universalwallet.v1.UpdateItemRequest}

## `public java.lang.String getItemId()`

<pre> The item identifier </pre>

`string item_id = 1;`

 * **Returns:** The itemId.

## `public com.google.protobuf.ByteString getItemIdBytes()`

<pre> The item identifier </pre>

`string item_id = 1;`

 * **Returns:** The bytes for itemId.

## `public Builder setItemId( java.lang.String value)`

<pre> The item identifier </pre>

`string item_id = 1;`

 * **Parameters:** `value` — The itemId to set.
 * **Returns:** This builder for chaining.

## `public Builder clearItemId()`

<pre> The item identifier </pre>

`string item_id = 1;`

 * **Returns:** This builder for chaining.

## `public Builder setItemIdBytes( com.google.protobuf.ByteString value)`

<pre> The item identifier </pre>

`string item_id = 1;`

 * **Parameters:** `value` — The bytes for itemId to set.
 * **Returns:** This builder for chaining.

## `public java.lang.String getItemType()`

<pre> The item type that described the content of this item </pre>

`string item_type = 2;`

 * **Returns:** The itemType.

## `public com.google.protobuf.ByteString getItemTypeBytes()`

<pre> The item type that described the content of this item </pre>

`string item_type = 2;`

 * **Returns:** The bytes for itemType.

## `public Builder setItemType( java.lang.String value)`

<pre> The item type that described the content of this item </pre>

`string item_type = 2;`

 * **Parameters:** `value` — The itemType to set.
 * **Returns:** This builder for chaining.

## `public Builder clearItemType()`

<pre> The item type that described the content of this item </pre>

`string item_type = 2;`

 * **Returns:** This builder for chaining.

## `public Builder setItemTypeBytes( com.google.protobuf.ByteString value)`

<pre> The item type that described the content of this item </pre>

`string item_type = 2;`

 * **Parameters:** `value` — The bytes for itemType to set.
 * **Returns:** This builder for chaining.

## `int getStatusValue()`

<pre> Response status </pre>

`.services.common.v1.ResponseStatus status = 1;`

 * **Returns:** The enum numeric value on the wire for status.

## `trinsic.services.common.v1.CommonOuterClass.ResponseStatus getStatus()`

<pre> Response status </pre>

`.services.common.v1.ResponseStatus status = 1;`

 * **Returns:** The status.

## `public static final class UpdateItemResponse extends com.google.protobuf.GeneratedMessageV3 implements`

<pre> Update item response object </pre>

Protobuf type {@code services.universalwallet.v1.UpdateItemResponse}

## `@java.lang.Override public int getStatusValue()`

<pre> Response status </pre>

`.services.common.v1.ResponseStatus status = 1;`

 * **Returns:** The enum numeric value on the wire for status.

## `@java.lang.Override public trinsic.services.common.v1.CommonOuterClass.ResponseStatus getStatus()`

<pre> Response status </pre>

`.services.common.v1.ResponseStatus status = 1;`

 * **Returns:** The status.

## `public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder> implements`

<pre> Update item response object </pre>

Protobuf type {@code services.universalwallet.v1.UpdateItemResponse}

## `@java.lang.Override public int getStatusValue()`

<pre> Response status </pre>

`.services.common.v1.ResponseStatus status = 1;`

 * **Returns:** The enum numeric value on the wire for status.

## `public Builder setStatusValue(int value)`

<pre> Response status </pre>

`.services.common.v1.ResponseStatus status = 1;`

 * **Parameters:** `value` — The enum numeric value on the wire for status to set.
 * **Returns:** This builder for chaining.

## `@java.lang.Override public trinsic.services.common.v1.CommonOuterClass.ResponseStatus getStatus()`

<pre> Response status </pre>

`.services.common.v1.ResponseStatus status = 1;`

 * **Returns:** The status.

## `public Builder setStatus(trinsic.services.common.v1.CommonOuterClass.ResponseStatus value)`

<pre> Response status </pre>

`.services.common.v1.ResponseStatus status = 1;`

 * **Parameters:** `value` — The status to set.
 * **Returns:** This builder for chaining.

## `public Builder clearStatus()`

<pre> Response status </pre>

`.services.common.v1.ResponseStatus status = 1;`

 * **Returns:** This builder for chaining.

## `java.lang.String getItemJson()`

<pre> the document to insert as stringified json </pre>

`string item_json = 1;`

 * **Returns:** The itemJson.

## `com.google.protobuf.ByteString getItemJsonBytes()`

<pre> the document to insert as stringified json </pre>

`string item_json = 1;`

 * **Returns:** The bytes for itemJson.

## `java.lang.String getItemType()`

<pre> optional item type ex. "VerifiableCredential" </pre>

`string item_type = 2;`

 * **Returns:** The itemType.

## `com.google.protobuf.ByteString getItemTypeBytes()`

<pre> optional item type ex. "VerifiableCredential" </pre>

`string item_type = 2;`

 * **Returns:** The bytes for itemType.

## `public static final class InsertItemRequest extends com.google.protobuf.GeneratedMessageV3 implements`

<pre> Insert item request </pre>

Protobuf type {@code services.universalwallet.v1.InsertItemRequest}

## `@java.lang.Override public java.lang.String getItemJson()`

<pre> the document to insert as stringified json </pre>

`string item_json = 1;`

 * **Returns:** The itemJson.

## `@java.lang.Override public com.google.protobuf.ByteString getItemJsonBytes()`

<pre> the document to insert as stringified json </pre>

`string item_json = 1;`

 * **Returns:** The bytes for itemJson.

## `@java.lang.Override public java.lang.String getItemType()`

<pre> optional item type ex. "VerifiableCredential" </pre>

`string item_type = 2;`

 * **Returns:** The itemType.

## `@java.lang.Override public com.google.protobuf.ByteString getItemTypeBytes()`

<pre> optional item type ex. "VerifiableCredential" </pre>

`string item_type = 2;`

 * **Returns:** The bytes for itemType.

## `public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder> implements`

<pre> Insert item request </pre>

Protobuf type {@code services.universalwallet.v1.InsertItemRequest}

## `public java.lang.String getItemJson()`

<pre> the document to insert as stringified json </pre>

`string item_json = 1;`

 * **Returns:** The itemJson.

## `public com.google.protobuf.ByteString getItemJsonBytes()`

<pre> the document to insert as stringified json </pre>

`string item_json = 1;`

 * **Returns:** The bytes for itemJson.

## `public Builder setItemJson( java.lang.String value)`

<pre> the document to insert as stringified json </pre>

`string item_json = 1;`

 * **Parameters:** `value` — The itemJson to set.
 * **Returns:** This builder for chaining.

## `public Builder clearItemJson()`

<pre> the document to insert as stringified json </pre>

`string item_json = 1;`

 * **Returns:** This builder for chaining.

## `public Builder setItemJsonBytes( com.google.protobuf.ByteString value)`

<pre> the document to insert as stringified json </pre>

`string item_json = 1;`

 * **Parameters:** `value` — The bytes for itemJson to set.
 * **Returns:** This builder for chaining.

## `public java.lang.String getItemType()`

<pre> optional item type ex. "VerifiableCredential" </pre>

`string item_type = 2;`

 * **Returns:** The itemType.

## `public com.google.protobuf.ByteString getItemTypeBytes()`

<pre> optional item type ex. "VerifiableCredential" </pre>

`string item_type = 2;`

 * **Returns:** The bytes for itemType.

## `public Builder setItemType( java.lang.String value)`

<pre> optional item type ex. "VerifiableCredential" </pre>

`string item_type = 2;`

 * **Parameters:** `value` — The itemType to set.
 * **Returns:** This builder for chaining.

## `public Builder clearItemType()`

<pre> optional item type ex. "VerifiableCredential" </pre>

`string item_type = 2;`

 * **Returns:** This builder for chaining.

## `public Builder setItemTypeBytes( com.google.protobuf.ByteString value)`

<pre> optional item type ex. "VerifiableCredential" </pre>

`string item_type = 2;`

 * **Parameters:** `value` — The bytes for itemType to set.
 * **Returns:** This builder for chaining.

## `int getStatusValue()`

`.services.common.v1.ResponseStatus status = 1;`

 * **Returns:** The enum numeric value on the wire for status.

## `trinsic.services.common.v1.CommonOuterClass.ResponseStatus getStatus()`

`.services.common.v1.ResponseStatus status = 1;`

 * **Returns:** The status.

## `java.lang.String getItemId()`

<pre> The item identifier of the inserted record </pre>

`string item_id = 2;`

 * **Returns:** The itemId.

## `com.google.protobuf.ByteString getItemIdBytes()`

<pre> The item identifier of the inserted record </pre>

`string item_id = 2;`

 * **Returns:** The bytes for itemId.

## `public static final class InsertItemResponse extends com.google.protobuf.GeneratedMessageV3 implements`

<pre> Insert item response </pre>

Protobuf type {@code services.universalwallet.v1.InsertItemResponse}

## `@java.lang.Override public int getStatusValue()`

`.services.common.v1.ResponseStatus status = 1;`

 * **Returns:** The enum numeric value on the wire for status.

## `@java.lang.Override public trinsic.services.common.v1.CommonOuterClass.ResponseStatus getStatus()`

`.services.common.v1.ResponseStatus status = 1;`

 * **Returns:** The status.

## `@java.lang.Override public java.lang.String getItemId()`

<pre> The item identifier of the inserted record </pre>

`string item_id = 2;`

 * **Returns:** The itemId.

## `@java.lang.Override public com.google.protobuf.ByteString getItemIdBytes()`

<pre> The item identifier of the inserted record </pre>

`string item_id = 2;`

 * **Returns:** The bytes for itemId.

## `public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder> implements`

<pre> Insert item response </pre>

Protobuf type {@code services.universalwallet.v1.InsertItemResponse}

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

## `public java.lang.String getItemId()`

<pre> The item identifier of the inserted record </pre>

`string item_id = 2;`

 * **Returns:** The itemId.

## `public com.google.protobuf.ByteString getItemIdBytes()`

<pre> The item identifier of the inserted record </pre>

`string item_id = 2;`

 * **Returns:** The bytes for itemId.

## `public Builder setItemId( java.lang.String value)`

<pre> The item identifier of the inserted record </pre>

`string item_id = 2;`

 * **Parameters:** `value` — The itemId to set.
 * **Returns:** This builder for chaining.

## `public Builder clearItemId()`

<pre> The item identifier of the inserted record </pre>

`string item_id = 2;`

 * **Returns:** This builder for chaining.

## `public Builder setItemIdBytes( com.google.protobuf.ByteString value)`

<pre> The item identifier of the inserted record </pre>

`string item_id = 2;`

 * **Parameters:** `value` — The bytes for itemId to set.
 * **Returns:** This builder for chaining.

## `java.lang.String getItemId()`

<pre> item identifier of the record to delete </pre>

`string item_id = 1;`

 * **Returns:** The itemId.

## `com.google.protobuf.ByteString getItemIdBytes()`

<pre> item identifier of the record to delete </pre>

`string item_id = 1;`

 * **Returns:** The bytes for itemId.

## `public static final class DeleteItemRequest extends com.google.protobuf.GeneratedMessageV3 implements`

<pre> Delete item request </pre>

Protobuf type {@code services.universalwallet.v1.DeleteItemRequest}

## `@java.lang.Override public java.lang.String getItemId()`

<pre> item identifier of the record to delete </pre>

`string item_id = 1;`

 * **Returns:** The itemId.

## `@java.lang.Override public com.google.protobuf.ByteString getItemIdBytes()`

<pre> item identifier of the record to delete </pre>

`string item_id = 1;`

 * **Returns:** The bytes for itemId.

## `public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder> implements`

<pre> Delete item request </pre>

Protobuf type {@code services.universalwallet.v1.DeleteItemRequest}

## `public java.lang.String getItemId()`

<pre> item identifier of the record to delete </pre>

`string item_id = 1;`

 * **Returns:** The itemId.

## `public com.google.protobuf.ByteString getItemIdBytes()`

<pre> item identifier of the record to delete </pre>

`string item_id = 1;`

 * **Returns:** The bytes for itemId.

## `public Builder setItemId( java.lang.String value)`

<pre> item identifier of the record to delete </pre>

`string item_id = 1;`

 * **Parameters:** `value` — The itemId to set.
 * **Returns:** This builder for chaining.

## `public Builder clearItemId()`

<pre> item identifier of the record to delete </pre>

`string item_id = 1;`

 * **Returns:** This builder for chaining.

## `public Builder setItemIdBytes( com.google.protobuf.ByteString value)`

<pre> item identifier of the record to delete </pre>

`string item_id = 1;`

 * **Parameters:** `value` — The bytes for itemId to set.
 * **Returns:** This builder for chaining.

## `int getStatusValue()`

`.services.common.v1.ResponseStatus status = 1;`

 * **Returns:** The enum numeric value on the wire for status.

## `trinsic.services.common.v1.CommonOuterClass.ResponseStatus getStatus()`

`.services.common.v1.ResponseStatus status = 1;`

 * **Returns:** The status.

## `public static final class DeleteItemResponse extends com.google.protobuf.GeneratedMessageV3 implements`

<pre> Delete item response </pre>

Protobuf type {@code services.universalwallet.v1.DeleteItemResponse}

## `@java.lang.Override public int getStatusValue()`

`.services.common.v1.ResponseStatus status = 1;`

 * **Returns:** The enum numeric value on the wire for status.

## `@java.lang.Override public trinsic.services.common.v1.CommonOuterClass.ResponseStatus getStatus()`

`.services.common.v1.ResponseStatus status = 1;`

 * **Returns:** The status.

## `public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder> implements`

<pre> Delete item response </pre>

Protobuf type {@code services.universalwallet.v1.DeleteItemResponse}

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
