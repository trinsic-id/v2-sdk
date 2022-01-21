# Documentation

## `@javax.annotation.Generated( value = "by gRPC proto compiler (version 1.42.1)", comments = "Source: services`

## `public static UniversalWalletStub newStub(io.grpc.Channel channel)`

Creates a new async stub that supports all call types for the service

## `public static UniversalWalletBlockingStub newBlockingStub( io.grpc.Channel channel)`

Creates a new blocking-style stub that supports unary and streaming output calls on the service

## `public static UniversalWalletFutureStub newFutureStub( io.grpc.Channel channel)`

Creates a new ListenableFuture-style stub that supports unary calls on the service

## `public static abstract class UniversalWalletImplBase implements io.grpc.BindableService`

## `public void search(trinsic.services.universalwallet.v1.UniversalWalletOuterClass.SearchRequest request, io.grpc.stub.StreamObserver<trinsic.services.universalwallet.v1.UniversalWalletOuterClass.SearchResponse> responseObserver)`

<pre> Search the wallet using a SQL-like syntax </pre>

## `public void insertItem(trinsic.services.universalwallet.v1.UniversalWalletOuterClass.InsertItemRequest request, io.grpc.stub.StreamObserver<trinsic.services.universalwallet.v1.UniversalWalletOuterClass.InsertItemResponse> responseObserver)`

<pre> Insert an item into the wallet </pre>

## `public void deleteitem(trinsic.services.universalwallet.v1.UniversalWalletOuterClass.DeleteItemRequest request, io.grpc.stub.StreamObserver<trinsic.services.universalwallet.v1.UniversalWalletOuterClass.DeleteItemResponse> responseObserver)`

<pre> Delete an item from the wallet permanently </pre>

## `public static final class UniversalWalletStub extends io.grpc.stub.AbstractAsyncStub<UniversalWalletStub>`

## `public void search(trinsic.services.universalwallet.v1.UniversalWalletOuterClass.SearchRequest request, io.grpc.stub.StreamObserver<trinsic.services.universalwallet.v1.UniversalWalletOuterClass.SearchResponse> responseObserver)`

<pre> Search the wallet using a SQL-like syntax </pre>

## `public void insertItem(trinsic.services.universalwallet.v1.UniversalWalletOuterClass.InsertItemRequest request, io.grpc.stub.StreamObserver<trinsic.services.universalwallet.v1.UniversalWalletOuterClass.InsertItemResponse> responseObserver)`

<pre> Insert an item into the wallet </pre>

## `public void deleteitem(trinsic.services.universalwallet.v1.UniversalWalletOuterClass.DeleteItemRequest request, io.grpc.stub.StreamObserver<trinsic.services.universalwallet.v1.UniversalWalletOuterClass.DeleteItemResponse> responseObserver)`

<pre> Delete an item from the wallet permanently </pre>

## `public static final class UniversalWalletBlockingStub extends io.grpc.stub.AbstractBlockingStub<UniversalWalletBlockingStub>`

## `public trinsic.services.universalwallet.v1.UniversalWalletOuterClass.SearchResponse search(trinsic.services.universalwallet.v1.UniversalWalletOuterClass.SearchRequest request)`

<pre> Search the wallet using a SQL-like syntax </pre>

## `public trinsic.services.universalwallet.v1.UniversalWalletOuterClass.InsertItemResponse insertItem(trinsic.services.universalwallet.v1.UniversalWalletOuterClass.InsertItemRequest request)`

<pre> Insert an item into the wallet </pre>

## `public trinsic.services.universalwallet.v1.UniversalWalletOuterClass.DeleteItemResponse deleteitem(trinsic.services.universalwallet.v1.UniversalWalletOuterClass.DeleteItemRequest request)`

<pre> Delete an item from the wallet permanently </pre>

## `public static final class UniversalWalletFutureStub extends io.grpc.stub.AbstractFutureStub<UniversalWalletFutureStub>`

## `public com.google.common.util.concurrent.ListenableFuture<trinsic.services.universalwallet.v1.UniversalWalletOuterClass.SearchResponse> search( trinsic.services.universalwallet.v1.UniversalWalletOuterClass.SearchRequest request)`

<pre> Search the wallet using a SQL-like syntax </pre>

## `public com.google.common.util.concurrent.ListenableFuture<trinsic.services.universalwallet.v1.UniversalWalletOuterClass.InsertItemResponse> insertItem( trinsic.services.universalwallet.v1.UniversalWalletOuterClass.InsertItemRequest request)`

<pre> Insert an item into the wallet </pre>

## `public com.google.common.util.concurrent.ListenableFuture<trinsic.services.universalwallet.v1.UniversalWalletOuterClass.DeleteItemResponse> deleteitem( trinsic.services.universalwallet.v1.UniversalWalletOuterClass.DeleteItemRequest request)`

<pre> Delete an item from the wallet permanently </pre>
