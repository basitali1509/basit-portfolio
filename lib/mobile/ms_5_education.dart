import 'package:flutter/material.dart';

import '../statics/data_values.dart';
import '../statics/key_holders.dart';
import '../theme/app_theme.dart';
import '../widgets/container_card.dart';
import '../widgets/frame_title.dart';

class MS5Education extends StatelessWidget {
  const MS5Education({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: KeyHolders.educationKey,
      color: AppThemeData.backgroundGrey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const FrameTitle(
                title: DataValues.educationTitle,
                description: ' '),
            const SizedBox(height: 10.0),
            ContainerCard().MStype2(
              image: 'NEDUET_logo',
              title: DataValues.educationOrgTitle,
              values: [
                DataValues.educationOrgCourseName,
                DataValues.educationOrgEmptySpace,
                DataValues.educationEmptySpace1,
                DataValues.educationOrg1EducationPeriod,
                DataValues.educationOrg1Batch,
                DataValues.educationEmptySpace2,
                DataValues.educationOrg1CGPA,
                DataValues.educationOrg1GPA,
                DataValues.educationEmptySpace3,

              ],
            ),
            const SizedBox(height: 40.0),
        const Padding(
          padding:  EdgeInsets.symmetric(horizontal: 10),
          child: SelectableText(
            DataValues.educationDescription,
            style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w400,
                color: AppThemeData.textGreyLight),
          ),
        ),
            const SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
