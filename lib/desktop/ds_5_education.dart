import 'package:flutter/material.dart';

import '../statics/data_values.dart';
import '../statics/key_holders.dart';
import '../theme/app_theme.dart';
import '../widgets/container_card.dart';
import '../widgets/frame_title.dart';

class DS5Education extends StatelessWidget {
  const DS5Education({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: KeyHolders.educationKey,
      color: AppThemeData.backgroundGrey,
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const FrameTitle(
              title: DataValues.educationTitle,
              description: ' ',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ContainerCard().type2(
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
                    message: DataValues.linkedinURL.toString(),
                    url: DataValues.linkedinURL,
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.06),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: SelectableText(
                      DataValues.educationDescription,
                      textAlign: TextAlign.left,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
