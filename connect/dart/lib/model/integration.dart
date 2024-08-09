//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Integration {
  /// Returns a new [Integration] instance.
  Integration({
    required this.id,
    required this.name,
    required this.logoUrl,
  });

  /// The ID of the integration
  String id;

  /// The friendly, human-readable name of the integration
  String name;

  /// A URL pointing to the integration's logo
  String logoUrl;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Integration &&
          other.id == id &&
          other.name == name &&
          other.logoUrl == logoUrl;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id.hashCode) + (name.hashCode) + (logoUrl.hashCode);

  @override
  String toString() => 'Integration[id=$id, name=$name, logoUrl=$logoUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'id'] = this.id;
    json[r'name'] = this.name;
    json[r'logoUrl'] = this.logoUrl;
    return json;
  }

  /// Returns a new [Integration] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Integration? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "Integration[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "Integration[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Integration(
        id: mapValueOfType<String>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        logoUrl: mapValueOfType<String>(json, r'logoUrl')!,
      );
    }
    return null;
  }

  static List<Integration> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Integration>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Integration.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Integration> mapFromJson(dynamic json) {
    final map = <String, Integration>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Integration.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Integration-objects as value to a dart map
  static Map<String, List<Integration>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Integration>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Integration.listFromJson(
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
    'name',
    'logoUrl',
  };
}
