
export interface ITokenProvider {
    getDefault(): Promise<string>
    get(name: string): Promise<string>
    save(authToken: string, name: string): Promise<void>
    saveDefault(authToken: string): Promise<void>
}

export class MemoryTokenProvider implements ITokenProvider {
    tokens: {[name: string]: string} = {};

    private constructor() {
    }

    private static _instance = new MemoryTokenProvider();
    public static DefaultInstance(): ITokenProvider {
        return MemoryTokenProvider._instance;
    }

    async get(name: string): Promise<string> {
        return Promise.resolve(this.tokens[name]);
    }

    async getDefault(): Promise<string> {
        return Promise.resolve(await this.get("Trinsic"));
    }

    async save(authToken: string, name: string): Promise<void> {
        this.tokens[name] = authToken;
        return Promise.resolve();
    }

    async saveDefault(authToken: string): Promise<void> {
        return this.save(authToken, "Trinsic");
    }
}