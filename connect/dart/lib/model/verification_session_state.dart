//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class VerificationSessionState {
  /// Instantiate a new enum with the provided [value].
  const VerificationSessionState._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const pending = VerificationSessionState._(r'Pending');
  static const processing = VerificationSessionState._(r'Processing');
  static const success = VerificationSessionState._(r'Success');
  static const failed = VerificationSessionState._(r'Failed');

  /// List of all possible values in this [enum][VerificationSessionState].
  static const values = <VerificationSessionState>[
    pending,
    processing,
    success,
    failed,
  ];

  static VerificationSessionState? fromJson(dynamic value) =>
      VerificationSessionStateTypeTransformer().decode(value);

  static List<VerificationSessionState> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <VerificationSessionState>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VerificationSessionState.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [VerificationSessionState] to String,
/// and [decode] dynamic data back to [VerificationSessionState].
class VerificationSessionStateTypeTransformer {
  factory VerificationSessionStateTypeTransformer() =>
      _instance ??= const VerificationSessionStateTypeTransformer._();

  const VerificationSessionStateTypeTransformer._();

  String encode(VerificationSessionState data) => data.value;

  /// Decodes a [dynamic value][data] to a VerificationSessionState.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  VerificationSessionState? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Pending':
          return VerificationSessionState.pending;
        case r'Processing':
          return VerificationSessionState.processing;
        case r'Success':
          return VerificationSessionState.success;
        case r'Failed':
          return VerificationSessionState.failed;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [VerificationSessionStateTypeTransformer] instance.
  static VerificationSessionStateTypeTransformer? _instance;
}
