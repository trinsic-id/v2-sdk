//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class VerificationType {
  /// Instantiate a new enum with the provided [value].
  const VerificationType._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const governmentId = VerificationType._(r'GovernmentId');

  /// List of all possible values in this [enum][VerificationType].
  static const values = <VerificationType>[
    governmentId,
  ];

  static VerificationType? fromJson(dynamic value) => VerificationTypeTypeTransformer().decode(value);

  static List<VerificationType> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VerificationType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VerificationType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [VerificationType] to String,
/// and [decode] dynamic data back to [VerificationType].
class VerificationTypeTypeTransformer {
  factory VerificationTypeTypeTransformer() => _instance ??= const VerificationTypeTypeTransformer._();

  const VerificationTypeTypeTransformer._();

  String encode(VerificationType data) => data.value;

  /// Decodes a [dynamic value][data] to a VerificationType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  VerificationType? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'GovernmentId': return VerificationType.governmentId;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [VerificationTypeTypeTransformer] instance.
  static VerificationTypeTypeTransformer? _instance;
}

