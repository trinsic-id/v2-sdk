# Provider Service

This service helps ecosystem providers with data management and onboarding. This service requires a security profile with administrative authorization access. This can be obtained during the deployment of your ecosystem infrastructure.

## Onboarding

### Invite Participant

Users can be onboarded as participants in the ecosystem by sending an invitation and a security code. This code can be sent directly through them using existing platforms or via email, SMS, etc.
When users accept this invitation, they should do so using the service methods as described in [creating wallet with provider invitation](/reference/services/wallet-service/#create-wallet-with-provider-invitation)

In Trinsic Ecosystems, participants can be Individuals or Organizations. This distinction is important, as providers have the ability to apply restrictions on what functionalities can be invoked by these participants. Additionally, Organizations have the ability to write their DID Document to a public ledger. Currently, the supported ledger is Sovrin, with ION and Element still in development.

=== "Trinsic CLI"
    ```bash
    trinsic provider invite --organization --method-email admin@faber.edu

    trinsic provider invite --person --method-email alice@faber.edu
    ```
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
    ```csharp
    using Trinsic;

    var providerService = new ProviderService();

    var inviteRequest = new InviteRequest
    {
        ParticipantType = ParticipantType.Organization,
        Email = "admin@faber.edu"
    }

    let inviteResponse = await providerService.InviteParticipant(inviteRequest);

    Console.WriteLine(inviteResponse.InvitationId);
    ```

=== "Python"
    ```python
    from trinsic.services import ProviderService
  
    request = {
        "email" : "admin@faber.edu",
        "participant" : provider_services.Organization
    } 
    response = await provider_service.invite_participant(request)
    ```
=== "Go"
    <!--codeinclude-->
    ```golang
    [VerifyProof](../../../go/services/services_test.go) inside_block:inviteParticipant
    ```
    <!--/codeinclude-->
=== "Java"
    <!--codeinclude-->
    ```java
    [CreateEcosystem](../../../java/src/test/java/trinsic/EcosystemsDemo.java) inside_block:inviteParticipant
    ```
    <!--/codeinclude-->
=== "Ruby"
    <!--codeinclude-->
    ```ruby
    
    ```
    <!--/codeinclude-->

The `invitationId` in the response contains the security code that users must supply when creating their wallet. If using email method in onboarding, they will receive this code in their email.

[ParticipantType](/reference/proto/#participanttype)

### Check Invitation Status

User invitation status can be checked with the provided `invitation id`. It returns an `InvitationStatusResponse` object. 

[Invitation Status Request](/reference/proto/#invitationstatusrequest)

[Invitation Status Response](/reference/proto/#invitationstatusresponset)

=== "Trinsic CLI"
    ```bash
    trinsic provider invitation_status <INVITATION_ID>
    ```
=== "TypeScript"
    ```typescript
    import { ProviderService, ParticipantType } from "@trinsic/trinsic";

    const providerService = new ProviderService();

    const inviteResponse = await providerService.invitationStatus("INVITATION ID");

    console.log(inviteResponse.getInvitationId());
    ```
=== "C#"
    ```csharp
    using Trinsic;

    var providerService = new ProviderService();

    let invitationStatus = await providerService.InvitationStatus("INVITATION ID");
    ```

=== "Python"
    ```python
    from trinsic.services import ProviderService
  
    response = await provider_service.invitation_status(invitation_id="INVITATION ID")
    ```
=== "Go"
    <!--codeinclude-->
    ```golang
    [VerifyProof](../../../go/services/services_test.go) inside_block:invitationStatus
    ```
    <!--/codeinclude-->
=== "Java"
    <!--codeinclude-->
    ```java
    [CreateEcosystem](../../../java/src/test/java/trinsic/EcosystemsDemo.java) inside_block:invitationStatus
    ```
    <!--/codeinclude-->
=== "Ruby"
    <!--codeinclude-->
    ```ruby
    
    ```
    <!--/codeinclude-->

The `invitationId` in the response contains the security code that users must supply when creating their wallet. If using email method in onboarding, they will receive this code in their email.

## Create Ecosystem

=== "Trinsic CLI"
    ```bash
    
    ```
=== "TypeScript"
    <!--codeinclude-->
    ```typescript
    [CreateEcosystem](../../../node/test/ProviderService.ts) inside_block:createEcosystem
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
    [CreateProof](../../../python/samples/ecosystem_demo.py) inside_block:createEcosystem
    ```
    <!--/codeinclude-->
=== "Go"
    <!--codeinclude-->
    ```golang
    [CreateProof](../../../go/services/services_test.go) inside_block:createEcosystem
    ```
    <!--/codeinclude-->
=== "Java"
    <!--codeinclude-->
    ```java
    [CreateEcosystem](../../../java/src/test/java/trinsic/EcosystemsDemo.java) inside_block:createEcosystem
    ```
    <!--/codeinclude-->
=== "Ruby"
    <!--codeinclude-->
    ```ruby
    
    ```
    <!--/codeinclude-->

<!--
## List Ecosystems

=== "Trinsic CLI"
    ```bash
    
    ```
=== "TypeScript"
    <!--codeinclude-->
    ```typescript
    
    ```
    <!--/codeinclude-->
=== "C#"
    <!--codeinclude-->
    ```csharp
    
    ```
    <!--/codeinclude-->
=== "Python"
    <!--codeinclude-->
    ```python
    [CreateProof](../../../python/samples/ecosystem_demo.py) inside_block:listEcosystems
    ```
    <!--/codeinclude-->
=== "Go"
    <!--codeinclude-->
    ```golang
    [CreateProof](../../../go/services/services_test.go) inside_block:listEcosystems
    ```
    <!--/codeinclude-->
=== "Java"
    <!--codeinclude-->
    ```java
    [CreateEcosystem](../../../java/src/test/java/trinsic/EcosystemsDemo.java) inside_block:listEcosystems
    ```
    <!--/codeinclude-->
=== "Ruby"
    <!--codeinclude-->
    ```ruby
    
    ```
    <!--/codeinclude-->

 ## Accept Invite
 -->
