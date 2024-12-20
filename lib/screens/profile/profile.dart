import 'package:flutter/material.dart';
import 'package:flutter_duo_practice/constants/app_colors.dart';

import '../../constants/app_routes.dart';
import '../../constants/app_text_styles.dart';
import 'models/profileButtons.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});
  final _titleText = "Profile page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titleText),
        titleTextStyle: AppTextStyles.title,
        backgroundColor: AppColors.primary,
        centerTitle: true,
      ),

      body: const Column(
        children: [
          UserProfile(),
          Expanded(
            child: ProfileWidgetsListView(),
          )
        ]
      ),
    );
  }
}

class UserProfile extends StatelessWidget{
  const UserProfile({super.key});
  final String _defaultName = "John Doe";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 50),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 150,
              decoration: const BoxDecoration(
                color: AppColors.background,
                backgroundBlendMode: BlendMode.saturation,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [AppColors.primary, AppColors.secondary],
                ),
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              alignment: Alignment.center,
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                _defaultName,
                style: AppTextStyles.title,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        )
    );
  }
}

class ProfileWidgetsListView extends StatelessWidget {
  const ProfileWidgetsListView({super.key});

  static Map<ProfileButtons, String> buttonsLabels = {
    ProfileButtons.profileDetails: "Profile Details",
    ProfileButtons.about: "About"
  };

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const Divider(
        color: AppColors.secondary,
        height: 30,
        thickness: 3,
      ),
      itemCount: buttonsLabels.length,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      itemBuilder: (context, index) {
        final button = buttonsLabels.keys.elementAt(index);
        final label = buttonsLabels[button];

        return ListTile(
          title: Text(label!),
          titleTextStyle: AppTextStyles.buttonSecondary,
          tileColor: AppColors.secondary,
          enableFeedback: true,

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          leading: const Icon(
            Icons.arrow_forward_ios_rounded,
            color: AppColors.primary,
          ),

          onTap: () {
            switch (button) {
              case ProfileButtons.profileDetails:
                Navigator.pushNamed(context, AppRoutes.player);
                break;
              case ProfileButtons.about:
                Navigator.pushNamed(context, AppRoutes.player);
                break;
            }
          },
        );
      },
    );
  }
}