import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scalers_test/core/constant/colors.dart';
import 'package:scalers_test/core/constant/routes.dart';
import 'package:scalers_test/data/models/job_model.dart';

import 'job_card/job_card_image.dart';
import 'job_card/job_card_posted_time.dart';
import 'job_card/job_card_specifications.dart';

class JobsJobCard extends StatelessWidget {
  final JobModel? job;
  const JobsJobCard({super.key, this.job});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      height: size.height * 0.2,
      margin: _cardMargin,
      padding: _cardPadding,
      decoration: BoxDecoration(
        color: cWhite,
        borderRadius: _borderRadius,
        border: Border.all(
          color: cHighLightWhite,
        ),
      ),
      child: InkWell(
        onTap: () {
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

  final _borderRadius = const BorderRadius.all(Radius.circular(8));
  final _cardMargin = const EdgeInsets.symmetric(horizontal: 16, vertical: 15);
  final _cardPadding = const EdgeInsets.all(15);
}
