//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ListProvidersResponse {
  /// Returns a new [ListProvidersResponse] instance.
  ListProvidersResponse({
    this.integrations = const [],
  });

  /// The list of integrations available to your account
  List<Integration> integrations;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ListProvidersResponse &&
          _deepEquality.equals(other.integrations, integrations);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (integrations.hashCode);

  @override
  String toString() => 'ListProvidersResponse[integrations=$integrations]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'integrations'] = this.integrations;
    return json;
  }

  /// Returns a new [ListProvidersResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListProvidersResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ListProvidersResponse[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ListProvidersResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ListProvidersResponse(
        integrations: Integration.listFromJson(json[r'integrations']),
      );
    }
    return null;
  }

  static List<ListProvidersResponse> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ListProvidersResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListProvidersResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ListProvidersResponse> mapFromJson(dynamic json) {
    final map = <String, ListProvidersResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListProvidersResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ListProvidersResponse-objects as value to a dart map
  static Map<String, List<ListProvidersResponse>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ListProvidersResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ListProvidersResponse.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'integrations',
  };
}
