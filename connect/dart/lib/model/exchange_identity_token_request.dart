//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ExchangeIdentityTokenRequest {
  /// Returns a new [ExchangeIdentityTokenRequest] instance.
  ExchangeIdentityTokenRequest({
    required this.identityToken,
  });

  /// The identity token to exchange
  String identityToken;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ExchangeIdentityTokenRequest &&
          other.identityToken == identityToken;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (identityToken.hashCode);

  @override
  String toString() =>
      'ExchangeIdentityTokenRequest[identityToken=$identityToken]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'identityToken'] = this.identityToken;
    return json;
  }

  /// Returns a new [ExchangeIdentityTokenRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExchangeIdentityTokenRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ExchangeIdentityTokenRequest[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ExchangeIdentityTokenRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExchangeIdentityTokenRequest(
        identityToken: mapValueOfType<String>(json, r'identityToken')!,
      );
    }
    return null;
  }

  static List<ExchangeIdentityTokenRequest> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ExchangeIdentityTokenRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExchangeIdentityTokenRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExchangeIdentityTokenRequest> mapFromJson(dynamic json) {
    final map = <String, ExchangeIdentityTokenRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExchangeIdentityTokenRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExchangeIdentityTokenRequest-objects as value to a dart map
  static Map<String, List<ExchangeIdentityTokenRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ExchangeIdentityTokenRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExchangeIdentityTokenRequest.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'identityToken',
  };
}
