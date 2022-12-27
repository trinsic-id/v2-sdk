import {ServiceOptions} from "@trinsic/trinsic/browser";

export function getTestServerOptions(): ServiceOptions {
    // @ts-ignore
    const testEnv = __karma__.config.trinsic_environment.toLowerCase();
    let serverEndpoint = "staging-internal.trinsic.cloud";
    if (testEnv.startsWith("dev"))
        serverEndpoint = "dev-internal.trinsic.cloud";
    if (testEnv.startsWith("prod"))
        serverEndpoint = "prod.trinsic.cloud";

    console.log(`Provided environment:${testEnv} -> server endpoint:${serverEndpoint}`);

    let defaults = ServiceOptions.fromPartial({
        serverEndpoint: serverEndpoint,
        serverPort: 443,
        serverUseTls: true,
    });
    return defaults;
}

export function setTestTimeout(timeoutMs: number = 40000) {
    if (typeof jasmine !== "undefined")
        jasmine.DEFAULT_TIMEOUT_INTERVAL = timeoutMs;
    if (typeof jest !== "undefined") jest.setTimeout(timeoutMs);
}

export function myEcosystemIdOrName(): string {
    return "default";
}
