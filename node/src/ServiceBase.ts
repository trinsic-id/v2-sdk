import {ChannelCredentials, Metadata} from "@grpc/grpc-js";
import {AccountProfile, Nonce, ServiceOptions} from "./proto/";
import {Message} from "google-protobuf";
import base64url from "base64url";
import {Blake3HashRequest, CreateOberonProofRequest, Hashing, Oberon} from "@trinsic/okapi";

export default abstract class ServiceBase {
    options: ServiceOptions;
    channelCredentials: ChannelCredentials;
    address: string;

    protected constructor(options: ServiceOptions = new ServiceOptions()) {
        options.setServerEndpoint(options.getServerEndpoint() || "prod.trinsic.cloud")
            .setServerPort(options.getServerPort() || 443)
            .setServerUseTls(options.getServerPort() == 443 ? true : options.getServerUseTls())
            .setDefaultEcosystem(options.getDefaultEcosystem() || "default");

        this.options = options;

        this.address = `${this.options.getServerEndpoint()}:${this.options.getServerPort()}`;
        this.channelCredentials = this.options.getServerUseTls()
            ? ChannelCredentials.createSsl()
            : ChannelCredentials.createInsecure();
    }

    async getMetadata(request: Message): Promise<Metadata> {
        if (!this.options.getAuthToken()) {
            throw new Error("auth token must be set");
        }

        const profile = AccountProfile.deserializeBinary(Buffer.from(this.options.getAuthToken(), 'base64url'));

        if (profile.getProtection()?.getEnabled()) {
            throw new Error("profile is protected; you must use security code to remove the protection first");
        }

        let requestData = request.serializeBinary();
        let requestHash: Buffer | string = Buffer.from('');

        if (requestData.length > 0) {
            let hashResponse = await Hashing.blake3Hash(new Blake3HashRequest()
                .setData(requestData));
            requestHash = Buffer.from(hashResponse.getDigest_asU8());
        }
        const timestamp = Date.now();

        let nonce = new Nonce().setTimestamp(timestamp).setRequestHash(requestHash);

        let proof = await Oberon.createProof(
            new CreateOberonProofRequest()
                .setNonce(nonce.serializeBinary())
                .setData(profile.getAuthData())
                .setToken(profile.getAuthToken())
        );

        const metadata = new Metadata();
        metadata.add(
            "authorization",
            `Oberon ` +
            `ver=1,` +
            `proof=${base64url.encode(Buffer.from(proof.getProof_asU8()))},` +
            `data=${base64url.encode(Buffer.from(profile.getAuthData_asU8()))},` +
            `nonce=${base64url.encode(Buffer.from(nonce.serializeBinary()))}`
        );

        return metadata;
    }
}
