import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scalers_test/core/constant/colors.dart';
import 'package:scalers_test/core/constant/routes.dart';
import 'package:scalers_test/data/models/job_model.dart';

import 'job_card/job_card_image.dart';
import 'job_card/job_card_posted_time.dart';
import 'job_card/job_card_specifications.dart';

/// A widget that displays a job card
class JobsJobCard extends StatelessWidget {
  /// The job model to display
  final JobModel? job;

  /// Creates a new instance of [JobsJobCard]
  const JobsJobCard({super.key, this.job});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      width: size.width * 0.8,
      height: size.height * 0.2,
      margin: _cardMargin,
      padding: _cardPadding,
      decoration: BoxDecoration(
        color: colorScheme.secondary,
        borderRadius: _borderRadius,
        border: Border.all(
          color: cHighLightWhite,
        ),
      ),
      child: InkWell(
        onTap: () {
          // Navigate to job details page when the card is tapped
          Get.toNamed(MyRoutes.JOB_DETAILS, arguments: job?.id as String);
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                JobCardImage(
                  url: job?.companyLogo,
                ),
                JobCardSpecifications(
                  job: job,
                ),
              ],
            ),
            JobCardPostedTime(
              postedTime: job?.createdDate,
            )
          ],
        ),
      ),
    );
  }

  /// The border radius of the card
  final _borderRadius = const BorderRadius.all(Radius.circular(8));

  /// The margin of the card
  final _cardMargin = const EdgeInsets.symmetric(horizontal: 16, vertical: 15);

  /// The padding of the card
  final _cardPadding = const EdgeInsets.all(15);
}