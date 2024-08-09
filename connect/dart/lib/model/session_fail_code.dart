//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SessionFailCode {
  /// Instantiate a new enum with the provided [value].
  const SessionFailCode._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const sessionFailNone = SessionFailCode._(r'SessionFailNone');
  static const sessionFailInternal = SessionFailCode._(r'SessionFailInternal');
  static const sessionFailVerificationFailed =
      SessionFailCode._(r'SessionFailVerificationFailed');
  static const sessionFailAuthentication =
      SessionFailCode._(r'SessionFailAuthentication');
  static const sessionFailExpired = SessionFailCode._(r'SessionFailExpired');
  static const sessionFailUserCanceled =
      SessionFailCode._(r'SessionFailUserCanceled');
  static const sessionFailRpCanceled =
      SessionFailCode._(r'SessionFailRpCanceled');

  /// List of all possible values in this [enum][SessionFailCode].
  static const values = <SessionFailCode>[
    sessionFailNone,
    sessionFailInternal,
    sessionFailVerificationFailed,
    sessionFailAuthentication,
    sessionFailExpired,
    sessionFailUserCanceled,
    sessionFailRpCanceled,
  ];

  static SessionFailCode? fromJson(dynamic value) =>
      SessionFailCodeTypeTransformer().decode(value);

  static List<SessionFailCode> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <SessionFailCode>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SessionFailCode.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SessionFailCode] to String,
/// and [decode] dynamic data back to [SessionFailCode].
class SessionFailCodeTypeTransformer {
  factory SessionFailCodeTypeTransformer() =>
      _instance ??= const SessionFailCodeTypeTransformer._();

  const SessionFailCodeTypeTransformer._();

  String encode(SessionFailCode data) => data.value;

  /// Decodes a [dynamic value][data] to a SessionFailCode.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SessionFailCode? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'SessionFailNone':
          return SessionFailCode.sessionFailNone;
        case r'SessionFailInternal':
          return SessionFailCode.sessionFailInternal;
        case r'SessionFailVerificationFailed':
          return SessionFailCode.sessionFailVerificationFailed;
        case r'SessionFailAuthentication':
          return SessionFailCode.sessionFailAuthentication;
        case r'SessionFailExpired':
          return SessionFailCode.sessionFailExpired;
        case r'SessionFailUserCanceled':
          return SessionFailCode.sessionFailUserCanceled;
        case r'SessionFailRpCanceled':
          return SessionFailCode.sessionFailRpCanceled;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SessionFailCodeTypeTransformer] instance.
  static SessionFailCodeTypeTransformer? _instance;
}
