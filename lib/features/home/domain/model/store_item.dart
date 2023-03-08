import 'package:freezed_annotation/freezed_annotation.dart';

part 'store_item.freezed.dart';
part 'store_item.g.dart';

@freezed
class StoreItem with _$StoreItem {
  const factory StoreItem({
    required String id,
    required String name,
    required double price,
    required int quantity,
  }) = _StoreItem;

  factory StoreItem.fromJson(Map<String, Object?> json) =>
      _$StoreItemFromJson(json);
}
