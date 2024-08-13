//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetSessionResponse {
  /// Returns a new [GetSessionResponse] instance.
  GetSessionResponse({
    required this.session,
  });

  Session session;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GetSessionResponse && other.session == session;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (session.hashCode);

  @override
  String toString() => 'GetSessionResponse[session=$session]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'session'] = this.session;
    return json;
  }

  /// Returns a new [GetSessionResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetSessionResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "GetSessionResponse[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "GetSessionResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetSessionResponse(
        session: Session.fromJson(json[r'session'])!,
      );
    }
    return null;
  }

  static List<GetSessionResponse> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <GetSessionResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetSessionResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetSessionResponse> mapFromJson(dynamic json) {
    final map = <String, GetSessionResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetSessionResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetSessionResponse-objects as value to a dart map
  static Map<String, List<GetSessionResponse>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<GetSessionResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetSessionResponse.listFromJson(
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
