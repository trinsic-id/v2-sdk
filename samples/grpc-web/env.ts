import {TrinsicOptions} from "@trinsic/trinsic";

export function getTestServerOptions(host?: string): TrinsicOptions {
    if (!host) {
        let testEnv = "staging";
        try {
            // @ts-ignore
            testEnv = __karma__.config.trinsic_environment.toLowerCase();
        } catch (e) {
            // @ts-ignore
            testEnv = process.env.trinsic_environment;
        }
        let host = "staging-internal.trinsic.cloud";
        if (testEnv.startsWith("dev"))
            host = "dev-internal.trinsic.cloud";
        if (testEnv.startsWith("prod"))
            host = "prod.trinsic.cloud";

        console.log(`Provided environment:${testEnv} -> server endpoint:${host}`);
    }

    return TrinsicOptions.fromPartial({
        serverEndpoint: host,
        serverPort: 443,
        serverUseTls: true,
    });
}

export function setTestTimeout(timeoutMs: number = 40000) {
    if (typeof jasmine !== "undefined")
        jasmine.DEFAULT_TIMEOUT_INTERVAL = timeoutMs;
    if (typeof jest !== "undefined") jest.setTimeout(timeoutMs);
}

export function myEcosystemIdOrName(): string {
    return "default";
}
