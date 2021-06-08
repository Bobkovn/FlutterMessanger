import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_messenger/core/utils/custom_routes.dart';
import 'package:flutter_messenger/di/injection_container.dart';
import 'package:flutter_messenger/presentation/contacts/pages/contacts_page.dart';

import 'bloc/contacts_bloc.dart';

class ContactsScreen extends StatelessWidget {
  static const String routeName = '/contacts';

  const ContactsScreen();

  static Route route(RouteSettings settings) => FadeRoute<void>(
        builder: (_) => const ContactsScreen(),
        settings: settings,
      );

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di<ContactsBloc>(),
      child: const ContactsPage(),
    );
  }
}
