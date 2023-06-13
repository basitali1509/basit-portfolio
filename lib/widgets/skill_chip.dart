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
    );
  }
}