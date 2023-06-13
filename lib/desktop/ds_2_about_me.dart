import 'package:flutter/material.dart';
import '../statics/key_holders.dart';
import '../statics/data_values.dart';
import '../theme/app_theme.dart';
import '../widgets/text_pairs.dart';
import '../widgets/container_card.dart';
import '../widgets/frame_title.dart';

class DS2AboutMe extends StatelessWidget {
  const DS2AboutMe({Key? key}) : super(key: key);


  Widget bio(BuildContext context) {
    return SizedBox(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: TextPairs().type1(
                    title: DataValues.aboutMeOverviewTitle,
                    description: DataValues.aboutMeOverviewDescription,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width * 0.08),
          SizedBox(width: MediaQuery.of(context).size.width * 0.1),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextPairs().type1(
                  title: DataValues.aboutMeNationalityTitle,
                  description: DataValues.aboutMeNationalityDescription,
                ),
                const SizedBox(height: 30.0),
                TextPairs().type1(
                  title: DataValues.aboutMeHobbiesTitle,
                  description: DataValues.aboutMeHobbiesDescription,
                ),
                const SizedBox(height: 30.0),
                TextPairs().type1(
                  title: DataValues.aboutMeGoalTitle,
                  description: DataValues.aboutMeGoalDescription,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Widget titles(BuildContext context) {
  //   return SizedBox(
  //     child: Row(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: [
  //         Expanded(
  //           flex: 2,
  //           child: Padding(
  //             padding: const EdgeInsets.only(top: 40),
  //             child: ContainerCard().type7(
  //               title: DataValues.techStackTitle,
  //               image1: 'assets/icons/flutter_logo.png', image2: 'assets/icons/dart_logo.png',
  //               image3: 'assets/icons/studio_logo.png', image4: 'assets/icons/kotlin_logo.png',
  //               image5: 'assets/icons/cpp_logo.png', image6: 'assets/icons/git_logo.png',
  //               image7: 'assets/icons/firebase_logo.png', image8: 'assets/icons/sqltie_logo.png',
  //               image9: 'assets/icons/stripe_logo.png',
  //                 image10: 'assets/icons/mysql_logo.png', image11: 'assets/icons/github_logo.png',
  //                 image12: 'assets/icons/rest_api_logo.png'
  //
  //             ),
  //           ),
  //         ),
  //         SizedBox(width: MediaQuery.of(context).size.width * 0.03),
  //         Expanded(
  //
  //           child: Column(
  //             children: [
  //               Padding(
  //                 padding: const EdgeInsets.only(top: 50),
  //                 child: ContainerCard().type5(
  //                   title: DataValues.hackerrankTitle,
  //                   image1: 'assets/icons/problem_solving.png',
  //                   image2: 'assets/icons/cpp.png',
  //                   image3: 'assets/icons/sql.png',
  //                 ),
  //               ),
  //               const SizedBox(height: 20,),
  //               ContainerCard().type6(
  //                 title: DataValues.softSkillsTitle,
  //                 value: DataValues.values,
  //               ),
  //             ],
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          key: KeyHolders.aboutKey,
          color: AppThemeData.backgroundGrey,
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10,),
                const FrameTitle(
                    title: DataValues.aboutMeTitle,
                    description: ''),
                const SizedBox(height: 50.0),
                bio(context),
              ],
            ),
          ),
        ),
        // Container(
        //   key: KeyHolders.skillsAchievements,
        //   child: Padding(
        //     padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 18),
        //     child: Column(
        //       children: [
        //         const FrameTitle(
        //             title: DataValues.skillsAchievementsTitle ,
        //             description: ''),
        //         titles(context),
        //         const SizedBox(height: 40.0),
        //       ],
        //     ),
        //   ),
        // )
      ],
    );
  }
}
