import 'package:flutter/material.dart';

import '../bloc/job_details_bloc.dart';
import 'job_details_tag.dart';

/// Displays the job title, location, workplace preference and job type.
/// Also displays the job requirements as tags.
class JobDetailsJobSpecification extends StatelessWidget {
  const JobDetailsJobSpecification({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final job = jobDetailsBloc.job;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          job?.title ?? 'N/A title',
          style: textTheme.headlineMedium,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          '${job?.location} . ${job?.workplacePreference} . ${job?.jobType}',
          style: textTheme.labelMedium,
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: SizedBox(
            height: 35,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: job?.requirements
                      ?.map<Widget>((e) => JobDetailsTag(text: e))
                      .toList() ??
                  [],
            ),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
      ],
    );
  }
}
