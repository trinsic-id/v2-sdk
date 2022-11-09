import 'package:trinsic_dart/src/proto/sdk/options/v1/options.pb.dart';
import 'package:trinsic_dart/src/service_base.dart';
import 'package:trinsic_dart/src/storage/token_provider.dart';
import 'package:trinsic_dart/trinsic.dart';

class TrinsicService extends ServiceBase {
  AccessManagementService? _accessManagementService;
  AccountService? _accountService;
  CredentialService? _credentialService;
  ProviderService? _providerService;
  TemplateService? _templateService;
  TrustRegistryService? _trustRegistryService;
  WalletService? _walletService;
  TrinsicService(ServiceOptions? serverOptions, ITokenProvider? provider)
      : super(serverOptions, provider) {}

  AccessManagementService accessManagement() {
    _accessManagementService ??= AccessManagementService(serviceOptions, tokenProvider);
    return _accessManagementService!;
  }

  AccountService account() {
    _accountService ??= AccountService(serviceOptions, tokenProvider);
    return _accountService!;
  }

  CredentialService credential() {
    _credentialService ??= CredentialService(serviceOptions, tokenProvider);
    return _credentialService!;
  }

  ProviderService provider() {
    _providerService ??= ProviderService(serviceOptions, tokenProvider);
    return _providerService!;
  }

  TemplateService template() {
    _templateService ??= TemplateService(serviceOptions, tokenProvider);
    return _templateService!;
  }

  TrustRegistryService trustRegistry() {
    _trustRegistryService ??=
        TrustRegistryService(serviceOptions, tokenProvider);
    return _trustRegistryService!;
  }

  WalletService wallet() {
    _walletService ??= WalletService(serviceOptions, tokenProvider);
    return _walletService!;
  }
}
