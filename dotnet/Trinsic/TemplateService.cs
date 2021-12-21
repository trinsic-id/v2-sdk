using System.Threading.Tasks;
using Grpc.Net.Client;
using Trinsic.Services.Account.V1;
using Trinsic.Services.Common.V1;
using Trinsic.Services.VerifiableCredentials.Templates.V1;

namespace Trinsic;

/// <summary>
/// Template Service for managing credential schemas
/// </summary>
public class TemplateService : ServiceBase
{
    public TemplateService(AccountProfile? accountProfile, ServerConfig? serverConfig, GrpcChannel? existingChannel) :
        base(accountProfile, serverConfig, existingChannel)
    {
        Client = new CredentialTemplates.CredentialTemplatesClient(
                Channel);
    }

    private CredentialTemplates.CredentialTemplatesClient Client { get; set; }

    /// <summary>
    /// Create new credential template with the given parameters
    /// </summary>
    /// <param name="request"></param>
    /// <returns></returns>
    public async Task<CreateCredentialTemplateResponse> CreateAsync(CreateCredentialTemplateRequest request)
    {
        var response = await Client.CreateAsync(request, await BuildMetadataAsync(request));
        return response;
    }
    
    /// <summary>
    /// Returns the template object for the given identifier
    /// </summary>
    /// <param name="request">The request object</param>
    /// <returns></returns>
    public async Task<GetCredentialTemplateResponse> GetAsync(GetCredentialTemplateRequest request)
    {
        var response = await Client.GetAsync(request, await BuildMetadataAsync(request));
        return response;
    }
    
    /// <summary>
    /// Search the registry for any data in the given ecosystem.
    /// Results can be customized using a SQL query.
    /// </summary>
    /// <remarks>
    /// This endpoint returns raw JSON results where the format can be customized using
    /// SELECT SQL projections and object composition.
    /// </remarks>
    /// <param name="request">The request object</param>
    /// <returns>
    /// The search response and continuation token, if available
    /// </returns>
    public async Task<SearchCredentialTemplatesResponse> SearchAsync(SearchCredentialTemplatesRequest request)
    {
        var response = await Client.SearchAsync(request, await BuildMetadataAsync(request));
        return response;
    }
    
    /// <summary>
    /// List the available templates for the given ecosystem.
    /// Results can be customized using a SQL query.
    /// </summary>
    /// <remarks>
    /// This endpoint returns strongly typed result set. If your query uses projections,
    /// use the <see cref="SearchAsync"/> method instead and parse the result JSON as needed.
    /// </remarks>
    /// <param name="request">The request object</param>
    /// <returns>
    /// The search response and continuation token, if available
    /// </returns>
    public async Task<ListCredentialTemplatesResponse> ListAsync(ListCredentialTemplatesRequest request)
    {
        var response = await Client.ListAsync(request, await BuildMetadataAsync(request));
        return response;
    }
}