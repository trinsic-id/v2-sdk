import {ServiceBase} from "../src";
import {TrinsicWebProvider} from "./TrinsicWebProvider";

ServiceBase.setProvider(new TrinsicWebProvider());
export * from "../src";