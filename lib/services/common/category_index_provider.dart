import 'package:todo/data/model/category/category_model.dart';
import 'package:todo/data/repository/category/category_repository.dart';
import 'package:todo/services/locator_service.dart';

//TODO should replace
class CategoryIndexProvider {
  int getCategoryIndex(String category) {
    final categoryBox =
        serviceLocator<CategoryRepository<CategoryModel>>().getDatabase();
    for (int i = 0; i < categoryBox.length; i++) {
      if (categoryBox.getAt(i)!.title == category) {
        return i;
      }
    }
    return 0;
  }
}
