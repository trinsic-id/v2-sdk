const { ServerConfig } = require("../lib/proto");

export const config = new ServerConfig().setEndpoint("staging-internal.trinsic.cloud").setPort(443).setUseTls(true);
