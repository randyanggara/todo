import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo/data/data_source/archieve/archieve_data_source.dart';
import 'package:todo/data/database/storage_scheme.dart';
import 'package:todo/data/model/archieve/archieve_db.dart';

class ArchieveDataSourceImpl implements ArchieveDataSource<ArchieveModel> {
  @override
  Box<ArchieveModel> getDatabase() =>
      Hive.box<ArchieveModel>(StorageScheme.archieve);

  @override
  Future<void> save(ArchieveModel model) =>
      Hive.box<ArchieveModel>(StorageScheme.archieve).add(model);

  @override
  Future<void> delete(int index) =>
      Hive.box<ArchieveModel>(StorageScheme.archieve).deleteAt(index);
}
