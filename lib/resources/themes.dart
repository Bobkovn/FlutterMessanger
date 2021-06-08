import 'package:flutter/material.dart';
import 'package:flutter_messenger/resources/palette.dart';

enum AppTheme { Dark, Light }

final appThemeData = {
  AppTheme.Light: ThemeData(
    brightness: Brightness.light,
    primaryColor: Palette.white,
  ),
  AppTheme.Dark: ThemeData(
    brightness: Brightness.dark,
    primaryColor: Palette.black,
  ),
};
