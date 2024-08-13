//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Verification {
  /// Returns a new [Verification] instance.
  Verification({
    this.provider,
    this.failCode,
  });

  /// The identity provider that was used to perform the Verification, if any
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

  /// If the Verification is in state `VerificationFailed`, this field contains the reason for failure
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  VerificationFailCode? failCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Verification &&
          other.provider == provider &&
          other.failCode == failCode;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (provider == null ? 0 : provider!.hashCode) +
      (failCode == null ? 0 : failCode!.hashCode);

  @override
  String toString() => 'Verification[provider=$provider, failCode=$failCode]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
    if (this.failCode != null) {
      json[r'failCode'] = this.failCode;
    } else {
      json[r'failCode'] = null;
    }
    return json;
  }

  /// Returns a new [Verification] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Verification? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "Verification[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "Verification[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Verification(
        provider: mapValueOfType<String>(json, r'provider'),
        failCode: VerificationFailCode.fromJson(json[r'failCode']),
      );
    }
    return null;
  }

  static List<Verification> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Verification>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Verification.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Verification> mapFromJson(dynamic json) {
    final map = <String, Verification>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Verification.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Verification-objects as value to a dart map
  static Map<String, List<Verification>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Verification>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Verification.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{};
}
