import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_messenger/core/utils/custom_routes.dart';
import 'package:flutter_messenger/di/injection_container.dart';
import 'package:flutter_messenger/presentation/home/pages/home_page.dart';

import 'bloc/home_bloc.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/home';

  const HomeScreen();

  static Route route(RouteSettings settings) => FadeRoute<void>(
        builder: (_) => const HomeScreen(),
        settings: settings,
      );

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di<HomeBloc>(),
      child: const HomePage(),
    );
  }
}
