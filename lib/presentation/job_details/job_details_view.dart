import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:scalers_test/core/constant/colors.dart';
import 'package:scalers_test/core/widgets/custom_bottom_sheet.dart';

import '../../../core/widgets/custom_button.dart';
import '../../core/widgets/custom_snack_bars.dart';
import 'bloc/job_details_bloc.dart';
import 'widgets/job_details_app_bar.dart';
import 'widgets/job_details_body.dart';

class JobDetailsView extends StatelessWidget {
  const JobDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    final jobUUId = Get.arguments as String;
    print('jobUUID: $jobUUId');
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: const CustomBottomSheet(),
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
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5),
              child: CustomButton(
                onPress: () {
                  CustomSnackBar.showCustomSnackBar(
                    title: "Success",
                    message: "Applied Successfully",
                  );
                },
                title: 'Apply',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
