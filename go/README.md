* If you run into the cannot find `okapi.h` error:
* Download the latest header and OS (Linux, MacOS, Windows-GNU) artifact from here:
 * https://github.com/trinsic-id/okapi/actions/workflows/build-libs.yml
* Download the `C_header` artifact, which contains `okapi.h`.
* Put `okapi.h`, (`libokapi.dll.a`, `libokapi.so`, `libokapi.dylib`, `libokapi.a`), (and possibly `okapi.dll`) in the go package folder:
 * `go\pkg\mod\github.com\trinsic-id\okapi\go@v0.0.0-[20210914150428-2179b232f2ce]\okapi`
* Recompile
