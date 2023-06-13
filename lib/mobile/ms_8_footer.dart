import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../statics/data_values.dart';
import '../theme/app_theme.dart';

class MS7Footer extends StatelessWidget {
  const MS7Footer({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppThemeData.backgroundBlack,
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          SelectableText(
            '${DataValues.appName} (v${DataValues.appVersion})',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SelectableText(
                DataValues.builtWith,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(
                width: 5,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SelectableText(
            DataValues.copyright,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
