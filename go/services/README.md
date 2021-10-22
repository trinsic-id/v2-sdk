1. To find the latest binary packages, go to the [output of the action](https://github.com/trinsic-id/okapi/actions/workflows/build-libs.yml)
2. Click on the latest successful run, scroll down
3. Download appropriate output file
4. Unpack `okapi.h` and appropriate binaries into the `/sdk/go/services`directory
5. Set the following environment variables so that okapi will compile:
   1. `CGO_LDFLAGS=-L[path to repo]/go/services`
   2. `CGO_CFLAGS=-I[path to repo]/go/services`