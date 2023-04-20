# The Trinsic Java / Kotlin SDK

The Trinsic Java / Kotlin SDK makes it easy to interact with the Trinsic API from any Java (or Kotlin) application. The most recent version of the package is found on the [Github Release](https://github.com/trinsic-id/sdk/releases). You can find the SDKs source on [Github](https://github.com/trinsic-id/sdk/tree/main/java).

## Installation
1. Add the `urlFile` code shown below to your `build.gradle`.
2. Add the implementations as shown below to your `build.gradle`.
3. Run `gradle build` to download the required jar files. This can take some time.

## Configuration

!!! note Jar Download Note

    If you want to include the required Trinsic `.jar` file in your own application (android or other java), be sure to copy the following lines. They allow you to specify a remote file location as a gradle `implementation` target as shown below:

<!--codeinclude-->
```java
[urlFile Sample](../../java/build.gradle) inside_block:urlFileSample
```
<!--/codeinclude-->

```java
dependencies {
    implementation urlFile('https://github.com/trinsic-id/sdk/releases/download/v1.10.0/trinsic-services-1.10.0.jar', 'trinsic-services-1.10.0')
}
```

