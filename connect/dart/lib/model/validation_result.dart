//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ValidationResult {
  /// Returns a new [ValidationResult] instance.
  ValidationResult({
    this.memberNames = const [],
    this.errorMessage,
  });

  List<String>? memberNames;

  String? errorMessage;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ValidationResult &&
          _deepEquality.equals(other.memberNames, memberNames) &&
          other.errorMessage == errorMessage;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (memberNames == null ? 0 : memberNames!.hashCode) +
      (errorMessage == null ? 0 : errorMessage!.hashCode);

  @override
  String toString() =>
      'ValidationResult[memberNames=$memberNames, errorMessage=$errorMessage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.memberNames != null) {
      json[r'memberNames'] = this.memberNames;
    } else {
      json[r'memberNames'] = null;
    }
    if (this.errorMessage != null) {
      json[r'errorMessage'] = this.errorMessage;
    } else {
      json[r'errorMessage'] = null;
    }
    return json;
  }

  /// Returns a new [ValidationResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ValidationResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ValidationResult[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ValidationResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ValidationResult(
        memberNames: json[r'memberNames'] is Iterable
            ? (json[r'memberNames'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        errorMessage: mapValueOfType<String>(json, r'errorMessage'),
      );
    }
    return null;
  }

  static List<ValidationResult> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ValidationResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ValidationResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ValidationResult> mapFromJson(dynamic json) {
    final map = <String, ValidationResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ValidationResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ValidationResult-objects as value to a dart map
  static Map<String, List<ValidationResult>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ValidationResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ValidationResult.listFromJson(
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
