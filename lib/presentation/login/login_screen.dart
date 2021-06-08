import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_messenger/core/utils/custom_routes.dart';
import 'package:flutter_messenger/di/injection_container.dart';
import 'package:flutter_messenger/presentation/login/bloc/login_bloc.dart';
import 'package:flutter_messenger/presentation/login/pages/login_page.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = '/login';

  const LoginScreen();

  static Route route(RouteSettings settings) => FadeRoute<void>(
        builder: (_) => const LoginScreen(),
        settings: settings,
      );

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di<LoginBloc>(),
      child: const SettingsPage(),
    );
  }
}
