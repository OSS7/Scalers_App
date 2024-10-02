import 'package:flutter/material.dart';
import 'package:scalers_test/data/models/job_model.dart';
import 'package:scalers_test/presentation/jobs/bloc/job_bloc.dart';

import 'jobs_job_card.dart';

class JobsBody extends StatelessWidget {
  const JobsBody({super.key});

  @override
  Widget build(BuildContext context) {
    int length = jobBloc.jobs.length;
    return RefreshIndicator(
      /// Refresh the list of jobs.
      onRefresh: () async {
        jobBloc.add(FetchJobsEvent());
      },

      child: length == 0
          ? const Text('Sorry there is no jobs available')
          : ListView.builder(
              itemCount: jobBloc.jobs.length,
              itemBuilder: (context, index) {
                JobModel job = jobBloc.jobs[index];

                /// Build a job card for each job in the list.
                return JobsJobCard(
                  job: job,
                );
              },
            ),
    );
  }
}
