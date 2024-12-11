import 'package:flutter/material.dart';
import 'package:flutter_duo_practice/constants/fonts_constants.dart';
import 'package:flutter_duo_practice/pages/favorites_page/favorites.dart';
import 'package:flutter_duo_practice/pages/player_page/player.dart';
import 'package:flutter_duo_practice/pages/profile_page/profile.dart';
import 'package:flutter_duo_practice/constants/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: TextTheme(titleLarge: AppFonts.regular),
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.secondary, surface: AppColors.background),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const FavoritesPages(),
    const PlayerPages(),
    const ProfilePages()
  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 0,
        selectedFontSize: 0,
        backgroundColor: AppColors.primary,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home, size: 40), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.play_circle_rounded, size: 70), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_rounded, size: 40), label: ""),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.secondary,
        unselectedItemColor: AppColors.background,
        onTap: _onItemTapped,
      ),
    );
  }
}

