import 'package:blog_app/core/error/failures.dart';
import 'package:fpdart/fpdart.dart';

// Abstract inteface are used to define the methods that will be implemented by the concrete class
abstract interface class AuthRepository {
  // The Either<> class is used to return either a success or a failure
  Future<Either<Failure, String>> signUpWithEmailPassword(
      {required String name, required String email, required String password});
  Future <Either<Failure, String>> loginWithEmailPassword(
      {required String email, required String password});
}


