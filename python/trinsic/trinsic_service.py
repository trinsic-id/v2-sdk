from functools import cached_property

from trinsic.account_service import AccountService
from trinsic.credential_service import CredentialService
from trinsic.provider_service import ProviderService
from trinsic.template_service import TemplateService
from trinsic.trustregistry_service import TrustRegistryService
from trinsic.wallet_service import WalletService
from trinsic.proto.sdk.options.v1 import ServiceOptions
from trinsic.service_base import ServiceBase


class TrinsicService(ServiceBase):
    def __init__(
        self,
        server_config: ServiceOptions = None,
    ):
        super().__init__(server_config)

    @cached_property
    def account(self) -> AccountService:
        return AccountService(self.service_options)

    @cached_property
    def credential(self) -> CredentialService:
        return CredentialService(server_config=self.service_options)

    @cached_property
    def template(self) -> TemplateService:
        return TemplateService(server_config=self.service_options)

    @cached_property
    def provider(self) -> ProviderService:
        return ProviderService(server_config=self.service_options)

    @cached_property
    def trust_registry(self) -> TrustRegistryService:
        return TrustRegistryService(server_config=self.service_options)

    @cached_property
    def wallet(self) -> WalletService:
        return WalletService(server_config=self.service_options)
