import 'dart:convert';

import 'package:dart_grpc_api/src/generated/eshop.pb.dart';
import 'package:hive/hive.dart';

class EshopDatabase {
  static late final Box<Map> productsBox;
  static const productKey = 'products';

  static createDatabase() async {
    productsBox = await Hive.openBox<Map>(productKey, path: './');
  }

  static Future<Product> addProduct(Product product) async {
    final products = productsBox.values;
    if (products.where((element) => element['2'] == product.name).isEmpty) {
      final productId = products.isEmpty ? 1 : (products.last['1'] + 1);
      product.id = productId;
      await productsBox.put((productId).toString(), product.writeToJsonMap());
      return product;
    } else {
      throw Exception('product already exists');
    }
  }

  static Future<Product> editProduct(Product product) async {
    throw UnimplementedError();
  }

  static Future<Empty> deleteProduct(int id) async {
    throw UnimplementedError();
  }

  static List<Product> getAllProducts() {
    return List<Product>.from(
        (productsBox.values).map((e) => Product.fromJson(jsonEncode(e))));
  }
}
