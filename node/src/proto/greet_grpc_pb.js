// GENERATED CODE -- DO NOT EDIT!

'use strict';
var grpc = require('grpc');
var greet_pb = require('./greet_pb.js');

function serialize_greet_HelloReply(arg) {
  if (!(arg instanceof greet_pb.HelloReply)) {
    throw new Error('Expected argument of type greet.HelloReply');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_greet_HelloReply(buffer_arg) {
  return greet_pb.HelloReply.deserializeBinary(new Uint8Array(buffer_arg));
}

function serialize_greet_HelloRequest(arg) {
  if (!(arg instanceof greet_pb.HelloRequest)) {
    throw new Error('Expected argument of type greet.HelloRequest');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_greet_HelloRequest(buffer_arg) {
  return greet_pb.HelloRequest.deserializeBinary(new Uint8Array(buffer_arg));
}


// The greeting service definition.
var GreeterService = exports.GreeterService = {
  // Sends a greeting
sayHello: {
    path: '/greet.Greeter/SayHello',
    requestStream: false,
    responseStream: false,
    requestType: greet_pb.HelloRequest,
    responseType: greet_pb.HelloReply,
    requestSerialize: serialize_greet_HelloRequest,
    requestDeserialize: deserialize_greet_HelloRequest,
    responseSerialize: serialize_greet_HelloReply,
    responseDeserialize: deserialize_greet_HelloReply,
  },
};

exports.GreeterClient = grpc.makeGenericClientConstructor(GreeterService);
