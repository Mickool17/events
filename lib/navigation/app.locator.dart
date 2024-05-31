import 'package:get_it/get_it.dart';

import '../routes/app_router.dart';


final GetIt locator = GetIt.instance;

void setupLocator() {
  // locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => AppRouter());

}
