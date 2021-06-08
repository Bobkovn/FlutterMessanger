import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'splash_event.freezed.dart';

@freezed
abstract class SplashEvent with _$SplashEvent {
  const factory SplashEvent.checkAuthStatus() = CheckAuthStatus;
}