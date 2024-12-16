import 'package:flutter/material.dart';

import '../main.dart';
import '../screens/favorites/favorites.dart';
import '../screens/player/player.dart';
import '../screens/profile/profile.dart';

class AppRoutes {
  static const String home = "/";
  static const String favorites = "/favorites";
  static const String player = "/player";
  static const String profile = "/profile";

  static MaterialPageRoute? onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
        builder: (BuildContext context) {
          switch (settings.name) {
            case home:
              return const MyHomePage();
            case favorites:
              return const Favorites();
            case player:
              return const Player();
            case profile:
              return const Profile();
            default:
              return const MyHomePage();
          }
      },
    );
  }
}
