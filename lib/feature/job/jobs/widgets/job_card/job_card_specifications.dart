import 'package:flutter/material.dart';

import '../../../../../core/constant/colors.dart';

class JobCardSpecifications extends StatelessWidget {
  JobCardSpecifications({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: SizedBox(
          height: size.height * 0.12,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Costumer Success Manager', style: _largeFontStyle),
              Text('RemotePass', style: _smallFontStyle),
              Text('Riyadh . Hybrid', style: _smallFontStyle),
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
  );
  final _largeFontStyle = const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 14,
  );
}
