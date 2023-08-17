import 'package:trinsic_dart/src/connect_service.dart';
import 'package:trinsic_dart/src/service_base.dart';

import 'package:trinsic_dart/trinsic.dart';

class TrinsicService extends ServiceBase {
  AccessManagementService? _accessManagementService;
  ConnectService? _connectService;
  CredentialService? _credentialService;
  FileManagementService? _fileManagementService;
  ProviderService? _providerService;
  TemplateService? _templateService;
  TrustRegistryService? _trustRegistryService;
  WalletService? _walletService;
  TrinsicService(TrinsicOptions? serverOptions) : super(serverOptions);

  AccessManagementService accessManagement() {
    _accessManagementService ??= AccessManagementService(serviceOptions);
    _accessManagementService!.serviceOptions = serviceOptions;
    return _accessManagementService!;
  }

  ConnectService connect() {
    _connectService ??= ConnectService(serviceOptions);
    _connectService!.serviceOptions = serviceOptions;
    return _connectService!;
  }

  CredentialService credential() {
    _credentialService ??= CredentialService(serviceOptions);
    _credentialService!.serviceOptions = serviceOptions;
    return _credentialService!;
  }

  FileManagementService fileManagement() {
    _fileManagementService ??= FileManagementService(serviceOptions);
    _fileManagementService!.serviceOptions = serviceOptions;
    return _fileManagementService!;
  }

  ProviderService provider() {
    _providerService ??= ProviderService(serviceOptions);
    _providerService!.serviceOptions = serviceOptions;
    return _providerService!;
  }

  TemplateService template() {
    _templateService ??= TemplateService(serviceOptions);
    _templateService!.serviceOptions = serviceOptions;
    return _templateService!;
  }

  TrustRegistryService trustRegistry() {
    _trustRegistryService ??= TrustRegistryService(serviceOptions);
    _trustRegistryService!.serviceOptions = serviceOptions;
    return _trustRegistryService!;
  }

  WalletService wallet() {
    _walletService ??= WalletService(serviceOptions);
    _walletService!.serviceOptions = serviceOptions;
    return _walletService!;
  }
}
