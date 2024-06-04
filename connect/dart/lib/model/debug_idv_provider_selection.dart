//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DebugIdvProviderSelection {
  /// Instantiate a new enum with the provided [value].
  const DebugIdvProviderSelection._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const default_ = DebugIdvProviderSelection._(r'Default');
  static const idVerse = DebugIdvProviderSelection._(r'IdVerse');
  static const argos = DebugIdvProviderSelection._(r'Argos');
  static const clear = DebugIdvProviderSelection._(r'Clear');
  static const yoti = DebugIdvProviderSelection._(r'Yoti');
  static const eidEasy = DebugIdvProviderSelection._(r'EidEasy');

  /// List of all possible values in this [enum][DebugIdvProviderSelection].
  static const values = <DebugIdvProviderSelection>[
    default_,
    idVerse,
    argos,
    clear,
    yoti,
    eidEasy,
  ];

  static DebugIdvProviderSelection? fromJson(dynamic value) =>
      DebugIdvProviderSelectionTypeTransformer().decode(value);

  static List<DebugIdvProviderSelection> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <DebugIdvProviderSelection>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DebugIdvProviderSelection.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DebugIdvProviderSelection] to String,
/// and [decode] dynamic data back to [DebugIdvProviderSelection].
class DebugIdvProviderSelectionTypeTransformer {
  factory DebugIdvProviderSelectionTypeTransformer() =>
      _instance ??= const DebugIdvProviderSelectionTypeTransformer._();

  const DebugIdvProviderSelectionTypeTransformer._();

  String encode(DebugIdvProviderSelection data) => data.value;

  /// Decodes a [dynamic value][data] to a DebugIdvProviderSelection.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DebugIdvProviderSelection? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Default':
          return DebugIdvProviderSelection.default_;
        case r'IdVerse':
          return DebugIdvProviderSelection.idVerse;
        case r'Argos':
          return DebugIdvProviderSelection.argos;
        case r'Clear':
          return DebugIdvProviderSelection.clear;
        case r'Yoti':
          return DebugIdvProviderSelection.yoti;
        case r'EidEasy':
          return DebugIdvProviderSelection.eidEasy;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DebugIdvProviderSelectionTypeTransformer] instance.
  static DebugIdvProviderSelectionTypeTransformer? _instance;
}
