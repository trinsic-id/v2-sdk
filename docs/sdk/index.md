---
hide:
  - toc
---

# Tools and API access

Our API exposes all endpoints using a gRPC interface. We provide SDKs for access to our endpoints for all platforms. Check the individual pages for details on installing the packages on your platform.

All endpoints, request and response messages and their fields are identical for all platforms, though casing may differ depending on what is ideomatic for that language.

## Bring your own SDK

If you'd like to generate your own SDK from the proto files, you can find them in our [GitHub repository](https://github.com/trinsic-id/sdk/tree/main/proto) or the [Buf Schema Registry](https://buf.build/trinsic/services). We support gRPC and gRPC-web modes.

### Making authenticated requests

To make authenticated requests with your generated code, make sure to set the `Authorization` header with a value equal to `Bearer <YOUR AUTH TOKEN>`. In gRPC tooling, this is usually refered as [Metadata](https://github.com/grpc/grpc-go/blob/master/Documentation/grpc-metadata.md).
