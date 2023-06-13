import 'package:flutter/material.dart';
import '../statics/data_values.dart';
import 'button_icon.dart';

class SocialProfiles extends StatelessWidget {
  const SocialProfiles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ButtonIcon(name: 'dev', url: DataValues.hackerrankURL).returnButton(),
        const SizedBox(width: 20.0),
        ButtonIcon(name: 'github', url: DataValues.githubURL).returnButton(),
        const SizedBox(width: 20.0),
        ButtonIcon(name: 'linkedin', url: DataValues.linkedinURL)
            .returnButton(),
        const SizedBox(width: 20.0),
        ButtonIcon(name: 'instagram', url: DataValues.instagramURL)
            .returnButton(),
      ],
    );
  }
}
