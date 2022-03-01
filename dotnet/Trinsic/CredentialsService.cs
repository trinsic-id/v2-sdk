using System;
using System.Threading.Tasks;
using Google.Protobuf.WellKnownTypes;
using Grpc.Net.Client;
using Newtonsoft.Json.Linq;
using Trinsic.Services.Account.V1;
using Trinsic.Services.Common.V1;
using Trinsic.Services.VerifiableCredentials.Templates.V1;
using Trinsic.Services.VerifiableCredentials.V1;

namespace Trinsic;

public class CredentialsService : ServiceBase
{
    public CredentialsService(AccountProfile accountProfile, ServerConfig serverConfig)
        : base(accountProfile, serverConfig) {
        Client = new(Channel);
    }

    public CredentialsService(AccountProfile accountProfile)
        : base(accountProfile) {
        Client = new(Channel);
    }

    public CredentialsService(AccountProfile accountProfile, GrpcChannel channel)
        : base(accountProfile, channel) {
        Client = new(Channel);
    }

    private VerifiableCredential.VerifiableCredentialClient Client { get; }

    /// <summary>
    /// Signs an input credential
    /// </summary>
    /// <param name="document"></param>
    /// <returns></returns>
    public async Task<JObject> IssueCredentialAsync(JObject document) {
        try {
            IssueRequest request = new() {DocumentJson = document.ToString()};
            var response = await Client.IssueAsync(request, await BuildMetadataAsync(request));
            return JObject.Parse(response.SignedDocumentJson);
        } catch(Exception e) {
            Console.WriteLine(e);
            throw;
        }
    }

    public JObject IssueCredential(JObject document) {
        try {
            IssueRequest request = new() {DocumentJson = document.ToString()};
            var response = Client.Issue(request, BuildMetadata(request));
            return JObject.Parse(response.SignedDocumentJson);
        } catch(Exception e) {
            Console.WriteLine(e);
            throw;
        }
    }

    /// <summary>
    /// Issue a verifiable credential from a predefined <see cref="TemplateData"/>.
    /// </summary>
    /// <param name="request">The request object with the template identifier and the values</param>
    /// <returns>Verifiable credential as JSON</returns>
    public async Task<string> IssueFromTemplateAsync(IssueFromTemplateRequest request) {
        var response = await Client.IssueFromTemplateAsync(request, await BuildMetadataAsync(request));
        return response.DocumentJson;
    }

    /// <summary>
    /// Issue a verifiable credential from a predefined <see cref="TemplateData"/>.
    /// </summary>
    /// <param name="request">The request object with the template identifier and the values</param>
    /// <returns>Verifiable credential as JSON</returns>
    public string IssueFromTemplate(IssueFromTemplateRequest request) {
        var response = Client.IssueFromTemplate(request, BuildMetadata(request));
        return response.DocumentJson;
    }


    /// <summary>
    /// Derive a proof from an existing document in the wallet using
    /// an input reveal document frame
    /// </summary>
    /// <param name="itemId"></param>
    /// <param name="revealDocument"></param>
    /// <returns></returns>
    [Obsolete("Please use 'CreateProofAsync(CreateProofRequest) method instead")]
    public async Task<JObject> CreateProofAsync(string itemId, JObject revealDocument) {
        CreateProofRequest request = new() {
            ItemId = itemId,
            RevealDocumentJson = revealDocument.ToString()
        };
        var response = await Client.CreateProofAsync(request, await BuildMetadataAsync(request));

        return JObject.Parse(response.ProofDocumentJson);
    }

    [Obsolete("Please use 'CreateProof(CreateProofRequest) method instead")]
    public JObject CreateProof(string itemId, JObject revealDocument) {
        CreateProofRequest request = new() {
            ItemId = itemId,
            RevealDocumentJson = revealDocument.ToString()
        };
        var response = Client.CreateProof(request, BuildMetadata(request));

        return JObject.Parse(response.ProofDocumentJson);
    }
    
    /// <summary>
    /// Create a proof from a record in the user's wallet. The record must be a valid
    /// verifiable credential and contain a signature from which a proof can be derived.
    /// </summary>
    /// <param name="request"></param>
    /// <returns></returns>
    public async Task<CreateProofResponse> CreateProofAsync(CreateProofRequest request) {
        return await Client.CreateProofAsync(request, await BuildMetadataAsync(request));
    }
    
    /// <summary>
    /// Create a proof from a record in the user's wallet. The record must be a valid
    /// verifiable credential and contain a signature from which a proof can be derived.
    /// </summary>
    /// <param name="request"></param>
    /// <returns></returns>
    public CreateProofResponse CreateProof(CreateProofRequest request) {
        return Client.CreateProof(request, BuildMetadata(request));
    }

    /// <summary>
    /// Verifies a proof document
    /// </summary>
    /// <param name="proofDocument"></param>
    /// <returns></returns>
    public async Task<bool> VerifyProofAsync(JObject proofDocument) {
        VerifyProofRequest request = new() {
            ProofDocumentJson = proofDocument.ToString()
        };
        var response = await Client.VerifyProofAsync(
            request: request,
            headers: await BuildMetadataAsync(request));

        return response.IsValid;
    }

    public bool VerifyProof(JObject proofDocument) {
        VerifyProofRequest request = new() {
            ProofDocumentJson = proofDocument.ToString()
        };
        var response = Client.VerifyProof(
            request: request,
            headers: BuildMetadata(request));

        return response.IsValid;
    }

    /// <summary>
    /// Check credential template status
    /// </summary>
    /// <param name="credentialStatusId"></param>
    /// <returns></returns>
    public async Task<CheckStatusResponse> CheckStatusAsync(string credentialStatusId) {
        CheckStatusRequest request = new() {CredentialStatusId = credentialStatusId};
        return await Client.CheckStatusAsync(request, await BuildMetadataAsync(request));
    }

    public CheckStatusResponse CheckStatus(string credentialStatusId) {
        CheckStatusRequest request = new() {CredentialStatusId = credentialStatusId};
        return Client.CheckStatus(request, BuildMetadata(request));
    }

    /// <summary>
    /// Update credential template revocation status
    /// </summary>
    /// <param name="credentialStatusId"></param>
    /// <param name="revoked"></param>
    /// <returns></returns>
    public async Task UpdateStatusAsync(string credentialStatusId, bool revoked) {
        UpdateStatusRequest request = new() {CredentialStatusId = credentialStatusId, Revoked = revoked};
        var response = await Client.UpdateStatusAsync(request, await BuildMetadataAsync(request));
        if (response.Status == ResponseStatus.Success) return;
        throw new Exception($"Status not completely updated {response.Status}");
    }

    public void UpdateStatus(string credentialStatusId, bool revoked) {
        UpdateStatusRequest request = new() {CredentialStatusId = credentialStatusId, Revoked = revoked};
        var response = Client.UpdateStatus(request, BuildMetadata(request));
        if (response.Status == ResponseStatus.Success) return;
        throw new Exception($"Status not completely updated {response.Status}");
    }


    /// <summary>
    /// Sends a document to the specified destination
    /// </summary>
    /// <param name="document"></param>
    /// <param name="email"></param>
    /// <returns></returns>
    public async Task SendAsync(JObject document, string email) {
        SendRequest request = new() {
            Email = email,
            DocumentJson = document.ToString()
        };
        var response = await Client.SendAsync(
            request: request,
            headers: await BuildMetadataAsync(request));
    }

    public void Send(JObject document, string email) {
        SendRequest request = new() {
            Email = email,
            DocumentJson = document.ToString()
        };
        var response = Client.Send(
            request: request,
            headers: BuildMetadata(request));
    }
}