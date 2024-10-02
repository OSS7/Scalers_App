import 'package:flutter/material.dart';

import '../../../core/widgets/custom_button.dart';
import '../../../core/widgets/custom_snack_bars.dart';

class JobDetailsApplyButton extends StatelessWidget {
  const JobDetailsApplyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5),
      child: CustomButton(
        onPress: () {
          CustomSnackBar.showCustomSnackBar(
            title: "Success",
            message: "Applied Successfully",
          );
        },
        title: 'Apply',
      ),
    );
  }
}
