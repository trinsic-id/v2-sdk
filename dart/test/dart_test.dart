import 'package:test/test.dart';
import '../example/vaccine_example.dart';
import '../example/ecosystem_example.dart';

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
  });
}
