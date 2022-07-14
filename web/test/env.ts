import { ServiceOptions } from "../src";

export function getTestServerOptions(): ServiceOptions {
  let defaults = ServiceOptions.fromPartial({
    serverEndpoint: "staging-internal.trinsic.cloud",
    serverPort: 443,
    serverUseTls: true,
  });
  return defaults;
}

export function setTestTimeout(timeoutMs: number = 20000) {
  if (typeof jasmine !== "undefined")
    jasmine.DEFAULT_TIMEOUT_INTERVAL = timeoutMs;
  if (typeof jest !== "undefined") jest.setTimeout(timeoutMs);
}
