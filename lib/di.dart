import 'package:cart_handler/di.config.dart';
import 'package:cart_handler/features/home/domain/model/store_item.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

GetIt getIt = GetIt.instance;

@InjectableInit(preferRelativeImports: false)
Future<void> configureDependencies() async => getIt.init();
