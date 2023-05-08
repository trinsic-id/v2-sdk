# The Trinsic Dart SDK
The Trinsic Dart SDK makes it easy to interact with the Trinsic API from your Dart/Flutter application. The most recent version of the library can be found on [pub.dev](https://pub.dev/packages/trinsic_dart). You can also find the SDKs source on [Github](https://github.com/trinsic-id/sdk/dart).


!!! note "Supported runtimes"
    Flutter targets (Windows, MacOS, iOS, Android, Web) are supported natively with the Dart SDK. [A sample application is here](https://github.com/trinsic-id/sdk-examples/tree/main/trinsic_flutter)

## Installation in a new project

Add the required dependency to your Dart/Flutter `pubspec.yaml`

=== "Dart"
    ```bash
    dart pub add trinsic_dart
    ```
=== "Flutter"
    ```bash
    flutter pub add trinsic_dart
    ```


Alternatively, you can simply instantiate this service with or without parameters

```dart
import 'package:trinsic_dart/trinsic.dart';
// ...
var trinsicService = TrinsicService(null);
// Or, if you have an auth token
var trinsicService = TrinsicService(trinsicConfig(authToken: "<auth_token>"));
```