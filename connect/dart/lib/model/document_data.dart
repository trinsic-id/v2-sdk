//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DocumentData {
  /// Returns a new [DocumentData] instance.
  DocumentData({
    this.type,
    this.number,
    this.issueDate,
    this.expirationDate,
    this.issuingCountry,
    this.portrait,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? number;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? issueDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? expirationDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? issuingCountry;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? portrait;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DocumentData &&
          other.type == type &&
          other.number == number &&
          other.issueDate == issueDate &&
          other.expirationDate == expirationDate &&
          other.issuingCountry == issuingCountry &&
          other.portrait == portrait;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (type == null ? 0 : type!.hashCode) +
      (number == null ? 0 : number!.hashCode) +
      (issueDate == null ? 0 : issueDate!.hashCode) +
      (expirationDate == null ? 0 : expirationDate!.hashCode) +
      (issuingCountry == null ? 0 : issuingCountry!.hashCode) +
      (portrait == null ? 0 : portrait!.hashCode);

  @override
  String toString() =>
      'DocumentData[type=$type, number=$number, issueDate=$issueDate, expirationDate=$expirationDate, issuingCountry=$issuingCountry, portrait=$portrait]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.number != null) {
      json[r'number'] = this.number;
    } else {
      json[r'number'] = null;
    }
    if (this.issueDate != null) {
      json[r'issueDate'] = this.issueDate;
    } else {
      json[r'issueDate'] = null;
    }
    if (this.expirationDate != null) {
      json[r'expirationDate'] = this.expirationDate;
    } else {
      json[r'expirationDate'] = null;
    }
    if (this.issuingCountry != null) {
      json[r'issuingCountry'] = this.issuingCountry;
    } else {
      json[r'issuingCountry'] = null;
    }
    if (this.portrait != null) {
      json[r'portrait'] = this.portrait;
    } else {
      json[r'portrait'] = null;
    }
    return json;
  }

  /// Returns a new [DocumentData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DocumentData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "DocumentData[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "DocumentData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DocumentData(
        type: mapValueOfType<String>(json, r'type'),
        number: mapValueOfType<String>(json, r'number'),
        issueDate: mapValueOfType<String>(json, r'issueDate'),
        expirationDate: mapValueOfType<String>(json, r'expirationDate'),
        issuingCountry: mapValueOfType<String>(json, r'issuingCountry'),
        portrait: mapValueOfType<String>(json, r'portrait'),
      );
    }
    return null;
  }

  static List<DocumentData> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <DocumentData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DocumentData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DocumentData> mapFromJson(dynamic json) {
    final map = <String, DocumentData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DocumentData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DocumentData-objects as value to a dart map
  static Map<String, List<DocumentData>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<DocumentData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DocumentData.listFromJson(
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
