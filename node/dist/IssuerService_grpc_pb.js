// GENERATED CODE -- DO NOT EDIT!

'use strict';
var grpc = require('@grpc/grpc-js');
var IssuerService_pb = require('./IssuerService_pb.js');
var google_protobuf_struct_pb = require('google-protobuf/google/protobuf/struct_pb.js');

function serialize_trinsic_services_CreateProofRequest(arg) {
  if (!(arg instanceof IssuerService_pb.CreateProofRequest)) {
    throw new Error('Expected argument of type trinsic.services.CreateProofRequest');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_trinsic_services_CreateProofRequest(buffer_arg) {
  return IssuerService_pb.CreateProofRequest.deserializeBinary(new Uint8Array(buffer_arg));
}

function serialize_trinsic_services_CreateProofResponse(arg) {
  if (!(arg instanceof IssuerService_pb.CreateProofResponse)) {
    throw new Error('Expected argument of type trinsic.services.CreateProofResponse');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_trinsic_services_CreateProofResponse(buffer_arg) {
  return IssuerService_pb.CreateProofResponse.deserializeBinary(new Uint8Array(buffer_arg));
}

function serialize_trinsic_services_IssueRequest(arg) {
  if (!(arg instanceof IssuerService_pb.IssueRequest)) {
    throw new Error('Expected argument of type trinsic.services.IssueRequest');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_trinsic_services_IssueRequest(buffer_arg) {
  return IssuerService_pb.IssueRequest.deserializeBinary(new Uint8Array(buffer_arg));
}

function serialize_trinsic_services_IssueResponse(arg) {
  if (!(arg instanceof IssuerService_pb.IssueResponse)) {
    throw new Error('Expected argument of type trinsic.services.IssueResponse');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_trinsic_services_IssueResponse(buffer_arg) {
  return IssuerService_pb.IssueResponse.deserializeBinary(new Uint8Array(buffer_arg));
}

function serialize_trinsic_services_VerifyProofRequest(arg) {
  if (!(arg instanceof IssuerService_pb.VerifyProofRequest)) {
    throw new Error('Expected argument of type trinsic.services.VerifyProofRequest');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_trinsic_services_VerifyProofRequest(buffer_arg) {
  return IssuerService_pb.VerifyProofRequest.deserializeBinary(new Uint8Array(buffer_arg));
}

function serialize_trinsic_services_VerifyProofResponse(arg) {
  if (!(arg instanceof IssuerService_pb.VerifyProofResponse)) {
    throw new Error('Expected argument of type trinsic.services.VerifyProofResponse');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_trinsic_services_VerifyProofResponse(buffer_arg) {
  return IssuerService_pb.VerifyProofResponse.deserializeBinary(new Uint8Array(buffer_arg));
}


var CredentialService = exports.CredentialService = {
  issue: {
    path: '/trinsic.services.Credential/Issue',
    requestStream: false,
    responseStream: false,
    requestType: IssuerService_pb.IssueRequest,
    responseType: IssuerService_pb.IssueResponse,
    requestSerialize: serialize_trinsic_services_IssueRequest,
    requestDeserialize: deserialize_trinsic_services_IssueRequest,
    responseSerialize: serialize_trinsic_services_IssueResponse,
    responseDeserialize: deserialize_trinsic_services_IssueResponse,
  },
  createProof: {
    path: '/trinsic.services.Credential/CreateProof',
    requestStream: false,
    responseStream: false,
    requestType: IssuerService_pb.CreateProofRequest,
    responseType: IssuerService_pb.CreateProofResponse,
    requestSerialize: serialize_trinsic_services_CreateProofRequest,
    requestDeserialize: deserialize_trinsic_services_CreateProofRequest,
    responseSerialize: serialize_trinsic_services_CreateProofResponse,
    responseDeserialize: deserialize_trinsic_services_CreateProofResponse,
  },
  verifyProof: {
    path: '/trinsic.services.Credential/VerifyProof',
    requestStream: false,
    responseStream: false,
    requestType: IssuerService_pb.VerifyProofRequest,
    responseType: IssuerService_pb.VerifyProofResponse,
    requestSerialize: serialize_trinsic_services_VerifyProofRequest,
    requestDeserialize: deserialize_trinsic_services_VerifyProofRequest,
    responseSerialize: serialize_trinsic_services_VerifyProofResponse,
    responseDeserialize: deserialize_trinsic_services_VerifyProofResponse,
  },
};

exports.CredentialClient = grpc.makeGenericClientConstructor(CredentialService);
