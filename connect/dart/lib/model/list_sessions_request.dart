//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ListSessionsRequest {
  /// Returns a new [ListSessionsRequest] instance.
  ListSessionsRequest({
    required this.orderBy,
    required this.orderDirection,
    this.pageSize,
    this.page,
  });

  SessionOrdering orderBy;

  OrderDirection orderDirection;

  /// Minimum value: 1
  /// Maximum value: 10
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? pageSize;

  /// Minimum value: 1
  /// Maximum value: 2147483647
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? page;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListSessionsRequest &&
    other.orderBy == orderBy &&
    other.orderDirection == orderDirection &&
    other.pageSize == pageSize &&
    other.page == page;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (orderBy.hashCode) +
    (orderDirection.hashCode) +
    (pageSize == null ? 0 : pageSize!.hashCode) +
    (page == null ? 0 : page!.hashCode);

  @override
  String toString() => 'ListSessionsRequest[orderBy=$orderBy, orderDirection=$orderDirection, pageSize=$pageSize, page=$page]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'orderBy'] = this.orderBy;
      json[r'orderDirection'] = this.orderDirection;
    if (this.pageSize != null) {
      json[r'pageSize'] = this.pageSize;
    } else {
      json[r'pageSize'] = null;
    }
    if (this.page != null) {
      json[r'page'] = this.page;
    } else {
      json[r'page'] = null;
    }
    return json;
  }

  /// Returns a new [ListSessionsRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListSessionsRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ListSessionsRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ListSessionsRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ListSessionsRequest(
        orderBy: SessionOrdering.fromJson(json[r'orderBy'])!,
        orderDirection: OrderDirection.fromJson(json[r'orderDirection'])!,
        pageSize: mapValueOfType<int>(json, r'pageSize'),
        page: mapValueOfType<int>(json, r'page'),
      );
    }
    return null;
  }

  static List<ListSessionsRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ListSessionsRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListSessionsRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ListSessionsRequest> mapFromJson(dynamic json) {
    final map = <String, ListSessionsRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListSessionsRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ListSessionsRequest-objects as value to a dart map
  static Map<String, List<ListSessionsRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ListSessionsRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ListSessionsRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'orderBy',
    'orderDirection',
  };
}

