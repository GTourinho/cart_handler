import 'package:cart_handler/core/error/failures.dart';
import 'package:cart_handler/features/home/domain/datasources/i_home_local_data_source.dart';
import 'package:cart_handler/features/home/domain/model/store_item.dart';
import 'package:cart_handler/features/home/domain/repositories/i_home_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IHomeRepository)
class HomeRepository implements IHomeRepository {
  final IHomeLocalDataSource homeLocalDataSource;

  HomeRepository(
    this.homeLocalDataSource,
  );

  @override
  Future<Either<Failure, List<StoreItem>>> getStoreItems() async {
    try {
      final items = await homeLocalDataSource.getStoreItems();
      return Right(items);
    } on Failure catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<Failure, void>> setStoreItem(StoreItem item) async {
    try {
      await homeLocalDataSource.setStoreItem(item);
      return const Right(null);
    } on Failure catch (e) {
      return Left(e);
    }
  }
}
