import 'package:fpdart/fpdart.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failure.dart';

abstract interface class I{{feature_name.pascalCase()}}Repository {
  @override
  Future<Either<Failure, String>> someFunction(
      {required String someParam1,
      required String someParam2,}) ;
}