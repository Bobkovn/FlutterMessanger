import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'sign_up_event.freezed.dart';

@freezed
abstract class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.emailChanged(String email) = EmailChanged;

  const factory SignUpEvent.passwordChanged(String password) = PasswordChanged;

  const factory SignUpEvent.signUp(FormzStatus status, String email, String password) = SignUp;
}
