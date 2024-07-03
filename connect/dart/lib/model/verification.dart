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
    required this.id,
    required this.state,
    this.failCode,
    required this.reused,
    required this.updated,
    required this.governmentIdOptions,
    this.normalizedGovernmentIdData,
  });

  String id;

  VerificationState state;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  VerificationFailCode? failCode;

  bool reused;

  int updated;

  GovernmentIDOptions governmentIdOptions;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  NormalizedIdentityData? normalizedGovernmentIdData;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Verification &&
          other.id == id &&
          other.state == state &&
          other.failCode == failCode &&
          other.reused == reused &&
          other.updated == updated &&
          other.governmentIdOptions == governmentIdOptions &&
          other.normalizedGovernmentIdData == normalizedGovernmentIdData;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id.hashCode) +
      (state.hashCode) +
      (failCode == null ? 0 : failCode!.hashCode) +
      (reused.hashCode) +
      (updated.hashCode) +
      (governmentIdOptions.hashCode) +
      (normalizedGovernmentIdData == null
          ? 0
          : normalizedGovernmentIdData!.hashCode);

  @override
  String toString() =>
      'Verification[id=$id, state=$state, failCode=$failCode, reused=$reused, updated=$updated, governmentIdOptions=$governmentIdOptions, normalizedGovernmentIdData=$normalizedGovernmentIdData]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'id'] = this.id;
    json[r'state'] = this.state;
    if (this.failCode != null) {
      json[r'failCode'] = this.failCode;
    } else {
      json[r'failCode'] = null;
    }
    json[r'reused'] = this.reused;
    json[r'updated'] = this.updated;
    json[r'governmentIdOptions'] = this.governmentIdOptions;
    if (this.normalizedGovernmentIdData != null) {
      json[r'normalizedGovernmentIdData'] = this.normalizedGovernmentIdData;
    } else {
      json[r'normalizedGovernmentIdData'] = null;
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
        id: mapValueOfType<String>(json, r'id')!,
        state: VerificationState.fromJson(json[r'state'])!,
        failCode: VerificationFailCode.fromJson(json[r'failCode']),
        reused: mapValueOfType<bool>(json, r'reused')!,
        updated: mapValueOfType<int>(json, r'updated')!,
        governmentIdOptions:
            GovernmentIDOptions.fromJson(json[r'governmentIdOptions'])!,
        normalizedGovernmentIdData: NormalizedIdentityData.fromJson(
            json[r'normalizedGovernmentIdData']),
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
  static const requiredKeys = <String>{
    'id',
    'state',
    'reused',
    'updated',
    'governmentIdOptions',
  };
}
