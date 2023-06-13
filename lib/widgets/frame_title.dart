import 'package:flutter/material.dart';

import '../theme/app_theme.dart';
import '../theme/responsive_screen_provider.dart';

class FrameTitle extends StatelessWidget {
  const FrameTitle({Key? key, this.title,  this.description})
      : super(key: key);

  final String? title;
  final String? description;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SelectableText(
            title!,
            style: ResponsiveScreenProvider.isDesktopScreen(context)
                ? Theme.of(context).textTheme.displaySmall:
            const TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.w700,
                color: AppThemeData.textWhite),
          ),
          Padding(
            padding: ResponsiveScreenProvider.isDesktopScreen(context)
                ? const EdgeInsets.only(
                    left: 160.0, right: 160.0, top: 10.0, bottom: 0.0)
                : EdgeInsets.zero,
            child: SelectableText(
              description!,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
        ],
      ),
    );
  }
}
