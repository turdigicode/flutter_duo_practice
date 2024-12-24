import 'package:flutter/material.dart';
import 'package:flutter_duo_practice/constants/app_colors.dart';

import '../../constants/app_routes.dart';
import '../../constants/app_text_styles.dart';

class Player extends StatelessWidget {
  const Player({super.key});
  final String _titleText = "Player page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titleText),
        titleTextStyle: AppTextStyles.title,
        backgroundColor: AppColors.secondaryBackground,
        centerTitle: true,
        leading:
          IconButton(
            onPressed: (){
              Navigator.pushNamedAndRemoveUntil(context, AppRoutes.main, (route) => false);
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      backgroundColor: AppColors.primaryBackground,
      body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(_titleText),
            ],
          )
      ),
    );
  }
}