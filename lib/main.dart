import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_messenger/presentation/base/routers.dart';
import 'package:flutter_messenger/presentation/base/themes/theme_bloc.dart';
import 'package:flutter_messenger/presentation/splash/splash_screen.dart';
import 'package:flutter_messenger/resources/localizations.dart';
import 'di/injection_container.dart' as di;
import 'presentation/base/themes/theme_state.dart';

Future<void> main() async {
  await di.init();
  runApp(MessengerApp());
}

class MessengerApp extends StatelessWidget {
  final PageRouters _pageRouters = PageRouters();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeBloc(),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return _buildApp(context, state);
        },
      ),
    );
  }

  Widget _buildApp(BuildContext context, ThemeState state) {
    return MaterialApp(
      title: 'Flutter Messenger',
      localizationsDelegates: const [
        AppLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      debugShowCheckedModeBanner: false,
      theme: state.appTheme,
      supportedLocales: const [Locale("en"), Locale("ru")],
      home: const SplashScreen(),
      onGenerateRoute: (settings) => _pageRouters.generateRoute(settings),
    );
  }
}
