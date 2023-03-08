import 'package:cart_handler/core/error/failures.dart';
import 'package:cart_handler/features/home/domain/model/store_item.dart';
import 'package:cart_handler/features/home/domain/repositories/i_home_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class SetStoreItemUseCase {
  final IHomeRepository homeRepository;

  SetStoreItemUseCase(this.homeRepository);

  Future<Either<Failure, void>> call(StoreItem item) async {
    final result = await homeRepository.setStoreItem(item);
    return result;
  }
}
