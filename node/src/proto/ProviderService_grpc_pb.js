// GENERATED CODE -- DO NOT EDIT!

'use strict';
var grpc = require('grpc');
var ProviderService_pb = require('./ProviderService_pb.js');
var google_protobuf_struct_pb = require('google-protobuf/google/protobuf/struct_pb.js');

function serialize_trinsic_services_InvitationStatusRequest(arg) {
  if (!(arg instanceof ProviderService_pb.InvitationStatusRequest)) {
    throw new Error('Expected argument of type trinsic.services.InvitationStatusRequest');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_trinsic_services_InvitationStatusRequest(buffer_arg) {
  return ProviderService_pb.InvitationStatusRequest.deserializeBinary(new Uint8Array(buffer_arg));
}

function serialize_trinsic_services_InvitationStatusResponse(arg) {
  if (!(arg instanceof ProviderService_pb.InvitationStatusResponse)) {
    throw new Error('Expected argument of type trinsic.services.InvitationStatusResponse');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_trinsic_services_InvitationStatusResponse(buffer_arg) {
  return ProviderService_pb.InvitationStatusResponse.deserializeBinary(new Uint8Array(buffer_arg));
}

function serialize_trinsic_services_InviteRequest(arg) {
  if (!(arg instanceof ProviderService_pb.InviteRequest)) {
    throw new Error('Expected argument of type trinsic.services.InviteRequest');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_trinsic_services_InviteRequest(buffer_arg) {
  return ProviderService_pb.InviteRequest.deserializeBinary(new Uint8Array(buffer_arg));
}

function serialize_trinsic_services_InviteResponse(arg) {
  if (!(arg instanceof ProviderService_pb.InviteResponse)) {
    throw new Error('Expected argument of type trinsic.services.InviteResponse');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_trinsic_services_InviteResponse(buffer_arg) {
  return ProviderService_pb.InviteResponse.deserializeBinary(new Uint8Array(buffer_arg));
}


var ProviderService = exports.ProviderService = {
  //   rpc CreateOrganization(CreateOrganizationRequest) returns (CreateOrganizationResponse);
invite: {
    path: '/trinsic.services.Provider/Invite',
    requestStream: false,
    responseStream: false,
    requestType: ProviderService_pb.InviteRequest,
    responseType: ProviderService_pb.InviteResponse,
    requestSerialize: serialize_trinsic_services_InviteRequest,
    requestDeserialize: deserialize_trinsic_services_InviteRequest,
    responseSerialize: serialize_trinsic_services_InviteResponse,
    responseDeserialize: deserialize_trinsic_services_InviteResponse,
  },
  inviteWithWorkflow: {
    path: '/trinsic.services.Provider/InviteWithWorkflow',
    requestStream: false,
    responseStream: false,
    requestType: ProviderService_pb.InviteRequest,
    responseType: ProviderService_pb.InviteResponse,
    requestSerialize: serialize_trinsic_services_InviteRequest,
    requestDeserialize: deserialize_trinsic_services_InviteRequest,
    responseSerialize: serialize_trinsic_services_InviteResponse,
    responseDeserialize: deserialize_trinsic_services_InviteResponse,
  },
  invitationStatus: {
    path: '/trinsic.services.Provider/InvitationStatus',
    requestStream: false,
    responseStream: false,
    requestType: ProviderService_pb.InvitationStatusRequest,
    responseType: ProviderService_pb.InvitationStatusResponse,
    requestSerialize: serialize_trinsic_services_InvitationStatusRequest,
    requestDeserialize: deserialize_trinsic_services_InvitationStatusRequest,
    responseSerialize: serialize_trinsic_services_InvitationStatusResponse,
    responseDeserialize: deserialize_trinsic_services_InvitationStatusResponse,
  },
  //   rpc CreateCredentialTemplate(CreateCredentialTemplateRequest) returns (CreateCredentialTemplateResponse);
//   rpc ListCredentialTemplates(ListCredentialTemplatesRequest) returns (ListCredentialTemplatesResponse);
};

exports.ProviderClient = grpc.makeGenericClientConstructor(ProviderService);
