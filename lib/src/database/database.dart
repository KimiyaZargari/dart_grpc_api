import 'package:dart_grpc_api/src/generated/eshop.pb.dart';
import 'package:hive/hive.dart';

class EshopDatabase {
  static late final BoxCollection database;

  static createDatabase() async {
    database = await BoxCollection.open(
      'EshopDatabase', // Name of your database
      {'categories', 'products'}, // Names of your boxes
      path: './',
    );
  }

  static Future<Category?> getCategory(int id) async {
    throw UnimplementedError();
  }

  static Future<Product?> getProduct(int id) async {
    throw UnimplementedError();
  }

  static Future<Category> addCategory(Category category) async {
    throw UnimplementedError();
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
    throw UnimplementedError();
  }

  static Future<List<Product>> getAllProducts() async {
    throw UnimplementedError();
  }
}
