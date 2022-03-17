using System;
using System.Threading.Tasks;
using Trinsic.Sdk.Options.V1;
using Trinsic.Services.Common.V1;
using Trinsic.Services.VerifiableCredentials.Templates.V1;
using Trinsic.Services.VerifiableCredentials.V1;

namespace Trinsic;

public class CredentialsService : ServiceBase
{
    public CredentialsService(ServiceOptions options)
        : base(options) {
        Client = new(Channel);
    }

    public CredentialsService() {
        Client = new(Channel);
    }
    
    internal CredentialsService(ITokenProvider tokenProvider) : base(new(), tokenProvider) {
        Client = new(Channel);
    }

    private VerifiableCredential.VerifiableCredentialClient Client { get; }

    /// <summary>
    /// Signs an input credential
    /// </summary>
    /// <param name="request"></param>
    /// <returns></returns>
    public async Task<IssueResponse> IssueCredentialAsync(IssueRequest request) {
        if (string.IsNullOrWhiteSpace(request.DocumentJson)) {
            throw new ArgumentException("document json must not be empty");
        }
        return await Client.IssueAsync(request, await BuildMetadataAsync(request));
    }

    public IssueResponse IssueCredential(IssueRequest request) {
        if (string.IsNullOrWhiteSpace(request.DocumentJson)) {
            throw new ArgumentException("document json must not be empty");
        }
        return Client.Issue(request, BuildMetadata(request));
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
    /// <param name="request"></param>
    /// <returns></returns>
    public async Task<bool> VerifyProofAsync(VerifyProofRequest request) {
        var response = await Client.VerifyProofAsync(
            request: request,
            headers: await BuildMetadataAsync(request));

        return response.IsValid;
    }

    public bool VerifyProof(VerifyProofRequest request) {
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
    /// <param name="request"></param>
    /// <returns></returns>
    public async Task SendAsync(SendRequest request) {
        var response = await Client.SendAsync(
            request: request,
            headers: await BuildMetadataAsync(request));
    }

    public void Send(SendRequest request) {
        var response = Client.Send(
            request: request,
            headers: BuildMetadata(request));
    }
}