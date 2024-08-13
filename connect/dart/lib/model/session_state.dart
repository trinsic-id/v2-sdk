//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SessionState {
  /// Instantiate a new enum with the provided [value].
  const SessionState._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const idvCreated = SessionState._(r'IdvCreated');
  static const idvInitiated = SessionState._(r'IdvInitiated');
  static const idvAuthenticating = SessionState._(r'IdvAuthenticating');
  static const idvInProgress = SessionState._(r'IdvInProgress');
  static const idvSuccess = SessionState._(r'IdvSuccess');
  static const idvFailed = SessionState._(r'IdvFailed');

  /// List of all possible values in this [enum][SessionState].
  static const values = <SessionState>[
    idvCreated,
    idvInitiated,
    idvAuthenticating,
    idvInProgress,
    idvSuccess,
    idvFailed,
  ];

  static SessionState? fromJson(dynamic value) =>
      SessionStateTypeTransformer().decode(value);

  static List<SessionState> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <SessionState>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SessionState.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SessionState] to String,
/// and [decode] dynamic data back to [SessionState].
class SessionStateTypeTransformer {
  factory SessionStateTypeTransformer() =>
      _instance ??= const SessionStateTypeTransformer._();

  const SessionStateTypeTransformer._();

  String encode(SessionState data) => data.value;

  /// Decodes a [dynamic value][data] to a SessionState.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SessionState? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'IdvCreated':
          return SessionState.idvCreated;
        case r'IdvInitiated':
          return SessionState.idvInitiated;
        case r'IdvAuthenticating':
          return SessionState.idvAuthenticating;
        case r'IdvInProgress':
          return SessionState.idvInProgress;
        case r'IdvSuccess':
          return SessionState.idvSuccess;
        case r'IdvFailed':
          return SessionState.idvFailed;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SessionStateTypeTransformer] instance.
  static SessionStateTypeTransformer? _instance;
}
