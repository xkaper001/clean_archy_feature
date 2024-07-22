
import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failure.dart';
import '../../domain/repository/i_{{feature_name.snakeCase()}}_repository.dart';
import '../remote_data_sources/{{feature_name.snakeCase()}}_remote_data_source.dart';

abstract interface class I{{feature_name.pascalCase()}}RemoteDataSource {
  Future<String> someFunction({
    required String name,
    required String email,
    required String password,
  });
}

class {{feature_name.pascalCase()}}RemoteDataSource implements I{{feature_name.pascalCase()}}RemoteDataSource {
  {{feature_name.pascalCase()}}RemoteDataSource();
  
  @override
  Future<String> someFunction({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      //try statements
    } on ServerException catch (e) {
      throw ServerException(e.toString());
    }
  }
}
