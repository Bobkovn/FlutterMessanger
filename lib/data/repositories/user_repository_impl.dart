import 'package:dartz/dartz.dart';
import 'package:flutter_messenger/core/error/exception.dart';
import 'package:flutter_messenger/core/error/failures.dart';
import 'package:flutter_messenger/core/platform/network_info.dart';
import 'package:flutter_messenger/data/datasources/auth_remote_data_source.dart';
import 'package:flutter_messenger/data/datasources/user_local_data_source.dart';
import 'package:flutter_messenger/data/models/user_model.dart';
import 'package:flutter_messenger/domain/entities/credentials.dart';
import 'package:flutter_messenger/domain/entities/sign_up_data.dart';
import 'package:flutter_messenger/domain/repositories/auth_repository.dart';
import 'package:flutter_messenger/domain/repositories/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final UserLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  UserRepositoryImpl({
    required this.localDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, UserModel?>> getUser() async {
    try {
      final user = await localDataSource.getSavedUser();
      return Right(user);
    } on CacheException {
      return Left(CacheFailure());
    }
  }
}
