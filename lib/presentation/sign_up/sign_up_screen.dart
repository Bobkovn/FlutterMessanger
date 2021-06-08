import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_messenger/core/utils/custom_routes.dart';
import 'package:flutter_messenger/di/injection_container.dart';
import 'package:flutter_messenger/presentation/sign_up/pages/sign_up_page.dart';

import 'bloc/sign_up_bloc.dart';

class SignUpScreen extends StatelessWidget {
  static const String routeName = '/signUp';

  const SignUpScreen();

  static Route route(RouteSettings settings) => FadeRoute<void>(
        builder: (_) => const SignUpScreen(),
        settings: settings,
      );

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di<SignUpBloc>(),
      child: const SignUpPage(),
    );
  }
}
