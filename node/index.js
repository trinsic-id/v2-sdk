var grpc = require('@grpc/grpc-js');
var messages = require('./bin/helloworld_pb');
var services = require('./bin/helloworld_grpc_pb');
var credentials = grpc.credentials;

var client = {
    messages,
    services,
    credentials
}

exports.getClient = () => {
    return client;
}