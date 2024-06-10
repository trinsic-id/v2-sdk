//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class VerificationState {
  /// Instantiate a new enum with the provided [value].
  const VerificationState._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const verificationPending = VerificationState._(r'VerificationPending');
  static const verificationSuccess = VerificationState._(r'VerificationSuccess');
  static const verificationFailed = VerificationState._(r'VerificationFailed');

  /// List of all possible values in this [enum][VerificationState].
  static const values = <VerificationState>[
    verificationPending,
    verificationSuccess,
    verificationFailed,
  ];

  static VerificationState? fromJson(dynamic value) => VerificationStateTypeTransformer().decode(value);

  static List<VerificationState> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VerificationState>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VerificationState.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [VerificationState] to String,
/// and [decode] dynamic data back to [VerificationState].
class VerificationStateTypeTransformer {
  factory VerificationStateTypeTransformer() => _instance ??= const VerificationStateTypeTransformer._();

  const VerificationStateTypeTransformer._();

  String encode(VerificationState data) => data.value;

  /// Decodes a [dynamic value][data] to a VerificationState.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  VerificationState? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'VerificationPending': return VerificationState.verificationPending;
        case r'VerificationSuccess': return VerificationState.verificationSuccess;
        case r'VerificationFailed': return VerificationState.verificationFailed;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [VerificationStateTypeTransformer] instance.
  static VerificationStateTypeTransformer? _instance;
}

