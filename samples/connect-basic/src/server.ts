import express from "express";
import { Express, Request, Response } from "express";
import "dotenv/config";
import {
    TrinsicOptions,
    TrinsicService
} from "@trinsic/trinsic";

//-----------------
const app: Express = express();
const port = 8000;
const trinsic = new TrinsicService({ serverEndpoint: "dev-internal.trinsic.cloud", serverPort: 443, serverUseTls: true });
const connect = trinsic.connect()

//-----------------
app.get("/connect_init", async (req: Request, res: Response) => {
    // TODO: Create a connection invitation
    // TODO: Return the connection invitation as JSON
});

//-----------------
app.listen(port, () => {
    console.log(`⚡️[server]: Server is running at https://localhost:${port}`);
});
