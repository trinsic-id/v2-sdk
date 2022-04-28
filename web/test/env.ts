import { ServiceOptions } from "../src";

function isNode(): boolean {
  let node = (typeof process !== 'undefined') && (typeof process.release !== 'undefined') && (process.release.name === 'node')
  console.log("node running=",node)
  return node
}

export function getTestServerOptions(): ServiceOptions {
  let defaults = ServiceOptions.fromPartial({
    serverEndpoint: "staging-internal.trinsic.cloud",
    serverPort: 443,
    serverUseTls: true,
  });
  if (!isNode())
    return defaults

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
