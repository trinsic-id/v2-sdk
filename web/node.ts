import {ServiceBase} from "./src";
import {NodeProvider} from "./node/NodeProvider";

export * from './src'

ServiceBase.setProvider(new NodeProvider());