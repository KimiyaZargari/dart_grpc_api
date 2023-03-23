import 'package:dart_grpc_api/src/generated/eshop.pb.dart';

import '../database/database.dart';

class ProductService {
  Future<Product> createProduct(Product product) async {
    return await EshopDatabase.addProduct(product);
  }

  Empty deleteProduct(int productId) {
    return Empty();
  }

  Product editProduct(Product product) {
    return product;
  }

  Products getProducts(Empty)  {
    return Products(products:  EshopDatabase.getAllProducts());
  }
}
