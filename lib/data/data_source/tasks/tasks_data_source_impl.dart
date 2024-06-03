import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo/data/data_source/tasks/task_data_source.dart';
import 'package:todo/data/database/storage_scheme.dart';
import 'package:todo/data/model/tasks/task_model.dart';

class TasksDataSourceImpl implements TasksDataSource {
  final _taskDatabase = Hive.box<TaskModel>(StorageScheme.tasks);

  @override
  Box<TaskModel> getDatabase() => _taskDatabase;

  @override
  Future<void> saveTask(TaskModel model) => _taskDatabase.add(model);

  @override
  Future<void> deleteTask(int index) => _taskDatabase.deleteAt(index);

  @override
  Future<void> updateTask({
    required int index,
    required TaskModel model,
  }) =>
      _taskDatabase.putAt(
        index,
        model,
      );
}
