import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_messenger/presentation/chat/chat_screen.dart';
import 'package:flutter_messenger/presentation/contacts/contacts_screen.dart';
import 'package:flutter_messenger/presentation/home/home_screen.dart';
import 'package:flutter_messenger/presentation/login/login_screen.dart';
import 'package:flutter_messenger/presentation/profile/profile_screen.dart';
import 'package:flutter_messenger/presentation/settings/settings_screen.dart';
import 'package:flutter_messenger/presentation/splash/splash_screen.dart';

class PageRouters {
  final _routesMap = <String, Route Function(RouteSettings)>{
    SplashScreen.routeName: (settings) => SplashScreen.route(settings),
    HomeScreen.routeName: (settings) => HomeScreen.route(settings),
    LoginScreen.routeName: (settings) => LoginScreen.route(settings),
    ChatScreen.routeName: (settings) => ChatScreen.route(settings),
    ContactsScreen.routeName: (settings) => ContactsScreen.route(settings),
    SettingsScreen.routeName: (settings) => SettingsScreen.route(settings),
    ProfileScreen.routeName: (settings) => ProfileScreen.route(settings),
  };

  Route<dynamic> generateRoute(RouteSettings settings) => _routesMap[settings.name]!.call(settings);
}
