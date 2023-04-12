import { ServiceBase } from "../src";
import { NodeProvider } from "./NodeProvider";

export * from "../src";

ServiceBase.platform = new NodeProvider();
