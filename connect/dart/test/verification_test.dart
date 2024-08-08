//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:TrinsicConnect/api.dart';
import 'package:test/test.dart';

// tests for Verification
void main() {
  // final instance = Verification();

  group('test Verification', () {
    // The ID of the Verification within the Session
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // VerificationState state
    test('to test the property `state`', () async {
      // TODO
    });

    // If the Verification is in state `VerificationFailed`, this field contains the reason for failure
    // VerificationFailCode failCode
    test('to test the property `failCode`', () async {
      // TODO
    });

    // Whether the Verification was completed by reusing a Trinsic Connect identity credential (`true`) or via a fresh verification (`false`)
    // bool reused
    test('to test the property `reused`', () async {
      // TODO
    });

    // The unix timestamp, in seconds, when this Verification's state last changed
    // int updated
    test('to test the property `updated`', () async {
      // TODO
    });

    // The fields that were requested to be disclosed when the Session for this Verification was created
    // DisclosedFields disclosedFields
    test('to test the property `disclosedFields`', () async {
      // TODO
    });

    // The results of the Verification. Only present if the Session's `state` is `IdvSuccess`.
    // IdentityData identityData
    test('to test the property `identityData`', () async {
      // TODO
    });
  });
}
