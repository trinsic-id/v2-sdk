//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CanReuseCredentialRequest {
  /// Returns a new [CanReuseCredentialRequest] instance.
  CanReuseCredentialRequest({
    required this.phoneNumber,
  });

  String phoneNumber;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CanReuseCredentialRequest && other.phoneNumber == phoneNumber;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (phoneNumber.hashCode);

  @override
  String toString() => 'CanReuseCredentialRequest[phoneNumber=$phoneNumber]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'phoneNumber'] = this.phoneNumber;
    return json;
  }

  /// Returns a new [CanReuseCredentialRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CanReuseCredentialRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "CanReuseCredentialRequest[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "CanReuseCredentialRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CanReuseCredentialRequest(
        phoneNumber: mapValueOfType<String>(json, r'phoneNumber')!,
      );
    }
    return null;
  }

  static List<CanReuseCredentialRequest> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <CanReuseCredentialRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CanReuseCredentialRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CanReuseCredentialRequest> mapFromJson(dynamic json) {
    final map = <String, CanReuseCredentialRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CanReuseCredentialRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CanReuseCredentialRequest-objects as value to a dart map
  static Map<String, List<CanReuseCredentialRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<CanReuseCredentialRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CanReuseCredentialRequest.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'phoneNumber',
  };
}
