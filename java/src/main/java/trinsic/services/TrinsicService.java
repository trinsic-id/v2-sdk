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

  public TrinsicService(Options.ServiceOptions options) {
    super(options);
  }

  public AccountService account() {
    if (_accountService == null) _accountService = new AccountService(this.getOptions());
    _accountService.setOptions(this.getOptions());
    return _accountService;
  }

  public CredentialService credential() {
    if (_credentialService == null) _credentialService = new CredentialService(this.getOptions());
      _credentialService.setOptions(this.getOptions());
    return _credentialService;
  }

  public CredentialTemplateService template() {
    if (_credentialTemplateService == null)
      _credentialTemplateService = new CredentialTemplateService(this.getOptions());
      _credentialTemplateService.setOptions(this.getOptions());
    return _credentialTemplateService;
  }

  public ProviderService provider() {
    if (_providerService == null) _providerService = new ProviderService(this.getOptions());
      _providerService.setOptions(this.getOptions());
    return _providerService;
  }

  public TrustRegistryService trust() {
    if (_trustRegistryService == null)
      _trustRegistryService = new TrustRegistryService(this.getOptions());
      _trustRegistryService.setOptions(this.getOptions());
    return _trustRegistryService;
  }

  public WalletService wallet() {
    if (_walletService == null) _walletService = new WalletService(this.getOptions());
      _walletService.setOptions(this.getOptions());
    return _walletService;
  }
}
