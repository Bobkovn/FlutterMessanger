
import 'dart:io';

import 'package:flutter_messenger/data/models/user_model.dart';
import 'package:flutter_messenger/domain/entities/credentials.dart';
import 'package:flutter_messenger/domain/entities/sign_up_data.dart';

abstract class AuthRemoteDataSource {
  Future<UserModel> logIn(Credentials credentials);

  Future<UserModel> signUp(SignUpData signUpData);
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final HttpClient client;

  AuthRemoteDataSourceImpl({required this.client});

  @override
  Future<UserModel> logIn(Credentials credentials) {
    // TODO: implement logIn
    throw UnimplementedError();
  }

  @override
  Future<UserModel> signUp(SignUpData signUpData) {
    // TODO: implement signUp
    throw UnimplementedError();
  }
}

