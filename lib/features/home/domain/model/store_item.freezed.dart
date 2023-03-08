// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StoreItem _$StoreItemFromJson(Map<String, dynamic> json) {
  return _StoreItem.fromJson(json);
}

/// @nodoc
mixin _$StoreItem {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoreItemCopyWith<StoreItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreItemCopyWith<$Res> {
  factory $StoreItemCopyWith(StoreItem value, $Res Function(StoreItem) then) =
      _$StoreItemCopyWithImpl<$Res, StoreItem>;
  @useResult
  $Res call({String id, String name, double price, int quantity});
}

/// @nodoc
class _$StoreItemCopyWithImpl<$Res, $Val extends StoreItem>
    implements $StoreItemCopyWith<$Res> {
  _$StoreItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? quantity = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StoreItemCopyWith<$Res> implements $StoreItemCopyWith<$Res> {
  factory _$$_StoreItemCopyWith(
          _$_StoreItem value, $Res Function(_$_StoreItem) then) =
      __$$_StoreItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, double price, int quantity});
}

/// @nodoc
class __$$_StoreItemCopyWithImpl<$Res>
    extends _$StoreItemCopyWithImpl<$Res, _$_StoreItem>
    implements _$$_StoreItemCopyWith<$Res> {
  __$$_StoreItemCopyWithImpl(
      _$_StoreItem _value, $Res Function(_$_StoreItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? quantity = null,
  }) {
    return _then(_$_StoreItem(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StoreItem implements _StoreItem {
  const _$_StoreItem(
      {required this.id,
      required this.name,
      required this.price,
      required this.quantity});

  factory _$_StoreItem.fromJson(Map<String, dynamic> json) =>
      _$$_StoreItemFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final double price;
  @override
  final int quantity;

  @override
  String toString() {
    return 'StoreItem(id: $id, name: $name, price: $price, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StoreItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, price, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StoreItemCopyWith<_$_StoreItem> get copyWith =>
      __$$_StoreItemCopyWithImpl<_$_StoreItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StoreItemToJson(
      this,
    );
  }
}

abstract class _StoreItem implements StoreItem {
  const factory _StoreItem(
      {required final String id,
      required final String name,
      required final double price,
      required final int quantity}) = _$_StoreItem;

  factory _StoreItem.fromJson(Map<String, dynamic> json) =
      _$_StoreItem.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  double get price;
  @override
  int get quantity;
  @override
  @JsonKey(ignore: true)
  _$$_StoreItemCopyWith<_$_StoreItem> get copyWith =>
      throw _privateConstructorUsedError;
}
