import 'dart:io';

import 'package:dart_grpc_api/src/database/database.dart';
import 'package:dart_grpc_api/src/generated/eshop.pbgrpc.dart';
import 'package:dart_grpc_api/src/services/category_service.dart';
import 'package:dart_grpc_api/src/services/item_service.dart';
import 'package:grpc/grpc.dart' as grpc;
import 'package:grpc/src/server/call.dart';
//import 'package:path_provider/path_provider.dart';

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
  Future<ImageLink> uploadImage(
      grpc.ServiceCall call, Stream<AppImage> request) async {
    final List<int> image = [];
    String? name;
    await for (var element in request) {
      if (element.name.isNotEmpty) {
        name = element.name;
      }
      image.addAll(element.image);
    }
    File imageFile = File('lib\\src\\database\\images\\' + (name ?? 'image'));
    await imageFile.writeAsBytes(image);
    return ImageLink(imageLink: name ?? 'image');
  }

  @override
  Stream<AppImage> loadImage(grpc.ServiceCall call, ImageLink request) async* {
    File imageFile = File('lib\\src\\database\\images\\' + (request.imageLink));

    final imageBytes = await imageFile.readAsBytes();

    int index = 0;
    while (index < imageBytes.length) {
      int lastIndex = index + 128;
      if (lastIndex > imageBytes.length) lastIndex = imageBytes.length;
      final data = AppImage(
        image: imageBytes.sublist(index, lastIndex),
      );
      yield data;
      index = lastIndex;
    }
  }
}

Future<void> main(List<String> args) async {
  final server = grpc.Server([EshopService()]);
  await EshopDatabase.createDatabase();
  await server.serve(port: 50000);
  print('Server listening on port ${server.port}...');
}
