import 'package:flutter/material.dart';
import 'package:flutter_duo_practice/constants/app_colors.dart';

class Favorites extends StatelessWidget {
  const Favorites({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorites page"),
      ),
      backgroundColor: AppColors.primary,
      body: const Center(
        child: Text("Favourites page"),
      ),
    );
  }
}