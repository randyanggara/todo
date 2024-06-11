import 'package:hive_flutter/adapters.dart';

abstract class ArchieveDataSource<T> {
  Box<T> getDatabase();

  Future<void> save(T model);

  Future<void> delete(int index);
}
