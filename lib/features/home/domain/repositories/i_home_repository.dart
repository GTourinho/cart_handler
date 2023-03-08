import 'package:cart_handler/core/error/failures.dart';
import 'package:cart_handler/features/home/domain/model/store_item.dart';
import 'package:dartz/dartz.dart';

abstract class IHomeRepository {
  Future<Either<Failure, List<StoreItem>>> getStoreItems();
  Future<Either<Failure, void>> setStoreItem(StoreItem item);
}
