/**
 * @fileoverview gRPC-Web generated client stub for trinsic.services
 * @enhanceable
 * @public
 */

// GENERATED CODE -- DO NOT EDIT!


/* eslint-disable */
// @ts-nocheck



const grpc = {};
grpc.web = require('grpc-web');


var pbmse_pbmse_pb = require('./pbmse/pbmse_pb.js')
const proto = {};
proto.trinsic = {};
proto.trinsic.services = require('./CoreService_pb.js');

/**
 * @param {string} hostname
 * @param {?Object} credentials
 * @param {?Object} options
 * @constructor
 * @struct
 * @final
 */
proto.trinsic.services.CommonClient =
    function(hostname, credentials, options) {
  if (!options) options = {};
  options['format'] = 'text';

  /**
   * @private @const {!grpc.web.GrpcWebClientBase} The client
   */
  this.client_ = new grpc.web.GrpcWebClientBase(options);

  /**
   * @private @const {string} The hostname
   */
  this.hostname_ = hostname;

};


/**
 * @param {string} hostname
 * @param {?Object} credentials
 * @param {?Object} options
 * @constructor
 * @struct
 * @final
 */
proto.trinsic.services.CommonPromiseClient =
    function(hostname, credentials, options) {
  if (!options) options = {};
  options['format'] = 'text';

  /**
   * @private @const {!grpc.web.GrpcWebClientBase} The client
   */
  this.client_ = new grpc.web.GrpcWebClientBase(options);

  /**
   * @private @const {string} The hostname
   */
  this.hostname_ = hostname;

};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.pbmse.EncryptedMessage,
 *   !proto.pbmse.EncryptedMessage>}
 */
const methodDescriptor_Common_Request = new grpc.web.MethodDescriptor(
  '/trinsic.services.Common/Request',
  grpc.web.MethodType.UNARY,
  pbmse_pbmse_pb.EncryptedMessage,
  pbmse_pbmse_pb.EncryptedMessage,
  /**
   * @param {!proto.pbmse.EncryptedMessage} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  pbmse_pbmse_pb.EncryptedMessage.deserializeBinary
);


/**
 * @const
 * @type {!grpc.web.AbstractClientBase.MethodInfo<
 *   !proto.pbmse.EncryptedMessage,
 *   !proto.pbmse.EncryptedMessage>}
 */
const methodInfo_Common_Request = new grpc.web.AbstractClientBase.MethodInfo(
  pbmse_pbmse_pb.EncryptedMessage,
  /**
   * @param {!proto.pbmse.EncryptedMessage} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  pbmse_pbmse_pb.EncryptedMessage.deserializeBinary
);


/**
 * @param {!proto.pbmse.EncryptedMessage} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.pbmse.EncryptedMessage)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.pbmse.EncryptedMessage>|undefined}
 *     The XHR Node Readable Stream
 */
proto.trinsic.services.CommonClient.prototype.request =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/trinsic.services.Common/Request',
      request,
      metadata || {},
      methodDescriptor_Common_Request,
      callback);
};


/**
 * @param {!proto.pbmse.EncryptedMessage} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.pbmse.EncryptedMessage>}
 *     Promise that resolves to the response
 */
proto.trinsic.services.CommonPromiseClient.prototype.request =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/trinsic.services.Common/Request',
      request,
      metadata || {},
      methodDescriptor_Common_Request);
};


module.exports = proto.trinsic.services;

