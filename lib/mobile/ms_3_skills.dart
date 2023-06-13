import 'package:flutter/material.dart';
import '../statics/data_values.dart';
import '../statics/key_holders.dart';
import '../widgets/container_card.dart';
import '../widgets/frame_title.dart';

class MS3Skills extends StatefulWidget {
  const MS3Skills({Key? key}) : super(key: key);

  @override
  State<MS3Skills> createState() => _MS3SkillsState();
}

class _MS3SkillsState extends State<MS3Skills> {
  Widget titles(BuildContext context) {

    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ContainerCard().type7(
              title: DataValues.techStackTitle,
              image1: 'assets/icons/flutter_logo.png', image2: 'assets/icons/dart_logo.png',
              image3: 'assets/icons/studio_logo.png', image4: 'assets/icons/kotlin_logo.png',
              image5: 'assets/icons/cpp_logo.png', image6: 'assets/icons/git_logo.png',
              image7: 'assets/icons/firebase_logo.png', image8: 'assets/icons/sqltie_logo.png',
              image9: 'assets/icons/stripe_logo.png',
              image10: 'assets/icons/mysql_logo.png', image11: 'assets/icons/github_logo.png',
              image12: 'assets/icons/rest_api_logo.png'
          ),
          const SizedBox(height: 20.0),
          Center(
            child: ContainerCard().type5(
              title: DataValues.hackerrankTitle,
              image1: 'assets/icons/problem_solving.png',
              image2: 'assets/icons/cpp.png',
              image3: 'assets/icons/sql.png',
            ),
          ),

          const SizedBox(height: 30.0),
          Center(
            child: ContainerCard().type6(
              title: DataValues.softSkillsTitle,
              value: DataValues.values,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      key: KeyHolders.skillsAchievements,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 40),
        child: Column(
          children: [
            const FrameTitle(
                title: DataValues.skillsAchievementsTitle ,
                description: ''),
            const SizedBox(height: 10.0),
            titles(context),
            const SizedBox(height: 30.0),
          ],
        ),
      ),
    );
  }
}
