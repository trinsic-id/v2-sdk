import ServiceBase from "./ServiceBase";
import {
  DebuggingDefinition,
  ServiceOptions,
} from "./proto";

import type { Client as BrowserClient } from "nice-grpc-web";

export class DebugService extends ServiceBase {
  client: BrowserClient<typeof DebuggingDefinition>;

  constructor(options?: ServiceOptions) {
    super(options);

    this.client = this.createClient(DebuggingDefinition);
  }

// BEGIN Code generated by protoc-gen-trinsic. DO NOT EDIT.
// target: C:\work\sdk\web\src\DebugService.ts

  public async callEmpty(
    request: Empty
  ): Promise<Empty> {
    return this.client.callEmpty(request, {
      metadata: await this.buildMetadata(Empty.encode(request).finish())
    });
  }
  public async callEmptyAuth(
    request: Empty
  ): Promise<Empty> {
    return this.client.callEmptyAuth(request, {
      metadata: await this.buildMetadata(Empty.encode(request).finish())
    });
  }
// END Code generated by protoc-gen-trinsic. DO NOT EDIT.
}