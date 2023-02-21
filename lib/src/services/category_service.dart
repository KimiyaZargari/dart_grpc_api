import 'package:dart_grpc_api/src/generated/eshop.pb.dart';

class CategoryService {
  Category createCategory(Category category) {
    return Category(id: 1, name: 'category');
  }

  Empty deleteCategory(int categoryId) {
    return Empty();
  }

  Category editCategory(Category category) {
    return category;
  }

  Categories getAllCategories() {
    return Categories(categories: [Category(id: 1, name: 'cat')]);
  }

  Category getCategory(int categoryId) {
    return Category(id: categoryId, name: 'numnum');
  }
}
