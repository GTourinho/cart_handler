import 'dart:convert';

import 'package:cart_handler/features/home/domain/datasources/i_home_local_data_source.dart';
import 'package:cart_handler/features/home/domain/model/store_item.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@Injectable(as: IHomeLocalDataSource)
class HomeLocalDataSource implements IHomeLocalDataSource {
  final SharedPreferences sharedPreferences;
  HomeLocalDataSource(
    this.sharedPreferences,
  );

  @override
  Future<List<StoreItem>> getStoreItems() async {
    final items = <StoreItem>[];
    final storeItems = sharedPreferences.getString('storeItems');
    if (storeItems == null) {
      return items;
    }

    final storeItemsEncoded = jsonDecode(storeItems);
    for (final item in storeItemsEncoded) {
      items.add(StoreItem.fromJson(item));
    }
    return items;
  }

  @override
  Future<void> setStoreItem(StoreItem item) async {
    final items = await getStoreItems();
    final index = items.indexWhere((element) => element.id == item.id);
    if (index == -1) {
      items.add(item);
    } else {
      items[index] = item;
    }
    final storeItemsEncoded = jsonEncode(items);
    await sharedPreferences.setString('storeItems', storeItemsEncoded);
  }
}
