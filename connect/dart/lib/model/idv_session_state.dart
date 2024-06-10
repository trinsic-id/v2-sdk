//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class IDVSessionState {
  /// Instantiate a new enum with the provided [value].
  const IDVSessionState._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const idvCreated = IDVSessionState._(r'IdvCreated');
  static const idvInitiated = IDVSessionState._(r'IdvInitiated');
  static const idvAuthenticating = IDVSessionState._(r'IdvAuthenticating');
  static const idvInProgress = IDVSessionState._(r'IdvInProgress');
  static const idvSuccess = IDVSessionState._(r'IdvSuccess');
  static const idvFailed = IDVSessionState._(r'IdvFailed');

  /// List of all possible values in this [enum][IDVSessionState].
  static const values = <IDVSessionState>[
    idvCreated,
    idvInitiated,
    idvAuthenticating,
    idvInProgress,
    idvSuccess,
    idvFailed,
  ];

  static IDVSessionState? fromJson(dynamic value) => IDVSessionStateTypeTransformer().decode(value);

  static List<IDVSessionState> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IDVSessionState>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IDVSessionState.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [IDVSessionState] to String,
/// and [decode] dynamic data back to [IDVSessionState].
class IDVSessionStateTypeTransformer {
  factory IDVSessionStateTypeTransformer() => _instance ??= const IDVSessionStateTypeTransformer._();

  const IDVSessionStateTypeTransformer._();

  String encode(IDVSessionState data) => data.value;

  /// Decodes a [dynamic value][data] to a IDVSessionState.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  IDVSessionState? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'IdvCreated': return IDVSessionState.idvCreated;
        case r'IdvInitiated': return IDVSessionState.idvInitiated;
        case r'IdvAuthenticating': return IDVSessionState.idvAuthenticating;
        case r'IdvInProgress': return IDVSessionState.idvInProgress;
        case r'IdvSuccess': return IDVSessionState.idvSuccess;
        case r'IdvFailed': return IDVSessionState.idvFailed;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [IDVSessionStateTypeTransformer] instance.
  static IDVSessionStateTypeTransformer? _instance;
}

