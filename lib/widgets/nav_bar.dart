import 'package:flutter/material.dart';
import '../statics/data_values.dart';
import '../statics/key_holders.dart';
import '../theme/app_theme.dart';
import 'button_rectangle.dart';
import 'button_text.dart';
import 'resume.dart';

class NavBar {
  Widget desktopNavBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ButtonTextLarge(
          text: DataValues.navBarAboutMe,
          onPressed: () => Scrollable.ensureVisible(
            KeyHolders.aboutKey.currentContext!,
            duration: const Duration(milliseconds: 1000),
          ),
          message: 'Go to ${DataValues.navBarAboutMe} section',
        ),
        const SizedBox(width: 20.0),
        ButtonTextLarge(
          text: DataValues.navBarSkillsAchievements,
          onPressed: () => Scrollable.ensureVisible(
            KeyHolders.skillsAchievements.currentContext!,
            duration: const Duration(milliseconds: 1000),
          ),
          message: 'Go to ${DataValues.navBarSkillsAchievements} section',
        ),
        const SizedBox(width: 20.0),
        ButtonTextLarge(
          text: DataValues.navBarPersonalProjects,
          onPressed: () => Scrollable.ensureVisible(
            KeyHolders.personalProjectsKey.currentContext!,
            duration: const Duration(milliseconds: 1000),
          ),
          message: 'Go to ${DataValues.navBarPersonalProjects} section',
        ),
        const SizedBox(width: 20.0),
        ButtonTextLarge(
          text: DataValues.navBarEducation,
          onPressed: () => Scrollable.ensureVisible(
            KeyHolders.educationKey.currentContext!,
            duration: const Duration(milliseconds: 1000),
          ),
          message: 'Go to ${DataValues.navBarEducation} section',
        ),
        const SizedBox(width: 20.0),
        ButtonTextLarge(
            text: DataValues.navBarContactMe,
            onPressed: () => Scrollable.ensureVisible(
              KeyHolders.contactKey.currentContext!,
              duration: const Duration(milliseconds: 1000),
            ),
            // color: AppThemeData.buttonPrimary,
            message: 'Go to ${DataValues.navBarContactMe} section'),
        const SizedBox(width: 20.0),
        ButtonRectangle(
            name: DataValues.navBarResume,
            onPressed: (){
              ResumeLauncher.launchResume();
            },
            color: AppThemeData.buttonPrimary,
            message: 'Open my ${DataValues.navBarResume}'),
      ],
    );
  }

  Widget mobileNavBar() {
    Widget miniHeader() {
      return Column(
        children: [
          Container(
            width: 80,
            height: 80,
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
          const SizedBox(height: 10.0),
          SelectableText(
            DataValues.headerName,
            style: TextStyle(
              color: AppThemeData.textPrimary,
              fontSize: AppThemeData.darkTheme.textTheme.titleLarge?.fontSize,
              fontWeight: FontWeight.bold,
            ),
          ),
          SelectableText(
            DataValues.headerTitle,
            style: AppThemeData.darkTheme.textTheme.labelLarge,
          ),
        ],
      );
    }

    return Drawer(
      backgroundColor: AppThemeData.backgroundBlack,
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        children: [
          const SizedBox(height: 60.0),
          miniHeader(),
          const SizedBox(height: 40.0),
          ButtonTextLarge(
            text: DataValues.navBarAboutMe,
            onPressed: () => Scrollable.ensureVisible(
              KeyHolders.aboutKey.currentContext!,
              duration: const Duration(milliseconds: 1000),
            ),
            message: 'Go to ${DataValues.navBarAboutMe} section',
          ),
          const SizedBox(height: 20.0),
          ButtonTextLarge(
            text: DataValues.navBarSkillsAchievements,
            onPressed: () => Scrollable.ensureVisible(
              KeyHolders.skillsAchievements.currentContext!,
              duration: const Duration(milliseconds: 1000),
            ),
            message: 'Go to ${DataValues.navBarSkillsAchievements} section',
          ),
          const SizedBox(height: 20.0),
          ButtonTextLarge(
            text: DataValues.navBarPersonalProjects,
            onPressed: () => Scrollable.ensureVisible(
              KeyHolders.personalProjectsKey.currentContext!,
              duration: const Duration(milliseconds: 1000),
            ),
            message: 'Go to ${DataValues.navBarPersonalProjects} section',
          ),
          const SizedBox(height: 20.0),
          ButtonTextLarge(
            text: DataValues.navBarEducation,
            onPressed: () => Scrollable.ensureVisible(
              KeyHolders.educationKey.currentContext!,
              duration: const Duration(milliseconds: 1000),
            ),
            message: 'Go to ${DataValues.navBarEducation} section',
          ),
          const SizedBox(height: 20.0),
          ButtonTextLarge(
              text: DataValues.navBarContactMe,
              onPressed: () => Scrollable.ensureVisible(
                    KeyHolders.contactKey.currentContext!,
                    duration: const Duration(milliseconds: 1000),
                  ),
              // color: AppThemeData.buttonPrimary,
              message: 'Go to ${DataValues.navBarContactMe} section'),
          const SizedBox(height: 20.0),
          ButtonRectangle(
              name: DataValues.navBarResume,
              onPressed: (){
                ResumeLauncher.launchResume();
              },
              color: AppThemeData.buttonPrimary,
              message: 'Open my ${DataValues.navBarResume}'),
        ],
      ),
    );
  }
}
