import 'dart:async';

import 'package:cart_handler/di.dart';
import 'package:cart_handler/router.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();

  runZonedGuarded(() {
    runApp(MyApp());
  }, (error, stackTrace) {
    if (kDebugMode) {
      print(error);
      print(stackTrace);
    }
  });
}

class MyApp extends StatelessWidget {
  final _router = getIt<AppRouter>();

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router.appRouter,
    );
  }
}
