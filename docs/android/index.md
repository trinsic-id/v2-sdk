# Android Sample Application

The Trinsic Android sample application makes it easy to interact with the Trinsic API. The most recent version of the library can be found on Github Maven Packages. You can find the SDKs source on [Github](https://github.com/trinsic-id/sdk/tree/main/java).

## Installation
1. Download the trinsic SDK package (`services-X.X.X.jar`) from the [Github Packages](https://github.com/trinsic-id/sdk/packages/940563).
2. Download the trinsic okapi package (`okapi-X.X.X.jar`) from the [Github Packages](https://github.com/trinsic-id/okapi/packages/919613).
3. Put the jar files into the appropriate folder (`./android/app/libs`) - this allows gradle to package them in, since public anonymous gradle access to Github Maven Packages is not supported.
4. Download the latest [release artifact](https://github.com/trinsic-id/okapi/releases/latest) asset called `libs.zip`
5. Extract it, under `libs/android` you should find folders with the various android device (and emulator) architectures supported.
6. Copy the `libokapi.so` from the corresponding directory to the corresponding architecture directory under `android/app/src/main/jniLibs` - there should be exact folder name matches
7. You should be able to build and run the android application.

<!--Go to the okapi actions latest run, then go to the artifact, and download the android artifact. 

Unzip the android one, this will match the architectures in the file directories.

Will not do m1 native emulators are not supported bc android doens't run on m1. 

Download and extract the libjnidispatch.so - why? it's the native binary we require to do the c function calls. this is how we have to do jni on android. for all the architectures. -->

## Next Steps

Once the SDK is installed and configured, you're ready to start building! We recommend going through the [walkthrough](./drivers-license-android.md) next. If you're ready to dive into building your ecosystem, check out our [API Reference](../reference/index.md)

[Start Walkthrough](./drivers-license-android.md){ .md-button .md-button--primary } [Explore API](../reference/index.md){ .md-button } [Java API Reference](../reference/java/_index.md){ .md-button }
