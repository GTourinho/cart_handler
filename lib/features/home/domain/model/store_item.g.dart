// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StoreItem _$$_StoreItemFromJson(Map<String, dynamic> json) => _$_StoreItem(
      id: json['id'] as String,
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
      quantity: json['quantity'] as int,
    );

Map<String, dynamic> _$$_StoreItemToJson(_$_StoreItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'quantity': instance.quantity,
    };
