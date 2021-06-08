import 'package:dartz/dartz.dart';
import 'package:flutter_messenger/core/error/exception.dart';
import 'package:flutter_messenger/core/error/failures.dart';
import 'package:flutter_messenger/core/platform/network_info.dart';
import 'package:flutter_messenger/data/datasources/auth_remote_data_source.dart';
import 'package:flutter_messenger/data/datasources/user_local_data_source.dart';
import 'package:flutter_messenger/domain/entities/credentials.dart';
import 'package:flutter_messenger/domain/entities/sign_up_data.dart';
import 'package:flutter_messenger/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;
  final UserLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  AuthRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, void>> logIn(Credentials credentials) async {
    try {
      final user = await remoteDataSource.logIn(credentials);
      await localDataSource.saveUser(user);
      return const Right(null);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, void>> signUp(SignUpData signUpData) async {
    try {
      final user = await remoteDataSource.signUp(signUpData);
      await localDataSource.saveUser(user);
      return const Right(null);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, bool>> isUserAuthenticated() {
    // TODO: implement isUserAuthenticated
    throw UnimplementedError();
  }
}
