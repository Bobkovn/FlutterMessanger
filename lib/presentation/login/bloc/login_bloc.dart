import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_messenger/core/utils/email_validator.dart';
import 'package:flutter_messenger/core/utils/password_validator.dart';
import 'package:flutter_messenger/domain/entities/credentials.dart';
import 'package:flutter_messenger/domain/usecases/login_usecase.dart';
import 'package:formz/formz.dart';

import 'login_event.dart';

import 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginUseCase loginUseCase;

  LoginBloc({required this.loginUseCase}) : super(const LoginState.initial());

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is Login) {
      yield* _login(event.email, event.password);
    } else if (event is EmailChanged) {
      yield _mapEmailChangedToState(event.email);
    } else if (event is PasswordChanged) {
      yield _mapPasswordChangedToState(event.password);
    }
  }

  Stream<LoginState> _login(String email, String password) async* {
    yield const LoginState.loading();
    final result = await loginUseCase.call(Credentials(email, password));
    yield result.fold(
      (failure) => LoginState.error(failure.message),
      (_) => const LoginState.loaded(),
    );
  }

  LoginState _mapEmailChangedToState(String email) {
    final emailForm = Email.dirty(email);
    return LoginState.credentialStatus(Formz.validate([emailForm]));
  }

  LoginState _mapPasswordChangedToState(String password) {
    final passwordForm = Password.dirty(password);
    return LoginState.credentialStatus(Formz.validate([passwordForm]));
  }
}
