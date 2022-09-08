import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shop/models/product.dart';

class Api extends _Api {
  static const String categoriesCollection = 'categories';

  Api();

  @override
  Future<Map<String, List<Product>>> getAllGoods() async {
    Map<String, List<Product>> result = {};
    final categories = await getCollection(categoriesCollection);
    for (final category in categories.docs) {
      final t = await getCollection(category.data()['id']);
      List<Product> products = [];

      for (final product in t.docs) {
        products.add(Product.fromJson(product.data()));
      }

      result[category.data()['name']] = products;
    }
    return result;
  }
}

abstract class _Api {
  Future<QuerySnapshot<Map<String, dynamic>>> getCollection(
    String collection,
  ) async {
    return FirebaseFirestore.instance.collection(collection).get();
  }

  Future<Map<String, List<Product>>> getAllGoods();
}
