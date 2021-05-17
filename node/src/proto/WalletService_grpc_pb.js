// GENERATED CODE -- DO NOT EDIT!

'use strict';
var grpc = require('grpc');
var WalletService_pb = require('./WalletService_pb.js');
var google_protobuf_struct_pb = require('google-protobuf/google/protobuf/struct_pb.js');
var CoreService_pb = require('./CoreService_pb.js');
var pbmse_pbmse_pb = require('./pbmse/pbmse_pb.js');

function serialize_pbmse_EncryptedMessage(arg) {
  if (!(arg instanceof pbmse_pbmse_pb.EncryptedMessage)) {
    throw new Error('Expected argument of type pbmse.EncryptedMessage');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_pbmse_EncryptedMessage(buffer_arg) {
  return pbmse_pbmse_pb.EncryptedMessage.deserializeBinary(new Uint8Array(buffer_arg));
}

function serialize_trinsic_services_ConnectRequest(arg) {
  if (!(arg instanceof WalletService_pb.ConnectRequest)) {
    throw new Error('Expected argument of type trinsic.services.ConnectRequest');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_trinsic_services_ConnectRequest(buffer_arg) {
  return WalletService_pb.ConnectRequest.deserializeBinary(new Uint8Array(buffer_arg));
}

function serialize_trinsic_services_ConnectResponse(arg) {
  if (!(arg instanceof WalletService_pb.ConnectResponse)) {
    throw new Error('Expected argument of type trinsic.services.ConnectResponse');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_trinsic_services_ConnectResponse(buffer_arg) {
  return WalletService_pb.ConnectResponse.deserializeBinary(new Uint8Array(buffer_arg));
}

function serialize_trinsic_services_CreateWalletRequest(arg) {
  if (!(arg instanceof WalletService_pb.CreateWalletRequest)) {
    throw new Error('Expected argument of type trinsic.services.CreateWalletRequest');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_trinsic_services_CreateWalletRequest(buffer_arg) {
  return WalletService_pb.CreateWalletRequest.deserializeBinary(new Uint8Array(buffer_arg));
}

function serialize_trinsic_services_CreateWalletResponse(arg) {
  if (!(arg instanceof WalletService_pb.CreateWalletResponse)) {
    throw new Error('Expected argument of type trinsic.services.CreateWalletResponse');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_trinsic_services_CreateWalletResponse(buffer_arg) {
  return WalletService_pb.CreateWalletResponse.deserializeBinary(new Uint8Array(buffer_arg));
}

function serialize_trinsic_services_GetProviderConfigurationRequest(arg) {
  if (!(arg instanceof WalletService_pb.GetProviderConfigurationRequest)) {
    throw new Error('Expected argument of type trinsic.services.GetProviderConfigurationRequest');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_trinsic_services_GetProviderConfigurationRequest(buffer_arg) {
  return WalletService_pb.GetProviderConfigurationRequest.deserializeBinary(new Uint8Array(buffer_arg));
}

function serialize_trinsic_services_GetProviderConfigurationResponse(arg) {
  if (!(arg instanceof WalletService_pb.GetProviderConfigurationResponse)) {
    throw new Error('Expected argument of type trinsic.services.GetProviderConfigurationResponse');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_trinsic_services_GetProviderConfigurationResponse(buffer_arg) {
  return WalletService_pb.GetProviderConfigurationResponse.deserializeBinary(new Uint8Array(buffer_arg));
}

function serialize_trinsic_services_GrantAccessRequest(arg) {
  if (!(arg instanceof WalletService_pb.GrantAccessRequest)) {
    throw new Error('Expected argument of type trinsic.services.GrantAccessRequest');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_trinsic_services_GrantAccessRequest(buffer_arg) {
  return WalletService_pb.GrantAccessRequest.deserializeBinary(new Uint8Array(buffer_arg));
}

function serialize_trinsic_services_GrantAccessResponse(arg) {
  if (!(arg instanceof WalletService_pb.GrantAccessResponse)) {
    throw new Error('Expected argument of type trinsic.services.GrantAccessResponse');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_trinsic_services_GrantAccessResponse(buffer_arg) {
  return WalletService_pb.GrantAccessResponse.deserializeBinary(new Uint8Array(buffer_arg));
}

function serialize_trinsic_services_InsertItemRequest(arg) {
  if (!(arg instanceof WalletService_pb.InsertItemRequest)) {
    throw new Error('Expected argument of type trinsic.services.InsertItemRequest');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_trinsic_services_InsertItemRequest(buffer_arg) {
  return WalletService_pb.InsertItemRequest.deserializeBinary(new Uint8Array(buffer_arg));
}

function serialize_trinsic_services_InsertItemResponse(arg) {
  if (!(arg instanceof WalletService_pb.InsertItemResponse)) {
    throw new Error('Expected argument of type trinsic.services.InsertItemResponse');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_trinsic_services_InsertItemResponse(buffer_arg) {
  return WalletService_pb.InsertItemResponse.deserializeBinary(new Uint8Array(buffer_arg));
}

function serialize_trinsic_services_RevokeAccessRequest(arg) {
  if (!(arg instanceof WalletService_pb.RevokeAccessRequest)) {
    throw new Error('Expected argument of type trinsic.services.RevokeAccessRequest');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_trinsic_services_RevokeAccessRequest(buffer_arg) {
  return WalletService_pb.RevokeAccessRequest.deserializeBinary(new Uint8Array(buffer_arg));
}

function serialize_trinsic_services_RevokeAccessResponse(arg) {
  if (!(arg instanceof WalletService_pb.RevokeAccessResponse)) {
    throw new Error('Expected argument of type trinsic.services.RevokeAccessResponse');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_trinsic_services_RevokeAccessResponse(buffer_arg) {
  return WalletService_pb.RevokeAccessResponse.deserializeBinary(new Uint8Array(buffer_arg));
}

function serialize_trinsic_services_SearchRequest(arg) {
  if (!(arg instanceof WalletService_pb.SearchRequest)) {
    throw new Error('Expected argument of type trinsic.services.SearchRequest');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_trinsic_services_SearchRequest(buffer_arg) {
  return WalletService_pb.SearchRequest.deserializeBinary(new Uint8Array(buffer_arg));
}

function serialize_trinsic_services_SearchResponse(arg) {
  if (!(arg instanceof WalletService_pb.SearchResponse)) {
    throw new Error('Expected argument of type trinsic.services.SearchResponse');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_trinsic_services_SearchResponse(buffer_arg) {
  return WalletService_pb.SearchResponse.deserializeBinary(new Uint8Array(buffer_arg));
}


var WalletService = exports.WalletService = {
  getProviderConfiguration: {
    path: '/trinsic.services.Wallet/GetProviderConfiguration',
    requestStream: false,
    responseStream: false,
    requestType: WalletService_pb.GetProviderConfigurationRequest,
    responseType: WalletService_pb.GetProviderConfigurationResponse,
    requestSerialize: serialize_trinsic_services_GetProviderConfigurationRequest,
    requestDeserialize: deserialize_trinsic_services_GetProviderConfigurationRequest,
    responseSerialize: serialize_trinsic_services_GetProviderConfigurationResponse,
    responseDeserialize: deserialize_trinsic_services_GetProviderConfigurationResponse,
  },
  connectExternalIdentity: {
    path: '/trinsic.services.Wallet/ConnectExternalIdentity',
    requestStream: false,
    responseStream: false,
    requestType: WalletService_pb.ConnectRequest,
    responseType: WalletService_pb.ConnectResponse,
    requestSerialize: serialize_trinsic_services_ConnectRequest,
    requestDeserialize: deserialize_trinsic_services_ConnectRequest,
    responseSerialize: serialize_trinsic_services_ConnectResponse,
    responseDeserialize: deserialize_trinsic_services_ConnectResponse,
  },
  createWallet: {
    path: '/trinsic.services.Wallet/CreateWallet',
    requestStream: false,
    responseStream: false,
    requestType: WalletService_pb.CreateWalletRequest,
    responseType: WalletService_pb.CreateWalletResponse,
    requestSerialize: serialize_trinsic_services_CreateWalletRequest,
    requestDeserialize: deserialize_trinsic_services_CreateWalletRequest,
    responseSerialize: serialize_trinsic_services_CreateWalletResponse,
    responseDeserialize: deserialize_trinsic_services_CreateWalletResponse,
  },
  createWalletWithWorkflow: {
    path: '/trinsic.services.Wallet/CreateWalletWithWorkflow',
    requestStream: false,
    responseStream: false,
    requestType: WalletService_pb.CreateWalletRequest,
    responseType: WalletService_pb.CreateWalletResponse,
    requestSerialize: serialize_trinsic_services_CreateWalletRequest,
    requestDeserialize: deserialize_trinsic_services_CreateWalletRequest,
    responseSerialize: serialize_trinsic_services_CreateWalletResponse,
    responseDeserialize: deserialize_trinsic_services_CreateWalletResponse,
  },
  createWalletEncrypted: {
    path: '/trinsic.services.Wallet/CreateWalletEncrypted',
    requestStream: false,
    responseStream: false,
    requestType: pbmse_pbmse_pb.EncryptedMessage,
    responseType: pbmse_pbmse_pb.EncryptedMessage,
    requestSerialize: serialize_pbmse_EncryptedMessage,
    requestDeserialize: deserialize_pbmse_EncryptedMessage,
    responseSerialize: serialize_pbmse_EncryptedMessage,
    responseDeserialize: deserialize_pbmse_EncryptedMessage,
  },
  search: {
    path: '/trinsic.services.Wallet/Search',
    requestStream: false,
    responseStream: false,
    requestType: WalletService_pb.SearchRequest,
    responseType: WalletService_pb.SearchResponse,
    requestSerialize: serialize_trinsic_services_SearchRequest,
    requestDeserialize: deserialize_trinsic_services_SearchRequest,
    responseSerialize: serialize_trinsic_services_SearchResponse,
    responseDeserialize: deserialize_trinsic_services_SearchResponse,
  },
  insertItem: {
    path: '/trinsic.services.Wallet/InsertItem',
    requestStream: false,
    responseStream: false,
    requestType: WalletService_pb.InsertItemRequest,
    responseType: WalletService_pb.InsertItemResponse,
    requestSerialize: serialize_trinsic_services_InsertItemRequest,
    requestDeserialize: deserialize_trinsic_services_InsertItemRequest,
    responseSerialize: serialize_trinsic_services_InsertItemResponse,
    responseDeserialize: deserialize_trinsic_services_InsertItemResponse,
  },
  grantAccess: {
    path: '/trinsic.services.Wallet/GrantAccess',
    requestStream: false,
    responseStream: false,
    requestType: WalletService_pb.GrantAccessRequest,
    responseType: WalletService_pb.GrantAccessResponse,
    requestSerialize: serialize_trinsic_services_GrantAccessRequest,
    requestDeserialize: deserialize_trinsic_services_GrantAccessRequest,
    responseSerialize: serialize_trinsic_services_GrantAccessResponse,
    responseDeserialize: deserialize_trinsic_services_GrantAccessResponse,
  },
  revokeAccess: {
    path: '/trinsic.services.Wallet/RevokeAccess',
    requestStream: false,
    responseStream: false,
    requestType: WalletService_pb.RevokeAccessRequest,
    responseType: WalletService_pb.RevokeAccessResponse,
    requestSerialize: serialize_trinsic_services_RevokeAccessRequest,
    requestDeserialize: deserialize_trinsic_services_RevokeAccessRequest,
    responseSerialize: serialize_trinsic_services_RevokeAccessResponse,
    responseDeserialize: deserialize_trinsic_services_RevokeAccessResponse,
  },
};

exports.WalletClient = grpc.makeGenericClientConstructor(WalletService);
