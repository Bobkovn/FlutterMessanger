import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_messenger/core/utils/custom_routes.dart';
import 'package:flutter_messenger/di/injection_container.dart';
import 'package:flutter_messenger/presentation/login/pages/login_page.dart';

import 'bloc/settings_bloc.dart';

class SettingsScreen extends StatelessWidget {
  static const String routeName = '/settings';

  const SettingsScreen();

  static Route route(RouteSettings settings) => FadeRoute<void>(
        builder: (_) => const SettingsScreen(),
        settings: settings,
      );

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di<SettingsBloc>(),
      child: const SettingsPage(),
    );
  }
}
