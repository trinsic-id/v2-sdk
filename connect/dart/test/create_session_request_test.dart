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

// tests for CreateSessionRequest
void main() {
  // final instance = CreateSessionRequest();

  group('test CreateSessionRequest', () {
    // Whether to create this Session in Direct mode.                Direct mode is used to execute a verification against a specific identity provider.  Users will not be shown the Connect Widget; therefore, reuse of Connect credentials, selection of an identity provider, and saving a verification for future reuse  are not available to the end user in direct mode.                Sessions created in direct mode must be created with a `RedirectUrl` specified, and cannot be invoked using the frontend SDK at this time.
    // bool direct
    test('to test the property `direct`', () async {
      // TODO
    });

    // The URL to redirect to after the user has completed the identity verification process.                If `Direct` is set to `true`, this field is required.
    // String redirectUrl
    test('to test the property `redirectUrl`', () async {
      // TODO
    });

    // The list of allowed identity providers. If not specified, all available providers will be allowed.                If `Direct` is `true`, this field must be set, and must have only a single entry.  If `Direct` is not specified or is `false`, this field may have any number of entries.
    // List<String> providers (default value: const [])
    test('to test the property `providers`', () async {
      // TODO
    });

    // Specific identity attributes to request. If not provided, all available attributes will be requested.
    // DisclosedFieldsRequest disclosedFields
    test('to test the property `disclosedFields`', () async {
      // TODO
    });
  });
}
