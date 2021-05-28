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

var pbmse_pbmse_pb = require('./pbmse/pbmse_pb.js')
const proto = {};
proto.trinsic = {};
proto.trinsic.services = require('./WalletService_pb.js');

/**
 * @param {string} hostname
 * @param {?Object} credentials
 * @param {?Object} options
 * @constructor
 * @struct
 * @final
 */
proto.trinsic.services.WalletClient =
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
proto.trinsic.services.WalletPromiseClient =
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
 *   !proto.trinsic.services.GetProviderConfigurationRequest,
 *   !proto.trinsic.services.GetProviderConfigurationResponse>}
 */
const methodDescriptor_Wallet_GetProviderConfiguration = new grpc.web.MethodDescriptor(
  '/trinsic.services.Wallet/GetProviderConfiguration',
  grpc.web.MethodType.UNARY,
  proto.trinsic.services.GetProviderConfigurationRequest,
  proto.trinsic.services.GetProviderConfigurationResponse,
  /**
   * @param {!proto.trinsic.services.GetProviderConfigurationRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.trinsic.services.GetProviderConfigurationResponse.deserializeBinary
);


/**
 * @const
 * @type {!grpc.web.AbstractClientBase.MethodInfo<
 *   !proto.trinsic.services.GetProviderConfigurationRequest,
 *   !proto.trinsic.services.GetProviderConfigurationResponse>}
 */
const methodInfo_Wallet_GetProviderConfiguration = new grpc.web.AbstractClientBase.MethodInfo(
  proto.trinsic.services.GetProviderConfigurationResponse,
  /**
   * @param {!proto.trinsic.services.GetProviderConfigurationRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.trinsic.services.GetProviderConfigurationResponse.deserializeBinary
);


/**
 * @param {!proto.trinsic.services.GetProviderConfigurationRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.trinsic.services.GetProviderConfigurationResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.trinsic.services.GetProviderConfigurationResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.trinsic.services.WalletClient.prototype.getProviderConfiguration =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/trinsic.services.Wallet/GetProviderConfiguration',
      request,
      metadata || {},
      methodDescriptor_Wallet_GetProviderConfiguration,
      callback);
};


/**
 * @param {!proto.trinsic.services.GetProviderConfigurationRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.trinsic.services.GetProviderConfigurationResponse>}
 *     Promise that resolves to the response
 */
proto.trinsic.services.WalletPromiseClient.prototype.getProviderConfiguration =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/trinsic.services.Wallet/GetProviderConfiguration',
      request,
      metadata || {},
      methodDescriptor_Wallet_GetProviderConfiguration);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.trinsic.services.ConnectRequest,
 *   !proto.trinsic.services.ConnectResponse>}
 */
const methodDescriptor_Wallet_ConnectExternalIdentity = new grpc.web.MethodDescriptor(
  '/trinsic.services.Wallet/ConnectExternalIdentity',
  grpc.web.MethodType.UNARY,
  proto.trinsic.services.ConnectRequest,
  proto.trinsic.services.ConnectResponse,
  /**
   * @param {!proto.trinsic.services.ConnectRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.trinsic.services.ConnectResponse.deserializeBinary
);


/**
 * @const
 * @type {!grpc.web.AbstractClientBase.MethodInfo<
 *   !proto.trinsic.services.ConnectRequest,
 *   !proto.trinsic.services.ConnectResponse>}
 */
const methodInfo_Wallet_ConnectExternalIdentity = new grpc.web.AbstractClientBase.MethodInfo(
  proto.trinsic.services.ConnectResponse,
  /**
   * @param {!proto.trinsic.services.ConnectRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.trinsic.services.ConnectResponse.deserializeBinary
);


/**
 * @param {!proto.trinsic.services.ConnectRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.trinsic.services.ConnectResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.trinsic.services.ConnectResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.trinsic.services.WalletClient.prototype.connectExternalIdentity =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/trinsic.services.Wallet/ConnectExternalIdentity',
      request,
      metadata || {},
      methodDescriptor_Wallet_ConnectExternalIdentity,
      callback);
};


/**
 * @param {!proto.trinsic.services.ConnectRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.trinsic.services.ConnectResponse>}
 *     Promise that resolves to the response
 */
proto.trinsic.services.WalletPromiseClient.prototype.connectExternalIdentity =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/trinsic.services.Wallet/ConnectExternalIdentity',
      request,
      metadata || {},
      methodDescriptor_Wallet_ConnectExternalIdentity);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.trinsic.services.CreateWalletRequest,
 *   !proto.trinsic.services.CreateWalletResponse>}
 */
const methodDescriptor_Wallet_CreateWallet = new grpc.web.MethodDescriptor(
  '/trinsic.services.Wallet/CreateWallet',
  grpc.web.MethodType.UNARY,
  proto.trinsic.services.CreateWalletRequest,
  proto.trinsic.services.CreateWalletResponse,
  /**
   * @param {!proto.trinsic.services.CreateWalletRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.trinsic.services.CreateWalletResponse.deserializeBinary
);


/**
 * @const
 * @type {!grpc.web.AbstractClientBase.MethodInfo<
 *   !proto.trinsic.services.CreateWalletRequest,
 *   !proto.trinsic.services.CreateWalletResponse>}
 */
const methodInfo_Wallet_CreateWallet = new grpc.web.AbstractClientBase.MethodInfo(
  proto.trinsic.services.CreateWalletResponse,
  /**
   * @param {!proto.trinsic.services.CreateWalletRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.trinsic.services.CreateWalletResponse.deserializeBinary
);


/**
 * @param {!proto.trinsic.services.CreateWalletRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.trinsic.services.CreateWalletResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.trinsic.services.CreateWalletResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.trinsic.services.WalletClient.prototype.createWallet =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/trinsic.services.Wallet/CreateWallet',
      request,
      metadata || {},
      methodDescriptor_Wallet_CreateWallet,
      callback);
};


/**
 * @param {!proto.trinsic.services.CreateWalletRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.trinsic.services.CreateWalletResponse>}
 *     Promise that resolves to the response
 */
proto.trinsic.services.WalletPromiseClient.prototype.createWallet =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/trinsic.services.Wallet/CreateWallet',
      request,
      metadata || {},
      methodDescriptor_Wallet_CreateWallet);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.trinsic.services.CreateWalletRequest,
 *   !proto.trinsic.services.CreateWalletResponse>}
 */
const methodDescriptor_Wallet_CreateWalletWithWorkflow = new grpc.web.MethodDescriptor(
  '/trinsic.services.Wallet/CreateWalletWithWorkflow',
  grpc.web.MethodType.UNARY,
  proto.trinsic.services.CreateWalletRequest,
  proto.trinsic.services.CreateWalletResponse,
  /**
   * @param {!proto.trinsic.services.CreateWalletRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.trinsic.services.CreateWalletResponse.deserializeBinary
);


/**
 * @const
 * @type {!grpc.web.AbstractClientBase.MethodInfo<
 *   !proto.trinsic.services.CreateWalletRequest,
 *   !proto.trinsic.services.CreateWalletResponse>}
 */
const methodInfo_Wallet_CreateWalletWithWorkflow = new grpc.web.AbstractClientBase.MethodInfo(
  proto.trinsic.services.CreateWalletResponse,
  /**
   * @param {!proto.trinsic.services.CreateWalletRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.trinsic.services.CreateWalletResponse.deserializeBinary
);


/**
 * @param {!proto.trinsic.services.CreateWalletRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.trinsic.services.CreateWalletResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.trinsic.services.CreateWalletResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.trinsic.services.WalletClient.prototype.createWalletWithWorkflow =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/trinsic.services.Wallet/CreateWalletWithWorkflow',
      request,
      metadata || {},
      methodDescriptor_Wallet_CreateWalletWithWorkflow,
      callback);
};


/**
 * @param {!proto.trinsic.services.CreateWalletRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.trinsic.services.CreateWalletResponse>}
 *     Promise that resolves to the response
 */
proto.trinsic.services.WalletPromiseClient.prototype.createWalletWithWorkflow =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/trinsic.services.Wallet/CreateWalletWithWorkflow',
      request,
      metadata || {},
      methodDescriptor_Wallet_CreateWalletWithWorkflow);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.pbmse.EncryptedMessage,
 *   !proto.pbmse.EncryptedMessage>}
 */
const methodDescriptor_Wallet_CreateWalletEncrypted = new grpc.web.MethodDescriptor(
  '/trinsic.services.Wallet/CreateWalletEncrypted',
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
const methodInfo_Wallet_CreateWalletEncrypted = new grpc.web.AbstractClientBase.MethodInfo(
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
proto.trinsic.services.WalletClient.prototype.createWalletEncrypted =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/trinsic.services.Wallet/CreateWalletEncrypted',
      request,
      metadata || {},
      methodDescriptor_Wallet_CreateWalletEncrypted,
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
proto.trinsic.services.WalletPromiseClient.prototype.createWalletEncrypted =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/trinsic.services.Wallet/CreateWalletEncrypted',
      request,
      metadata || {},
      methodDescriptor_Wallet_CreateWalletEncrypted);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.trinsic.services.SearchRequest,
 *   !proto.trinsic.services.SearchResponse>}
 */
const methodDescriptor_Wallet_Search = new grpc.web.MethodDescriptor(
  '/trinsic.services.Wallet/Search',
  grpc.web.MethodType.UNARY,
  proto.trinsic.services.SearchRequest,
  proto.trinsic.services.SearchResponse,
  /**
   * @param {!proto.trinsic.services.SearchRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.trinsic.services.SearchResponse.deserializeBinary
);


/**
 * @const
 * @type {!grpc.web.AbstractClientBase.MethodInfo<
 *   !proto.trinsic.services.SearchRequest,
 *   !proto.trinsic.services.SearchResponse>}
 */
const methodInfo_Wallet_Search = new grpc.web.AbstractClientBase.MethodInfo(
  proto.trinsic.services.SearchResponse,
  /**
   * @param {!proto.trinsic.services.SearchRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.trinsic.services.SearchResponse.deserializeBinary
);


/**
 * @param {!proto.trinsic.services.SearchRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.trinsic.services.SearchResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.trinsic.services.SearchResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.trinsic.services.WalletClient.prototype.search =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/trinsic.services.Wallet/Search',
      request,
      metadata || {},
      methodDescriptor_Wallet_Search,
      callback);
};


/**
 * @param {!proto.trinsic.services.SearchRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.trinsic.services.SearchResponse>}
 *     Promise that resolves to the response
 */
proto.trinsic.services.WalletPromiseClient.prototype.search =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/trinsic.services.Wallet/Search',
      request,
      metadata || {},
      methodDescriptor_Wallet_Search);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.trinsic.services.InsertItemRequest,
 *   !proto.trinsic.services.InsertItemResponse>}
 */
const methodDescriptor_Wallet_InsertItem = new grpc.web.MethodDescriptor(
  '/trinsic.services.Wallet/InsertItem',
  grpc.web.MethodType.UNARY,
  proto.trinsic.services.InsertItemRequest,
  proto.trinsic.services.InsertItemResponse,
  /**
   * @param {!proto.trinsic.services.InsertItemRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.trinsic.services.InsertItemResponse.deserializeBinary
);


/**
 * @const
 * @type {!grpc.web.AbstractClientBase.MethodInfo<
 *   !proto.trinsic.services.InsertItemRequest,
 *   !proto.trinsic.services.InsertItemResponse>}
 */
const methodInfo_Wallet_InsertItem = new grpc.web.AbstractClientBase.MethodInfo(
  proto.trinsic.services.InsertItemResponse,
  /**
   * @param {!proto.trinsic.services.InsertItemRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.trinsic.services.InsertItemResponse.deserializeBinary
);


/**
 * @param {!proto.trinsic.services.InsertItemRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.trinsic.services.InsertItemResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.trinsic.services.InsertItemResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.trinsic.services.WalletClient.prototype.insertItem =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/trinsic.services.Wallet/InsertItem',
      request,
      metadata || {},
      methodDescriptor_Wallet_InsertItem,
      callback);
};


/**
 * @param {!proto.trinsic.services.InsertItemRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.trinsic.services.InsertItemResponse>}
 *     Promise that resolves to the response
 */
proto.trinsic.services.WalletPromiseClient.prototype.insertItem =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/trinsic.services.Wallet/InsertItem',
      request,
      metadata || {},
      methodDescriptor_Wallet_InsertItem);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.trinsic.services.GrantAccessRequest,
 *   !proto.trinsic.services.GrantAccessResponse>}
 */
const methodDescriptor_Wallet_GrantAccess = new grpc.web.MethodDescriptor(
  '/trinsic.services.Wallet/GrantAccess',
  grpc.web.MethodType.UNARY,
  proto.trinsic.services.GrantAccessRequest,
  proto.trinsic.services.GrantAccessResponse,
  /**
   * @param {!proto.trinsic.services.GrantAccessRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.trinsic.services.GrantAccessResponse.deserializeBinary
);


/**
 * @const
 * @type {!grpc.web.AbstractClientBase.MethodInfo<
 *   !proto.trinsic.services.GrantAccessRequest,
 *   !proto.trinsic.services.GrantAccessResponse>}
 */
const methodInfo_Wallet_GrantAccess = new grpc.web.AbstractClientBase.MethodInfo(
  proto.trinsic.services.GrantAccessResponse,
  /**
   * @param {!proto.trinsic.services.GrantAccessRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.trinsic.services.GrantAccessResponse.deserializeBinary
);


/**
 * @param {!proto.trinsic.services.GrantAccessRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.trinsic.services.GrantAccessResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.trinsic.services.GrantAccessResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.trinsic.services.WalletClient.prototype.grantAccess =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/trinsic.services.Wallet/GrantAccess',
      request,
      metadata || {},
      methodDescriptor_Wallet_GrantAccess,
      callback);
};


/**
 * @param {!proto.trinsic.services.GrantAccessRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.trinsic.services.GrantAccessResponse>}
 *     Promise that resolves to the response
 */
proto.trinsic.services.WalletPromiseClient.prototype.grantAccess =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/trinsic.services.Wallet/GrantAccess',
      request,
      metadata || {},
      methodDescriptor_Wallet_GrantAccess);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.trinsic.services.RevokeAccessRequest,
 *   !proto.trinsic.services.RevokeAccessResponse>}
 */
const methodDescriptor_Wallet_RevokeAccess = new grpc.web.MethodDescriptor(
  '/trinsic.services.Wallet/RevokeAccess',
  grpc.web.MethodType.UNARY,
  proto.trinsic.services.RevokeAccessRequest,
  proto.trinsic.services.RevokeAccessResponse,
  /**
   * @param {!proto.trinsic.services.RevokeAccessRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.trinsic.services.RevokeAccessResponse.deserializeBinary
);


/**
 * @const
 * @type {!grpc.web.AbstractClientBase.MethodInfo<
 *   !proto.trinsic.services.RevokeAccessRequest,
 *   !proto.trinsic.services.RevokeAccessResponse>}
 */
const methodInfo_Wallet_RevokeAccess = new grpc.web.AbstractClientBase.MethodInfo(
  proto.trinsic.services.RevokeAccessResponse,
  /**
   * @param {!proto.trinsic.services.RevokeAccessRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.trinsic.services.RevokeAccessResponse.deserializeBinary
);


/**
 * @param {!proto.trinsic.services.RevokeAccessRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.Error, ?proto.trinsic.services.RevokeAccessResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.trinsic.services.RevokeAccessResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.trinsic.services.WalletClient.prototype.revokeAccess =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/trinsic.services.Wallet/RevokeAccess',
      request,
      metadata || {},
      methodDescriptor_Wallet_RevokeAccess,
      callback);
};


/**
 * @param {!proto.trinsic.services.RevokeAccessRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.trinsic.services.RevokeAccessResponse>}
 *     Promise that resolves to the response
 */
proto.trinsic.services.WalletPromiseClient.prototype.revokeAccess =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/trinsic.services.Wallet/RevokeAccess',
      request,
      metadata || {},
      methodDescriptor_Wallet_RevokeAccess);
};


module.exports = proto.trinsic.services;

