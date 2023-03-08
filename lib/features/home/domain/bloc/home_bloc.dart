import 'dart:developer';

import 'package:cart_handler/features/home/domain/usecases/get_store_items_use_case.dart';
import 'package:cart_handler/features/home/domain/usecases/set_store_item_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'home_event.dart';
import 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetStoreItemsUseCase getStoreItemsUseCase;
  final SetStoreItemUseCase setStoreItemUseCase;
  HomeBloc(
    this.getStoreItemsUseCase,
    this.setStoreItemUseCase,
  ) : super(const HomeState()) {
    on<GetStoreListEvent>((event, emit) async {
      final items = await getStoreItemsUseCase();
      log(items.toString());
      emit(const HomeLoadingState());
    });

    on<AddToCartEvent>((event, emit) async {
      await setStoreItemUseCase(event.item);
      emit(const HomeLoadingState());
    });
  }
}
