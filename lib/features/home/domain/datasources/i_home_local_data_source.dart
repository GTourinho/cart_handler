import 'package:cart_handler/features/home/domain/model/store_item.dart';

abstract class IHomeLocalDataSource {
  Future<List<StoreItem>> getStoreItems();
  Future<void> setStoreItem(StoreItem item);
}
