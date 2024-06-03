import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo/data/data_source/user_config/user_config_data_source.dart';
import 'package:todo/data/database/storage_scheme.dart';

class UserConfigDataSourceImpl implements UserConfigDataSource {
  @override
  Future<void> closeBox() => Hive.box(StorageScheme.config).close();

  @override
  Future<Box> openConfigBox() => Hive.openBox(StorageScheme.config);

  @override
  Future<bool> getIsFirstTime() =>
      Hive.box(StorageScheme.config).get(StorageScheme.isFirstTime) ?? true;

  @override
  Future<void> putIsFirstTime(bool value) =>
      Hive.box(StorageScheme.config).put(StorageScheme.isFirstTime, value);
}
