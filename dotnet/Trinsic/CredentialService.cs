using System;
using System.Threading.Tasks;
using Microsoft.Extensions.Options;
using Trinsic.Sdk.Options.V1;
using Trinsic.Services.VerifiableCredentials.Templates.V1;
using Trinsic.Services.VerifiableCredentials.V1;

namespace Trinsic;

public class CredentialService : ServiceBase
{
    public CredentialService(ServiceOptions options)
        : base(options) {
        Client = new(Channel);
    }

    public CredentialService() {
        Client = new(Channel);
    }

    internal CredentialService(ITokenProvider tokenProvider) : base(new(), tokenProvider) {
        Client = new(Channel);
    }

    internal CredentialService(ITokenProvider tokenProvider, IOptions<ServiceOptions> options)
        : base(options.Value, tokenProvider) {
        Client = new(Channel);
    }

    private VerifiableCredential.VerifiableCredentialClient Client { get; }

    /// <summary>
    ///     Signs an input credential
    /// </summary>
    /// <param name="request"></param>
    /// <returns></returns>
    public async Task<IssueResponse> IssueCredentialAsync(IssueRequest request) {
        if (string.IsNullOrWhiteSpace(request.DocumentJson)) throw new ArgumentException("document json must not be empty");
        return await Client.IssueAsync(request, await BuildMetadataAsync(request));
    }

    public IssueResponse IssueCredential(IssueRequest request) {
        if (string.IsNullOrWhiteSpace(request.DocumentJson)) throw new ArgumentException("document json must not be empty");
        return Client.Issue(request, BuildMetadata(request));
    }

    /// <summary>
    ///     Issue a verifiable credential from a predefined <see cref="TemplateData" />.
    /// </summary>
    /// <param name="request">The request object with the template identifier and the values</param>
    /// <returns>Verifiable credential as JSON</returns>
    public async Task<IssueFromTemplateResponse> IssueFromTemplateAsync(IssueFromTemplateRequest request) {
        return await Client.IssueFromTemplateAsync(request, await BuildMetadataAsync(request));
    }

    /// <summary>
    ///     Issue a verifiable credential from a predefined <see cref="TemplateData" />.
    /// </summary>
    /// <param name="request">The request object with the template identifier and the values</param>
    /// <returns>Verifiable credential as JSON</returns>
    public IssueFromTemplateResponse IssueFromTemplate(IssueFromTemplateRequest request) {
        return Client.IssueFromTemplate(request, BuildMetadata(request));
    }

    /// <summary>
    ///     Create a proof from a record in the user's wallet. The record must be a valid
    ///     verifiable credential and contain a signature from which a proof can be derived.
    /// </summary>
    /// <param name="request"></param>
    /// <returns></returns>
    public async Task<CreateProofResponse> CreateProofAsync(CreateProofRequest request) {
        return await Client.CreateProofAsync(request, await BuildMetadataAsync(request));
    }

    /// <summary>
    ///     Create a proof from a record in the user's wallet. The record must be a valid
    ///     verifiable credential and contain a signature from which a proof can be derived.
    /// </summary>
    /// <param name="request"></param>
    /// <returns></returns>
    public CreateProofResponse CreateProof(CreateProofRequest request) {
        return Client.CreateProof(request, BuildMetadata(request));
    }

    /// <summary>
    ///     Verifies a proof document
    /// </summary>
    /// <param name="request"></param>
    /// <returns></returns>
    public async Task<VerifyProofResponse> VerifyProofAsync(VerifyProofRequest request) {
        return await Client.VerifyProofAsync(request, await BuildMetadataAsync(request));
    }

    public VerifyProofResponse VerifyProof(VerifyProofRequest request) {
        return Client.VerifyProof(request, BuildMetadata(request));
    }

    /// <summary>
    ///     Check credential template status
    /// </summary>
    /// <returns></returns>
    public async Task<CheckStatusResponse> CheckStatusAsync(CheckStatusRequest request) {
        return await Client.CheckStatusAsync(request, await BuildMetadataAsync(request));
    }

    public CheckStatusResponse CheckStatus(CheckStatusRequest request) {
        return Client.CheckStatus(request, BuildMetadata(request));
    }

    /// <summary>
    ///     Update credential template revocation status
    /// </summary>
    /// <returns></returns>
    public async Task<UpdateStatusResponse> UpdateStatusAsync(UpdateStatusRequest request) {
        return await Client.UpdateStatusAsync(request, await BuildMetadataAsync(request));
    }

    public UpdateStatusResponse UpdateStatus(UpdateStatusRequest request) {
        return Client.UpdateStatus(request, BuildMetadata(request));
    }


    /// <summary>
    ///     Sends a document to the specified destination
    /// </summary>
    /// <param name="request"></param>
    /// <returns></returns>
    public async Task<SendResponse> SendAsync(SendRequest request) {
        return await Client.SendAsync(request, await BuildMetadataAsync(request));
    }

    public SendResponse Send(SendRequest request) {
        return Client.Send(request, BuildMetadata(request));
    }
}
