//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ExchangeTokenResponse {
  /// Returns a new [ExchangeTokenResponse] instance.
  ExchangeTokenResponse({
    required this.sessionId,
    required this.state,
    this.failCode,
    this.identityData,
  });

  /// The ID of the `VerificationSession` in question
  String sessionId;

  /// The `VerificationSession`'s current state
  VerificationSessionState state;

  /// If the `VerificationSession` failed, contains the reason why
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  VerificationFailCode? failCode;

  /// The verified identity data, if the `VerificationSession` was successful
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  IdentityData? identityData;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ExchangeTokenResponse &&
          other.sessionId == sessionId &&
          other.state == state &&
          other.failCode == failCode &&
          other.identityData == identityData;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (sessionId.hashCode) +
      (state.hashCode) +
      (failCode == null ? 0 : failCode!.hashCode) +
      (identityData == null ? 0 : identityData!.hashCode);

  @override
  String toString() =>
      'ExchangeTokenResponse[sessionId=$sessionId, state=$state, failCode=$failCode, identityData=$identityData]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'sessionId'] = this.sessionId;
    json[r'state'] = this.state;
    if (this.failCode != null) {
      json[r'failCode'] = this.failCode;
    } else {
      json[r'failCode'] = null;
    }
    if (this.identityData != null) {
      json[r'identityData'] = this.identityData;
    } else {
      json[r'identityData'] = null;
    }
    return json;
  }

  /// Returns a new [ExchangeTokenResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExchangeTokenResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ExchangeTokenResponse[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ExchangeTokenResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExchangeTokenResponse(
        sessionId: mapValueOfType<String>(json, r'sessionId')!,
        state: VerificationSessionState.fromJson(json[r'state'])!,
        failCode: VerificationFailCode.fromJson(json[r'failCode']),
        identityData: IdentityData.fromJson(json[r'identityData']),
      );
    }
    return null;
  }

  static List<ExchangeTokenResponse> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ExchangeTokenResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExchangeTokenResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExchangeTokenResponse> mapFromJson(dynamic json) {
    final map = <String, ExchangeTokenResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExchangeTokenResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExchangeTokenResponse-objects as value to a dart map
  static Map<String, List<ExchangeTokenResponse>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ExchangeTokenResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExchangeTokenResponse.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'sessionId',
    'state',
  };
}
