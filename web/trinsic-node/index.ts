import {ServiceBase} from "../src";
import {TrinsicNodeProvider} from "./TrinsicNodeProvider";

ServiceBase.setProvider(new TrinsicNodeProvider());
export * from "../src";