//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PersonData {
  /// Returns a new [PersonData] instance.
  PersonData({
    this.givenName,
    this.familyName,
    this.middleName,
    this.fullName,
    this.nationality,
    this.gender,
    this.phoneNumber,
    this.address,
    this.dateOfBirth,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? givenName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? familyName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? middleName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fullName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? nationality;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? gender;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? phoneNumber;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Address? address;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dateOfBirth;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PersonData &&
          other.givenName == givenName &&
          other.familyName == familyName &&
          other.middleName == middleName &&
          other.fullName == fullName &&
          other.nationality == nationality &&
          other.gender == gender &&
          other.phoneNumber == phoneNumber &&
          other.address == address &&
          other.dateOfBirth == dateOfBirth;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (givenName == null ? 0 : givenName!.hashCode) +
      (familyName == null ? 0 : familyName!.hashCode) +
      (middleName == null ? 0 : middleName!.hashCode) +
      (fullName == null ? 0 : fullName!.hashCode) +
      (nationality == null ? 0 : nationality!.hashCode) +
      (gender == null ? 0 : gender!.hashCode) +
      (phoneNumber == null ? 0 : phoneNumber!.hashCode) +
      (address == null ? 0 : address!.hashCode) +
      (dateOfBirth == null ? 0 : dateOfBirth!.hashCode);

  @override
  String toString() =>
      'PersonData[givenName=$givenName, familyName=$familyName, middleName=$middleName, fullName=$fullName, nationality=$nationality, gender=$gender, phoneNumber=$phoneNumber, address=$address, dateOfBirth=$dateOfBirth]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    if (this.middleName != null) {
      json[r'middleName'] = this.middleName;
    } else {
      json[r'middleName'] = null;
    }
    if (this.fullName != null) {
      json[r'fullName'] = this.fullName;
    } else {
      json[r'fullName'] = null;
    }
    if (this.nationality != null) {
      json[r'nationality'] = this.nationality;
    } else {
      json[r'nationality'] = null;
    }
    if (this.gender != null) {
      json[r'gender'] = this.gender;
    } else {
      json[r'gender'] = null;
    }
    if (this.phoneNumber != null) {
      json[r'phoneNumber'] = this.phoneNumber;
    } else {
      json[r'phoneNumber'] = null;
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
    return json;
  }

  /// Returns a new [PersonData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PersonData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "PersonData[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "PersonData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PersonData(
        givenName: mapValueOfType<String>(json, r'givenName'),
        familyName: mapValueOfType<String>(json, r'familyName'),
        middleName: mapValueOfType<String>(json, r'middleName'),
        fullName: mapValueOfType<String>(json, r'fullName'),
        nationality: mapValueOfType<String>(json, r'nationality'),
        gender: mapValueOfType<String>(json, r'gender'),
        phoneNumber: mapValueOfType<String>(json, r'phoneNumber'),
        address: Address.fromJson(json[r'address']),
        dateOfBirth: mapValueOfType<String>(json, r'dateOfBirth'),
      );
    }
    return null;
  }

  static List<PersonData> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PersonData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PersonData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PersonData> mapFromJson(dynamic json) {
    final map = <String, PersonData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PersonData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PersonData-objects as value to a dart map
  static Map<String, List<PersonData>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<PersonData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PersonData.listFromJson(
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
