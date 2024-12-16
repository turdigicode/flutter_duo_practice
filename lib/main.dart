import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_routes.dart';
import '../constants/fonts_constants.dart';
import '../screens/favorites/favorites.dart';
import '../screens/player/player.dart';
import '../screens/profile/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meditation',
      //home: const MyHomePage(),
      theme: ThemeData(
        textTheme: TextTheme(titleLarge: AppFonts.regular),
        colorScheme: ColorScheme.fromSeed(
            seedColor: AppColors.secondary,
            surface: AppColors.background
        ),
        useMaterial3: true,
      ),
      initialRoute: AppRoutes.home,
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 1;

  final List<Widget> _screens = [
    const Favorites(),
    const Player(),
    const Profile()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 0,
        selectedFontSize: 0,
        backgroundColor: AppColors.primary,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home, size: 40), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.play_circle_rounded, size: 70), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_rounded, size: 40), label: ""),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.secondary,
        unselectedItemColor: AppColors.background,
        onTap: _onItemTapped,
      ),
    );
  }
}
