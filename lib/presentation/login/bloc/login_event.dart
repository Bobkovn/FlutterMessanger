import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'login_event.freezed.dart';

@freezed
abstract class LoginEvent with _$LoginEvent {
  const factory LoginEvent.emailChanged(String email) = EmailChanged;

  const factory LoginEvent.passwordChanged(String password) = PasswordChanged;

  const factory LoginEvent.login(FormzStatus status, String email, String password) = Login;
}
