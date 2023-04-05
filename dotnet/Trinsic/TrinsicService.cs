using Microsoft.Extensions.Options;
using Trinsic.Sdk.Options.V1;

namespace Trinsic;

/// <summary>
/// Trinsic Service
/// </summary>
public class TrinsicService : ServiceBase
{
    private AccessManagementService? _accessManagement;
    private CredentialService? _credential;
    private FileManagementService? _fileManagement;
    private TemplateService? _template;
    private ProviderService? _provider;
    private TrustRegistryService? _trustRegistry;
    private WalletService? _wallet;


    public TrinsicService(ServiceOptions options) : base(options) { }

    public TrinsicService() : base(new()) { }

    internal TrinsicService(IOptions<ServiceOptions> options) : base(options.Value) { }

    /// <summary>
    /// Exposes Account Service functionality
    /// </summary>
    public AccessManagementService AccessManagement => _accessManagement ??= new(Options);

    /// <summary>
    /// Exposes Credential Service functionality
    /// </summary>
    public CredentialService Credential => _credential ??= new(Options);

    public FileManagementService FileManagement =>
        _fileManagement ??= new(Options);

    /// <summary>
    /// Exposes Template Service functionality
    /// </summary>
    public TemplateService Template => _template ??= new(Options);

    /// <summary>
    /// Exposes Provider Service functionality
    /// </summary>
    public ProviderService Provider => _provider ??= new(Options);

    /// <summary>
    /// Exposes Trust Registry Service functionality
    /// </summary>
    public TrustRegistryService TrustRegistry => _trustRegistry ??= new(Options);

    /// <summary>
    /// Exposes Wallet Service functionality
    /// </summary>
    public WalletService Wallet => _wallet ??= new(Options);
}