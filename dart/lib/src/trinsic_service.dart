import 'package:trinsic_dart/src/proto/sdk/options/v1/options.pb.dart';
import 'package:trinsic_dart/src/service_base.dart';

import 'package:trinsic_dart/trinsic.dart';

class TrinsicService extends ServiceBase {
  AccessManagementService? _accessManagementService;
  CredentialService? _credentialService;
  FileManagementService? _fileManagementService;
  ProviderService? _providerService;
  TemplateService? _templateService;
  TrustRegistryService? _trustRegistryService;
  WalletService? _walletService;
  TrinsicService(TrinsicOptions? serverOptions)
      : super(serverOptions);

  AccessManagementService accessManagement() {
    _accessManagementService ??=
        AccessManagementService(serviceOptions);
    return _accessManagementService!;
  }

  CredentialService credential() {
    _credentialService ??= CredentialService(serviceOptions);
    return _credentialService!;
  }

  FileManagementService fileManagement() {
    _fileManagementService ??=
        FileManagementService(serviceOptions);
    return _fileManagementService!;
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
    _trustRegistryService ??=
        TrustRegistryService(serviceOptions);
    return _trustRegistryService!;
  }

  WalletService wallet() {
    _walletService ??= WalletService(serviceOptions);
    return _walletService!;
  }
}
