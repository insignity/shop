import 'package:get_it/get_it.dart';
import 'package:shop/services/api.dart';

void initServiceLocator() {
  GetIt.I.registerSingleton<Api>(Api());

  // GetIt.I.registerLazySingleton<CatalogStore>(CatalogStore());

}
