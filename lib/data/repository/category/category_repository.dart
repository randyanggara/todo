import 'package:hive_flutter/hive_flutter.dart';

abstract class CategoryRepository<T> {
  Box<T> getDatabase();

  Future<void> save(T model);

  Future<void> delete(int index);
}
