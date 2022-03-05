using System.Threading.Tasks;
using Grpc.Net.Client;
using Trinsic.Sdk.Options.V1;
using Trinsic.Services.Account.V1;
using Trinsic.Services.Common.V1;
using Trinsic.Services.VerifiableCredentials.Templates.V1;

namespace Trinsic;

/// <summary>
/// Template Service for managing credential schemas
/// </summary>
public class TemplateService : ServiceBase
{
    public TemplateService(ServiceOptions options)
        : base(options) {
        Client = new(Channel);
    }

    public TemplateService() {
        Client = new(Channel);
    }

    private CredentialTemplates.CredentialTemplatesClient Client { get; set; }

    /// <summary>
    /// Create new credential template with the given parameters
    /// </summary>
    /// <param name="request"></param>
    /// <returns></returns>
    public async Task<CreateCredentialTemplateResponse> CreateAsync(CreateCredentialTemplateRequest request) {
        return await Client.CreateAsync(request, await BuildMetadataAsync(request));
    }

    public CreateCredentialTemplateResponse Create(CreateCredentialTemplateRequest request) {
        return Client.Create(request, BuildMetadata(request));
    }

    /// <summary>
    /// Returns the template object for the given identifier
    /// </summary>
    /// <param name="request">The request object</param>
    /// <returns></returns>
    public async Task<GetCredentialTemplateResponse> GetAsync(GetCredentialTemplateRequest request) {
        return await Client.GetAsync(request, await BuildMetadataAsync(request));
    }

    public GetCredentialTemplateResponse Get(GetCredentialTemplateRequest request) {
        return Client.Get(request, BuildMetadata(request));
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
    public async Task<ListCredentialTemplatesResponse> ListAsync(ListCredentialTemplatesRequest request) {
        return await Client.ListAsync(request, await BuildMetadataAsync(request));
    }
    
    public ListCredentialTemplatesResponse List(ListCredentialTemplatesRequest request) {
        return Client.List(request, BuildMetadata(request));
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
    public async Task<SearchCredentialTemplatesResponse> SearchAsync(SearchCredentialTemplatesRequest request) {
        return await Client.SearchAsync(request, await BuildMetadataAsync(request));
    }

    public SearchCredentialTemplatesResponse Search(SearchCredentialTemplatesRequest request) {
        return Client.Search(request, BuildMetadata(request));
    }

    public async Task<DeleteCredentialTemplateResponse> DeleteAsync(DeleteCredentialTemplateRequest request) {
        return await Client.DeleteAsync(request, await BuildMetadataAsync(request));
    }

    public DeleteCredentialTemplateResponse Delete(DeleteCredentialTemplateRequest request) {
        return Client.Delete(request, BuildMetadata(request));
    }
}