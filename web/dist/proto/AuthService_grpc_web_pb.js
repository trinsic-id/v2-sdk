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


var CoreService_pb = require('./CoreService_pb.js')

var pbmse_pbmse_pb = require('./pbmse/pbmse_pb.js')
const proto = {};
proto.trinsic = {};
proto.trinsic.services = require('./AuthService_pb.js');

/**
 * @param {string} hostname
 * @param {?Object} credentials
 * @param {?Object} options
 * @constructor
 * @struct
 * @final
 */
proto.trinsic.services.AuthenticationClient =
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
proto.trinsic.services.AuthenticationPromiseClient =
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
 *   !proto.trinsic.services.AcquireTokenRequest,
 *   !proto.trinsic.services.AcquireTokenResponse>}
 */
const methodDescriptor_Authentication_AcquireToken = new grpc.web.MethodDescriptor(
  '/trinsic.services.Authentication/AcquireToken',
  grpc.web.MethodType.UNARY,
  proto.trinsic.services.AcquireTokenRequest,
  proto.trinsic.services.AcquireTokenResponse,
  /**
   * @param {!proto.trinsic.services.AcquireTokenRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.trinsic.services.AcquireTokenResponse.deserializeBinary
);


/**
 * @const
 * @type {!grpc.web.AbstractClientBase.MethodInfo<
 *   !proto.trinsic.services.AcquireTokenRequest,
 *   !proto.trinsic.services.AcquireTokenResponse>}
 */
const methodInfo_Authentication_AcquireToken = new grpc.web.AbstractClientBase.MethodInfo(
  proto.trinsic.services.AcquireTokenResponse,
  /**
   * @param {!proto.trinsic.services.AcquireTokenRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.trinsic.services.AcquireTokenResponse.deserializeBinary
);


/**
 * @param {!proto.trinsic.services.AcquireTokenRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.trinsic.services.AcquireTokenResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.trinsic.services.AcquireTokenResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.trinsic.services.AuthenticationClient.prototype.acquireToken =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/trinsic.services.Authentication/AcquireToken',
      request,
      metadata || {},
      methodDescriptor_Authentication_AcquireToken,
      callback);
};


/**
 * @param {!proto.trinsic.services.AcquireTokenRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.trinsic.services.AcquireTokenResponse>}
 *     Promise that resolves to the response
 */
proto.trinsic.services.AuthenticationPromiseClient.prototype.acquireToken =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/trinsic.services.Authentication/AcquireToken',
      request,
      metadata || {},
      methodDescriptor_Authentication_AcquireToken);
};


module.exports = proto.trinsic.services;

