import 'package:hive_flutter/hive_flutter.dart';

abstract class TasksDataSource<T> {
  Box<T> getDatabase();

  Future<void> saveTask(T model);

  Future<void> deleteTask(int index);

  Future<void> updateTask({
    required int index,
    required T model,
  });
}
