import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'credentials.freezed.dart';

@freezed
abstract class Credentials with _$Credentials {
  const factory Credentials(String email, String password) = _Credentials;
}
