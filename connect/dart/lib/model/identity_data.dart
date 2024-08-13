//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class IdentityData {
  /// Returns a new [IdentityData] instance.
  IdentityData({
    this.originatingIntegrationId,
    this.person,
    this.document,
    this.linkedResources,
  });

  /// The ID of the integration from which this data originated (eg \"yoti\", \"clear\")
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? originatingIntegrationId;

  /// Identity data of the individual who was verified
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  PersonData? person;

  /// Identity data of the document involved in verification, if relevant
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DocumentData? document;

  /// Access tokens for linked resources (eg document/selfie images)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  LinkedResources? linkedResources;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IdentityData &&
          other.originatingIntegrationId == originatingIntegrationId &&
          other.person == person &&
          other.document == document &&
          other.linkedResources == linkedResources;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (originatingIntegrationId == null
          ? 0
          : originatingIntegrationId!.hashCode) +
      (person == null ? 0 : person!.hashCode) +
      (document == null ? 0 : document!.hashCode) +
      (linkedResources == null ? 0 : linkedResources!.hashCode);

  @override
  String toString() =>
      'IdentityData[originatingIntegrationId=$originatingIntegrationId, person=$person, document=$document, linkedResources=$linkedResources]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.originatingIntegrationId != null) {
      json[r'originatingIntegrationId'] = this.originatingIntegrationId;
    } else {
      json[r'originatingIntegrationId'] = null;
    }
    if (this.person != null) {
      json[r'person'] = this.person;
    } else {
      json[r'person'] = null;
    }
    if (this.document != null) {
      json[r'document'] = this.document;
    } else {
      json[r'document'] = null;
    }
    if (this.linkedResources != null) {
      json[r'linkedResources'] = this.linkedResources;
    } else {
      json[r'linkedResources'] = null;
    }
    return json;
  }

  /// Returns a new [IdentityData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IdentityData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "IdentityData[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "IdentityData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IdentityData(
        originatingIntegrationId:
            mapValueOfType<String>(json, r'originatingIntegrationId'),
        person: PersonData.fromJson(json[r'person']),
        document: DocumentData.fromJson(json[r'document']),
        linkedResources: LinkedResources.fromJson(json[r'linkedResources']),
      );
    }
    return null;
  }

  static List<IdentityData> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <IdentityData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IdentityData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IdentityData> mapFromJson(dynamic json) {
    final map = <String, IdentityData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IdentityData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IdentityData-objects as value to a dart map
  static Map<String, List<IdentityData>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<IdentityData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IdentityData.listFromJson(
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
