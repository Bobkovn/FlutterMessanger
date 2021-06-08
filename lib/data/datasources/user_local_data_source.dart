import 'dart:convert';

import 'package:flutter_messenger/core/error/exception.dart';
import 'package:flutter_messenger/data/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

const USER_SHARED_KEY = 'USER_SHARED_KEY';

abstract class UserLocalDataSource {
  Future<UserModel?> getSavedUser();

  Future<bool> saveUser(UserModel userModel);
}

class UserLocalDataSourceImpl implements UserLocalDataSource {
  final SharedPreferences sharedPreferences;

  UserLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<UserModel?> getSavedUser() async {
    final jsonString = sharedPreferences.getString(USER_SHARED_KEY);
    if (jsonString != null) {
      return Future.value(UserModel.fromJson(json.decode(jsonString) as Map<String, dynamic>));
    } else {
      throw CacheException();
    }
  }

  @override
  Future<bool> saveUser(UserModel userModel) async {
    return sharedPreferences.setString(
      USER_SHARED_KEY,
      json.encode(userModel.toJson()),
    );
  }
}
