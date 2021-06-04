import 'package:get_it/get_it.dart';

import 'ui/main/home_navigation_controller.dart';

GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  locator
    ..registerLazySingleton<HomeNavigationController>(
        () => HomeNavigationController());
}
