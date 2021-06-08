import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'login_state.freezed.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState.initial() = Initial;
  const factory LoginState.credentialStatus(FormzStatus status) = CredentialStatus;
  const factory LoginState.loading() = Loading;
  const factory LoginState.loaded() = Loaded;
  const factory LoginState.error(String? message) = Error;
}