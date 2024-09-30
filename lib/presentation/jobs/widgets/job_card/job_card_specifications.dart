import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scalers_test/data/models/job_model.dart';

import '../../../../../core/constant/colors.dart';

class JobCardSpecifications extends StatelessWidget {
  final JobModel? job;
  JobCardSpecifications({super.key, required this.job});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: SizedBox(
          height: size.height * 0.12,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(job?.title ?? 'N/A title', style: textTheme.headlineLarge),
              Text(
                fixGarbledText(job?.companyName ?? 'N/A company'),
                style: textTheme.labelMedium
                ,
              ),
              Text('${job?.jobType} . ${job?.location}',
                  style: textTheme.labelMedium),
            ],
          ),
        ),
      ),
    );
  }

  final _smallFontStyle = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 12,
      color: cLight,
      fontFamily: GoogleFonts.ibmPlexSansArabic().fontFamily);
  final _largeFontStyle = const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 14,
  );
}


String fixGarbledText(String garbledText) {
  return utf8.decode(garbledText.runes.toList());
}