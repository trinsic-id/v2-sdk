using Microsoft.Extensions.Options;
using Trinsic.Sdk.Options.V1;

namespace Trinsic;

/// <summary>
/// Trinsic Service
/// </summary>
public class TrinsicService : ServiceBase, ITrinsicService
{
    private AccessManagementService? _accessManagement;
    private ConnectService? _connect;
    private CredentialService? _credential;
    private FileManagementService? _fileManagement;
    private TemplateService? _template;
    private ProviderService? _provider;
    private TrustRegistryService? _trustRegistry;
    private WalletService? _wallet;

    /// <summary>
    /// Trinsic Service
    /// </summary>
    /// <param name="options">Trinsic Options</param>
    public TrinsicService(TrinsicOptions options) : base(options) { }

    /// <summary>
    /// Trinsic Service
    /// </summary>
    public TrinsicService() : base(new()) { }

    internal TrinsicService(IOptions<TrinsicOptions> options) : base(options.Value) { }

    /// <summary>
    /// Exposes Account Service functionality
    /// </summary>
    public AccessManagementService AccessManagement => _accessManagement ??= new(Options);

    /// <summary>
    /// Exposes Trinsic Connect Service functionality
    /// </summary>
    public ConnectService Connect => _connect ??= new(Options);

    /// <summary>
    /// Exposes Credential Service functionality
    /// </summary>
    public CredentialService Credential => _credential ??= new(Options);

    /// <summary>
    /// Exposes File Management Service functionality
    /// </summary>
    public FileManagementService FileManagement => _fileManagement ??= new(Options);

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