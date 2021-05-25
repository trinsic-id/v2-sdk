// GENERATED CODE -- DO NOT EDIT!

'use strict';
var grpc = require('grpc');
var AuthService_pb = require('./AuthService_pb.js');
var CoreService_pb = require('./CoreService_pb.js');
var pbmse_pbmse_pb = require('./pbmse/pbmse_pb.js');

function serialize_trinsic_services_AcquireTokenRequest(arg) {
  if (!(arg instanceof AuthService_pb.AcquireTokenRequest)) {
    throw new Error('Expected argument of type trinsic.services.AcquireTokenRequest');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_trinsic_services_AcquireTokenRequest(buffer_arg) {
  return AuthService_pb.AcquireTokenRequest.deserializeBinary(new Uint8Array(buffer_arg));
}

function serialize_trinsic_services_AcquireTokenResponse(arg) {
  if (!(arg instanceof AuthService_pb.AcquireTokenResponse)) {
    throw new Error('Expected argument of type trinsic.services.AcquireTokenResponse');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_trinsic_services_AcquireTokenResponse(buffer_arg) {
  return AuthService_pb.AcquireTokenResponse.deserializeBinary(new Uint8Array(buffer_arg));
}


var AuthenticationService = exports.AuthenticationService = {
  acquireToken: {
    path: '/trinsic.services.Authentication/AcquireToken',
    requestStream: false,
    responseStream: false,
    requestType: AuthService_pb.AcquireTokenRequest,
    responseType: AuthService_pb.AcquireTokenResponse,
    requestSerialize: serialize_trinsic_services_AcquireTokenRequest,
    requestDeserialize: deserialize_trinsic_services_AcquireTokenRequest,
    responseSerialize: serialize_trinsic_services_AcquireTokenResponse,
    responseDeserialize: deserialize_trinsic_services_AcquireTokenResponse,
  },
};

exports.AuthenticationClient = grpc.makeGenericClientConstructor(AuthenticationService);
