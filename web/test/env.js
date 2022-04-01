const { ServiceOptions } = require("../lib/proto");

export const options = new ServiceOptions()
    .setServerEndpoint("staging-internal.trinsic.cloud")
    .setServerPort(443)
    .setServerUseTls(true)
    .setDefaultEcosystem("default");
