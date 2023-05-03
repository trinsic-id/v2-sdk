from trinsic.access_management_service import AccessManagementService
from trinsic.credential_service import CredentialService
from trinsic.file_management_service import FileManagementService
from trinsic.proto.sdk.options.v1 import TrinsicOptions
from trinsic.provider_service import ProviderService

from trinsic.service_base import ServiceBase
from trinsic.template_service import TemplateService
from trinsic.trustregistry_service import TrustRegistryService
from trinsic.wallet_service import WalletService


class TrinsicService(ServiceBase):
    def __init__(
        self,
        *,
        server_config: TrinsicOptions = None,
    ):
        super().__init__(server_config)

        self._access_management: AccessManagementService = None
        self._credential: CredentialService = None
        self._file_management: FileManagementService = None
        self._template: TemplateService = None
        self._provider: ProviderService = None
        self._trust_registry: TrustRegistryService = None
        self._wallet: WalletService = None

    def close(self):
        # TODO - Channel management
        self.credential.close()
        self.file_management.close()
        self.template.close()
        self.provider.close()
        self.trust_registry.close()
        self.wallet.close()

    @property
    def access_management(self) -> AccessManagementService:
        self._access_management = self._access_management or AccessManagementService(server_config=self.service_options)
        self._access_management.service_options = self.service_options
        return self._access_management

    @property
    def credential(self) -> CredentialService:
        self._credential = self._credential or CredentialService(server_config=self.service_options)
        self._credential.service_options = self.service_options
        return self._credential

    @property
    def file_management(self) -> FileManagementService:
        self._file_management = self._file_management or FileManagementService(server_config=self.service_options)
        self._file_management.service_options = self.service_options
        return self._file_management

    @property
    def template(self) -> TemplateService:
        self._template = self._template or TemplateService(server_config=self.service_options)
        self._template.service_options = self.service_options
        return self._template

    @property
    def provider(self) -> ProviderService:
        self._provider = self._provider or ProviderService(server_config=self.service_options)
        self._provider.service_options = self.service_options
        return self._provider

    @property
    def trust_registry(self) -> TrustRegistryService:
        self._trust_registry = self._trust_registry or TrustRegistryService(server_config=self.service_options)
        self._trust_registry.service_options = self.service_options
        return self._trust_registry

    @property
    def wallet(self) -> WalletService:
        self._wallet = self._wallet or WalletService(server_config=self.service_options)
        self._wallet.service_options = self.service_options
        return self._wallet
