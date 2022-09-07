import { ServiceBase } from "../src";
import { NodeProvider } from "./NodeProvider";

export * from "../src";

ServiceBase.setProvider(new NodeProvider());
