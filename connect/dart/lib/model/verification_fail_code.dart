//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class VerificationFailCode {
  /// Instantiate a new enum with the provided [value].
  const VerificationFailCode._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const verificationFailNone = VerificationFailCode._(r'VerificationFailNone');
  static const verificationFailInternal = VerificationFailCode._(r'VerificationFailInternal');
  static const verificationFailInvalidImage = VerificationFailCode._(r'VerificationFailInvalidImage');
  static const verificationFailInauthentic = VerificationFailCode._(r'VerificationFailInauthentic');
  static const verificationFailUnsupportedDocument = VerificationFailCode._(r'VerificationFailUnsupportedDocument');

  /// List of all possible values in this [enum][VerificationFailCode].
  static const values = <VerificationFailCode>[
    verificationFailNone,
    verificationFailInternal,
    verificationFailInvalidImage,
    verificationFailInauthentic,
    verificationFailUnsupportedDocument,
  ];

  static VerificationFailCode? fromJson(dynamic value) => VerificationFailCodeTypeTransformer().decode(value);

  static List<VerificationFailCode> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VerificationFailCode>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VerificationFailCode.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [VerificationFailCode] to String,
/// and [decode] dynamic data back to [VerificationFailCode].
class VerificationFailCodeTypeTransformer {
  factory VerificationFailCodeTypeTransformer() => _instance ??= const VerificationFailCodeTypeTransformer._();

  const VerificationFailCodeTypeTransformer._();

  String encode(VerificationFailCode data) => data.value;

  /// Decodes a [dynamic value][data] to a VerificationFailCode.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  VerificationFailCode? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'VerificationFailNone': return VerificationFailCode.verificationFailNone;
        case r'VerificationFailInternal': return VerificationFailCode.verificationFailInternal;
        case r'VerificationFailInvalidImage': return VerificationFailCode.verificationFailInvalidImage;
        case r'VerificationFailInauthentic': return VerificationFailCode.verificationFailInauthentic;
        case r'VerificationFailUnsupportedDocument': return VerificationFailCode.verificationFailUnsupportedDocument;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [VerificationFailCodeTypeTransformer] instance.
  static VerificationFailCodeTypeTransformer? _instance;
}

