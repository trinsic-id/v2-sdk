// source: WalletService.proto
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

goog.provide('proto.trinsic.services.CreateWalletResponse');

goog.require('jspb.BinaryReader');
goog.require('jspb.BinaryWriter');
goog.require('jspb.Message');

goog.forwardDeclare('proto.trinsic.services.ResponseStatus');
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
proto.trinsic.services.CreateWalletResponse = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.trinsic.services.CreateWalletResponse, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.trinsic.services.CreateWalletResponse.displayName = 'proto.trinsic.services.CreateWalletResponse';
}



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
proto.trinsic.services.CreateWalletResponse.prototype.toObject = function(opt_includeInstance) {
  return proto.trinsic.services.CreateWalletResponse.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.trinsic.services.CreateWalletResponse} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.trinsic.services.CreateWalletResponse.toObject = function(includeInstance, msg) {
  var f, obj = {
    status: jspb.Message.getFieldWithDefault(msg, 1, 0),
    walletId: jspb.Message.getFieldWithDefault(msg, 2, ""),
    capability: jspb.Message.getFieldWithDefault(msg, 3, ""),
    invoker: jspb.Message.getFieldWithDefault(msg, 4, "")
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
 * @return {!proto.trinsic.services.CreateWalletResponse}
 */
proto.trinsic.services.CreateWalletResponse.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.trinsic.services.CreateWalletResponse;
  return proto.trinsic.services.CreateWalletResponse.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.trinsic.services.CreateWalletResponse} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.trinsic.services.CreateWalletResponse}
 */
proto.trinsic.services.CreateWalletResponse.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = /** @type {!proto.trinsic.services.ResponseStatus} */ (reader.readEnum());
      msg.setStatus(value);
      break;
    case 2:
      var value = /** @type {string} */ (reader.readString());
      msg.setWalletId(value);
      break;
    case 3:
      var value = /** @type {string} */ (reader.readString());
      msg.setCapability(value);
      break;
    case 4:
      var value = /** @type {string} */ (reader.readString());
      msg.setInvoker(value);
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
proto.trinsic.services.CreateWalletResponse.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.trinsic.services.CreateWalletResponse.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.trinsic.services.CreateWalletResponse} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.trinsic.services.CreateWalletResponse.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getStatus();
  if (f !== 0.0) {
    writer.writeEnum(
      1,
      f
    );
  }
  f = message.getWalletId();
  if (f.length > 0) {
    writer.writeString(
      2,
      f
    );
  }
  f = message.getCapability();
  if (f.length > 0) {
    writer.writeString(
      3,
      f
    );
  }
  f = message.getInvoker();
  if (f.length > 0) {
    writer.writeString(
      4,
      f
    );
  }
};


/**
 * optional ResponseStatus status = 1;
 * @return {!proto.trinsic.services.ResponseStatus}
 */
proto.trinsic.services.CreateWalletResponse.prototype.getStatus = function() {
  return /** @type {!proto.trinsic.services.ResponseStatus} */ (jspb.Message.getFieldWithDefault(this, 1, 0));
};


/**
 * @param {!proto.trinsic.services.ResponseStatus} value
 * @return {!proto.trinsic.services.CreateWalletResponse} returns this
 */
proto.trinsic.services.CreateWalletResponse.prototype.setStatus = function(value) {
  return jspb.Message.setProto3EnumField(this, 1, value);
};


/**
 * optional string wallet_id = 2;
 * @return {string}
 */
proto.trinsic.services.CreateWalletResponse.prototype.getWalletId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 2, ""));
};


/**
 * @param {string} value
 * @return {!proto.trinsic.services.CreateWalletResponse} returns this
 */
proto.trinsic.services.CreateWalletResponse.prototype.setWalletId = function(value) {
  return jspb.Message.setProto3StringField(this, 2, value);
};


/**
 * optional string capability = 3;
 * @return {string}
 */
proto.trinsic.services.CreateWalletResponse.prototype.getCapability = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 3, ""));
};


/**
 * @param {string} value
 * @return {!proto.trinsic.services.CreateWalletResponse} returns this
 */
proto.trinsic.services.CreateWalletResponse.prototype.setCapability = function(value) {
  return jspb.Message.setProto3StringField(this, 3, value);
};


/**
 * optional string invoker = 4;
 * @return {string}
 */
proto.trinsic.services.CreateWalletResponse.prototype.getInvoker = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 4, ""));
};


/**
 * @param {string} value
 * @return {!proto.trinsic.services.CreateWalletResponse} returns this
 */
proto.trinsic.services.CreateWalletResponse.prototype.setInvoker = function(value) {
  return jspb.Message.setProto3StringField(this, 4, value);
};


