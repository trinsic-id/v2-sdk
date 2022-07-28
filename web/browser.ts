import {ServiceBase} from "./src";
import {BrowserProvider} from "./browser/BrowserProvider";

export * from './src'

ServiceBase.setProvider(new BrowserProvider());