import 'package:flutter/material.dart';

import '../../../core/constant/colors.dart';

class JobDetailsTag extends StatelessWidget {
  final String? text;
  const JobDetailsTag({super.key, required this.text});

  /// Container for showing a tag in Job Details screen
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xFFF0EAF2)),
        color: cLightPurple,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      margin: const EdgeInsets.only(right: 12),
      child: Text(
        text ?? '',
        style: textTheme.labelSmall?.copyWith(color: cPurple),
      ),
    );
  }
}