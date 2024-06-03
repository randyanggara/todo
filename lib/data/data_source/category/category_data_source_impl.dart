import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo/data/data_source/category/category_data_source.dart';
import 'package:todo/data/database/storage_scheme.dart';
import 'package:todo/data/model/category/category_model.dart';

class CategoryDataSourceImpl implements CategoryDataSource {
  @override
  Box<CategoryModel> getDatabase() =>
      Hive.box<CategoryModel>(StorageScheme.categories);

  @override
  Future<void> save(CategoryModel model) =>
      Hive.box<CategoryModel>(StorageScheme.categories).add(model);

  @override
  Future<void> delete(int index) =>
      Hive.box<CategoryModel>(StorageScheme.categories).deleteAt(index);
}
