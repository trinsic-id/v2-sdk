import 'package:trinsic_dart/src/account_service.dart';
import 'package:trinsic_dart/src/proto/sdk/options/v1/options.pb.dart';
import 'package:trinsic_dart/src/service_base.dart';
import 'package:trinsic_dart/trinsic.dart';

class TrinsicService extends ServiceBase {
  AccountService? _accountService;
  CredentialService? _credentialService;
  ProviderService? _providerService;
  TemplateService? _templateService;
  TrustRegistryService? _trustRegistryService;
  WalletService? _walletService;
  TrinsicService(ServiceOptions? serverOptions) : super(serverOptions) {}

  AccountService account() {
    _accountService ??= AccountService(serviceOptions);
    _accountService?.serviceOptions = serviceOptions;
    return _accountService!;
  }

  CredentialService credential() {
    _credentialService ??= CredentialService(serviceOptions);
    _credentialService?.serviceOptions = serviceOptions;
    return _credentialService!;
  }

  ProviderService provider() {
    _providerService ??= ProviderService(serviceOptions);
    _providerService?.serviceOptions = serviceOptions;
    return _providerService!;
  }

  TemplateService template() {
    _templateService ??= TemplateService(serviceOptions);
    _templateService?.serviceOptions = serviceOptions;
    return _templateService!;
  }

  TrustRegistryService trustRegistry() {
    _trustRegistryService ??= TrustRegistryService(serviceOptions);
    _trustRegistryService?.serviceOptions = serviceOptions;
    return _trustRegistryService!;
  }

  WalletService wallet() {
    _walletService ??= WalletService(serviceOptions);
    _walletService?.serviceOptions = serviceOptions;
    return _walletService!;
  }
}
