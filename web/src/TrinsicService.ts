import ServiceBase from "./ServiceBase";
import {ServiceOptions} from "./proto/sdk/options/v1/options";
import {AccountService} from "./AccountService";
import {CredentialService} from "./CredentialService";
import {TemplateService} from "./TemplateService";
import {ProviderService} from "./ProviderService";
import {TrustRegistryService} from "./TrustRegistryService";
import {WalletService} from "./WalletService";


export class TrinsicService extends ServiceBase {
  private _account: AccountService | undefined;
  private _credential: CredentialService | undefined;
  private _provider: ProviderService | undefined;
  private _template: TemplateService | undefined;
  private _trustRegistry: TrustRegistryService | undefined;
  private _wallet: WalletService | undefined;

  constructor(options?: ServiceOptions) {
    super(options);
  }

  public account(): AccountService {
      this._account =
        this._account || new AccountService(this.options);
      return this._account!;
  }

    public credential(): CredentialService {
        this._credential =
            this._credential || new CredentialService(this.options);
        return this._credential!;
    }

    public provider(): ProviderService {
        this._provider =
            this._provider || new ProviderService(this.options);
        return this._provider!;
    }

    public template(): TemplateService {
        this._template =
            this._template || new TemplateService(this.options);
        return this._template!;
    }

    public trustRegistry(): TrustRegistryService {
        this._trustRegistry =
            this._trustRegistry || new TrustRegistryService(this.options);
        return this._trustRegistry!;
    }

    public wallet(): WalletService {
        this._wallet =
            this._wallet || new WalletService(this.options);
        return this._wallet!;
    }
}