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


var google_protobuf_struct_pb = require('google-protobuf/google/protobuf/struct_pb.js')

var CoreService_pb = require('./CoreService_pb.js')
const proto = {};
proto.trinsic = {};
proto.trinsic.services = require('./ProviderService_pb.js');

/**
 * @param {string} hostname
 * @param {?Object} credentials
 * @param {?Object} options
 * @constructor
 * @struct
 * @final
 */
proto.trinsic.services.ProviderClient =
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
proto.trinsic.services.ProviderPromiseClient =
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
 *   !proto.trinsic.services.InviteRequest,
 *   !proto.trinsic.services.InviteResponse>}
 */
const methodDescriptor_Provider_Invite = new grpc.web.MethodDescriptor(
  '/trinsic.services.Provider/Invite',
  grpc.web.MethodType.UNARY,
  proto.trinsic.services.InviteRequest,
  proto.trinsic.services.InviteResponse,
  /**
   * @param {!proto.trinsic.services.InviteRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.trinsic.services.InviteResponse.deserializeBinary
);


/**
 * @const
 * @type {!grpc.web.AbstractClientBase.MethodInfo<
 *   !proto.trinsic.services.InviteRequest,
 *   !proto.trinsic.services.InviteResponse>}
 */
const methodInfo_Provider_Invite = new grpc.web.AbstractClientBase.MethodInfo(
  proto.trinsic.services.InviteResponse,
  /**
   * @param {!proto.trinsic.services.InviteRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.trinsic.services.InviteResponse.deserializeBinary
);


/**
 * @param {!proto.trinsic.services.InviteRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.trinsic.services.InviteResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.trinsic.services.InviteResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.trinsic.services.ProviderClient.prototype.invite =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/trinsic.services.Provider/Invite',
      request,
      metadata || {},
      methodDescriptor_Provider_Invite,
      callback);
};


/**
 * @param {!proto.trinsic.services.InviteRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.trinsic.services.InviteResponse>}
 *     Promise that resolves to the response
 */
proto.trinsic.services.ProviderPromiseClient.prototype.invite =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/trinsic.services.Provider/Invite',
      request,
      metadata || {},
      methodDescriptor_Provider_Invite);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.trinsic.services.InviteRequest,
 *   !proto.trinsic.services.InviteResponse>}
 */
const methodDescriptor_Provider_InviteWithWorkflow = new grpc.web.MethodDescriptor(
  '/trinsic.services.Provider/InviteWithWorkflow',
  grpc.web.MethodType.UNARY,
  proto.trinsic.services.InviteRequest,
  proto.trinsic.services.InviteResponse,
  /**
   * @param {!proto.trinsic.services.InviteRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.trinsic.services.InviteResponse.deserializeBinary
);


/**
 * @const
 * @type {!grpc.web.AbstractClientBase.MethodInfo<
 *   !proto.trinsic.services.InviteRequest,
 *   !proto.trinsic.services.InviteResponse>}
 */
const methodInfo_Provider_InviteWithWorkflow = new grpc.web.AbstractClientBase.MethodInfo(
  proto.trinsic.services.InviteResponse,
  /**
   * @param {!proto.trinsic.services.InviteRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.trinsic.services.InviteResponse.deserializeBinary
);


/**
 * @param {!proto.trinsic.services.InviteRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.trinsic.services.InviteResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.trinsic.services.InviteResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.trinsic.services.ProviderClient.prototype.inviteWithWorkflow =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/trinsic.services.Provider/InviteWithWorkflow',
      request,
      metadata || {},
      methodDescriptor_Provider_InviteWithWorkflow,
      callback);
};


/**
 * @param {!proto.trinsic.services.InviteRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.trinsic.services.InviteResponse>}
 *     Promise that resolves to the response
 */
proto.trinsic.services.ProviderPromiseClient.prototype.inviteWithWorkflow =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/trinsic.services.Provider/InviteWithWorkflow',
      request,
      metadata || {},
      methodDescriptor_Provider_InviteWithWorkflow);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.trinsic.services.InvitationStatusRequest,
 *   !proto.trinsic.services.InvitationStatusResponse>}
 */
const methodDescriptor_Provider_InvitationStatus = new grpc.web.MethodDescriptor(
  '/trinsic.services.Provider/InvitationStatus',
  grpc.web.MethodType.UNARY,
  proto.trinsic.services.InvitationStatusRequest,
  proto.trinsic.services.InvitationStatusResponse,
  /**
   * @param {!proto.trinsic.services.InvitationStatusRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.trinsic.services.InvitationStatusResponse.deserializeBinary
);


/**
 * @const
 * @type {!grpc.web.AbstractClientBase.MethodInfo<
 *   !proto.trinsic.services.InvitationStatusRequest,
 *   !proto.trinsic.services.InvitationStatusResponse>}
 */
const methodInfo_Provider_InvitationStatus = new grpc.web.AbstractClientBase.MethodInfo(
  proto.trinsic.services.InvitationStatusResponse,
  /**
   * @param {!proto.trinsic.services.InvitationStatusRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.trinsic.services.InvitationStatusResponse.deserializeBinary
);


/**
 * @param {!proto.trinsic.services.InvitationStatusRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.trinsic.services.InvitationStatusResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.trinsic.services.InvitationStatusResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.trinsic.services.ProviderClient.prototype.invitationStatus =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/trinsic.services.Provider/InvitationStatus',
      request,
      metadata || {},
      methodDescriptor_Provider_InvitationStatus,
      callback);
};


/**
 * @param {!proto.trinsic.services.InvitationStatusRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.trinsic.services.InvitationStatusResponse>}
 *     Promise that resolves to the response
 */
proto.trinsic.services.ProviderPromiseClient.prototype.invitationStatus =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/trinsic.services.Provider/InvitationStatus',
      request,
      metadata || {},
      methodDescriptor_Provider_InvitationStatus);
};


module.exports = proto.trinsic.services;

