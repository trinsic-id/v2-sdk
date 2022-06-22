package trinsic.services;

import trinsic.sdk.options.v1.Options;

public class TrinsicService extends ServiceBase {
  private AccountService _accountService;
  private CredentialService _credentialService;
  private CredentialTemplateService _credentialTemplateService;
  private ProviderService _providerService;
  private TrustRegistryService _trustRegistryService;
  private WalletService _walletService;

  public TrinsicService() {
    this(null);
  }

  public TrinsicService(Options.ServiceOptions.Builder options) {
    super(options);
  }

  public AccountService account() {
    if (_accountService == null) _accountService = new AccountService(this.getOptionsBuilder());
    return _accountService;
  }

  public CredentialService credential() {
    if (_credentialService == null)
      _credentialService = new CredentialService(this.getOptionsBuilder());
    return _credentialService;
  }

  public CredentialTemplateService template() {
    if (_credentialTemplateService == null)
      _credentialTemplateService = new CredentialTemplateService(this.getOptionsBuilder());
    return _credentialTemplateService;
  }

  public ProviderService provider() {
    if (_providerService == null) _providerService = new ProviderService(this.getOptionsBuilder());
    return _providerService;
  }

  public TrustRegistryService trustRegistry() {
    if (_trustRegistryService == null)
      _trustRegistryService = new TrustRegistryService(this.getOptionsBuilder());
    return _trustRegistryService;
  }

  public WalletService wallet() {
    if (_walletService == null) _walletService = new WalletService(this.getOptionsBuilder());
    return _walletService;
  }
}
