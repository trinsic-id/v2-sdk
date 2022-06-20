package trinsic.services

import trinsic.sdk.options.v1.Options

class TrinsicServiceKt @JvmOverloads constructor(options: Options.ServiceOptions? = null) :
    ServiceBase(options) {
  private var _accountService: AccountServiceKt? = null
  private var _credentialService: CredentialServiceKt? = null
  private var _credentialTemplateService: CredentialTemplateServiceKt? = null
  private var _providerService: ProviderServiceKt? = null
  private var _trustRegistryService: TrustRegistryServiceKt? = null
  private var _walletService: WalletServiceKt? = null
  fun accountService(): AccountServiceKt {
    if (_accountService == null) _accountService = AccountServiceKt(options)
    return _accountService!!
  }

  fun credentialService(): CredentialServiceKt {
    if (_credentialService == null) _credentialService = CredentialServiceKt(options)
    return _credentialService!!
  }

  fun credentialTemplateService(): CredentialTemplateServiceKt {
    if (_credentialTemplateService == null)
        _credentialTemplateService = CredentialTemplateServiceKt(options)
    return _credentialTemplateService!!
  }

  fun providerService(): ProviderServiceKt {
    if (_providerService == null) _providerService = ProviderServiceKt(options)
    return _providerService!!
  }

  fun trustRegistryService(): TrustRegistryServiceKt {
    if (_trustRegistryService == null) _trustRegistryService = TrustRegistryServiceKt(options)
    return _trustRegistryService!!
  }

  fun walletService(): WalletServiceKt {
    if (_walletService == null) _walletService = WalletServiceKt(options)
    return _walletService!!
  }
}
