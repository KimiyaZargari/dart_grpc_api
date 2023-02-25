import 'dart:convert';

import 'package:dart_grpc_api/src/generated/eshop.pb.dart';
import 'package:hive/hive.dart';

class EshopDatabase {
  static late final BoxCollection database;
  static const categoryKey = 'categories', productKey = 'products';

  static createDatabase() async {
    database = await BoxCollection.open(
      'EshopDatabase', // Name of your database
      {categoryKey, productKey}, // Names of your boxes
      path: './',
    );
    // var openBox = await database.openBox(categoryKey);
    // await openBox.clear();
  }

  static Future<Category?> getCategory(int id) async {
    final box = await database.openBox<Map>(categoryKey);
    return Category.fromJson((await box.get(id.toString())).toString());
  }

  static Future<Product?> getProduct(int id) async {
    final box = await database.openBox<Map>(productKey);
    return Product.fromJson((await box.get(id.toString())).toString());
  }

  static Future<Category> addCategory(Category category) async {
    print('adding category');
    final box = await database.openBox<Map>(categoryKey);
    print('${box.name} opened');
    final categories = (await box.getAllValues()).values;
    if (categories.where((element) => element['2'] == category.name).isEmpty) {
      final categoryId = categories.isEmpty ? 1 : (categories.last['1'] + 1);
      try {
        await box.put((categoryId).toString(),
            Category(id: categoryId, name: category.name).writeToJsonMap());
        print('category added');

        return category;
      } catch (e) {
        print(e);
        throw e;
      }
    } else {
      throw Exception('category already exists');
    }
  }

  static Future<Product> addProduct(Product product) async {
    throw UnimplementedError();
  }

  static Future<Category> editCategory(Category category) async {
    throw UnimplementedError();
  }

  static Future<Product> editProduct(Product product) async {
    throw UnimplementedError();
  }

  static Future<Empty> deleteCategory(int id) async {
    throw UnimplementedError();
  }

  static Future<Empty> deleteProduct(int id) async {
    throw UnimplementedError();
  }

  static Future<List<Product>?> getProductsOfCategory(int id) async {
    throw UnimplementedError();
  }

  static Future<List<Category>> getAllCategories() async {
    final box = await database.openBox<Map>(categoryKey);
    try {
      return List<Category>.from((await box.getAllValues())
          .values
          .map((e) => Category.fromJson(jsonEncode(e))));
    } catch (e) {
      print(e);
      throw e;
    }
  }

  static Future<List<Product>> getAllProducts() async {
    throw UnimplementedError();
  }
}
