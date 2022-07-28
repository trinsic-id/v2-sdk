import {ServiceBase} from "../src";
import {TrinsicNodeProvider} from "./TrinsicNodeProvider";

export * from '../src'

ServiceBase.setProvider(new TrinsicNodeProvider());