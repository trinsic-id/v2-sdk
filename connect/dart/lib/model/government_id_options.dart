//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GovernmentIDOptions {
  /// Returns a new [GovernmentIDOptions] instance.
  GovernmentIDOptions({
    required this.idNumber,
    required this.givenName,
    required this.familyName,
    required this.address,
    required this.dateOfBirth,
    required this.country,
    required this.issueDate,
    required this.expirationDate,
  });

  bool idNumber;

  bool givenName;

  bool familyName;

  bool address;

  bool dateOfBirth;

  bool country;

  bool issueDate;

  bool expirationDate;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GovernmentIDOptions &&
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
      (idNumber.hashCode) +
      (givenName.hashCode) +
      (familyName.hashCode) +
      (address.hashCode) +
      (dateOfBirth.hashCode) +
      (country.hashCode) +
      (issueDate.hashCode) +
      (expirationDate.hashCode);

  @override
  String toString() =>
      'GovernmentIDOptions[idNumber=$idNumber, givenName=$givenName, familyName=$familyName, address=$address, dateOfBirth=$dateOfBirth, country=$country, issueDate=$issueDate, expirationDate=$expirationDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'idNumber'] = this.idNumber;
    json[r'givenName'] = this.givenName;
    json[r'familyName'] = this.familyName;
    json[r'address'] = this.address;
    json[r'dateOfBirth'] = this.dateOfBirth;
    json[r'country'] = this.country;
    json[r'issueDate'] = this.issueDate;
    json[r'expirationDate'] = this.expirationDate;
    return json;
  }

  /// Returns a new [GovernmentIDOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GovernmentIDOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "GovernmentIDOptions[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "GovernmentIDOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GovernmentIDOptions(
        idNumber: mapValueOfType<bool>(json, r'idNumber')!,
        givenName: mapValueOfType<bool>(json, r'givenName')!,
        familyName: mapValueOfType<bool>(json, r'familyName')!,
        address: mapValueOfType<bool>(json, r'address')!,
        dateOfBirth: mapValueOfType<bool>(json, r'dateOfBirth')!,
        country: mapValueOfType<bool>(json, r'country')!,
        issueDate: mapValueOfType<bool>(json, r'issueDate')!,
        expirationDate: mapValueOfType<bool>(json, r'expirationDate')!,
      );
    }
    return null;
  }

  static List<GovernmentIDOptions> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <GovernmentIDOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GovernmentIDOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GovernmentIDOptions> mapFromJson(dynamic json) {
    final map = <String, GovernmentIDOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GovernmentIDOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GovernmentIDOptions-objects as value to a dart map
  static Map<String, List<GovernmentIDOptions>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<GovernmentIDOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GovernmentIDOptions.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'idNumber',
    'givenName',
    'familyName',
    'address',
    'dateOfBirth',
    'country',
    'issueDate',
    'expirationDate',
  };
}
