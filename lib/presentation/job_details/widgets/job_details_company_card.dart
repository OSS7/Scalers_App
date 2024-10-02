import 'package:flutter/material.dart';
import 'package:scalers_test/core/constant/icons.dart';
import 'package:scalers_test/core/widgets/custom_icon.dart';

import '../../../core/constant/colors.dart';
import '../../jobs/widgets/job_card/job_card_specifications.dart';
import '../bloc/job_details_bloc.dart';

class JobDetailsCompanyCard extends StatelessWidget {
  JobDetailsCompanyCard({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    final job = jobDetailsBloc.job;
    return Container(
      margin: _cardMargin,
      padding: _cardPadding,
      decoration: BoxDecoration(
        color: colorScheme.secondary,
        borderRadius: _borderRadius,
        border: Border.all(
          color: cHighLightWhite,
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'About Company',
                style: textTheme.headlineLarge,
              ),
              CustomIcon(
                AppIcons.SHARE,
                size: 18,
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    job?.companyLogo ?? '',
                    fit: BoxFit.cover,
                    width: size.width * 0.15,
                    height: size.height * 0.08,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: SizedBox(
                      height: size.height * 0.1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(fixGarbledText(job?.companyName ?? ''),
                              style: textTheme.headlineMedium),
                          Text(
                            job?.companyIndustry ?? '',
                            style: textTheme.labelSmall,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            job?.jobDescription ?? 'N/A description',
            style: textTheme.bodySmall,
          )
        ],
      ),
    );
  }

  final _borderRadius = const BorderRadius.all(Radius.circular(8));
  final _cardMargin = const EdgeInsets.symmetric(horizontal: 4, vertical: 12);
  final _cardPadding = const EdgeInsets.all(15);
}
