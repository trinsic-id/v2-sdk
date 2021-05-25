// GENERATED CODE -- DO NOT EDIT!

'use strict';
var grpc = require('grpc');
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


var CommonService = exports.CommonService = {
  request: {
    path: '/trinsic.services.Common/Request',
    requestStream: false,
    responseStream: false,
    requestType: pbmse_pbmse_pb.EncryptedMessage,
    responseType: pbmse_pbmse_pb.EncryptedMessage,
    requestSerialize: serialize_pbmse_EncryptedMessage,
    requestDeserialize: deserialize_pbmse_EncryptedMessage,
    responseSerialize: serialize_pbmse_EncryptedMessage,
    responseDeserialize: deserialize_pbmse_EncryptedMessage,
  },
};

exports.CommonClient = grpc.makeGenericClientConstructor(CommonService);
