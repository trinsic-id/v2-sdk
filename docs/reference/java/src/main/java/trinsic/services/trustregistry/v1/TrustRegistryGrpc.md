# Documentation

## `@javax.annotation.Generated( value = "by gRPC proto compiler (version 1.42.1)", comments = "Source: services`

## `public static TrustRegistryStub newStub(io.grpc.Channel channel)`

Creates a new async stub that supports all call types for the service

## `public static TrustRegistryBlockingStub newBlockingStub( io.grpc.Channel channel)`

Creates a new blocking-style stub that supports unary and streaming output calls on the service

## `public static TrustRegistryFutureStub newFutureStub( io.grpc.Channel channel)`

Creates a new ListenableFuture-style stub that supports unary calls on the service

## `public static abstract class TrustRegistryImplBase implements io.grpc.BindableService`

## `public void addFramework(trinsic.services.trustregistry.v1.TrustRegistryOuterClass.AddFrameworkRequest request, io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.AddFrameworkResponse> responseObserver)`

<pre> Adds a trust registry defintion to the ecosystem </pre>

## `public void removeFramework(trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RemoveFrameworkRequest request, io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RemoveFrameworkResponse> responseObserver)`

## `public void searchRegistry(trinsic.services.trustregistry.v1.TrustRegistryOuterClass.SearchRegistryRequest request, io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.SearchRegistryResponse> responseObserver)`

## `public void registerIssuer(trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegisterIssuerRequest request, io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegisterIssuerResponse> responseObserver)`

<pre> Registers an authoritative issuer with a credential template </pre>

## `public void registerVerifier(trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegisterVerifierRequest request, io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegisterVerifierResponse> responseObserver)`

<pre> Registers an authoritative verifier with a credential template </pre>

## `public void unregisterIssuer(trinsic.services.trustregistry.v1.TrustRegistryOuterClass.UnregisterIssuerRequest request, io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.UnregisterIssuerResponse> responseObserver)`

<pre> Removes an authoritative issuer with a credential template from the trust registry </pre>

## `public void unregisterVerifier(trinsic.services.trustregistry.v1.TrustRegistryOuterClass.UnregisterVerifierRequest request, io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.UnregisterVerifierResponse> responseObserver)`

<pre> Removes an authoritative verifier with a presentation template from the trust registry </pre>

## `public void checkIssuerStatus(trinsic.services.trustregistry.v1.TrustRegistryOuterClass.CheckIssuerStatusRequest request, io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.CheckIssuerStatusResponse> responseObserver)`

## `public void checkVerifierStatus(trinsic.services.trustregistry.v1.TrustRegistryOuterClass.CheckVerifierStatusRequest request, io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.CheckVerifierStatusResponse> responseObserver)`

## `public void fetchData(trinsic.services.trustregistry.v1.TrustRegistryOuterClass.FetchDataRequest request, io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.FetchDataResponse> responseObserver)`

## `public static final class TrustRegistryStub extends io.grpc.stub.AbstractAsyncStub<TrustRegistryStub>`

## `public void addFramework(trinsic.services.trustregistry.v1.TrustRegistryOuterClass.AddFrameworkRequest request, io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.AddFrameworkResponse> responseObserver)`

<pre> Adds a trust registry defintion to the ecosystem </pre>

## `public void removeFramework(trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RemoveFrameworkRequest request, io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RemoveFrameworkResponse> responseObserver)`

## `public void searchRegistry(trinsic.services.trustregistry.v1.TrustRegistryOuterClass.SearchRegistryRequest request, io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.SearchRegistryResponse> responseObserver)`

## `public void registerIssuer(trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegisterIssuerRequest request, io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegisterIssuerResponse> responseObserver)`

<pre> Registers an authoritative issuer with a credential template </pre>

## `public void registerVerifier(trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegisterVerifierRequest request, io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegisterVerifierResponse> responseObserver)`

<pre> Registers an authoritative verifier with a credential template </pre>

## `public void unregisterIssuer(trinsic.services.trustregistry.v1.TrustRegistryOuterClass.UnregisterIssuerRequest request, io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.UnregisterIssuerResponse> responseObserver)`

<pre> Removes an authoritative issuer with a credential template from the trust registry </pre>

## `public void unregisterVerifier(trinsic.services.trustregistry.v1.TrustRegistryOuterClass.UnregisterVerifierRequest request, io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.UnregisterVerifierResponse> responseObserver)`

<pre> Removes an authoritative verifier with a presentation template from the trust registry </pre>

## `public void checkIssuerStatus(trinsic.services.trustregistry.v1.TrustRegistryOuterClass.CheckIssuerStatusRequest request, io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.CheckIssuerStatusResponse> responseObserver)`

## `public void checkVerifierStatus(trinsic.services.trustregistry.v1.TrustRegistryOuterClass.CheckVerifierStatusRequest request, io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.CheckVerifierStatusResponse> responseObserver)`

## `public void fetchData(trinsic.services.trustregistry.v1.TrustRegistryOuterClass.FetchDataRequest request, io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.FetchDataResponse> responseObserver)`

## `public static final class TrustRegistryBlockingStub extends io.grpc.stub.AbstractBlockingStub<TrustRegistryBlockingStub>`

## `public trinsic.services.trustregistry.v1.TrustRegistryOuterClass.AddFrameworkResponse addFramework(trinsic.services.trustregistry.v1.TrustRegistryOuterClass.AddFrameworkRequest request)`

<pre> Adds a trust registry defintion to the ecosystem </pre>

## `public trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RemoveFrameworkResponse removeFramework(trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RemoveFrameworkRequest request)`

## `public trinsic.services.trustregistry.v1.TrustRegistryOuterClass.SearchRegistryResponse searchRegistry(trinsic.services.trustregistry.v1.TrustRegistryOuterClass.SearchRegistryRequest request)`

## `public trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegisterIssuerResponse registerIssuer(trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegisterIssuerRequest request)`

<pre> Registers an authoritative issuer with a credential template </pre>

## `public trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegisterVerifierResponse registerVerifier(trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegisterVerifierRequest request)`

<pre> Registers an authoritative verifier with a credential template </pre>

## `public trinsic.services.trustregistry.v1.TrustRegistryOuterClass.UnregisterIssuerResponse unregisterIssuer(trinsic.services.trustregistry.v1.TrustRegistryOuterClass.UnregisterIssuerRequest request)`

<pre> Removes an authoritative issuer with a credential template from the trust registry </pre>

## `public trinsic.services.trustregistry.v1.TrustRegistryOuterClass.UnregisterVerifierResponse unregisterVerifier(trinsic.services.trustregistry.v1.TrustRegistryOuterClass.UnregisterVerifierRequest request)`

<pre> Removes an authoritative verifier with a presentation template from the trust registry </pre>

## `public trinsic.services.trustregistry.v1.TrustRegistryOuterClass.CheckIssuerStatusResponse checkIssuerStatus(trinsic.services.trustregistry.v1.TrustRegistryOuterClass.CheckIssuerStatusRequest request)`

## `public trinsic.services.trustregistry.v1.TrustRegistryOuterClass.CheckVerifierStatusResponse checkVerifierStatus(trinsic.services.trustregistry.v1.TrustRegistryOuterClass.CheckVerifierStatusRequest request)`

## `public java.util.Iterator<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.FetchDataResponse> fetchData( trinsic.services.trustregistry.v1.TrustRegistryOuterClass.FetchDataRequest request)`

## `public static final class TrustRegistryFutureStub extends io.grpc.stub.AbstractFutureStub<TrustRegistryFutureStub>`

## `public com.google.common.util.concurrent.ListenableFuture<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.AddFrameworkResponse> addFramework( trinsic.services.trustregistry.v1.TrustRegistryOuterClass.AddFrameworkRequest request)`

<pre> Adds a trust registry defintion to the ecosystem </pre>

## `public com.google.common.util.concurrent.ListenableFuture<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RemoveFrameworkResponse> removeFramework( trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RemoveFrameworkRequest request)`

## `public com.google.common.util.concurrent.ListenableFuture<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.SearchRegistryResponse> searchRegistry( trinsic.services.trustregistry.v1.TrustRegistryOuterClass.SearchRegistryRequest request)`

## `public com.google.common.util.concurrent.ListenableFuture<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegisterIssuerResponse> registerIssuer( trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegisterIssuerRequest request)`

<pre> Registers an authoritative issuer with a credential template </pre>

## `public com.google.common.util.concurrent.ListenableFuture<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegisterVerifierResponse> registerVerifier( trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegisterVerifierRequest request)`

<pre> Registers an authoritative verifier with a credential template </pre>

## `public com.google.common.util.concurrent.ListenableFuture<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.UnregisterIssuerResponse> unregisterIssuer( trinsic.services.trustregistry.v1.TrustRegistryOuterClass.UnregisterIssuerRequest request)`

<pre> Removes an authoritative issuer with a credential template from the trust registry </pre>

## `public com.google.common.util.concurrent.ListenableFuture<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.UnregisterVerifierResponse> unregisterVerifier( trinsic.services.trustregistry.v1.TrustRegistryOuterClass.UnregisterVerifierRequest request)`

<pre> Removes an authoritative verifier with a presentation template from the trust registry </pre>

## `public com.google.common.util.concurrent.ListenableFuture<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.CheckIssuerStatusResponse> checkIssuerStatus( trinsic.services.trustregistry.v1.TrustRegistryOuterClass.CheckIssuerStatusRequest request)`

## `public com.google.common.util.concurrent.ListenableFuture<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.CheckVerifierStatusResponse> checkVerifierStatus( trinsic.services.trustregistry.v1.TrustRegistryOuterClass.CheckVerifierStatusRequest request)`
