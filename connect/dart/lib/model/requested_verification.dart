//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RequestedVerification {
  /// Returns a new [RequestedVerification] instance.
  RequestedVerification({
    this.type,
    this.governmentIdOptions,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  VerificationType? type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GovernmentIDOptions? governmentIdOptions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RequestedVerification &&
    other.type == type &&
    other.governmentIdOptions == governmentIdOptions;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type == null ? 0 : type!.hashCode) +
    (governmentIdOptions == null ? 0 : governmentIdOptions!.hashCode);

  @override
  String toString() => 'RequestedVerification[type=$type, governmentIdOptions=$governmentIdOptions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.governmentIdOptions != null) {
      json[r'governmentIdOptions'] = this.governmentIdOptions;
    } else {
      json[r'governmentIdOptions'] = null;
    }
    return json;
  }

  /// Returns a new [RequestedVerification] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RequestedVerification? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RequestedVerification[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RequestedVerification[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RequestedVerification(
        type: VerificationType.fromJson(json[r'type']),
        governmentIdOptions: GovernmentIDOptions.fromJson(json[r'governmentIdOptions']),
      );
    }
    return null;
  }

  static List<RequestedVerification> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RequestedVerification>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RequestedVerification.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RequestedVerification> mapFromJson(dynamic json) {
    final map = <String, RequestedVerification>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RequestedVerification.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RequestedVerification-objects as value to a dart map
  static Map<String, List<RequestedVerification>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RequestedVerification>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RequestedVerification.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

