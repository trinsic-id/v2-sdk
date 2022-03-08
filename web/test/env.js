const { ServiceOptions } = require("../lib/proto");

export const options = new ServiceOptions()
    .setServerEndpoint("dev-internal.trinsic.cloud")
    .setServerPort(443)
    .setServerUseTls(true);
