import 'package:flutter/material.dart';

import '../../../../../core/constant/colors.dart';

class JobCardPostedTime extends StatelessWidget {
  const JobCardPostedTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Text(
        "3 hours ago",
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: cMiddleLightWhite,
        ),
      ),
    );
  }
}
