package trinsic.services

import trinsic.sdk.options.v1.Options

class TrinsicServiceKt @JvmOverloads constructor(options: Options.ServiceOptions.Builder? = null) :
    ServiceBase(options) {
  private var _accountService: AccountServiceKt? = null
  private var _credentialService: CredentialServiceKt? = null
  private var _credentialTemplateService: CredentialTemplateServiceKt? = null
  private var _providerService: ProviderServiceKt? = null
  private var _trustRegistryService: TrustRegistryServiceKt? = null
  private var _walletService: WalletServiceKt? = null
  fun account(): AccountServiceKt {
    if (_accountService == null) _accountService = AccountServiceKt(optionsBuilder)
    return _accountService!!
  }

  fun credential(): CredentialServiceKt {
    if (_credentialService == null) _credentialService = CredentialServiceKt(optionsBuilder)
    return _credentialService!!
  }

  fun template(): CredentialTemplateServiceKt {
    if (_credentialTemplateService == null)
        _credentialTemplateService = CredentialTemplateServiceKt(optionsBuilder)
    return _credentialTemplateService!!
  }

  fun provider(): ProviderServiceKt {
    if (_providerService == null) _providerService = ProviderServiceKt(optionsBuilder)
    return _providerService!!
  }

  fun trustRegistry(): TrustRegistryServiceKt {
    if (_trustRegistryService == null) _trustRegistryService = TrustRegistryServiceKt(optionsBuilder)
    return _trustRegistryService!!
  }

  fun wallet(): WalletServiceKt {
    if (_walletService == null) _walletService = WalletServiceKt(optionsBuilder)
    return _walletService!!
  }
}
