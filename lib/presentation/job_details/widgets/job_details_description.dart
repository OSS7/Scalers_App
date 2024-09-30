import 'package:flutter/material.dart';

import '../bloc/job_details_bloc.dart';

class JobDetailsDescription extends StatelessWidget {
  const JobDetailsDescription({super.key});

  @override
  Widget build(BuildContext context) {
    final job = jobDetailsBloc.job;
    final textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Requirements',
          style: textTheme.headlineLarge,
        ),
        Text(
          job?.jobDescription ?? 'N/A description',
          style: textTheme.bodyMedium,
        ),
      ],
    );
  }
}
