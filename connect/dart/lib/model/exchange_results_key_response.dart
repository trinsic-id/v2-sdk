//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ExchangeResultsKeyResponse {
  /// Returns a new [ExchangeResultsKeyResponse] instance.
  ExchangeResultsKeyResponse({
    required this.session,
    this.identityData,
  });

  Session session;

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
      other is ExchangeResultsKeyResponse &&
          other.session == session &&
          other.identityData == identityData;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (session.hashCode) + (identityData == null ? 0 : identityData!.hashCode);

  @override
  String toString() =>
      'ExchangeResultsKeyResponse[session=$session, identityData=$identityData]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'session'] = this.session;
    if (this.identityData != null) {
      json[r'identityData'] = this.identityData;
    } else {
      json[r'identityData'] = null;
    }
    return json;
  }

  /// Returns a new [ExchangeResultsKeyResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExchangeResultsKeyResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ExchangeResultsKeyResponse[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ExchangeResultsKeyResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExchangeResultsKeyResponse(
        session: Session.fromJson(json[r'session'])!,
        identityData: IdentityData.fromJson(json[r'identityData']),
      );
    }
    return null;
  }

  static List<ExchangeResultsKeyResponse> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ExchangeResultsKeyResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExchangeResultsKeyResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExchangeResultsKeyResponse> mapFromJson(dynamic json) {
    final map = <String, ExchangeResultsKeyResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExchangeResultsKeyResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExchangeResultsKeyResponse-objects as value to a dart map
  static Map<String, List<ExchangeResultsKeyResponse>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ExchangeResultsKeyResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExchangeResultsKeyResponse.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'session',
  };
}
