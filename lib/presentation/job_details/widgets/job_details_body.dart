import 'package:flutter/material.dart';
import 'package:scalers_test/data/models/job_details_model.dart';
import 'package:scalers_test/presentation/job_details/bloc/job_details_bloc.dart';
import 'package:scalers_test/presentation/job_details/widgets/job_details_header.dart';

import '../../../../core/constant/colors.dart';
import '../../../../core/constant/icons.dart';
import '../../../../core/widgets/custom_icon.dart';
import 'job_details_company_card.dart';
import 'job_details_description.dart';
import 'job_details_job_specification.dart';

class JobDetailsBody extends StatelessWidget {
  JobDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const JobDetailsHeader(),
            const JobDetailsJobSpecification(),
            const JobDetailsDescription(),
            JobDetailsCompanyCard(),
          ],
        ),
      ),
    );
  }
}
