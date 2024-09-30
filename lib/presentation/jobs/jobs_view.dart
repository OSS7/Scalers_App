import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/constant/colors.dart';
import '../../../core/widgets/custom_bottom_sheet.dart';
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
        // backgroundColor: cWhite,
        bottomNavigationBar: const CustomBottomSheet(),
        body: SizedBox(
          child: BlocBuilder<JobBloc, JobState>(
            bloc: jobBloc..add(FetchJobs()),
            builder: (context, state) {
              return Column(
                children: [
                  JobsAppBar(),
                  state is JobLoaded
                      ? const JobsBody()
                      : Expanded(
                          child: Center(
                            child: state is JobError
                                ? Text(state.message)
                                : CircularProgressIndicator(),
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
