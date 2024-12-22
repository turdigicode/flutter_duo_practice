import 'package:flutter/material.dart';
import 'package:flutter_duo_practice/constants/app_colors.dart';

import '../../constants/app_routes.dart';

class Player extends StatelessWidget {
  const Player({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Player page"),
        leading:
          IconButton(
            onPressed: (){
              Navigator.pushNamedAndRemoveUntil(context, AppRoutes.main, (route) => false);
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      backgroundColor: AppColors.secondaryBackground,
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