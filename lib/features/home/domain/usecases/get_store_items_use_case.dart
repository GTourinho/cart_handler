import 'package:cart_handler/core/error/failures.dart';
import 'package:cart_handler/features/home/domain/model/store_item.dart';
import 'package:cart_handler/features/home/domain/repositories/i_home_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetStoreItemsUseCase {
  final IHomeRepository homeRepository;

  GetStoreItemsUseCase(this.homeRepository);

  Future<Either<Failure, List<StoreItem>>> call() async {
    final items = await homeRepository.getStoreItems();
    return items;
  }
}
