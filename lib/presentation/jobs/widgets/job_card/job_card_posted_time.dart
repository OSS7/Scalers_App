import 'package:flutter/material.dart';

import '../../../../../core/constant/colors.dart';

class JobCardPostedTime extends StatelessWidget {
  final String? postedTime;
  const JobCardPostedTime({super.key, this.postedTime});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Text(
        _timeAgo(postedTime) ?? '',
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: cMiddleLightWhite,
        ),
      ),
    );
  }

  String? _timeAgo(String? date) {
    if (date == null || date.isEmpty) {
      return null;
    }

    DateTime postedDate = DateTime.parse(date);
    DateTime now = DateTime.now();
    Duration difference = now.difference(postedDate);
    return '${difference.inDays} days ago';
  }
}
