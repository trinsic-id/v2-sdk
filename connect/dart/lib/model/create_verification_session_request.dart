//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateVerificationSessionRequest {
  /// Returns a new [CreateVerificationSessionRequest] instance.
  CreateVerificationSessionRequest({
    required this.integrationId,
    required this.redirectUrl,
  });

  /// The ID of the integration to perform
  String integrationId;

  /// The URL the user will be returned to after performing the integration.
  String redirectUrl;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CreateVerificationSessionRequest &&
          other.integrationId == integrationId &&
          other.redirectUrl == redirectUrl;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (integrationId.hashCode) + (redirectUrl.hashCode);

  @override
  String toString() =>
      'CreateVerificationSessionRequest[integrationId=$integrationId, redirectUrl=$redirectUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'integrationId'] = this.integrationId;
    json[r'redirectUrl'] = this.redirectUrl;
    return json;
  }

  /// Returns a new [CreateVerificationSessionRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateVerificationSessionRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "CreateVerificationSessionRequest[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "CreateVerificationSessionRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateVerificationSessionRequest(
        integrationId: mapValueOfType<String>(json, r'integrationId')!,
        redirectUrl: mapValueOfType<String>(json, r'redirectUrl')!,
      );
    }
    return null;
  }

  static List<CreateVerificationSessionRequest> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <CreateVerificationSessionRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateVerificationSessionRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateVerificationSessionRequest> mapFromJson(
      dynamic json) {
    final map = <String, CreateVerificationSessionRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateVerificationSessionRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateVerificationSessionRequest-objects as value to a dart map
  static Map<String, List<CreateVerificationSessionRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<CreateVerificationSessionRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateVerificationSessionRequest.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'integrationId',
    'redirectUrl',
  };
}
