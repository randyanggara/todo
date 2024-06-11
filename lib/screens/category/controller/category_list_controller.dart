import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo/data/model/category/category_model.dart';
import 'package:todo/data/model/tasks/task_model.dart';
import 'package:todo/data/repository/category/category_repository.dart';
import 'package:todo/data/repository/task/tasks_repository.dart';
import 'package:todo/services/locator_service.dart';

class CategoryListController {
  final CategoryRepository<CategoryModel> _categoryRepository;

  CategoryListController(
      {required CategoryRepository<CategoryModel> categoryRepository})
      : _categoryRepository = categoryRepository;

  final _taskRepository =
      serviceLocator<TasksRepository<TaskModel>>().getDatabase();

  Box<CategoryModel> getDataBase() => _categoryRepository.getDatabase();

  int getCategoriesLength(int index) {
    final taskBox = _taskRepository;
    List<int> numbers = [];

    for (int i = 0; i < getDataBase().length; i++) {
      numbers.add(taskBox.values
          .where((element) => element.category == getDataBase().getAt(i)!.title)
          .toList()
          .length);
    }
    return numbers[index];
  }

  Future<void> removeCategory({required int index}) async =>
      await _categoryRepository.delete(index);
}
