//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ListSessionsResponse {
  /// Returns a new [ListSessionsResponse] instance.
  ListSessionsResponse({
    this.sessions = const [],
    required this.total,
    required this.more,
  });

  List<Session> sessions;

  /// The total number of sessions tied to your account
  int total;

  /// Whether there are additional pages of sessions to retrieve
  bool more;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ListSessionsResponse &&
          _deepEquality.equals(other.sessions, sessions) &&
          other.total == total &&
          other.more == more;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (sessions.hashCode) + (total.hashCode) + (more.hashCode);

  @override
  String toString() =>
      'ListSessionsResponse[sessions=$sessions, total=$total, more=$more]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'sessions'] = this.sessions;
    json[r'total'] = this.total;
    json[r'more'] = this.more;
    return json;
  }

  /// Returns a new [ListSessionsResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListSessionsResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ListSessionsResponse[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ListSessionsResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ListSessionsResponse(
        sessions: Session.listFromJson(json[r'sessions']),
        total: mapValueOfType<int>(json, r'total')!,
        more: mapValueOfType<bool>(json, r'more')!,
      );
    }
    return null;
  }

  static List<ListSessionsResponse> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ListSessionsResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListSessionsResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ListSessionsResponse> mapFromJson(dynamic json) {
    final map = <String, ListSessionsResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListSessionsResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ListSessionsResponse-objects as value to a dart map
  static Map<String, List<ListSessionsResponse>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ListSessionsResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ListSessionsResponse.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'sessions',
    'total',
    'more',
  };
}
