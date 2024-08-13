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
    required this.id,
    required this.state,
    this.failCode,
    required this.verification,
    required this.disclosedFields,
    required this.created,
    required this.updated,
  });

  String id;

  /// The state of the session
  SessionState state;

  /// If the session is in state `IdvFailed`, this field contains the reason for failure.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SessionFailCode? failCode;

  /// The underlying verification for this Session
  Verification verification;

  /// The fields that were requested to be disclosed when the Session was created
  DisclosedFields disclosedFields;

  /// The unix timestamp, in seconds, when this session was created
  int created;

  /// The unix timestamp, in seconds, when this session's state last changed
  int updated;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Session &&
          other.id == id &&
          other.state == state &&
          other.failCode == failCode &&
          other.verification == verification &&
          other.disclosedFields == disclosedFields &&
          other.created == created &&
          other.updated == updated;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id.hashCode) +
      (state.hashCode) +
      (failCode == null ? 0 : failCode!.hashCode) +
      (verification.hashCode) +
      (disclosedFields.hashCode) +
      (created.hashCode) +
      (updated.hashCode);

  @override
  String toString() =>
      'Session[id=$id, state=$state, failCode=$failCode, verification=$verification, disclosedFields=$disclosedFields, created=$created, updated=$updated]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'id'] = this.id;
    json[r'state'] = this.state;
    if (this.failCode != null) {
      json[r'failCode'] = this.failCode;
    } else {
      json[r'failCode'] = null;
    }
    json[r'verification'] = this.verification;
    json[r'disclosedFields'] = this.disclosedFields;
    json[r'created'] = this.created;
    json[r'updated'] = this.updated;
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
          assert(json.containsKey(key),
              'Required key "Session[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "Session[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Session(
        id: mapValueOfType<String>(json, r'id')!,
        state: SessionState.fromJson(json[r'state'])!,
        failCode: SessionFailCode.fromJson(json[r'failCode']),
        verification: Verification.fromJson(json[r'verification'])!,
        disclosedFields: DisclosedFields.fromJson(json[r'disclosedFields'])!,
        created: mapValueOfType<int>(json, r'created')!,
        updated: mapValueOfType<int>(json, r'updated')!,
      );
    }
    return null;
  }

  static List<Session> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
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
  static Map<String, List<Session>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Session>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Session.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'state',
    'verification',
    'disclosedFields',
    'created',
    'updated',
  };
}
