import 'package:flutter/material.dart';

import '../main.dart';
import '../screens/home/home.dart';
import '../screens/player/player.dart';
import '../screens/profile/profile.dart';

class AppRoutes {
  static const String main = "/";
  static const String home = "/home";
  static const String player = "/player";
  static const String profile = "/profile";

  static MaterialPageRoute? onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
        builder: (BuildContext context) {
          switch (settings.name) {
            case main:
              return const MainPage();
            case home:
              return const Home();
            case player:
              return const Player();
            case profile:
              return const Profile();
            default:
              return const MainPage();
          }
      },
    );
  }
}
