import 'package:hive/hive.dart';
import 'package:todo/data/data_source/archieve/archieve_data_source.dart';
import 'package:todo/data/model/archieve/archieve_db.dart';
import 'package:todo/data/repository/archieve/archieve_repository.dart';

class ArchieveRepositoryImpl implements ArchieveRepository<ArchieveModel> {
  final ArchieveDataSource<ArchieveModel> _archieveDataSource;

  ArchieveRepositoryImpl(
      {required ArchieveDataSource<ArchieveModel> archieveDataSource})
      : _archieveDataSource = archieveDataSource;

  @override
  Future<void> save(ArchieveModel model) => _archieveDataSource.save(model);

  @override
  Future<void> delete(int index) => _archieveDataSource.delete(index);

  @override
  Box<ArchieveModel> getDatabase() => _archieveDataSource.getDatabase();
}
