import 'package:dartz/dartz.dart';
import 'package:flutter_messenger/core/error/failures.dart';
import 'package:flutter_messenger/core/usecases/usecase.dart';
import 'package:flutter_messenger/domain/entities/sign_up_data.dart';
import 'package:flutter_messenger/domain/repositories/auth_repository.dart';

class SignUpUseCase extends UseCase<void, SignUpData> {
  final AuthRepository repository;

  SignUpUseCase(this.repository);

  @override
  Future<Either<Failure, void>> call(SignUpData data) async {
    return await repository.signUp(data);
  }
}
