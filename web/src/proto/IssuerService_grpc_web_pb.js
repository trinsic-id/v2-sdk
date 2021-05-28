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
proto.trinsic.services = require('./IssuerService_pb.js');

/**
 * @param {string} hostname
 * @param {?Object} credentials
 * @param {?Object} options
 * @constructor
 * @struct
 * @final
 */
proto.trinsic.services.CredentialClient =
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
proto.trinsic.services.CredentialPromiseClient =
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
 *   !proto.trinsic.services.IssueRequest,
 *   !proto.trinsic.services.IssueResponse>}
 */
const methodDescriptor_Credential_Issue = new grpc.web.MethodDescriptor(
  '/trinsic.services.Credential/Issue',
  grpc.web.MethodType.UNARY,
  proto.trinsic.services.IssueRequest,
  proto.trinsic.services.IssueResponse,
  /**
   * @param {!proto.trinsic.services.IssueRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.trinsic.services.IssueResponse.deserializeBinary
);


/**
 * @const
 * @type {!grpc.web.AbstractClientBase.MethodInfo<
 *   !proto.trinsic.services.IssueRequest,
 *   !proto.trinsic.services.IssueResponse>}
 */
const methodInfo_Credential_Issue = new grpc.web.AbstractClientBase.MethodInfo(
  proto.trinsic.services.IssueResponse,
  /**
   * @param {!proto.trinsic.services.IssueRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.trinsic.services.IssueResponse.deserializeBinary
);


/**
 * @param {!proto.trinsic.services.IssueRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.trinsic.services.IssueResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.trinsic.services.IssueResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.trinsic.services.CredentialClient.prototype.issue =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/trinsic.services.Credential/Issue',
      request,
      metadata || {},
      methodDescriptor_Credential_Issue,
      callback);
};


/**
 * @param {!proto.trinsic.services.IssueRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.trinsic.services.IssueResponse>}
 *     Promise that resolves to the response
 */
proto.trinsic.services.CredentialPromiseClient.prototype.issue =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/trinsic.services.Credential/Issue',
      request,
      metadata || {},
      methodDescriptor_Credential_Issue);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.trinsic.services.CreateProofRequest,
 *   !proto.trinsic.services.CreateProofResponse>}
 */
const methodDescriptor_Credential_CreateProof = new grpc.web.MethodDescriptor(
  '/trinsic.services.Credential/CreateProof',
  grpc.web.MethodType.UNARY,
  proto.trinsic.services.CreateProofRequest,
  proto.trinsic.services.CreateProofResponse,
  /**
   * @param {!proto.trinsic.services.CreateProofRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.trinsic.services.CreateProofResponse.deserializeBinary
);


/**
 * @const
 * @type {!grpc.web.AbstractClientBase.MethodInfo<
 *   !proto.trinsic.services.CreateProofRequest,
 *   !proto.trinsic.services.CreateProofResponse>}
 */
const methodInfo_Credential_CreateProof = new grpc.web.AbstractClientBase.MethodInfo(
  proto.trinsic.services.CreateProofResponse,
  /**
   * @param {!proto.trinsic.services.CreateProofRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.trinsic.services.CreateProofResponse.deserializeBinary
);


/**
 * @param {!proto.trinsic.services.CreateProofRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.trinsic.services.CreateProofResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.trinsic.services.CreateProofResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.trinsic.services.CredentialClient.prototype.createProof =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/trinsic.services.Credential/CreateProof',
      request,
      metadata || {},
      methodDescriptor_Credential_CreateProof,
      callback);
};


/**
 * @param {!proto.trinsic.services.CreateProofRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.trinsic.services.CreateProofResponse>}
 *     Promise that resolves to the response
 */
proto.trinsic.services.CredentialPromiseClient.prototype.createProof =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/trinsic.services.Credential/CreateProof',
      request,
      metadata || {},
      methodDescriptor_Credential_CreateProof);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.trinsic.services.VerifyProofRequest,
 *   !proto.trinsic.services.VerifyProofResponse>}
 */
const methodDescriptor_Credential_VerifyProof = new grpc.web.MethodDescriptor(
  '/trinsic.services.Credential/VerifyProof',
  grpc.web.MethodType.UNARY,
  proto.trinsic.services.VerifyProofRequest,
  proto.trinsic.services.VerifyProofResponse,
  /**
   * @param {!proto.trinsic.services.VerifyProofRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.trinsic.services.VerifyProofResponse.deserializeBinary
);


/**
 * @const
 * @type {!grpc.web.AbstractClientBase.MethodInfo<
 *   !proto.trinsic.services.VerifyProofRequest,
 *   !proto.trinsic.services.VerifyProofResponse>}
 */
const methodInfo_Credential_VerifyProof = new grpc.web.AbstractClientBase.MethodInfo(
  proto.trinsic.services.VerifyProofResponse,
  /**
   * @param {!proto.trinsic.services.VerifyProofRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.trinsic.services.VerifyProofResponse.deserializeBinary
);


/**
 * @param {!proto.trinsic.services.VerifyProofRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.trinsic.services.VerifyProofResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.trinsic.services.VerifyProofResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.trinsic.services.CredentialClient.prototype.verifyProof =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/trinsic.services.Credential/VerifyProof',
      request,
      metadata || {},
      methodDescriptor_Credential_VerifyProof,
      callback);
};


/**
 * @param {!proto.trinsic.services.VerifyProofRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.trinsic.services.VerifyProofResponse>}
 *     Promise that resolves to the response
 */
proto.trinsic.services.CredentialPromiseClient.prototype.verifyProof =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/trinsic.services.Credential/VerifyProof',
      request,
      metadata || {},
      methodDescriptor_Credential_VerifyProof);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.trinsic.services.SendRequest,
 *   !proto.trinsic.services.SendResponse>}
 */
const methodDescriptor_Credential_Send = new grpc.web.MethodDescriptor(
  '/trinsic.services.Credential/Send',
  grpc.web.MethodType.UNARY,
  proto.trinsic.services.SendRequest,
  proto.trinsic.services.SendResponse,
  /**
   * @param {!proto.trinsic.services.SendRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.trinsic.services.SendResponse.deserializeBinary
);


/**
 * @const
 * @type {!grpc.web.AbstractClientBase.MethodInfo<
 *   !proto.trinsic.services.SendRequest,
 *   !proto.trinsic.services.SendResponse>}
 */
const methodInfo_Credential_Send = new grpc.web.AbstractClientBase.MethodInfo(
  proto.trinsic.services.SendResponse,
  /**
   * @param {!proto.trinsic.services.SendRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.trinsic.services.SendResponse.deserializeBinary
);


/**
 * @param {!proto.trinsic.services.SendRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.trinsic.services.SendResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.trinsic.services.SendResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.trinsic.services.CredentialClient.prototype.send =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/trinsic.services.Credential/Send',
      request,
      metadata || {},
      methodDescriptor_Credential_Send,
      callback);
};


/**
 * @param {!proto.trinsic.services.SendRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.trinsic.services.SendResponse>}
 *     Promise that resolves to the response
 */
proto.trinsic.services.CredentialPromiseClient.prototype.send =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/trinsic.services.Credential/Send',
      request,
      metadata || {},
      methodDescriptor_Credential_Send);
};


module.exports = proto.trinsic.services;

