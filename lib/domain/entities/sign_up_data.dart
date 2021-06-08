import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'sign_up_data.freezed.dart';

@freezed
abstract class SignUpData with _$SignUpData {
  const factory SignUpData(String email, String password, String name, String referenceName) =
      _SignUpData;
}
