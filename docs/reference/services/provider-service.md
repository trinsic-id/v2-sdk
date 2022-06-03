# Provider Service

The Provider Service helps ecosystem providers with data management and onboarding. This service requires a security profile with administrative authorization access. This can be obtained during the deployment of your ecosystem infrastructure.

## Create Ecosystem

Creates a new provider ecosystem

=== "Trinsic CLI"
    ```bash
    trinsic provider create-ecosystem --name <ECOSYSTEM_NAME> --email <OWNER_EMAIL>
    ```

When using one of the SDKs, you must supply a [Create Ecosystem Request](../proto/index.md#createecosystemrequest) object.

{{ proto_obj('services.provider.v1.CreateEcosystemRequest') }}

Then you can supply it to SDK:

=== "TypeScript"
    <!--codeinclude-->
    ```typescript
    [CreateEcosystem](../../../web/test/ProviderService.test.ts) inside_block:createEcosystem
    ```
    <!--/codeinclude-->

=== "C#"
    <!--codeinclude-->
    ```csharp
    [CreateEcosystem](../../../dotnet/Tests/Tests.cs) inside_block:createEcosystem
    ```
    <!--/codeinclude-->

=== "Python"
    <!--codeinclude-->
    ```python
    [CreateEcosystem](../../../python/samples/ecosystem_demo.py) inside_block:createEcosystem
    ```
    <!--/codeinclude-->

=== "Go"
    <!--codeinclude-->
    ```golang
    [CreateEcosystem](../../../go/services/services_test.go) inside_block:createEcosystem
    ```
    <!--/codeinclude-->

=== "Java"
    <!--codeinclude-->
    ```java
    [CreateEcosystem](../../../java/src/test/java/trinsic/EcosystemsDemo.java) inside_block:createEcosystem
    ```
    <!--/codeinclude-->

The response model is of type [Create Ecosystem Response](../proto/index.md#createecosystemresponse):

{{ proto_obj('services.provider.v1.CreateEcosystemResponse') }}

<!-- 
// This call is not yet implemented
## List Ecosystems

Lists all available ecosystem for the current authentication context.

When using one of the SDKs, you must supply an [List Ecosystem Request](../proto/index.md#listecosystemrequest) object. This object follows the model below:

{{ proto_obj('services.provider.v1.ListEcosystemRequest') }}

The response model is of type [List Ecosystem Response](../proto/index.md#listecosystemresponse):

{{ proto_obj('services.provider.v1.ListEcosystemResponse') }} 
-->

## Onboarding

### Invite Participant

Users can be added as participants in an ecosystem by sending an invitation and a security code. This code can be sent directly to the invitee using existing platforms or via email, SMS, etc.
When users accept this invitation, they should do so using the service methods as described in [creating wallet with provider invitation](/reference/services/wallet-service/#create-wallet-with-provider-invitation)

In Trinsic Ecosystems, participants can be Individuals or Organizations. This distinction is important, as providers have the ability to apply restrictions on what functionalities can be invoked by these participants. Additionally, Organizations have the ability to write their DID Document to a public ledger. Currently, the supported ledger is Sovrin, with ION and Element still in development.

=== "Trinsic CLI"
    ```bash
    trinsic provider invite --organization --method-email admin@faber.edu

    trinsic provider invite --person --method-email alice@faber.edu
    ```

When using one of the SDKs, you must supply an [Invite Request](../proto/index.md#inviterequest) object. This object follows the model below:

{{ proto_obj('services.provider.v1.InviteRequest') }}

Then you can supply it to SDK:

=== "TypeScript"
    ```typescript
    import { ProviderService, ParticipantType } from "@trinsic/trinsic";

    const providerService = new ProviderService();

    let inviteRequest = new InviteRequest();
    inviteRequest.setParticipant(ParticipantType.PARTICIPANT_TYPE_ORGANIZATION);
    inviteRequest.setEmail("admin@faber.edu");

    const inviteResponse = await providerService.inviteParticipant(inviteRequest);

    console.log(inviteResponse.getInvitationId());
    ```

=== "C#"
    <!--codeinclude-->
    ```csharp
    [InviteRequest](../../../dotnet/Tests/Tests.cs) inside_block:inviteParticipant
    ```
    <!--/codeinclude-->

=== "Python"
    <!--codeinclude-->
    ```python
    [InviteRequest](../../../python/samples/ecosystem_demo.py) inside_block:inviteParticipant
    ```
    <!--/codeinclude-->

=== "Go"
    <!--codeinclude-->
    ```golang
    [InviteRequest](../../../go/services/services_test.go) inside_block:inviteParticipant
    ```
    <!--/codeinclude-->

=== "Java"
    <!--codeinclude-->
    ```java
    [InviteRequest](../../../java/src/test/java/trinsic/EcosystemsDemo.java) inside_block:inviteParticipant
    ```
    <!--/codeinclude-->

The response model is of type [Invite Response](../proto/index.md#inviteresponse):

{{ proto_obj('services.provider.v1.InviteResponse') }}

The `invitation_code` in the response contains is security code that users must supply when creating their wallet. If the email method is used during onboarding, participants will receive this code in their email.

### Check Invitation Status

User invitation status can be checked with the provided `invitation id`. It returns an `InvitationStatusResponse` object.

=== "Trinsic CLI"
    ```bash
    trinsic provider invitation_status <INVITATION_ID>
    ```

When using one of the SDKs, you must supply an [Invitation Status Request](../proto/index.md#invitationstatusrequest) object. This object follows the model below:

{{ proto_obj('services.provider.v1.InvitationStatusRequest') }}

Then you can supply it to SDK:

=== "TypeScript"
    ```typescript
    import { ProviderService, ParticipantType } from "@trinsic/trinsic";

    const providerService = new ProviderService();

    const inviteResponse = await providerService.invitationStatus("INVITATION ID");

    console.log(inviteResponse.getInvitationId());
    ```

=== "C#"
    <!--codeinclude-->
    ```csharp
    [InvitationStatus](../../../dotnet/Tests/Tests.cs) inside_block:invitationStatus
    ```
    <!--/codeinclude-->

=== "Python"
    <!--codeinclude-->
    ```python
    [InvitationStatus](../../../python/samples/ecosystem_demo.py) inside_block:invitationStatus
    ```
    <!--/codeinclude-->

=== "Go"
    <!--codeinclude-->
    ```golang
    [InvitationStatus](../../../go/services/services_test.go) inside_block:invitationStatus
    ```
    <!--/codeinclude-->

=== "Java"
    <!--codeinclude-->
    ```java
    [InvitationStatus](../../../java/src/test/java/trinsic/EcosystemsDemo.java) inside_block:invitationStatus
    ```
    <!--/codeinclude-->

The response model is of type [Invitation Status Response](../proto/index.md#invitationstatusresponse):

{{ proto_obj('services.provider.v1.InvitationStatusResponse') }}