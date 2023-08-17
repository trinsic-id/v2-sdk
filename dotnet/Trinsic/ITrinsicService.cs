namespace Trinsic;

/// <summary>
/// Trinsic Service Interface
/// </summary>
public interface ITrinsicService
{
    /// <summary>
    /// Access Management Service
    /// </summary>
    AccessManagementService AccessManagement { get; }
    /// <summary>
    /// Credential Service
    /// </summary>
    CredentialService Credential { get; }
    /// <summary>
    /// File Management Service
    /// </summary>
    FileManagementService FileManagement { get; }
    /// <summary>
    /// Template Service
    /// </summary>
    TemplateService Template { get; }
    /// <summary>
    /// Provider Service
    /// </summary>
    ProviderService Provider { get; }
    /// <summary>
    /// Trust Registry Service
    /// </summary>
    TrustRegistryService TrustRegistry { get; }
    /// <summary>
    /// Wallet Service
    /// </summary>
    WalletService Wallet { get; }
}