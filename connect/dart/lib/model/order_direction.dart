//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class OrderDirection {
  /// Instantiate a new enum with the provided [value].
  const OrderDirection._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ascending = OrderDirection._(r'Ascending');
  static const descending = OrderDirection._(r'Descending');

  /// List of all possible values in this [enum][OrderDirection].
  static const values = <OrderDirection>[
    ascending,
    descending,
  ];

  static OrderDirection? fromJson(dynamic value) => OrderDirectionTypeTransformer().decode(value);

  static List<OrderDirection> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrderDirection>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrderDirection.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [OrderDirection] to String,
/// and [decode] dynamic data back to [OrderDirection].
class OrderDirectionTypeTransformer {
  factory OrderDirectionTypeTransformer() => _instance ??= const OrderDirectionTypeTransformer._();

  const OrderDirectionTypeTransformer._();

  String encode(OrderDirection data) => data.value;

  /// Decodes a [dynamic value][data] to a OrderDirection.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  OrderDirection? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Ascending': return OrderDirection.ascending;
        case r'Descending': return OrderDirection.descending;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [OrderDirectionTypeTransformer] instance.
  static OrderDirectionTypeTransformer? _instance;
}

