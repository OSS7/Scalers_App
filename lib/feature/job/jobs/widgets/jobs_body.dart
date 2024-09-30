import 'package:flutter/material.dart';

import 'jobs_job_card.dart';

class JobsBody extends StatelessWidget {
  const JobsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return const JobsJobCard();
        },
      ),
    );
  }
}
