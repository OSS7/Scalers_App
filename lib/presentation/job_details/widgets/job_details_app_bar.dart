import 'package:flutter/material.dart';

import '../../../../core/constant/icons.dart';
import '../../../../core/widgets/custom_icon.dart';

class JobDetailsAppBar extends StatelessWidget {
  const JobDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 24),
      height: size.height * 0.08,
      child: Row(
        children: [
          InkWell(
            onTap: () => Navigator.pop(context),
            child: CustomIcon(
              AppIcons.BACK,
              size: 15,
            ),
          ),
          const Spacer(),
          CustomIcon(
            AppIcons.NOTIFICATION,
            size: 45,
          ),
        ],
      ),
    );
  }
}
