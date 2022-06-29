package trinsic.services;

import trinsic.sdk.options.v1.Options;

public class TrinsicService extends ServiceBase {
  private AccountService _accountService;
  private CredentialService _credentialService;
  private TemplateService _TemplateService;
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

  public TemplateService template() {
    if (_TemplateService == null)
      _TemplateService = new TemplateService(this.getOptionsBuilder());
    return _TemplateService;
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
