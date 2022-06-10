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

    public AccountService accountService() {
        if (_accountService == null) _accountService = new AccountService(this.getOptions());
        return _accountService;
    }

    public CredentialService credentialService() {
        if (_credentialService == null) _credentialService = new CredentialService(this.getOptions());
        return _credentialService;
    }

    public CredentialTemplateService credentialTemplateService() {
        if (_credentialTemplateService == null) _credentialTemplateService = new CredentialTemplateService(this.getOptions());
        return _credentialTemplateService;
    }

    public ProviderService providerService() {
        if (_providerService == null) _providerService = new ProviderService(this.getOptions());
        return _providerService;
    }

    public TrustRegistryService trustRegistryService() {
        if (_trustRegistryService == null) _trustRegistryService = new TrustRegistryService(this.getOptions());
        return _trustRegistryService;
    }

    public WalletService walletService() {
        if (_walletService == null) _walletService = new WalletService(this.getOptions());
        return _walletService;
    }
}
