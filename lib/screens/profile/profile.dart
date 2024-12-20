import 'package:flutter/material.dart';
import 'package:flutter_duo_practice/constants/app_colors.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 56),
          child: Text("Profile page"),
        )
      ),
      backgroundColor: AppColors.primary,
      body: const Center(
        child: Text("Profile page"),
      ),
    );
  }
}