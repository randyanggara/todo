import 'package:get_it/get_it.dart';
import 'package:todo/data/data_source/category/category_data_source.dart';
import 'package:todo/data/data_source/category/category_data_source_impl.dart';
import 'package:todo/data/model/category/category_model.dart';
import 'package:todo/data/repository/category/category_repository.dart';
import 'package:todo/data/repository/category/category_repository_impl.dart';

final serviceLocator = GetIt.instance;

void initDependencies() {
  final categoryDataSource =
      serviceLocator.registerSingleton<CategoryDataSource<CategoryModel>>(
    CategoryDataSourceImpl(),
  );
  serviceLocator.registerSingleton<CategoryRepository<CategoryModel>>(
    CategoryRepositoryImpl(
      categoryDataSource: categoryDataSource,
    ),
  );
}
