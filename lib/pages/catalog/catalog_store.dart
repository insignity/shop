import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:shop/models/product.dart';
import 'package:shop/services/api.dart';
import 'package:shop/utilities/runnable_store.dart';

part 'catalog_store.g.dart';

class CatalogStore = _CatalogStore with _$CatalogStore;

abstract class _CatalogStore extends RunnableStore with Store {

  @readonly
  Map<String, List<Product>> _catalog = {};

  Future<void> init() async {
    await run(() async {
      _catalog = await GetIt.I<Api>().getAllGoods();
    });
  }
}
