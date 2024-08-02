//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class LinkedResources {
  /// Returns a new [LinkedResources] instance.
  LinkedResources({
    this.selfie,
    this.documentFront,
    this.documentBack,
    this.documentPortrait,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? selfie;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? documentFront;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? documentBack;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? documentPortrait;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LinkedResources &&
          other.selfie == selfie &&
          other.documentFront == documentFront &&
          other.documentBack == documentBack &&
          other.documentPortrait == documentPortrait;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (selfie == null ? 0 : selfie!.hashCode) +
      (documentFront == null ? 0 : documentFront!.hashCode) +
      (documentBack == null ? 0 : documentBack!.hashCode) +
      (documentPortrait == null ? 0 : documentPortrait!.hashCode);

  @override
  String toString() =>
      'LinkedResources[selfie=$selfie, documentFront=$documentFront, documentBack=$documentBack, documentPortrait=$documentPortrait]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.selfie != null) {
      json[r'selfie'] = this.selfie;
    } else {
      json[r'selfie'] = null;
    }
    if (this.documentFront != null) {
      json[r'documentFront'] = this.documentFront;
    } else {
      json[r'documentFront'] = null;
    }
    if (this.documentBack != null) {
      json[r'documentBack'] = this.documentBack;
    } else {
      json[r'documentBack'] = null;
    }
    if (this.documentPortrait != null) {
      json[r'documentPortrait'] = this.documentPortrait;
    } else {
      json[r'documentPortrait'] = null;
    }
    return json;
  }

  /// Returns a new [LinkedResources] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LinkedResources? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "LinkedResources[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "LinkedResources[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LinkedResources(
        selfie: mapValueOfType<String>(json, r'selfie'),
        documentFront: mapValueOfType<String>(json, r'documentFront'),
        documentBack: mapValueOfType<String>(json, r'documentBack'),
        documentPortrait: mapValueOfType<String>(json, r'documentPortrait'),
      );
    }
    return null;
  }

  static List<LinkedResources> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <LinkedResources>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LinkedResources.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LinkedResources> mapFromJson(dynamic json) {
    final map = <String, LinkedResources>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LinkedResources.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LinkedResources-objects as value to a dart map
  static Map<String, List<LinkedResources>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<LinkedResources>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LinkedResources.listFromJson(
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
