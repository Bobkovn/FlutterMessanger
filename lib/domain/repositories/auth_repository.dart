import 'package:dartz/dartz.dart';
import 'package:flutter_messenger/core/error/failures.dart';
import 'package:flutter_messenger/domain/entities/credentials.dart';
import 'package:flutter_messenger/domain/entities/sign_up_data.dart';

abstract class AuthRepository {
  Future<Either<Failure, void>> logIn(Credentials credentials);

  Future<Either<Failure, void>> signUp(SignUpData signUpData);

  Future<Either<Failure, bool>> isUserAuthenticated();
}
