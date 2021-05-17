// source: pbmse/pbmse.proto
/**
 * @fileoverview
 * @enhanceable
 * @suppress {missingRequire} reports error on implicit type usages.
 * @suppress {messageConventions} JS Compiler reports an error if a variable or
 *     field starts with 'MSG_' and isn't a translatable message.
 * @public
 */
// GENERATED CODE -- DO NOT EDIT!
/* eslint-disable */
// @ts-nocheck

goog.provide('proto.pbmse.Signature');
goog.provide('proto.pbmse.Signature.HeaderCase');
goog.provide('proto.pbmse.SignedMessage');
goog.provide('proto.pbmse.SignedMessage.Header');

goog.require('jspb.BinaryReader');
goog.require('jspb.BinaryWriter');
goog.require('jspb.Message');

/**
 * Generated by JsPbCodeGenerator.
 * @param {Array=} opt_data Optional initial data array, typically from a
 * server response, or constructed directly in Javascript. The array is used
 * in place and becomes part of the constructed object. It is not cloned.
 * If no data is provided, the constructed object will be empty, but still
 * valid.
 * @extends {jspb.Message}
 * @constructor
 */
proto.pbmse.Signature = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, proto.pbmse.Signature.oneofGroups_);
};
goog.inherits(proto.pbmse.Signature, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.pbmse.Signature.displayName = 'proto.pbmse.Signature';
}
/**
 * Generated by JsPbCodeGenerator.
 * @param {Array=} opt_data Optional initial data array, typically from a
 * server response, or constructed directly in Javascript. The array is used
 * in place and becomes part of the constructed object. It is not cloned.
 * If no data is provided, the constructed object will be empty, but still
 * valid.
 * @extends {jspb.Message}
 * @constructor
 */
proto.pbmse.SignedMessage = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, proto.pbmse.SignedMessage.repeatedFields_, null);
};
goog.inherits(proto.pbmse.SignedMessage, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.pbmse.SignedMessage.displayName = 'proto.pbmse.SignedMessage';
}
/**
 * Generated by JsPbCodeGenerator.
 * @param {Array=} opt_data Optional initial data array, typically from a
 * server response, or constructed directly in Javascript. The array is used
 * in place and becomes part of the constructed object. It is not cloned.
 * If no data is provided, the constructed object will be empty, but still
 * valid.
 * @extends {jspb.Message}
 * @constructor
 */
proto.pbmse.SignedMessage.Header = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.pbmse.SignedMessage.Header, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.pbmse.SignedMessage.Header.displayName = 'proto.pbmse.SignedMessage.Header';
}

/**
 * Oneof group definitions for this message. Each group defines the field
 * numbers belonging to that group. When of these fields' value is set, all
 * other fields in the group are cleared. During deserialization, if multiple
 * fields are encountered for a group, only the last value seen will be kept.
 * @private {!Array<!Array<number>>}
 * @const
 */
proto.pbmse.Signature.oneofGroups_ = [[1,2]];

/**
 * @enum {number}
 */
proto.pbmse.Signature.HeaderCase = {
  HEADER_NOT_SET: 0,
  PROTECTED: 1,
  UNPROTECTED: 2
};

/**
 * @return {proto.pbmse.Signature.HeaderCase}
 */
proto.pbmse.Signature.prototype.getHeaderCase = function() {
  return /** @type {proto.pbmse.Signature.HeaderCase} */(jspb.Message.computeOneofCase(this, proto.pbmse.Signature.oneofGroups_[0]));
};



if (jspb.Message.GENERATE_TO_OBJECT) {
/**
 * Creates an object representation of this proto.
 * Field names that are reserved in JavaScript and will be renamed to pb_name.
 * Optional fields that are not set will be set to undefined.
 * To access a reserved field use, foo.pb_<name>, eg, foo.pb_default.
 * For the list of reserved names please see:
 *     net/proto2/compiler/js/internal/generator.cc#kKeyword.
 * @param {boolean=} opt_includeInstance Deprecated. whether to include the
 *     JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @return {!Object}
 */
proto.pbmse.Signature.prototype.toObject = function(opt_includeInstance) {
  return proto.pbmse.Signature.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.pbmse.Signature} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.pbmse.Signature.toObject = function(includeInstance, msg) {
  var f, obj = {
    pb_protected: msg.getProtected_asB64(),
    unprotected: (f = msg.getUnprotected()) && proto.pbmse.SignedMessage.Header.toObject(includeInstance, f),
    signature: msg.getSignature_asB64()
  };

  if (includeInstance) {
    obj.$jspbMessageInstance = msg;
  }
  return obj;
};
}


/**
 * Deserializes binary data (in protobuf wire format).
 * @param {jspb.ByteSource} bytes The bytes to deserialize.
 * @return {!proto.pbmse.Signature}
 */
proto.pbmse.Signature.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.pbmse.Signature;
  return proto.pbmse.Signature.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.pbmse.Signature} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.pbmse.Signature}
 */
proto.pbmse.Signature.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = /** @type {!Uint8Array} */ (reader.readBytes());
      msg.setProtected(value);
      break;
    case 2:
      var value = new proto.pbmse.SignedMessage.Header;
      reader.readMessage(value,proto.pbmse.SignedMessage.Header.deserializeBinaryFromReader);
      msg.setUnprotected(value);
      break;
    case 3:
      var value = /** @type {!Uint8Array} */ (reader.readBytes());
      msg.setSignature(value);
      break;
    default:
      reader.skipField();
      break;
    }
  }
  return msg;
};


/**
 * Serializes the message to binary data (in protobuf wire format).
 * @return {!Uint8Array}
 */
proto.pbmse.Signature.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.pbmse.Signature.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.pbmse.Signature} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.pbmse.Signature.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = /** @type {!(string|Uint8Array)} */ (jspb.Message.getField(message, 1));
  if (f != null) {
    writer.writeBytes(
      1,
      f
    );
  }
  f = message.getUnprotected();
  if (f != null) {
    writer.writeMessage(
      2,
      f,
      proto.pbmse.SignedMessage.Header.serializeBinaryToWriter
    );
  }
  f = message.getSignature_asU8();
  if (f.length > 0) {
    writer.writeBytes(
      3,
      f
    );
  }
};


/**
 * optional bytes protected = 1;
 * @return {string}
 */
proto.pbmse.Signature.prototype.getProtected = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * optional bytes protected = 1;
 * This is a type-conversion wrapper around `getProtected()`
 * @return {string}
 */
proto.pbmse.Signature.prototype.getProtected_asB64 = function() {
  return /** @type {string} */ (jspb.Message.bytesAsB64(
      this.getProtected()));
};


/**
 * optional bytes protected = 1;
 * Note that Uint8Array is not supported on all browsers.
 * @see http://caniuse.com/Uint8Array
 * This is a type-conversion wrapper around `getProtected()`
 * @return {!Uint8Array}
 */
proto.pbmse.Signature.prototype.getProtected_asU8 = function() {
  return /** @type {!Uint8Array} */ (jspb.Message.bytesAsU8(
      this.getProtected()));
};


/**
 * @param {!(string|Uint8Array)} value
 * @return {!proto.pbmse.Signature} returns this
 */
proto.pbmse.Signature.prototype.setProtected = function(value) {
  return jspb.Message.setOneofField(this, 1, proto.pbmse.Signature.oneofGroups_[0], value);
};


/**
 * Clears the field making it undefined.
 * @return {!proto.pbmse.Signature} returns this
 */
proto.pbmse.Signature.prototype.clearProtected = function() {
  return jspb.Message.setOneofField(this, 1, proto.pbmse.Signature.oneofGroups_[0], undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.pbmse.Signature.prototype.hasProtected = function() {
  return jspb.Message.getField(this, 1) != null;
};


/**
 * optional SignedMessage.Header unprotected = 2;
 * @return {?proto.pbmse.SignedMessage.Header}
 */
proto.pbmse.Signature.prototype.getUnprotected = function() {
  return /** @type{?proto.pbmse.SignedMessage.Header} */ (
    jspb.Message.getWrapperField(this, proto.pbmse.SignedMessage.Header, 2));
};


/**
 * @param {?proto.pbmse.SignedMessage.Header|undefined} value
 * @return {!proto.pbmse.Signature} returns this
*/
proto.pbmse.Signature.prototype.setUnprotected = function(value) {
  return jspb.Message.setOneofWrapperField(this, 2, proto.pbmse.Signature.oneofGroups_[0], value);
};


/**
 * Clears the message field making it undefined.
 * @return {!proto.pbmse.Signature} returns this
 */
proto.pbmse.Signature.prototype.clearUnprotected = function() {
  return this.setUnprotected(undefined);
};


/**
 * Returns whether this field is set.
 * @return {boolean}
 */
proto.pbmse.Signature.prototype.hasUnprotected = function() {
  return jspb.Message.getField(this, 2) != null;
};


/**
 * optional bytes signature = 3;
 * @return {string}
 */
proto.pbmse.Signature.prototype.getSignature = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 3, ""));
};


/**
 * optional bytes signature = 3;
 * This is a type-conversion wrapper around `getSignature()`
 * @return {string}
 */
proto.pbmse.Signature.prototype.getSignature_asB64 = function() {
  return /** @type {string} */ (jspb.Message.bytesAsB64(
      this.getSignature()));
};


/**
 * optional bytes signature = 3;
 * Note that Uint8Array is not supported on all browsers.
 * @see http://caniuse.com/Uint8Array
 * This is a type-conversion wrapper around `getSignature()`
 * @return {!Uint8Array}
 */
proto.pbmse.Signature.prototype.getSignature_asU8 = function() {
  return /** @type {!Uint8Array} */ (jspb.Message.bytesAsU8(
      this.getSignature()));
};


/**
 * @param {!(string|Uint8Array)} value
 * @return {!proto.pbmse.Signature} returns this
 */
proto.pbmse.Signature.prototype.setSignature = function(value) {
  return jspb.Message.setProto3BytesField(this, 3, value);
};



/**
 * List of repeated fields within this message type.
 * @private {!Array<number>}
 * @const
 */
proto.pbmse.SignedMessage.repeatedFields_ = [2];



if (jspb.Message.GENERATE_TO_OBJECT) {
/**
 * Creates an object representation of this proto.
 * Field names that are reserved in JavaScript and will be renamed to pb_name.
 * Optional fields that are not set will be set to undefined.
 * To access a reserved field use, foo.pb_<name>, eg, foo.pb_default.
 * For the list of reserved names please see:
 *     net/proto2/compiler/js/internal/generator.cc#kKeyword.
 * @param {boolean=} opt_includeInstance Deprecated. whether to include the
 *     JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @return {!Object}
 */
proto.pbmse.SignedMessage.prototype.toObject = function(opt_includeInstance) {
  return proto.pbmse.SignedMessage.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.pbmse.SignedMessage} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.pbmse.SignedMessage.toObject = function(includeInstance, msg) {
  var f, obj = {
    payload: msg.getPayload_asB64(),
    signaturesList: jspb.Message.toObjectList(msg.getSignaturesList(),
    proto.pbmse.Signature.toObject, includeInstance)
  };

  if (includeInstance) {
    obj.$jspbMessageInstance = msg;
  }
  return obj;
};
}


/**
 * Deserializes binary data (in protobuf wire format).
 * @param {jspb.ByteSource} bytes The bytes to deserialize.
 * @return {!proto.pbmse.SignedMessage}
 */
proto.pbmse.SignedMessage.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.pbmse.SignedMessage;
  return proto.pbmse.SignedMessage.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.pbmse.SignedMessage} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.pbmse.SignedMessage}
 */
proto.pbmse.SignedMessage.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = /** @type {!Uint8Array} */ (reader.readBytes());
      msg.setPayload(value);
      break;
    case 2:
      var value = new proto.pbmse.Signature;
      reader.readMessage(value,proto.pbmse.Signature.deserializeBinaryFromReader);
      msg.addSignatures(value);
      break;
    default:
      reader.skipField();
      break;
    }
  }
  return msg;
};


/**
 * Serializes the message to binary data (in protobuf wire format).
 * @return {!Uint8Array}
 */
proto.pbmse.SignedMessage.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.pbmse.SignedMessage.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.pbmse.SignedMessage} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.pbmse.SignedMessage.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getPayload_asU8();
  if (f.length > 0) {
    writer.writeBytes(
      1,
      f
    );
  }
  f = message.getSignaturesList();
  if (f.length > 0) {
    writer.writeRepeatedMessage(
      2,
      f,
      proto.pbmse.Signature.serializeBinaryToWriter
    );
  }
};





if (jspb.Message.GENERATE_TO_OBJECT) {
/**
 * Creates an object representation of this proto.
 * Field names that are reserved in JavaScript and will be renamed to pb_name.
 * Optional fields that are not set will be set to undefined.
 * To access a reserved field use, foo.pb_<name>, eg, foo.pb_default.
 * For the list of reserved names please see:
 *     net/proto2/compiler/js/internal/generator.cc#kKeyword.
 * @param {boolean=} opt_includeInstance Deprecated. whether to include the
 *     JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @return {!Object}
 */
proto.pbmse.SignedMessage.Header.prototype.toObject = function(opt_includeInstance) {
  return proto.pbmse.SignedMessage.Header.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.pbmse.SignedMessage.Header} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.pbmse.SignedMessage.Header.toObject = function(includeInstance, msg) {
  var f, obj = {
    algorithm: jspb.Message.getFieldWithDefault(msg, 1, ""),
    keyId: jspb.Message.getFieldWithDefault(msg, 2, ""),
    nonce: jspb.Message.getFieldWithDefault(msg, 3, "")
  };

  if (includeInstance) {
    obj.$jspbMessageInstance = msg;
  }
  return obj;
};
}


/**
 * Deserializes binary data (in protobuf wire format).
 * @param {jspb.ByteSource} bytes The bytes to deserialize.
 * @return {!proto.pbmse.SignedMessage.Header}
 */
proto.pbmse.SignedMessage.Header.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.pbmse.SignedMessage.Header;
  return proto.pbmse.SignedMessage.Header.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.pbmse.SignedMessage.Header} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.pbmse.SignedMessage.Header}
 */
proto.pbmse.SignedMessage.Header.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = /** @type {string} */ (reader.readString());
      msg.setAlgorithm(value);
      break;
    case 2:
      var value = /** @type {string} */ (reader.readString());
      msg.setKeyId(value);
      break;
    case 3:
      var value = /** @type {string} */ (reader.readString());
      msg.setNonce(value);
      break;
    default:
      reader.skipField();
      break;
    }
  }
  return msg;
};


/**
 * Serializes the message to binary data (in protobuf wire format).
 * @return {!Uint8Array}
 */
proto.pbmse.SignedMessage.Header.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.pbmse.SignedMessage.Header.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.pbmse.SignedMessage.Header} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.pbmse.SignedMessage.Header.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getAlgorithm();
  if (f.length > 0) {
    writer.writeString(
      1,
      f
    );
  }
  f = message.getKeyId();
  if (f.length > 0) {
    writer.writeString(
      2,
      f
    );
  }
  f = message.getNonce();
  if (f.length > 0) {
    writer.writeString(
      3,
      f
    );
  }
};


/**
 * optional string algorithm = 1;
 * @return {string}
 */
proto.pbmse.SignedMessage.Header.prototype.getAlgorithm = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.pbmse.SignedMessage.Header} returns this
 */
proto.pbmse.SignedMessage.Header.prototype.setAlgorithm = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};


/**
 * optional string key_id = 2;
 * @return {string}
 */
proto.pbmse.SignedMessage.Header.prototype.getKeyId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 2, ""));
};


/**
 * @param {string} value
 * @return {!proto.pbmse.SignedMessage.Header} returns this
 */
proto.pbmse.SignedMessage.Header.prototype.setKeyId = function(value) {
  return jspb.Message.setProto3StringField(this, 2, value);
};


/**
 * optional string nonce = 3;
 * @return {string}
 */
proto.pbmse.SignedMessage.Header.prototype.getNonce = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 3, ""));
};


/**
 * @param {string} value
 * @return {!proto.pbmse.SignedMessage.Header} returns this
 */
proto.pbmse.SignedMessage.Header.prototype.setNonce = function(value) {
  return jspb.Message.setProto3StringField(this, 3, value);
};


/**
 * optional bytes payload = 1;
 * @return {string}
 */
proto.pbmse.SignedMessage.prototype.getPayload = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * optional bytes payload = 1;
 * This is a type-conversion wrapper around `getPayload()`
 * @return {string}
 */
proto.pbmse.SignedMessage.prototype.getPayload_asB64 = function() {
  return /** @type {string} */ (jspb.Message.bytesAsB64(
      this.getPayload()));
};


/**
 * optional bytes payload = 1;
 * Note that Uint8Array is not supported on all browsers.
 * @see http://caniuse.com/Uint8Array
 * This is a type-conversion wrapper around `getPayload()`
 * @return {!Uint8Array}
 */
proto.pbmse.SignedMessage.prototype.getPayload_asU8 = function() {
  return /** @type {!Uint8Array} */ (jspb.Message.bytesAsU8(
      this.getPayload()));
};


/**
 * @param {!(string|Uint8Array)} value
 * @return {!proto.pbmse.SignedMessage} returns this
 */
proto.pbmse.SignedMessage.prototype.setPayload = function(value) {
  return jspb.Message.setProto3BytesField(this, 1, value);
};


/**
 * repeated Signature signatures = 2;
 * @return {!Array<!proto.pbmse.Signature>}
 */
proto.pbmse.SignedMessage.prototype.getSignaturesList = function() {
  return /** @type{!Array<!proto.pbmse.Signature>} */ (
    jspb.Message.getRepeatedWrapperField(this, proto.pbmse.Signature, 2));
};


/**
 * @param {!Array<!proto.pbmse.Signature>} value
 * @return {!proto.pbmse.SignedMessage} returns this
*/
proto.pbmse.SignedMessage.prototype.setSignaturesList = function(value) {
  return jspb.Message.setRepeatedWrapperField(this, 2, value);
};


/**
 * @param {!proto.pbmse.Signature=} opt_value
 * @param {number=} opt_index
 * @return {!proto.pbmse.Signature}
 */
proto.pbmse.SignedMessage.prototype.addSignatures = function(opt_value, opt_index) {
  return jspb.Message.addToRepeatedWrapperField(this, 2, opt_value, proto.pbmse.Signature, opt_index);
};


/**
 * Clears the list making it empty but non-null.
 * @return {!proto.pbmse.SignedMessage} returns this
 */
proto.pbmse.SignedMessage.prototype.clearSignaturesList = function() {
  return this.setSignaturesList([]);
};


