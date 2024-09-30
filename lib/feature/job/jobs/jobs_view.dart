import 'package:flutter/material.dart';
import 'package:scalers_test/core/constant/icons.dart';
import 'package:scalers_test/core/widgets/custom_icon.dart';
import 'package:scalers_test/feature/job/jobs/widgets/jobs_app_bar.dart';
import 'package:scalers_test/feature/job/jobs/widgets/jobs_body.dart';

import '../../../core/constant/colors.dart';
import '../../../core/widgets/custom_bottom_sheet.dart';
import 'widgets/jobs_job_card.dart';

class JobsView extends StatelessWidget {
  JobsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: cWhite,
        bottomNavigationBar: const CustomBottomSheet(),
        body: Column(
          children: [
            JobsAppBar(),
            const JobsBody(),
          ],
        ),
      ),
    );
  }
}
