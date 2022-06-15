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
    return _accountService!;
  }

  CredentialService credential() {
    _credentialService ??= CredentialService(serviceOptions);
    return _credentialService!;
  }

  ProviderService provider() {
    _providerService ??= ProviderService(serviceOptions);
    return _providerService!;
  }

  TemplateService template() {
    _templateService ??= TemplateService(serviceOptions);
    return _templateService!;
  }

  TrustRegistryService trustRegistry() {
    _trustRegistryService ??= TrustRegistryService(serviceOptions);
    return _trustRegistryService!;
  }

  WalletService wallet() {
    _walletService ??= WalletService(serviceOptions);
    return _walletService!;
  }
}
