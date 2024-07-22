import 'package:fpdart/fpdart.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failure.dart';
import '../../domain/repository/i_{{feature_name.snakeCase()}}_repository.dart';
import '../remote_data_sources/{{feature_name.snakeCase()}}_remote_data_source.dart';

class {{feature_name.pascalCase()}}Repository implements I{{feature_name.pascalCase()}}Repository {
  final {{feature_name.pascalCase()}}RemoteDataSource {{feature_name.lowerCase()}}RemoteDataSource;
  {{feature_name.pascalCase()}}Repository(this.{{feature_name.camelCase()}}RemoteDataSource);

  @override
  Future<Either<Failure, String>> someFunction(
      {required String someParam1,
      required String someParam2,
      }) async {
    try {
      throw UnimplementedError;
    } on ServerException catch (e) {
      return left(Failure(e.toString()));
    }
  }
}
