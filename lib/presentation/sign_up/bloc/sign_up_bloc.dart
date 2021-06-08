import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_messenger/core/utils/email_validator.dart';
import 'package:flutter_messenger/core/utils/password_validator.dart';
import 'package:flutter_messenger/domain/entities/sign_up_data.dart';
import 'package:flutter_messenger/domain/usecases/signup_usecase.dart';
import 'package:formz/formz.dart';

import 'sign_up_event.dart';

import 'sign_up_state.dart';

const SERVER_ERROR_MESSAGE = "Something went wrong!";

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final SignUpUseCase signUpUseCase;

  SignUpBloc({required this.signUpUseCase}) : super(const SignUpState.initial());

  @override
  Stream<SignUpState> mapEventToState(
    SignUpEvent event,
  ) async* {
    if (event is SignUp) {
      yield* _signUp(event.email, event.password);
    } else if (event is EmailChanged) {
      yield _mapEmailChangedToState(event.email);
    } else if (event is PasswordChanged) {
      yield _mapPasswordChangedToState(event.password);
    }
  }

  Stream<SignUpState> _signUp(String email, String password) async* {
    yield const SignUpState.loading();
    final result = await signUpUseCase.call(SignUpData(email, password, "", ""));
    yield result.fold(
      (failure) => SignUpState.error(failure.message),
      (_) => const SignUpState.loaded(),
    );
  }

  SignUpState _mapEmailChangedToState(String email) {
    final emailForm = Email.dirty(email);
    return SignUpState.credentialStatus(Formz.validate([emailForm]));
  }

  SignUpState _mapPasswordChangedToState(String password) {
    final passwordForm = Password.dirty(password);
    return SignUpState.credentialStatus(Formz.validate([passwordForm]));
  }
}
