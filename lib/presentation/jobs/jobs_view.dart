import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/job_bloc.dart';
import 'widgets/jobs_app_bar.dart';
import 'widgets/jobs_body.dart';

class JobsView extends StatefulWidget {
  const JobsView({super.key});

  @override
  State<JobsView> createState() => _JobsViewState();
}

class _JobsViewState extends State<JobsView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          child: BlocBuilder<JobBloc, JobState>(
            bloc: jobBloc..add(FetchJobsEvent()),


            builder: (context, state) {
              return Column(
                children: [
                  /// The app bar of the Jobs screen.
                  JobsAppBar(),

                  /// The Jobs body.
                  Expanded(
                    child: state is JobLoaded
                        ? const JobsBody()
                        : Center(
                            child: state is JobError
                                ? Text(state.message)
                                : const CircularProgressIndicator(),
                          ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
