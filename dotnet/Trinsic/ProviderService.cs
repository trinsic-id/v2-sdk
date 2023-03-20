using System;
using System.Threading.Tasks;
using Google.Protobuf;
using Microsoft.Extensions.Options;
using Trinsic.Sdk.Options.V1;
using Trinsic.Services.Provider.V1;

namespace Trinsic;

public class ProviderService : ServiceBase
{
    public ProviderService(ServiceOptions options)
        : base(options) {
        Client = new(Channel);
    }

    public ProviderService() {
        Client = new(Channel);
    }

    internal ProviderService(ITokenProvider tokenProvider) : base(new(), tokenProvider) {
        Client = new(Channel);
    }

    internal ProviderService(ITokenProvider tokenProvider, IOptions<ServiceOptions> options)
        : base(options.Value, tokenProvider) {
        Client = new(Channel);
    }

    private Provider.ProviderClient Client { get; }

    /// <summary>
    ///     Create new ecosystem and assigns the authenticated user as owner
    /// </summary>
    /// <param name="request"></param>
    /// <returns></returns>
    public async Task<(Ecosystem ecosystem, string authToken)> CreateEcosystemAsync(CreateEcosystemRequest request) {
        request.Details ??= new();

        // Named / owned ecosystems require authentication to create
        var requiresAuth = !string.IsNullOrWhiteSpace(request.Name) || !string.IsNullOrWhiteSpace(request.Details?.Email);
        var metadata = requiresAuth ? await BuildMetadataAsync(request) : await BuildMetadataAsync();
        var response = await Client.CreateEcosystemAsync(request, metadata);
        var authToken = Base64Url.Encode(response.Profile.ToByteArray());

        return (response.Ecosystem, authToken);
    }

    /// <summary>
    ///     Create new ecosystem and assigns the authenticated user as owner
    /// </summary>
    /// <param name="request"></param>
    /// <returns></returns>
    public (Ecosystem ecosystem, string authToken) CreateEcosystem(CreateEcosystemRequest request) {
        request.Details ??= new();

        // Named / owned ecosystems require authentication to create
        var requiresAuth = !string.IsNullOrWhiteSpace(request.Name) || !string.IsNullOrWhiteSpace(request.Details?.Email);
        var metadata = requiresAuth ? BuildMetadata(request) : BuildMetadata();
        var response = Client.CreateEcosystem(request, metadata);
        var authToken = Base64Url.Encode(response.Profile.ToByteArray());

        return (response.Ecosystem, authToken);
    }
// BEGIN Code generated by protoc-gen-trinsic. DO NOT EDIT.
// target: C:\work\sdk\dotnet\Trinsic\ProviderService.cs

	/// <summary>
    ///This will be removed May 1, 2023
    ///  Update an existing ecosystem
    /// </summary>
    [Obsolete("This will be removed May 1, 2023")]
    public UpdateEcosystemResponse UpdateEcosystem(UpdateEcosystemRequest request) {
        
        return Client.UpdateEcosystem(request, BuildMetadata(request));
    }
	
	/// <summary>
    ///This will be removed May 1, 2023
    ///  Update an existing ecosystem
    /// </summary>
    [Obsolete("This will be removed May 1, 2023")]
    public async Task<UpdateEcosystemResponse> UpdateEcosystemAsync(UpdateEcosystemRequest request) {
        
        return await Client.UpdateEcosystemAsync(request, await BuildMetadataAsync(request));
    }

	/// <summary>
    /// Get ecosystem information
    /// </summary>
    
    public EcosystemInfoResponse EcosystemInfo(EcosystemInfoRequest request) {
        
        return Client.EcosystemInfo(request, BuildMetadata(request));
    }
	
	/// <summary>
    /// Get ecosystem information
    /// </summary>
    
    public async Task<EcosystemInfoResponse> EcosystemInfoAsync(EcosystemInfoRequest request) {
        
        return await Client.EcosystemInfoAsync(request, await BuildMetadataAsync(request));
    }

	/// <summary>
    ///This will be removed May 1, 2023
    ///  Get public ecosystem information about *any* ecosystem
    /// </summary>
    [Obsolete("This will be removed May 1, 2023")]
    public GetPublicEcosystemInfoResponse GetPublicEcosystemInfo(GetPublicEcosystemInfoRequest request) {
        
        return Client.GetPublicEcosystemInfo(request, BuildMetadata());
    }
	
	/// <summary>
    ///This will be removed May 1, 2023
    ///  Get public ecosystem information about *any* ecosystem
    /// </summary>
    [Obsolete("This will be removed May 1, 2023")]
    public async Task<GetPublicEcosystemInfoResponse> GetPublicEcosystemInfoAsync(GetPublicEcosystemInfoRequest request) {
        
        return await Client.GetPublicEcosystemInfoAsync(request, await BuildMetadataAsync());
    }

	/// <summary>
    /// Returns the public key being used to create/verify oberon tokens
    /// </summary>
    
    public GetOberonKeyResponse GetOberonKey(GetOberonKeyRequest request) {
        
        return Client.GetOberonKey(request, BuildMetadata());
    }
	
	/// <summary>
    /// Returns the public key being used to create/verify oberon tokens
    /// </summary>
    
    public async Task<GetOberonKeyResponse> GetOberonKeyAsync(GetOberonKeyRequest request) {
        
        return await Client.GetOberonKeyAsync(request, await BuildMetadataAsync());
    }

	/// <summary>
    /// Upgrade a wallet's DID from `did:key` to another method
    /// </summary>
    
    public UpgradeDidResponse UpgradeDID(UpgradeDidRequest request) {
        
        return Client.UpgradeDID(request, BuildMetadata(request));
    }
	
	/// <summary>
    /// Upgrade a wallet's DID from `did:key` to another method
    /// </summary>
    
    public async Task<UpgradeDidResponse> UpgradeDIDAsync(UpgradeDidRequest request) {
        
        return await Client.UpgradeDIDAsync(request, await BuildMetadataAsync(request));
    }

	/// <summary>
    /// Retrieve a random hash TXT that can be used to verify domain ownership
    /// </summary>
    
    public RetrieveDomainVerificationRecordResponse RetrieveDomainVerificationRecord() {
        var request = new RetrieveDomainVerificationRecordRequest();
        return Client.RetrieveDomainVerificationRecord(request, BuildMetadata(request));
    }
	
	/// <summary>
    /// Retrieve a random hash TXT that can be used to verify domain ownership
    /// </summary>
    
    public async Task<RetrieveDomainVerificationRecordResponse> RetrieveDomainVerificationRecordAsync() {
        var request = new RetrieveDomainVerificationRecordRequest();
        return await Client.RetrieveDomainVerificationRecordAsync(request, await BuildMetadataAsync(request));
    }

	/// <summary>
    /// Call to verify domain
    /// </summary>
    
    public RefreshDomainVerificationStatusResponse RefreshDomainVerificationStatus(RefreshDomainVerificationStatusRequest request) {
        
        return Client.RefreshDomainVerificationStatus(request, BuildMetadata(request));
    }
	
	/// <summary>
    /// Call to verify domain
    /// </summary>
    
    public async Task<RefreshDomainVerificationStatusResponse> RefreshDomainVerificationStatusAsync(RefreshDomainVerificationStatusRequest request) {
        
        return await Client.RefreshDomainVerificationStatusAsync(request, await BuildMetadataAsync(request));
    }

	/// <summary>
    /// Search for issuers/providers/verifiers in the current ecosystem
    /// </summary>
    
    public SearchWalletConfigurationResponse SearchWalletConfigurations(SearchWalletConfigurationsRequest request) {
        
        return Client.SearchWalletConfigurations(request, BuildMetadata(request));
    }
	
	/// <summary>
    /// Search for issuers/providers/verifiers in the current ecosystem
    /// </summary>
    
    public async Task<SearchWalletConfigurationResponse> SearchWalletConfigurationsAsync(SearchWalletConfigurationsRequest request) {
        
        return await Client.SearchWalletConfigurationsAsync(request, await BuildMetadataAsync(request));
    }

// END Code generated by protoc-gen-trinsic. DO NOT EDIT.
}
public class ExperimentalAttribute : Attribute
{
    // TODO - Experimental attribute object
}