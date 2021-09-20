# Provider Service

This service helps ecosystem providers with data management and onboarding. This service requires a security profile with administrative authorization access. This can be obtained during the deployment of your ecosystem infrastructure.

## Onboarding

### Invite Participants

Users can be onboarded as participants in the ecosystem by sending an invitation and a security code. This code can be sent directly through them using existing platforms or via email, SMS, etc.
When users accept this invitation, they should do so using the service methods as described in [creating wallet with provider invitation](/reference/services/wallet-service/#create-wallet-with-provider-invitation)

In Trinsic Ecosystems, participants can be Individuals or Organizations. This distinction is important, as providers have the ability to apply restrictions on what functionalities can be invoked by these participants. Additonally, Organizations have the ability to write their DID Document to a public ledger. Currently, the supported ledger is Sovrin, with ION and Element still in development.

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
        email = "admin@faber.edu",
        participant = provider_services.Organization
    } 
    response = await provider_service.invite_participant(request)
    ```

The `invitationId` in the response contains the security code that users must supply when creating their wallet. If using email method in onboarding, they will receive this code in their email.
