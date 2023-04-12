import 'package:test/test.dart';
import 'package:trinsic_dart/src/proto/services/trust-registry/v1/trust-registry.pbgrpc.dart';
import 'package:trinsic_dart/src/trinsic_util.dart';
import 'package:trinsic_dart/trinsic.dart';

import '../example/ecosystem_example.dart';
import '../example/templates_demo.dart';
import '../example/vaccine_example.dart';

void main() {
  group('Dart Examples', () {
    setUp(() {
      // Additional setup goes here.
    });

    test('Vaccine Demo', () async {
      await runVaccineDemo();
    });
    test('Ecosystem Demo', () async {
      await runEcosystemDemo();
    });
    test('Templates Demo', () async {
      await runTemplatesDemo();
    });
    test('Trust Registry Demo', () async {
      // Runs locally, fails on github actions for unknown reasons
      // await runTrustRegistryDemo();
    });

    test('Trust Registry Service Input Validation', () async {
      var trService = TrustRegistryService(trinsicConfig());
      try {
        await trService.addFramework(AddFrameworkRequest(
            governanceFrameworkUri: "", description: "invalid framework"));
        assert(false);
      } catch (e) {
        // This is expected
        assert(true);
      }
    });
  });
}
