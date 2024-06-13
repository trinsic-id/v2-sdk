//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SessionOrdering {
  /// Instantiate a new enum with the provided [value].
  const SessionOrdering._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const created = SessionOrdering._(r'Created');
  static const updated = SessionOrdering._(r'Updated');
  static const state = SessionOrdering._(r'State');

  /// List of all possible values in this [enum][SessionOrdering].
  static const values = <SessionOrdering>[
    created,
    updated,
    state,
  ];

  static SessionOrdering? fromJson(dynamic value) =>
      SessionOrderingTypeTransformer().decode(value);

  static List<SessionOrdering> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <SessionOrdering>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SessionOrdering.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SessionOrdering] to String,
/// and [decode] dynamic data back to [SessionOrdering].
class SessionOrderingTypeTransformer {
  factory SessionOrderingTypeTransformer() =>
      _instance ??= const SessionOrderingTypeTransformer._();

  const SessionOrderingTypeTransformer._();

  String encode(SessionOrdering data) => data.value;

  /// Decodes a [dynamic value][data] to a SessionOrdering.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SessionOrdering? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Created':
          return SessionOrdering.created;
        case r'Updated':
          return SessionOrdering.updated;
        case r'State':
          return SessionOrdering.state;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SessionOrderingTypeTransformer] instance.
  static SessionOrderingTypeTransformer? _instance;
}
