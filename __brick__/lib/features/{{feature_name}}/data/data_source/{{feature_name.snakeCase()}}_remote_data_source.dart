
import '../../../../core/error/exceptions.dart';

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
      //TODO: Implement someFunction
      throw UnimplementedError;
    } on ServerException catch (e) {
      throw ServerException(e.toString());
    }
  }
}
