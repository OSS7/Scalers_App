import 'package:flutter/material.dart';
import 'package:scalers_test/core/constant/colors.dart';
import 'package:scalers_test/core/constant/icons.dart';
import 'package:scalers_test/core/widgets/custom_icon.dart';

class JobsAppBar extends StatelessWidget {
  JobsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: _padding,
      height: size.height * 0.08,
      decoration: BoxDecoration(
        color: cWhite,
        boxShadow: [_boxShadow],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Jobs',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          CustomIcon(
            AppIcons.NOTIFICATION,
            size: 45,
          ),
        ],
      ),
    );
  }

  BoxShadow _boxShadow = BoxShadow(
    blurRadius: 10,
    offset: const Offset(0, 2),
    color: Colors.grey.withOpacity(0.1),
  );
  final _padding = const EdgeInsets.symmetric(vertical: 4, horizontal: 24);
}
