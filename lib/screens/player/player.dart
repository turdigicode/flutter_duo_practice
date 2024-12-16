import 'package:flutter/material.dart';
import 'package:flutter_duo_practice/constants/app_colors.dart';

class Player extends StatelessWidget {
  const Player({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Player page"),
      ),
      backgroundColor: AppColors.primary,
      body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Player page"),
            ],
          )
      ),
    );
  }
}