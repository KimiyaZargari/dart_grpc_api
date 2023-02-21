import 'package:dart_grpc_api/src/generated/eshop.pb.dart';

class ProductService {
  Product createProduct(Product product) {
    return Product(id: 1, name: 'Product');
  }

  Empty deleteProduct(int productId) {
    return Empty();
  }

  Product editProduct(Product product) {
    return product;
  }

  Products getAllProducts() {
    return Products(products: [Product(id: 1, name: 'numnum')]);
  }

  Product getProduct(int productId) {
    return Product(id: productId, name: 'numnum');
  }

  Products getProductsOfCategory(int id) {
    return Products(products: [Product(id: id, name: 'numnum')]);
  }
}
