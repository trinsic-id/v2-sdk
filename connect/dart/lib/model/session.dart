//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Session {
  /// Returns a new [Session] instance.
  Session({
    this.id,
    this.clientToken,
    this.state,
    this.verifications = const {},
    this.failCode,
    this.resultVp,
    this.created,
    this.updated,
  });

  String? id;

  String? clientToken;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  IDVSessionState? state;

  Map<String, Verification>? verifications;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SessionFailCode? failCode;

  String? resultVp;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? created;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? updated;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Session &&
    other.id == id &&
    other.clientToken == clientToken &&
    other.state == state &&
    _deepEquality.equals(other.verifications, verifications) &&
    other.failCode == failCode &&
    other.resultVp == resultVp &&
    other.created == created &&
    other.updated == updated;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (clientToken == null ? 0 : clientToken!.hashCode) +
    (state == null ? 0 : state!.hashCode) +
    (verifications == null ? 0 : verifications!.hashCode) +
    (failCode == null ? 0 : failCode!.hashCode) +
    (resultVp == null ? 0 : resultVp!.hashCode) +
    (created == null ? 0 : created!.hashCode) +
    (updated == null ? 0 : updated!.hashCode);

  @override
  String toString() => 'Session[id=$id, clientToken=$clientToken, state=$state, verifications=$verifications, failCode=$failCode, resultVp=$resultVp, created=$created, updated=$updated]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.clientToken != null) {
      json[r'clientToken'] = this.clientToken;
    } else {
      json[r'clientToken'] = null;
    }
    if (this.state != null) {
      json[r'state'] = this.state;
    } else {
      json[r'state'] = null;
    }
    if (this.verifications != null) {
      json[r'verifications'] = this.verifications;
    } else {
      json[r'verifications'] = null;
    }
    if (this.failCode != null) {
      json[r'failCode'] = this.failCode;
    } else {
      json[r'failCode'] = null;
    }
    if (this.resultVp != null) {
      json[r'resultVp'] = this.resultVp;
    } else {
      json[r'resultVp'] = null;
    }
    if (this.created != null) {
      json[r'created'] = this.created;
    } else {
      json[r'created'] = null;
    }
    if (this.updated != null) {
      json[r'updated'] = this.updated;
    } else {
      json[r'updated'] = null;
    }
    return json;
  }

  /// Returns a new [Session] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Session? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Session[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Session[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Session(
        id: mapValueOfType<String>(json, r'id'),
        clientToken: mapValueOfType<String>(json, r'clientToken'),
        state: IDVSessionState.fromJson(json[r'state']),
        verifications: Verification.mapFromJson(json[r'verifications']),
        failCode: SessionFailCode.fromJson(json[r'failCode']),
        resultVp: mapValueOfType<String>(json, r'resultVp'),
        created: mapValueOfType<int>(json, r'created'),
        updated: mapValueOfType<int>(json, r'updated'),
      );
    }
    return null;
  }

  static List<Session> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Session>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Session.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Session> mapFromJson(dynamic json) {
    final map = <String, Session>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Session.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Session-objects as value to a dart map
  static Map<String, List<Session>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Session>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Session.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

