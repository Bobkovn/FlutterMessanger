import 'dart:io';

import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:flutter_messenger/core/platform/network_info.dart';
import 'package:flutter_messenger/data/datasources/auth_remote_data_source.dart';
import 'package:flutter_messenger/data/datasources/user_local_data_source.dart';
import 'package:flutter_messenger/data/datasources/user_remote_data_source.dart';
import 'package:flutter_messenger/data/repositories/auth_repository_impl.dart';
import 'package:flutter_messenger/data/repositories/user_repository_impl.dart';
import 'package:flutter_messenger/domain/repositories/auth_repository.dart';
import 'package:flutter_messenger/domain/repositories/user_repository.dart';
import 'package:flutter_messenger/domain/usecases/check_auth_usecase.dart';
import 'package:flutter_messenger/domain/usecases/login_usecase.dart';
import 'package:flutter_messenger/domain/usecases/signup_usecase.dart';
import 'package:flutter_messenger/presentation/chat/bloc/chat_bloc.dart';
import 'package:flutter_messenger/presentation/contacts/bloc/contacts_bloc.dart';
import 'package:flutter_messenger/presentation/home/bloc/home_bloc.dart';
import 'package:flutter_messenger/presentation/login/bloc/login_bloc.dart';
import 'package:flutter_messenger/presentation/settings/bloc/settings_bloc.dart';
import 'package:flutter_messenger/presentation/sign_up/bloc/sign_up_bloc.dart';
import 'package:flutter_messenger/presentation/splash/bloc/splash_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final di = GetIt.instance;

Future<void> init() async {
  await _initExternalDependencies();
  _initCoreDependencies();
  _initDataSourceDependencies();
  _initRepositoryDependencies();
  _initUseCaseDependencies();
  _initBlocDependencies();
}

Future<void> _initExternalDependencies() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  di.registerLazySingleton(() => sharedPreferences);
  di.registerLazySingleton(() => HttpClient());
  di.registerLazySingleton(() => DataConnectionChecker());
}

void _initCoreDependencies() {
  di.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(di()));
}

void _initDataSourceDependencies() {
  di.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(client: di()),
  );
  di.registerLazySingleton<UserRemoteDataSource>(
    () => UserRemoteDataSourceImpl(client: di()),
  );
  di.registerLazySingleton<UserLocalDataSource>(
    () => UserLocalDataSourceImpl(sharedPreferences: di()),
  );
}

void _initRepositoryDependencies() {
  di.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(
      remoteDataSource: di(),
      localDataSource: di(),
      networkInfo: di(),
    ),
  );
  di.registerLazySingleton<UserRepository>(
    () => UserRepositoryImpl(
      localDataSource: di(),
      networkInfo: di(),
    ),
  );
}

void _initUseCaseDependencies() {
  di.registerLazySingleton(() => LoginUseCase(di()));
  di.registerLazySingleton(() => SignUpUseCase(di()));
  di.registerLazySingleton(() => CheckAuthUseCase(di()));
}

void _initBlocDependencies() {
  di.registerFactory(
    () => SplashBloc(
      checkAuthUseCase: di(),
    ),
  );
  di.registerFactory(
    () => LoginBloc(
      loginUseCase: di(),
    ),
  );
  di.registerFactory(
    () => SignUpBloc(
      signUpUseCase: di(),
    ),
  );
  di.registerFactory(
    () => HomeBloc(),
  );
  di.registerFactory(
    () => ChatBloc(),
  );
  di.registerFactory(
    () => ContactsBloc(),
  );
  di.registerFactory(
    () => SettingsBloc(),
  );
}
