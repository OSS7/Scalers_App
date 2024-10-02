import 'package:flutter/material.dart';

import '../../../../../core/constant/colors.dart';

/// A widget that shows the time elapsed since a job was posted.
class JobCardPostedTime extends StatelessWidget {
  /// The date the job was posted in ISO 8601 format.
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

  /// Calculates the time elapsed since the job was posted.
  String? _timeAgo(String? date) {
    if (date == null || date.isEmpty) {
      return null;
    }

    DateTime postedDate = DateTime.parse(date);
    DateTime now = DateTime.now();
    Duration difference = now.difference(postedDate);

    // If the job was posted less than 24 hours ago, show the time elapsed in hours
    if (difference.inHours < 24) {
      return '${difference.inHours} hours ago';
    }

    // Otherwise, show the time elapsed in days
    return '${difference.inDays} days ago';
  }
}