
const cloudEndpoints = {
    prod: "prod.trinsic.cloud",
    staging: "staging-internal.trinsic.cloud",
    dev: "dev-internal.trinsic.cloud",
};

const schemaEndpoints = {
    prod: "schema.trinsic.cloud",
    staging: "staging-schema.trinsic.cloud",
    dev: "dev-schema.trinsic.cloud",
};

export function getCloudEndpoint(environment: string): string {
    type Key = keyof typeof cloudEndpoints
    return cloudEndpoints[environment as Key];
}

export function getSchemaEndpoint(environment: string): string {
    type Key = keyof typeof schemaEndpoints
    return schemaEndpoints[environment as Key];
}
