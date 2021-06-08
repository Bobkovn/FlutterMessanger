import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'failures.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.serverFailure([String? message]) = ServerFailure;

  const factory Failure.cacheFailure([String? message]) = CacheFailure;
}
