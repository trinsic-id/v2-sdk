//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DisclosedFieldsRequest {
  /// Returns a new [DisclosedFieldsRequest] instance.
  DisclosedFieldsRequest({
    this.idNumber,
    this.givenName,
    this.familyName,
    this.address,
    this.dateOfBirth,
    this.country,
    this.issueDate,
    this.expirationDate,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? idNumber;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? givenName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? familyName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? address;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? dateOfBirth;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? country;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? issueDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? expirationDate;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DisclosedFieldsRequest &&
          other.idNumber == idNumber &&
          other.givenName == givenName &&
          other.familyName == familyName &&
          other.address == address &&
          other.dateOfBirth == dateOfBirth &&
          other.country == country &&
          other.issueDate == issueDate &&
          other.expirationDate == expirationDate;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (idNumber == null ? 0 : idNumber!.hashCode) +
      (givenName == null ? 0 : givenName!.hashCode) +
      (familyName == null ? 0 : familyName!.hashCode) +
      (address == null ? 0 : address!.hashCode) +
      (dateOfBirth == null ? 0 : dateOfBirth!.hashCode) +
      (country == null ? 0 : country!.hashCode) +
      (issueDate == null ? 0 : issueDate!.hashCode) +
      (expirationDate == null ? 0 : expirationDate!.hashCode);

  @override
  String toString() =>
      'DisclosedFieldsRequest[idNumber=$idNumber, givenName=$givenName, familyName=$familyName, address=$address, dateOfBirth=$dateOfBirth, country=$country, issueDate=$issueDate, expirationDate=$expirationDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.idNumber != null) {
      json[r'idNumber'] = this.idNumber;
    } else {
      json[r'idNumber'] = null;
    }
    if (this.givenName != null) {
      json[r'givenName'] = this.givenName;
    } else {
      json[r'givenName'] = null;
    }
    if (this.familyName != null) {
      json[r'familyName'] = this.familyName;
    } else {
      json[r'familyName'] = null;
    }
    if (this.address != null) {
      json[r'address'] = this.address;
    } else {
      json[r'address'] = null;
    }
    if (this.dateOfBirth != null) {
      json[r'dateOfBirth'] = this.dateOfBirth;
    } else {
      json[r'dateOfBirth'] = null;
    }
    if (this.country != null) {
      json[r'country'] = this.country;
    } else {
      json[r'country'] = null;
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
    return json;
  }

  /// Returns a new [DisclosedFieldsRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DisclosedFieldsRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "DisclosedFieldsRequest[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "DisclosedFieldsRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DisclosedFieldsRequest(
        idNumber: mapValueOfType<bool>(json, r'idNumber'),
        givenName: mapValueOfType<bool>(json, r'givenName'),
        familyName: mapValueOfType<bool>(json, r'familyName'),
        address: mapValueOfType<bool>(json, r'address'),
        dateOfBirth: mapValueOfType<bool>(json, r'dateOfBirth'),
        country: mapValueOfType<bool>(json, r'country'),
        issueDate: mapValueOfType<bool>(json, r'issueDate'),
        expirationDate: mapValueOfType<bool>(json, r'expirationDate'),
      );
    }
    return null;
  }

  static List<DisclosedFieldsRequest> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <DisclosedFieldsRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DisclosedFieldsRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DisclosedFieldsRequest> mapFromJson(dynamic json) {
    final map = <String, DisclosedFieldsRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DisclosedFieldsRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DisclosedFieldsRequest-objects as value to a dart map
  static Map<String, List<DisclosedFieldsRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<DisclosedFieldsRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DisclosedFieldsRequest.listFromJson(
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
