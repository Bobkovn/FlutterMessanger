import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_messenger/resources/themes.dart';
import 'theme_event.dart';
import 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeState(appThemeData[AppTheme.Light]!));

  @override
  Stream<ThemeState> mapEventToState(
    ThemeEvent event,
  ) async* {
    if (event is ThemeChanged) {
      yield ThemeState(appThemeData[event.appTheme]!);
    }
  }
}
