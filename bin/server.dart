import 'dart:io';

import 'package:dart_grpc_api/src/database/database.dart';
import 'package:dart_grpc_api/src/generated/eshop.pbgrpc.dart';
import 'package:dart_grpc_api/src/services/images_service.dart';
import 'package:dart_grpc_api/src/services/product_service.dart';
import 'package:grpc/grpc.dart' as grpc;
import 'package:grpc/src/server/call.dart';

class EshopService extends EshopServiceBase {
  final ProductService productService = ProductService();
  final ImageService imageService = ImageService();

  @override
  Future<Product> createProduct(ServiceCall call, Product request) async {
    return productService.createProduct(request);
  }

  @override
  Future<Empty> deleteProduct(ServiceCall call, Id request) async {
    return productService.deleteProduct(request.id);
  }

  @override
  Future<Product> editProduct(ServiceCall call, Product request) async {
    return productService.editProduct(request);
  }

  @override
  Future<Products> getAllProducts(ServiceCall call, Empty request) async {
    return productService.getProducts(Empty);
  }

  @override
  Future<ImageLink> uploadImage(
      grpc.ServiceCall call, Stream<AppImage> request) async {
    return await imageService.uploadImage(request);
  }

  @override
  Stream<AppImage> loadImage(grpc.ServiceCall call, ImageLink request) async* {
    yield* imageService.loadImage(request.link);
  }
}

Future<void> main(List<String> args) async {
  final server = grpc.Server([EshopService()]);
  await EshopDatabase.createDatabase();
  await server.serve(port: 50000);
  print('Server listening on port ${server.port}...');
}
