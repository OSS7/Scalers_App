import 'package:flutter/material.dart';
import 'package:scalers_test/core/constant/colors.dart';
import 'package:scalers_test/feature/job/jobs/widgets/job_card/job_card_image.dart';
import 'package:scalers_test/feature/job/jobs/widgets/job_card/job_card_posted_time.dart';
import 'package:scalers_test/feature/job/jobs/widgets/job_card/job_card_specifications.dart';

class JobsJobCard extends StatelessWidget {
  const JobsJobCard({super.key});

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
        onTap: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const JobCardImage(),
                JobCardSpecifications(),
              ],
            ),
            const JobCardPostedTime()
          ],
        ),
      ),
    );
  }

  final _borderRadius = const BorderRadius.all(Radius.circular(8));
  final _cardMargin = const EdgeInsets.symmetric(horizontal: 16, vertical: 15);
  final _cardPadding = const EdgeInsets.all(15);
}
