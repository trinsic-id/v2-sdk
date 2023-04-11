import ServiceBase from "./ServiceBase";
import { TrinsicOptions } from "./proto/sdk/options/v1/options";
import { CredentialService } from "./CredentialService";
import { TemplateService } from "./TemplateService";
import { ProviderService } from "./ProviderService";
import { TrustRegistryService } from "./TrustRegistryService";
import { WalletService } from "./WalletService";
import { AccessManagementService } from "./AccessManagementService";
import { FileManagementService } from "./FileManagementService";

export class TrinsicService extends ServiceBase {
    private _access: AccessManagementService | undefined;
    private _credential: CredentialService | undefined;
    private _fileManagement: FileManagementService | undefined;
    private _provider: ProviderService | undefined;
    private _template: TemplateService | undefined;
    private _trustRegistry: TrustRegistryService | undefined;
    private _wallet: WalletService | undefined;

    constructor(options?: TrinsicOptions) {
        super(options);
    }

    public access(): AccessManagementService {
        this._access =
            this._access || new AccessManagementService(this.options);
        this._access.options = this.options;
        return this._access!;
    }

    public credential(): CredentialService {
        this._credential =
            this._credential || new CredentialService(this.options);
        this._credential.options = this.options;
        return this._credential!;
    }

    public fileManagement(): FileManagementService {
        this._fileManagement =
            this._fileManagement || new FileManagementService(this.options);
        this._fileManagement.options = this.options;
        return this._fileManagement!;
    }

    public provider(): ProviderService {
        this._provider = this._provider || new ProviderService(this.options);
        this._provider.options = this.options;
        return this._provider!;
    }

    public template(): TemplateService {
        this._template = this._template || new TemplateService(this.options);
        this._template.options = this.options;
        return this._template!;
    }

    public trustRegistry(): TrustRegistryService {
        this._trustRegistry =
            this._trustRegistry || new TrustRegistryService(this.options);
        this._trustRegistry.options = this.options;
        return this._trustRegistry!;
    }

    public wallet(): WalletService {
        this._wallet = this._wallet || new WalletService(this.options);
        this._wallet.options = this.options;
        return this._wallet!;
    }
}
