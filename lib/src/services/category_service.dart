import 'package:dart_grpc_api/src/database/database.dart';
import 'package:dart_grpc_api/src/generated/eshop.pb.dart';

class CategoryService {
  Future<Category> createCategory(Category category) async {
    return await EshopDatabase.addCategory(category);
  }

  Empty deleteCategory(int categoryId) {
    return Empty();
  }

  Category editCategory(Category category) {
    return category;
  }

  Future<Categories> getAllCategories() async {
    return Categories(categories: await EshopDatabase.getAllCategories());
  }

  Category getCategory(int categoryId) {
    return Category(id: categoryId, name: 'numnum');
  }
}
