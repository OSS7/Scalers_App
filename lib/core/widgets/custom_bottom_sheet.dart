import 'package:flutter/material.dart';

import '../constant/colors.dart';
import '../constant/icons.dart';
import '../constant/routes.dart';
import 'custom_icon.dart';

class CustomBottomSheet extends StatefulWidget {
  const CustomBottomSheet({super.key});

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedLabelStyle: TextStyle(color: cBlack),
      unselectedLabelStyle: TextStyle(color: cBlack),
      backgroundColor: cHighLightWhite,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: CustomIcon(AppIcons.JOB),
          label: 'Jobs',
        ),
        BottomNavigationBarItem(
          icon: CustomIcon(AppIcons.PROFILE),
          label: 'Resume',
        ),
        BottomNavigationBarItem(
          icon: CustomIcon(AppIcons.SETTING),
          label: 'Settings',
        ),
      ],
    );
  }
}
