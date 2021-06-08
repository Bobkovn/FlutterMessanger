import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_messenger/core/utils/custom_routes.dart';
import 'package:flutter_messenger/di/injection_container.dart';
import 'package:flutter_messenger/presentation/chat/pages/chat_page.dart';

import 'bloc/chat_bloc.dart';

class ChatScreen extends StatelessWidget {
  static const String routeName = '/chat';

  const ChatScreen();

  static Route route(RouteSettings settings) => FadeRoute<void>(
        builder: (_) => const ChatScreen(),
        settings: settings,
      );

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di<ChatBloc>(),
      child: const ChatPage(),
    );
  }
}
