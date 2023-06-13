import 'package:flutter/material.dart';
import '../statics/data_values.dart';
import '../theme/app_theme.dart';
import '../widgets/nav_bar.dart';
import '../widgets/social_profiles.dart';

class DS1Header extends StatelessWidget {
  const DS1Header({Key? key}) : super(key: key);

  List<Widget> headerData() {
    return [
      Center(
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.black,
              width: 2.0,
            ),
          ),
          child: ClipOval(
            child: Image.asset(
              'assets/images/profile_bg.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      const SizedBox(width: 60.0),
      Column(
        children: [
          SelectableText(
            DataValues.headerGreetings,
            style: AppThemeData.darkTheme.textTheme.headlineSmall,
          ),
          SelectableText(
            DataValues.headerName,
            style: AppThemeData.darkTheme.textTheme.displayMedium,
          ),
          SelectableText(
            DataValues.headerTitle,
            style: AppThemeData.darkTheme.textTheme.titleLarge,
          ),
          const SizedBox(height: 20.0),
          const SocialProfiles(),
        ],
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppThemeData.backgroundBlack,
      child: Padding(
          padding: const EdgeInsets.only(top: 60.0, bottom: 40.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: headerData(),
              ),
              const SizedBox(height: 60.0),
              NavBar().desktopNavBar(),
            ],
          )),
    );
  }
}
