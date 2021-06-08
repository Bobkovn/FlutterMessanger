import 'package:flutter_messenger/resources/themes.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'theme_event.freezed.dart';

@freezed
abstract class ThemeEvent with _$ThemeEvent {
  const factory ThemeEvent.themeChanged(AppTheme appTheme) = ThemeChanged;
}
