using System.Threading.Tasks;
using Trinsic.Sdk.Options.V1;
using Trinsic.Services.TrustRegistry.V1;

namespace Trinsic;

public class TrustRegistryService : ServiceBase
{
    public TrustRegistryService(TrinsicOptions options)
        : base(options) {
        Client = new(Channel);
    }

    private TrustRegistry.TrustRegistryClient Client { get; }

    /// <summary>
    /// Search the trust registry
    /// </summary>
    /// <returns></returns>
    public async Task<SearchRegistryResponse> SearchAsync(SearchRegistryRequest request) {
        if (string.IsNullOrWhiteSpace(request.Query))
        {
            request.Query = "SELECT * FROM _ OFFSET 0 LIMIT 100";
        }

        var response = await SearchRegistryAsync(request);
        return response;
    }

    public SearchRegistryResponse Search(SearchRegistryRequest request) {
        if (string.IsNullOrWhiteSpace(request.Query))
        {
            request.Query = "SELECT * FROM _ OFFSET 0 LIMIT 100";
        }

        return SearchRegistry(request);
    }
// BEGIN Code generated by protoc-gen-trinsic. DO NOT EDIT.
// target: /home/runner/work/sdk/sdk/dotnet/Trinsic/TrustRegistryService.cs

	/// <summary>
    /// Add a governance framework to the ecosystem
    /// </summary>
    
    public AddFrameworkResponse AddFramework(AddFrameworkRequest request) {
        
        return Client.AddFramework(request, BuildMetadata(request));
    }
	
	/// <summary>
    /// Add a governance framework to the ecosystem
    /// </summary>
    
    public async Task<AddFrameworkResponse> AddFrameworkAsync(AddFrameworkRequest request) {
        
        return await Client.AddFrameworkAsync(request, await BuildMetadataAsync(request));
    }

	/// <summary>
    /// Remove a governance framework from the ecosystem
    /// </summary>
    
    public RemoveFrameworkResponse RemoveFramework(RemoveFrameworkRequest request) {
        
        return Client.RemoveFramework(request, BuildMetadata(request));
    }
	
	/// <summary>
    /// Remove a governance framework from the ecosystem
    /// </summary>
    
    public async Task<RemoveFrameworkResponse> RemoveFrameworkAsync(RemoveFrameworkRequest request) {
        
        return await Client.RemoveFrameworkAsync(request, await BuildMetadataAsync(request));
    }

	/// <summary>
    /// Search the ecosystem's governance frameworks
    /// </summary>
    
    public SearchRegistryResponse SearchRegistry(SearchRegistryRequest request) {
        
        return Client.SearchRegistry(request, BuildMetadata(request));
    }
	
	/// <summary>
    /// Search the ecosystem's governance frameworks
    /// </summary>
    
    public async Task<SearchRegistryResponse> SearchRegistryAsync(SearchRegistryRequest request) {
        
        return await Client.SearchRegistryAsync(request, await BuildMetadataAsync(request));
    }

	/// <summary>
    /// Register an authoritative issuer for a credential schema
    /// </summary>
    
    public RegisterMemberResponse RegisterMember(RegisterMemberRequest request) {
        
        return Client.RegisterMember(request, BuildMetadata(request));
    }
	
	/// <summary>
    /// Register an authoritative issuer for a credential schema
    /// </summary>
    
    public async Task<RegisterMemberResponse> RegisterMemberAsync(RegisterMemberRequest request) {
        
        return await Client.RegisterMemberAsync(request, await BuildMetadataAsync(request));
    }

	/// <summary>
    /// Removes an authoritative issuer for a credential schema from the trust registry
    /// </summary>
    
    public UnregisterMemberResponse UnregisterMember(UnregisterMemberRequest request) {
        
        return Client.UnregisterMember(request, BuildMetadata(request));
    }
	
	/// <summary>
    /// Removes an authoritative issuer for a credential schema from the trust registry
    /// </summary>
    
    public async Task<UnregisterMemberResponse> UnregisterMemberAsync(UnregisterMemberRequest request) {
        
        return await Client.UnregisterMemberAsync(request, await BuildMetadataAsync(request));
    }

	/// <summary>
    /// Fetch the membership status of an issuer for a given credential schema in a trust registry
    /// </summary>
    
    public GetMembershipStatusResponse GetMembershipStatus(GetMembershipStatusRequest request) {
        
        return Client.GetMembershipStatus(request, BuildMetadata(request));
    }
	
	/// <summary>
    /// Fetch the membership status of an issuer for a given credential schema in a trust registry
    /// </summary>
    
    public async Task<GetMembershipStatusResponse> GetMembershipStatusAsync(GetMembershipStatusRequest request) {
        
        return await Client.GetMembershipStatusAsync(request, await BuildMetadataAsync(request));
    }

	/// <summary>
    /// Fetch the ecosystem's authorized issuers and the respective templates against which it can issue
    /// </summary>
    
    public ListAuthorizedMembersResponse ListAuthorizedMembers(ListAuthorizedMembersRequest request) {
        
        return Client.ListAuthorizedMembers(request, BuildMetadata(request));
    }
	
	/// <summary>
    /// Fetch the ecosystem's authorized issuers and the respective templates against which it can issue
    /// </summary>
    
    public async Task<ListAuthorizedMembersResponse> ListAuthorizedMembersAsync(ListAuthorizedMembersRequest request) {
        
        return await Client.ListAuthorizedMembersAsync(request, await BuildMetadataAsync(request));
    }

// END Code generated by protoc-gen-trinsic. DO NOT EDIT.
}