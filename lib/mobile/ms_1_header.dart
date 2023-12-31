import 'package:flutter/material.dart';

import '../statics/data_values.dart';
import '../theme/app_theme.dart';
import '../widgets/social_profiles.dart';

class MS1Header extends StatelessWidget {
  const MS1Header({Key? key}) : super(key: key);

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
      const SizedBox(height: 40.0),
      Column(
        children: const [
          SelectableText(
            DataValues.headerGreetings,
            style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.w700,
                color: AppThemeData.textPrimary),
          ),
          SelectableText(
            DataValues.headerName,
            style:TextStyle(
              fontSize: 46.0,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          SelectableText(
            DataValues.headerTitle,
            style:TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
                color: AppThemeData.textGreyDark),
          ),
          SizedBox(height: 24.0),
          SocialProfiles(),
        ],
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppThemeData.backgroundBlack,
      child: Padding(
          padding: const EdgeInsets.only(bottom: 40.0),
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: headerData(),
              ),
              const SizedBox(height: 40.0),
            ],
          )),
    );
  }
}
