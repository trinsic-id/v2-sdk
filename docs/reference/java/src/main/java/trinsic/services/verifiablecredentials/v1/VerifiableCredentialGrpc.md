# Documentation

## `@javax.annotation.Generated( value = "by gRPC proto compiler (version 1.42.1)", comments = "Source: services`

## `public static VerifiableCredentialStub newStub(io.grpc.Channel channel)`

Creates a new async stub that supports all call types for the service

## `public static VerifiableCredentialBlockingStub newBlockingStub( io.grpc.Channel channel)`

Creates a new blocking-style stub that supports unary and streaming output calls on the service

## `public static VerifiableCredentialFutureStub newFutureStub( io.grpc.Channel channel)`

Creates a new ListenableFuture-style stub that supports unary calls on the service

## `public static abstract class VerifiableCredentialImplBase implements io.grpc.BindableService`

## `public void issue(trinsic.services.verifiablecredentials.v1.VerifiableCredentials.IssueRequest request, io.grpc.stub.StreamObserver<trinsic.services.verifiablecredentials.v1.VerifiableCredentials.IssueResponse> responseObserver)`

## `public void issueFromTemplate(trinsic.services.verifiablecredentials.v1.VerifiableCredentials.IssueFromTemplateRequest request, io.grpc.stub.StreamObserver<trinsic.services.verifiablecredentials.v1.VerifiableCredentials.IssueFromTemplateResponse> responseObserver)`

## `public void checkStatus(trinsic.services.verifiablecredentials.v1.VerifiableCredentials.CheckStatusRequest request, io.grpc.stub.StreamObserver<trinsic.services.verifiablecredentials.v1.VerifiableCredentials.CheckStatusResponse> responseObserver)`

<pre> Check credential status by setting the revocation value </pre>

## `public void updateStatus(trinsic.services.verifiablecredentials.v1.VerifiableCredentials.UpdateStatusRequest request, io.grpc.stub.StreamObserver<trinsic.services.verifiablecredentials.v1.VerifiableCredentials.UpdateStatusResponse> responseObserver)`

<pre> Update credential status by setting the revocation value </pre>

## `public void createProof(trinsic.services.verifiablecredentials.v1.VerifiableCredentials.CreateProofRequest request, io.grpc.stub.StreamObserver<trinsic.services.verifiablecredentials.v1.VerifiableCredentials.CreateProofResponse> responseObserver)`

## `public void verifyProof(trinsic.services.verifiablecredentials.v1.VerifiableCredentials.VerifyProofRequest request, io.grpc.stub.StreamObserver<trinsic.services.verifiablecredentials.v1.VerifiableCredentials.VerifyProofResponse> responseObserver)`

## `public void send(trinsic.services.verifiablecredentials.v1.VerifiableCredentials.SendRequest request, io.grpc.stub.StreamObserver<trinsic.services.verifiablecredentials.v1.VerifiableCredentials.SendResponse> responseObserver)`

## `public static final class VerifiableCredentialStub extends io.grpc.stub.AbstractAsyncStub<VerifiableCredentialStub>`

## `public void issue(trinsic.services.verifiablecredentials.v1.VerifiableCredentials.IssueRequest request, io.grpc.stub.StreamObserver<trinsic.services.verifiablecredentials.v1.VerifiableCredentials.IssueResponse> responseObserver)`

## `public void issueFromTemplate(trinsic.services.verifiablecredentials.v1.VerifiableCredentials.IssueFromTemplateRequest request, io.grpc.stub.StreamObserver<trinsic.services.verifiablecredentials.v1.VerifiableCredentials.IssueFromTemplateResponse> responseObserver)`

## `public void checkStatus(trinsic.services.verifiablecredentials.v1.VerifiableCredentials.CheckStatusRequest request, io.grpc.stub.StreamObserver<trinsic.services.verifiablecredentials.v1.VerifiableCredentials.CheckStatusResponse> responseObserver)`

<pre> Check credential status by setting the revocation value </pre>

## `public void updateStatus(trinsic.services.verifiablecredentials.v1.VerifiableCredentials.UpdateStatusRequest request, io.grpc.stub.StreamObserver<trinsic.services.verifiablecredentials.v1.VerifiableCredentials.UpdateStatusResponse> responseObserver)`

<pre> Update credential status by setting the revocation value </pre>

## `public void createProof(trinsic.services.verifiablecredentials.v1.VerifiableCredentials.CreateProofRequest request, io.grpc.stub.StreamObserver<trinsic.services.verifiablecredentials.v1.VerifiableCredentials.CreateProofResponse> responseObserver)`

## `public void verifyProof(trinsic.services.verifiablecredentials.v1.VerifiableCredentials.VerifyProofRequest request, io.grpc.stub.StreamObserver<trinsic.services.verifiablecredentials.v1.VerifiableCredentials.VerifyProofResponse> responseObserver)`

## `public void send(trinsic.services.verifiablecredentials.v1.VerifiableCredentials.SendRequest request, io.grpc.stub.StreamObserver<trinsic.services.verifiablecredentials.v1.VerifiableCredentials.SendResponse> responseObserver)`

## `public static final class VerifiableCredentialBlockingStub extends io.grpc.stub.AbstractBlockingStub<VerifiableCredentialBlockingStub>`

## `public trinsic.services.verifiablecredentials.v1.VerifiableCredentials.IssueResponse issue(trinsic.services.verifiablecredentials.v1.VerifiableCredentials.IssueRequest request)`

## `public trinsic.services.verifiablecredentials.v1.VerifiableCredentials.IssueFromTemplateResponse issueFromTemplate(trinsic.services.verifiablecredentials.v1.VerifiableCredentials.IssueFromTemplateRequest request)`

## `public trinsic.services.verifiablecredentials.v1.VerifiableCredentials.CheckStatusResponse checkStatus(trinsic.services.verifiablecredentials.v1.VerifiableCredentials.CheckStatusRequest request)`

<pre> Check credential status by setting the revocation value </pre>

## `public trinsic.services.verifiablecredentials.v1.VerifiableCredentials.UpdateStatusResponse updateStatus(trinsic.services.verifiablecredentials.v1.VerifiableCredentials.UpdateStatusRequest request)`

<pre> Update credential status by setting the revocation value </pre>

## `public trinsic.services.verifiablecredentials.v1.VerifiableCredentials.CreateProofResponse createProof(trinsic.services.verifiablecredentials.v1.VerifiableCredentials.CreateProofRequest request)`

## `public trinsic.services.verifiablecredentials.v1.VerifiableCredentials.VerifyProofResponse verifyProof(trinsic.services.verifiablecredentials.v1.VerifiableCredentials.VerifyProofRequest request)`

## `public trinsic.services.verifiablecredentials.v1.VerifiableCredentials.SendResponse send(trinsic.services.verifiablecredentials.v1.VerifiableCredentials.SendRequest request)`

## `public static final class VerifiableCredentialFutureStub extends io.grpc.stub.AbstractFutureStub<VerifiableCredentialFutureStub>`

## `public com.google.common.util.concurrent.ListenableFuture<trinsic.services.verifiablecredentials.v1.VerifiableCredentials.IssueResponse> issue( trinsic.services.verifiablecredentials.v1.VerifiableCredentials.IssueRequest request)`

## `public com.google.common.util.concurrent.ListenableFuture<trinsic.services.verifiablecredentials.v1.VerifiableCredentials.IssueFromTemplateResponse> issueFromTemplate( trinsic.services.verifiablecredentials.v1.VerifiableCredentials.IssueFromTemplateRequest request)`

## `public com.google.common.util.concurrent.ListenableFuture<trinsic.services.verifiablecredentials.v1.VerifiableCredentials.CheckStatusResponse> checkStatus( trinsic.services.verifiablecredentials.v1.VerifiableCredentials.CheckStatusRequest request)`

<pre> Check credential status by setting the revocation value </pre>

## `public com.google.common.util.concurrent.ListenableFuture<trinsic.services.verifiablecredentials.v1.VerifiableCredentials.UpdateStatusResponse> updateStatus( trinsic.services.verifiablecredentials.v1.VerifiableCredentials.UpdateStatusRequest request)`

<pre> Update credential status by setting the revocation value </pre>

## `public com.google.common.util.concurrent.ListenableFuture<trinsic.services.verifiablecredentials.v1.VerifiableCredentials.CreateProofResponse> createProof( trinsic.services.verifiablecredentials.v1.VerifiableCredentials.CreateProofRequest request)`

## `public com.google.common.util.concurrent.ListenableFuture<trinsic.services.verifiablecredentials.v1.VerifiableCredentials.VerifyProofResponse> verifyProof( trinsic.services.verifiablecredentials.v1.VerifiableCredentials.VerifyProofRequest request)`

## `public com.google.common.util.concurrent.ListenableFuture<trinsic.services.verifiablecredentials.v1.VerifiableCredentials.SendResponse> send( trinsic.services.verifiablecredentials.v1.VerifiableCredentials.SendRequest request)`
