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

export function set20SecTimeout() {
  try {
    jasmine.DEFAULT_TIMEOUT_INTERVAL = 20000
  } catch (e) {}
  try {
    jest.setTimeout(20000)
  } catch {}
}