# Documentation

## `@javax.annotation.Generated( value = "by gRPC proto compiler (version 1.42.1)", comments = "Source: services`

## `public static ProviderStub newStub(io.grpc.Channel channel)`

Creates a new async stub that supports all call types for the service

## `public static ProviderBlockingStub newBlockingStub( io.grpc.Channel channel)`

Creates a new blocking-style stub that supports unary and streaming output calls on the service

## `public static ProviderFutureStub newFutureStub( io.grpc.Channel channel)`

Creates a new ListenableFuture-style stub that supports unary calls on the service

## `public static abstract class ProviderImplBase implements io.grpc.BindableService`

## `public void createEcosystem(trinsic.services.common.v1.ProviderOuterClass.CreateEcosystemRequest request, io.grpc.stub.StreamObserver<trinsic.services.common.v1.ProviderOuterClass.CreateEcosystemResponse> responseObserver)`

<pre> Create new ecosystem and assign the authenticated user as owner </pre>

## `public void listEcosystems(trinsic.services.common.v1.ProviderOuterClass.ListEcosystemsRequest request, io.grpc.stub.StreamObserver<trinsic.services.common.v1.ProviderOuterClass.ListEcosystemsResponse> responseObserver)`

<pre> List all ecosystems assigned to the authenticated account </pre>

## `public void invite(trinsic.services.common.v1.ProviderOuterClass.InviteRequest request, io.grpc.stub.StreamObserver<trinsic.services.common.v1.ProviderOuterClass.InviteResponse> responseObserver)`

<pre> Invite a user to the ecosystem </pre>

## `public void acceptInvite(trinsic.services.common.v1.ProviderOuterClass.AcceptInviteRequest request, io.grpc.stub.StreamObserver<trinsic.services.common.v1.ProviderOuterClass.AcceptInviteResponse> responseObserver)`

<pre> Accept an invite to the ecosystem </pre>

## `public void invitationStatus(trinsic.services.common.v1.ProviderOuterClass.InvitationStatusRequest request, io.grpc.stub.StreamObserver<trinsic.services.common.v1.ProviderOuterClass.InvitationStatusResponse> responseObserver)`

<pre> Check the invitation status </pre>

## `public static final class ProviderStub extends io.grpc.stub.AbstractAsyncStub<ProviderStub>`

## `public void createEcosystem(trinsic.services.common.v1.ProviderOuterClass.CreateEcosystemRequest request, io.grpc.stub.StreamObserver<trinsic.services.common.v1.ProviderOuterClass.CreateEcosystemResponse> responseObserver)`

<pre> Create new ecosystem and assign the authenticated user as owner </pre>

## `public void listEcosystems(trinsic.services.common.v1.ProviderOuterClass.ListEcosystemsRequest request, io.grpc.stub.StreamObserver<trinsic.services.common.v1.ProviderOuterClass.ListEcosystemsResponse> responseObserver)`

<pre> List all ecosystems assigned to the authenticated account </pre>

## `public void invite(trinsic.services.common.v1.ProviderOuterClass.InviteRequest request, io.grpc.stub.StreamObserver<trinsic.services.common.v1.ProviderOuterClass.InviteResponse> responseObserver)`

<pre> Invite a user to the ecosystem </pre>

## `public void acceptInvite(trinsic.services.common.v1.ProviderOuterClass.AcceptInviteRequest request, io.grpc.stub.StreamObserver<trinsic.services.common.v1.ProviderOuterClass.AcceptInviteResponse> responseObserver)`

<pre> Accept an invite to the ecosystem </pre>

## `public void invitationStatus(trinsic.services.common.v1.ProviderOuterClass.InvitationStatusRequest request, io.grpc.stub.StreamObserver<trinsic.services.common.v1.ProviderOuterClass.InvitationStatusResponse> responseObserver)`

<pre> Check the invitation status </pre>

## `public static final class ProviderBlockingStub extends io.grpc.stub.AbstractBlockingStub<ProviderBlockingStub>`

## `public trinsic.services.common.v1.ProviderOuterClass.CreateEcosystemResponse createEcosystem(trinsic.services.common.v1.ProviderOuterClass.CreateEcosystemRequest request)`

<pre> Create new ecosystem and assign the authenticated user as owner </pre>

## `public trinsic.services.common.v1.ProviderOuterClass.ListEcosystemsResponse listEcosystems(trinsic.services.common.v1.ProviderOuterClass.ListEcosystemsRequest request)`

<pre> List all ecosystems assigned to the authenticated account </pre>

## `public trinsic.services.common.v1.ProviderOuterClass.InviteResponse invite(trinsic.services.common.v1.ProviderOuterClass.InviteRequest request)`

<pre> Invite a user to the ecosystem </pre>

## `public trinsic.services.common.v1.ProviderOuterClass.AcceptInviteResponse acceptInvite(trinsic.services.common.v1.ProviderOuterClass.AcceptInviteRequest request)`

<pre> Accept an invite to the ecosystem </pre>

## `public trinsic.services.common.v1.ProviderOuterClass.InvitationStatusResponse invitationStatus(trinsic.services.common.v1.ProviderOuterClass.InvitationStatusRequest request)`

<pre> Check the invitation status </pre>

## `public static final class ProviderFutureStub extends io.grpc.stub.AbstractFutureStub<ProviderFutureStub>`

## `public com.google.common.util.concurrent.ListenableFuture<trinsic.services.common.v1.ProviderOuterClass.CreateEcosystemResponse> createEcosystem( trinsic.services.common.v1.ProviderOuterClass.CreateEcosystemRequest request)`

<pre> Create new ecosystem and assign the authenticated user as owner </pre>

## `public com.google.common.util.concurrent.ListenableFuture<trinsic.services.common.v1.ProviderOuterClass.ListEcosystemsResponse> listEcosystems( trinsic.services.common.v1.ProviderOuterClass.ListEcosystemsRequest request)`

<pre> List all ecosystems assigned to the authenticated account </pre>

## `public com.google.common.util.concurrent.ListenableFuture<trinsic.services.common.v1.ProviderOuterClass.InviteResponse> invite( trinsic.services.common.v1.ProviderOuterClass.InviteRequest request)`

<pre> Invite a user to the ecosystem </pre>

## `public com.google.common.util.concurrent.ListenableFuture<trinsic.services.common.v1.ProviderOuterClass.AcceptInviteResponse> acceptInvite( trinsic.services.common.v1.ProviderOuterClass.AcceptInviteRequest request)`

<pre> Accept an invite to the ecosystem </pre>

## `public com.google.common.util.concurrent.ListenableFuture<trinsic.services.common.v1.ProviderOuterClass.InvitationStatusResponse> invitationStatus( trinsic.services.common.v1.ProviderOuterClass.InvitationStatusRequest request)`

<pre> Check the invitation status </pre>
