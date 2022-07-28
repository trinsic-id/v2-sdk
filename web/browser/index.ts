import {ServiceBase} from "../src";
import {TrinsicBrowserProvider} from "./TrinsicBrowserProvider";

export * from '../src'

ServiceBase.setProvider(new TrinsicBrowserProvider());