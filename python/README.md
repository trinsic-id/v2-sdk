# Python SDK

## Known Issues
* Python `asyncio` event loop closed bug: https://bugs.python.org/issue36709 emits output like this:
```diff
- RuntimeError: Event loop is closed
- Fatal error on SSL transport
- protocol: <asyncio.sslproto.SSLProtocol object at 0x0000018C2D5ACA30>
- transport: <_ProactorSocketTransport fd=-1 read=<_OverlappedFuture cancelled>>
```