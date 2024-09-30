import 'package:flutter/material.dart';
import 'package:scalers_test/data/models/job_details_model.dart';

import '../../jobs/widgets/job_card/job_card_specifications.dart';
import '../bloc/job_details_bloc.dart';

class JobDetailsHeader extends StatelessWidget {
  const JobDetailsHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;
    final job = jobDetailsBloc.job;
    return Column(
      children: [
        SizedBox(
          height: size.height * 0.08,
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  job?.companyLogo ?? 'N/A url',
                  fit: BoxFit.cover,
                  width: size.width * 0.14,
                  height: size.height * 0.08,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        fixGarbledText(job?.companyName ?? 'N/A title'),
                        style: textTheme.headlineMedium,
                      ),
                      Text(
                        job?.companyIndustry ?? 'N/A company industry',
                        style: textTheme.labelLarge,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 25,
        ),
      ],
    );
  }
}
