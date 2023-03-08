// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cart_handler/core/services/register_module.dart' as _i15;
import 'package:cart_handler/features/home/data/datasources/home_local_data_source.dart'
    as _i9;
import 'package:cart_handler/features/home/data/repositories/home_repository.dart'
    as _i11;
import 'package:cart_handler/features/home/domain/bloc/home_bloc.dart' as _i14;
import 'package:cart_handler/features/home/domain/bloc/home_event.dart' as _i3;
import 'package:cart_handler/features/home/domain/bloc/home_state.dart' as _i6;
import 'package:cart_handler/features/home/domain/datasources/i_home_local_data_source.dart'
    as _i8;
import 'package:cart_handler/features/home/domain/model/store_item.dart' as _i4;
import 'package:cart_handler/features/home/domain/repositories/i_home_repository.dart'
    as _i10;
import 'package:cart_handler/features/home/domain/usecases/get_store_items_use_case.dart'
    as _i13;
import 'package:cart_handler/features/home/domain/usecases/set_store_item_use_case.dart'
    as _i12;
import 'package:cart_handler/router.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<_i3.AddToCartEvent>(
        () => _i3.AddToCartEvent(gh<_i4.StoreItem>()));
    gh.lazySingleton<_i5.AppRouter>(() => registerModule.appRouter);
    gh.factory<_i3.GetStoreListEvent>(() => _i3.GetStoreListEvent());
    gh.factory<_i3.HomeEvent>(() => _i3.HomeEvent());
    gh.factory<_i6.HomeLoadedState>(
        () => _i6.HomeLoadedState(gh<List<_i4.StoreItem>>()));
    gh.factory<_i6.HomeLoadingState>(() => _i6.HomeLoadingState());
    gh.factory<_i6.HomeState>(() => _i6.HomeState());
    await gh.factoryAsync<_i7.SharedPreferences>(
      () => registerModule.sharedPreferences,
      preResolve: true,
    );
    gh.factory<_i8.IHomeLocalDataSource>(
        () => _i9.HomeLocalDataSource(gh<_i7.SharedPreferences>()));
    gh.factory<_i10.IHomeRepository>(
        () => _i11.HomeRepository(gh<_i8.IHomeLocalDataSource>()));
    gh.factory<_i12.SetStoreItemUseCase>(
        () => _i12.SetStoreItemUseCase(gh<_i10.IHomeRepository>()));
    gh.factory<_i13.GetStoreItemsUseCase>(
        () => _i13.GetStoreItemsUseCase(gh<_i10.IHomeRepository>()));
    gh.factory<_i14.HomeBloc>(() => _i14.HomeBloc(
          gh<_i13.GetStoreItemsUseCase>(),
          gh<_i12.SetStoreItemUseCase>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i15.RegisterModule {}
