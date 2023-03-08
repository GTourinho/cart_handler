import 'package:cart_handler/core/event.dart';
import 'package:cart_handler/features/home/domain/model/store_item.dart';
import 'package:injectable/injectable.dart';

@injectable
class HomeEvent extends Event {
  const HomeEvent();
}

@injectable
class GetStoreListEvent extends HomeEvent {
  const GetStoreListEvent();
}

@injectable
class AddToCartEvent extends HomeEvent {
  final StoreItem item;
  const AddToCartEvent(
    this.item,
  );
}
