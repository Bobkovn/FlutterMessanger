import 'package:dartz/dartz.dart';
import 'package:flutter_messenger/core/error/failures.dart';
import 'package:flutter_messenger/core/usecases/usecase.dart';
import 'package:flutter_messenger/domain/entities/credentials.dart';
import 'package:flutter_messenger/domain/repositories/auth_repository.dart';

class LoginUseCase extends UseCase<void, Credentials> {
  final AuthRepository repository;

  LoginUseCase(this.repository);

  @override
  Future<Either<Failure, void>> call(Credentials credentials) async {
    return await repository.logIn(credentials);
  }
}
