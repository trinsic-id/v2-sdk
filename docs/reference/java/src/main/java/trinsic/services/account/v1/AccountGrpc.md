# Documentation

## `@javax.annotation.Generated( value = "by gRPC proto compiler (version 1.42.1)", comments = "Source: services`

## `public static AccountStub newStub(io.grpc.Channel channel)`

Creates a new async stub that supports all call types for the service

## `public static AccountBlockingStub newBlockingStub( io.grpc.Channel channel)`

Creates a new blocking-style stub that supports unary and streaming output calls on the service

## `public static AccountFutureStub newFutureStub( io.grpc.Channel channel)`

Creates a new ListenableFuture-style stub that supports unary calls on the service

## `public static abstract class AccountImplBase implements io.grpc.BindableService`

## `public void signIn(trinsic.services.account.v1.AccountOuterClass.SignInRequest request, io.grpc.stub.StreamObserver<trinsic.services.account.v1.AccountOuterClass.SignInResponse> responseObserver)`

<pre> Sign in to an already existing account </pre>

## `public void info(trinsic.services.account.v1.AccountOuterClass.InfoRequest request, io.grpc.stub.StreamObserver<trinsic.services.account.v1.AccountOuterClass.InfoResponse> responseObserver)`

<pre> Get account information </pre>

## `public void listDevices(trinsic.services.account.v1.AccountOuterClass.ListDevicesRequest request, io.grpc.stub.StreamObserver<trinsic.services.account.v1.AccountOuterClass.ListDevicesResponse> responseObserver)`

<pre> List all connected devices </pre>

## `public void revokeDevice(trinsic.services.account.v1.AccountOuterClass.RevokeDeviceRequest request, io.grpc.stub.StreamObserver<trinsic.services.account.v1.AccountOuterClass.RevokeDeviceResponse> responseObserver)`

<pre> Revoke device access to the account's cloud wallet </pre>

## `public static final class AccountStub extends io.grpc.stub.AbstractAsyncStub<AccountStub>`

## `public void signIn(trinsic.services.account.v1.AccountOuterClass.SignInRequest request, io.grpc.stub.StreamObserver<trinsic.services.account.v1.AccountOuterClass.SignInResponse> responseObserver)`

<pre> Sign in to an already existing account </pre>

## `public void info(trinsic.services.account.v1.AccountOuterClass.InfoRequest request, io.grpc.stub.StreamObserver<trinsic.services.account.v1.AccountOuterClass.InfoResponse> responseObserver)`

<pre> Get account information </pre>

## `public void listDevices(trinsic.services.account.v1.AccountOuterClass.ListDevicesRequest request, io.grpc.stub.StreamObserver<trinsic.services.account.v1.AccountOuterClass.ListDevicesResponse> responseObserver)`

<pre> List all connected devices </pre>

## `public void revokeDevice(trinsic.services.account.v1.AccountOuterClass.RevokeDeviceRequest request, io.grpc.stub.StreamObserver<trinsic.services.account.v1.AccountOuterClass.RevokeDeviceResponse> responseObserver)`

<pre> Revoke device access to the account's cloud wallet </pre>

## `public static final class AccountBlockingStub extends io.grpc.stub.AbstractBlockingStub<AccountBlockingStub>`

## `public trinsic.services.account.v1.AccountOuterClass.SignInResponse signIn(trinsic.services.account.v1.AccountOuterClass.SignInRequest request)`

<pre> Sign in to an already existing account </pre>

## `public trinsic.services.account.v1.AccountOuterClass.InfoResponse info(trinsic.services.account.v1.AccountOuterClass.InfoRequest request)`

<pre> Get account information </pre>

## `public trinsic.services.account.v1.AccountOuterClass.ListDevicesResponse listDevices(trinsic.services.account.v1.AccountOuterClass.ListDevicesRequest request)`

<pre> List all connected devices </pre>

## `public trinsic.services.account.v1.AccountOuterClass.RevokeDeviceResponse revokeDevice(trinsic.services.account.v1.AccountOuterClass.RevokeDeviceRequest request)`

<pre> Revoke device access to the account's cloud wallet </pre>

## `public static final class AccountFutureStub extends io.grpc.stub.AbstractFutureStub<AccountFutureStub>`

## `public com.google.common.util.concurrent.ListenableFuture<trinsic.services.account.v1.AccountOuterClass.SignInResponse> signIn( trinsic.services.account.v1.AccountOuterClass.SignInRequest request)`

<pre> Sign in to an already existing account </pre>

## `public com.google.common.util.concurrent.ListenableFuture<trinsic.services.account.v1.AccountOuterClass.InfoResponse> info( trinsic.services.account.v1.AccountOuterClass.InfoRequest request)`

<pre> Get account information </pre>

## `public com.google.common.util.concurrent.ListenableFuture<trinsic.services.account.v1.AccountOuterClass.ListDevicesResponse> listDevices( trinsic.services.account.v1.AccountOuterClass.ListDevicesRequest request)`

<pre> List all connected devices </pre>

## `public com.google.common.util.concurrent.ListenableFuture<trinsic.services.account.v1.AccountOuterClass.RevokeDeviceResponse> revokeDevice( trinsic.services.account.v1.AccountOuterClass.RevokeDeviceRequest request)`

<pre> Revoke device access to the account's cloud wallet </pre>
