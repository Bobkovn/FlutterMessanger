import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_messenger/core/utils/custom_routes.dart';
import 'package:flutter_messenger/di/injection_container.dart';
import 'package:flutter_messenger/presentation/profile/pages/profile_page.dart';

import 'bloc/profile_bloc.dart';

class ProfileScreen extends StatelessWidget {
  static const String routeName = '/profile';

  const ProfileScreen();

  static Route route(RouteSettings settings) => FadeRoute<void>(
        builder: (_) => const ProfileScreen(),
        settings: settings,
      );

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di<ProfileBloc>(),
      child: const ProfilePage(),
    );
  }
}
