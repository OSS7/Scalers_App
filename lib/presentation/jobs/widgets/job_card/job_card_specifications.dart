import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:scalers_test/data/models/job_model.dart';

/// A widget that displays job's specifications.
class JobCardSpecifications extends StatelessWidget {
  /// The job to display specifications for.
  final JobModel? job;

  /// Creates a new instance of [JobCardSpecifications].
  const JobCardSpecifications({super.key, required this.job});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: SizedBox(
          height: size.height * 0.12,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(job?.title ?? 'N/A title', style: textTheme.headlineLarge),
              Text(
                fixGarbledText(job?.companyName ?? 'N/A company'),
                style: textTheme.labelMedium,
              ),
              Text('${job?.jobType} . ${job?.location}',
                  style: textTheme.labelMedium),
            ],
          ),
        ),
      ),
    );
  }
}

/// Fixes garbled text by decoding it from UTF-8.
///
/// Some APIs return garbled text in their responses.
/// This function helps to fix this issue.
String fixGarbledText(String garbledText) {
  return utf8.decode(garbledText.runes.toList());
}
