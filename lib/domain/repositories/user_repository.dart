import 'package:dartz/dartz.dart';
import 'package:flutter_messenger/core/error/failures.dart';
import 'package:flutter_messenger/data/models/user_model.dart';

abstract class UserRepository {
  Future<Either<Failure, UserModel?>> getUser();
}
