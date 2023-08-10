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

        self._access_management: AccessManagementService = AccessManagementService(
            server_config=self._channel
        )
        self._credential: CredentialService = CredentialService(
            server_config=self._channel
        )
        self._file_management: FileManagementService = FileManagementService(
            server_config=self._channel
        )
        self._template: TemplateService = TemplateService(server_config=self._channel)
        self._provider: ProviderService = ProviderService(server_config=self._channel)
        self._trust_registry: TrustRegistryService = TrustRegistryService(
            server_config=self._channel
        )
        self._wallet: WalletService = WalletService(server_config=self._channel)

    def __del__(self):
        self.close()

    def close(self):
        self._access_management.close()
        self._credential.close()
        self._file_management.close()
        self._template.close()
        self._provider.close()
        self._trust_registry.close()
        self._wallet.close()
        super().close()

    @property
    def access_management(self) -> AccessManagementService:
        self._access_management.service_options = self.service_options
        return self._access_management

    @property
    def credential(self) -> CredentialService:
        self._credential.service_options = self.service_options
        return self._credential

    @property
    def file_management(self) -> FileManagementService:
        self._file_management.service_options = self.service_options
        return self._file_management

    @property
    def template(self) -> TemplateService:
        self._template.service_options = self.service_options
        return self._template

    @property
    def provider(self) -> ProviderService:
        self._provider.service_options = self.service_options
        return self._provider

    @property
    def trust_registry(self) -> TrustRegistryService:
        self._trust_registry.service_options = self.service_options
        return self._trust_registry

    @property
    def wallet(self) -> WalletService:
        self._wallet.service_options = self.service_options
        return self._wallet
