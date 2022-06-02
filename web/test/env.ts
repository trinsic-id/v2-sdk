import { ServiceOptions } from "../src";
import ServiceBase from "../src/ServiceBase";

export function getTestServerOptions(): ServiceOptions {
  let defaults = ServiceOptions.fromPartial({
    serverEndpoint: "dev-internal.trinsic.cloud",
    serverPort: 443,
    serverUseTls: true,
  });
  if (!ServiceBase.isNode())
    return defaults

  // Use environment variables for which node transport protocol we need
  const useNodeHttp = (process.env.TEST_SERVER_NODE_PROTOCOL || "false") == "true";
  ServiceBase.useNodeHttpTransport = useNodeHttp;

  const endpoint =
      process.env.TEST_SERVER_ENDPOINT || defaults.serverEndpoint;
  const port: number = +(process.env.TEST_SERVER_PORT || defaults.serverPort);
  const useTls = (process.env.TEST_SERVER_USE_TLS || defaults.serverUseTls) != "false";

  return ServiceOptions.fromPartial({
    serverEndpoint: endpoint,
    serverPort: port,
    serverUseTls: useTls,
  });
}

export function setTestTimeout(timeoutMs: number = 20000) {
  if (typeof jasmine !== "undefined")
    jasmine.DEFAULT_TIMEOUT_INTERVAL = timeoutMs
  if (typeof jest !== "undefined")
    jest.setTimeout(timeoutMs)
}