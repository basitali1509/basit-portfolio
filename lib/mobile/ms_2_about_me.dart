import 'package:flutter/material.dart';
import '../statics/key_holders.dart';
import '../statics/data_values.dart';
import '../theme/app_theme.dart';
import '../widgets/text_pairs.dart';
import '../widgets/frame_title.dart';

class MS2AboutMe extends StatelessWidget {
  const MS2AboutMe({Key? key}) : super(key: key);

  Widget bio(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: TextPairs().type1(
              title: DataValues.aboutMeOverviewTitle,
              description: DataValues.aboutMeOverviewDescription,
            ),
          ),
          const SizedBox(height: 30.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: TextPairs().type1(
              title: DataValues.aboutMeHobbiesTitle,
              description: DataValues.aboutMeHobbiesDescription,
            ),
          ),
          const SizedBox(height: 30.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: TextPairs().type1(
              title: DataValues.aboutMeGoalTitle,
              description: DataValues.aboutMeGoalDescription,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          key: KeyHolders.aboutKey,
          color: AppThemeData.backgroundGrey,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child:  FrameTitle(
                      title: DataValues.aboutMeTitle, description: ''),
                ),
                const SizedBox(height: 15.0),
                bio(context),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
