import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import 'bloc/job_details_bloc.dart';
import 'widgets/job_details_app_bar.dart';
import 'widgets/job_details_apply_button.dart';
import 'widgets/job_details_body.dart';

/// This widget is used to display the details of a job.
///
/// It uses the [JobDetailsBloc] to fetch the job details and
/// display them in a [JobDetailsBody] widget.
///
/// If the job details are not loaded yet, it displays a loading indicator.
/// If there is an error while loading the job details, it displays an error message.
class JobDetailsView extends StatelessWidget {
  const JobDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    final jobUUId = Get.arguments as String;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const JobDetailsAppBar(),
            Expanded(
              child: BlocBuilder<JobDetailsBloc, JobDetailsState>(
                bloc: jobDetailsBloc..add(FetchJobDetails(jobUUId)),
                builder: (context, state) {
                  if (state is JobDetailsLoaded) {
                    return JobDetailsBody();
                  } else {
                    return Center(
                      child: state is JobDetailsError
                          ? Text(state.message)
                          : const Center(
                              child: CircularProgressIndicator(),
                            ),
                    );
                  }
                },
              ),
            ),
            JobDetailsApplyButton(),
          ],
        ),
      ),
    );
  }
}
