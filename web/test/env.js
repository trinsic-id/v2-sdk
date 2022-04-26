const { ServiceOptions } = require("../lib/proto");

export const options = ServiceOptions.fromPartial({serverEndpoint: "staging-internal.trinsic.cloud",
    serverPort: 443, serverUseTls: true})
