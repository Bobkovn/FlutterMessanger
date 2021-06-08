import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'sign_up_state.freezed.dart';

@freezed
abstract class SignUpState with _$SignUpState {
  const factory SignUpState.initial() = Initial;
  const factory SignUpState.credentialStatus(FormzStatus status) = CredentialStatus;
  const factory SignUpState.loading() = Loading;
  const factory SignUpState.loaded() = Loaded;
  const factory SignUpState.error(String? message) = Error;
}