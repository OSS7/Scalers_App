import 'package:flutter/material.dart';
import 'package:scalers_test/data/models/job_model.dart';
import 'package:scalers_test/presentation/jobs/bloc/job_bloc.dart';

import 'jobs_job_card.dart';

class JobsBody extends StatelessWidget {
  const JobsBody({super.key});

  @override
  Widget build(BuildContext context) {
    int length = jobBloc.jobs.length;
    return Expanded(
      child: RefreshIndicator(
        onRefresh: () async {
           jobBloc.add(FetchJobsEvent());
        },
        child: length == 0
            ? Text('Sorry there is no jobs available')
            : ListView.builder(
                itemCount: jobBloc.jobs.length,
                itemBuilder: (context, index) {
                  JobModel job = jobBloc.jobs[index];
                  return JobsJobCard(
                    job: job,
                  );
                },
              ),
      ),
    );
  }
}
