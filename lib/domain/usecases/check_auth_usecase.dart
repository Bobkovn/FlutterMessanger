import 'package:dartz/dartz.dart';
import 'package:flutter_messenger/core/error/failures.dart';
import 'package:flutter_messenger/core/usecases/usecase.dart';
import 'package:flutter_messenger/domain/repositories/auth_repository.dart';

class CheckAuthUseCase extends UseCase<bool, NoParams> {
  final AuthRepository repository;

  CheckAuthUseCase(this.repository);

  @override
  Future<Either<Failure, bool>> call(NoParams noParams) async {
    return await repository.isUserAuthenticated();
  }
}