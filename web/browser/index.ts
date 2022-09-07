import { ServiceBase } from "../src";
import { BrowserProvider } from "./BrowserProvider";

export * from "../src";

ServiceBase.setProvider(new BrowserProvider());
