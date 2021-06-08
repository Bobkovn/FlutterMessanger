import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_messenger/core/utils/custom_routes.dart';
import 'package:flutter_messenger/di/injection_container.dart';
import 'package:flutter_messenger/presentation/splash/bloc/splash_bloc.dart';
import 'package:flutter_messenger/presentation/splash/pages/splash_page.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = '/splash';

  const SplashScreen();

  static Route route(RouteSettings settings) => FadeRoute<void>(
        builder: (_) => const SplashScreen(),
        settings: settings,
      );

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di<SplashBloc>(),
      child: const SplashPage(),
    );
  }
}
