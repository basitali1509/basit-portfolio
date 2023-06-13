import 'package:flutter/material.dart';
import '../statics/data_values.dart';
import '../statics/key_holders.dart';
import '../widgets/container_card.dart';
import '../widgets/frame_title.dart';


class DS3Skills extends StatefulWidget {
  const DS3Skills({Key? key}) : super(key: key);

  @override
  State<DS3Skills> createState() => _DS3SkillsState();
}

class _DS3SkillsState extends State<DS3Skills> {

  Widget titles(BuildContext context) {
    return SizedBox(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ContainerCard().type7(
                  title: DataValues.techStackTitle,
                  image1: 'assets/icons/flutter_logo.png', image2: 'assets/icons/dart_logo.png',
                  image3: 'assets/icons/studio_logo.png', image4: 'assets/icons/kotlin_logo.png',
                  image5: 'assets/icons/cpp_logo.png', image6: 'assets/icons/git_logo.png',
                  image7: 'assets/icons/firebase_logo.png', image8: 'assets/icons/sqltie_logo.png',
                  image9: 'assets/icons/stripe_logo.png',
                  image10: 'assets/icons/mysql_logo.png', image11: 'assets/icons/github_logo.png',
                  image12: 'assets/icons/rest_api_logo.png'

              ),
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width * 0.03),
          Expanded(

            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: ContainerCard().type5(
                    title: DataValues.hackerrankTitle,
                    image1: 'assets/icons/problem_solving.png',
                    image2: 'assets/icons/cpp.png',
                    image3: 'assets/icons/sql.png',
                  ),
                ),
                const SizedBox(height: 20,),
                ContainerCard().type6(
                  title: DataValues.softSkillsTitle,
                  value: DataValues.values,
                ),
              ],
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
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 18),
        child: Column(
          children: [
            const FrameTitle(
                title: DataValues.skillsAchievementsTitle ,
                description: ''),
            titles(context),
            const SizedBox(height: 40.0),
          ],
        ),
      ),
    );
  }
}
