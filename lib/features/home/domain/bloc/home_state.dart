import 'package:cart_handler/core/state.dart';
import 'package:cart_handler/features/home/domain/model/store_item.dart';
import 'package:injectable/injectable.dart';

@injectable
class HomeState extends State {
  const HomeState();
}

@injectable
class HomeLoadingState extends HomeState {
  const HomeLoadingState();
}

@injectable
class HomeLoadedState extends HomeState {
  final List<StoreItem> items;

  const HomeLoadedState(
    this.items,
  );
}
