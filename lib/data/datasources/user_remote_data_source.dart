import 'dart:convert';
import 'dart:io';

import 'package:flutter_messenger/core/error/exception.dart';
import 'package:flutter_messenger/data/models/user_model.dart';

abstract class UserRemoteDataSource {
  Future<UserModel> getUser();

  Future<void> updateUser(UserModel userModel);
}

class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  final HttpClient client;

  UserRemoteDataSourceImpl({required this.client});

  @override
  Future<UserModel> getUser() async {
    // final response = await client.get(
    //   'http://numbersapi.com/',
    // );
    //
    // if (response.statusCode == 200) {
    //   return UserModel.fromJson(json.decode(response.body) as Map<String, dynamic>);
    // } else {
    //   throw ServerException();
    // }
      throw ServerException();
  }

  @override
  Future<void> updateUser(UserModel userModel) async {
    // TODO: implement updateUser
    throw UnimplementedError();
  }
}
