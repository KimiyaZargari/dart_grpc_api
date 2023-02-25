import 'dart:io';

import 'package:dart_grpc_api/src/database/database.dart';
import 'package:dart_grpc_api/src/generated/eshop.pbgrpc.dart';
import 'package:dart_grpc_api/src/services/category_service.dart';
import 'package:dart_grpc_api/src/services/item_service.dart';
import 'package:grpc/grpc.dart' as grpc;
import 'package:grpc/src/server/call.dart';

class EshopService extends EshopServiceBase {
  final CategoryService categoryService = CategoryService();
  final ProductService productService = ProductService();

  @override
  Future<Category> createCategory(ServiceCall call, Category request) async {
    return categoryService.createCategory(request);
  }

  @override
  Future<Product> createProduct(ServiceCall call, Product request) async {
    return productService.createProduct(request);
  }

  @override
  Future<Empty> deleteCategory(ServiceCall call, ID request) async {
    return categoryService.deleteCategory(request.id);
  }

  @override
  Future<Empty> deleteProduct(ServiceCall call, ID request) async {
    return productService.deleteProduct(request.id);
  }

  @override
  Future<Products> getProductsOfCategory(ServiceCall call, ID request) async {
    return productService.getProductsOfCategory(request.id);
  }

  @override
  Future<Category> editCategory(ServiceCall call, Category request) async {
    return categoryService.editCategory(request);
  }

  @override
  Future<Product> editProduct(ServiceCall call, Product request) async {
    return productService.editProduct(request);
  }

  @override
  Future<Categories> getAllCategories(ServiceCall call, Empty request) async {
    return categoryService.getAllCategories();
  }

  @override
  Future<Products> getAllProducts(ServiceCall call, Empty request) async {
    return productService.getAllProducts();
  }

  @override
  Future<Category> getCategory(ServiceCall call, ID request) async {
    return categoryService.getCategory(request.id);
  }

  @override
  Future<Product> getProduct(ServiceCall call, ID request) async {
    return productService.getProduct(request.id);
  }

  @override
  Future<ImageLinks> uploadImages(
      grpc.ServiceCall call, Stream<ImageToUpload> request) async {
    final List<int> image = [];
    String? name;
    await for (var element in request) {
      if (element.name.isNotEmpty) {
        name = element.name;
      }
      image.addAll(element.image);
    }

    File imageFile = File(name ?? 'image');
    await imageFile.writeAsBytes(image);

    //   // links.add(filePath);
    // });
    //
    return ImageLinks(imageLinks: name);
  }
}

Future<void> main(List<String> args) async {
  final server = grpc.Server([EshopService()]);
  await EshopDatabase.createDatabase();
  await server.serve(port: 50000);
  print('Server listening on port ${server.port}...');
}
