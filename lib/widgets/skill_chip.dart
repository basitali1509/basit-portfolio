import 'package:basit_ali/theme/responsive_screen_provider.dart';
import 'package:flutter/material.dart';

class SkillChip extends StatelessWidget {
  final String label;

  const SkillChip({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: Colors.blueGrey,
      autofocus: true,
      label: Text(label),
      labelStyle: TextStyle(fontSize: ResponsiveScreenProvider.isMobileScreen(context) ?  12 : 14)  ,
    );
  }
}