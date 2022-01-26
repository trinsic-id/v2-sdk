# The Trinsic  Java / Android SDK

The Trinsic Java / Android SDK makes it easy to interact with the Trinsic API from any Java application, including Android apps. The most recent version of the library can be found on Github Maven Packages. You can find the SDKs source on [Github](https://github.com/trinsic-id/sdk/tree/main/java).

## Installation
1. Install the Trinsic SDK package from the [Github Packages](https://github.com/trinsic-id/sdk/packages/940563) <!-- not clear what package I need to download. It looks like just the CLI packages are published here. -->

Go to the okapi actions latest run, then go to the artifact, and download the android artifact. 

Unzip the android one, this will match the architectures in the file directories.

Will not do m1 native emulators are not supported bc android doens't run on m1. 

Download and extract the libjnidispatch.so - why? it's the native binary we require to do the c function calls. this is how we have to do jni on android. for all the architectures. 



## Configuration
1. Download the Trinsic Okapi binaries for your platform: [Downloading necessary Binaries](https://github.com/trinsic-id/sdk-examples/tree/main/android/app/src/main/jniLibs) <!-- What platform do you mean - the one for my computer where I'll be running an emulator or the one for android? How do I figure out what architecture my platform is? when I follow this link -->

2. Go here and [download the latest release](https://github.com/trinsic-id/sdk/releases/latest)
3. You need to ensure that you have the Trinsic Okapi native binaries in the appropriate location.
4. By default, the location is current path.

## Next Steps

Once the SDK is installed and configured, you're ready to start building! We recommend going through the [walkthrough](./drivers-license-android.md) next. If you're ready to dive into building your ecosystem, check out our [API Reference](../reference/index.md)

[Start Walkthrough](./drivers-license-android.md){ .md-button .md-button--primary } [Explore API](../reference/index.md){ .md-button } [Java API Reference](../reference/java/_index.md){ .md-button }
