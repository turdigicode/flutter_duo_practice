import 'package:flutter/material.dart';
import 'package:flutter_duo_practice/constants/app_text_styles.dart';
import '../constants/app_colors.dart';
import '../constants/app_routes.dart';
import '../screens/home/home.dart';
import '../screens/player/player.dart';
import '../screens/profile/profile.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meditation',
      theme: ThemeData(
        textTheme: TextTheme(titleLarge: AppTextStyles.body),
        colorScheme: ColorScheme.fromSeed(
            seedColor: AppColors.secondary,
            surface: AppColors.background
        ),
        useMaterial3: true,
      ),
      initialRoute: AppRoutes.main,
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const Home(),
    const Player(),
    const Profile()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if(_selectedIndex == 1){
        Navigator.pushNamed(context, AppRoutes.player);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
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
          BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 40),
              label: ""
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.play_circle_rounded, size: 70),
              label: ""
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_rounded, size: 40),
              label: ""
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.secondary,
        unselectedItemColor: AppColors.background,
        onTap: _onItemTapped,
      ),
    );
  }
}
