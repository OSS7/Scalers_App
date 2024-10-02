import 'package:flutter/material.dart';

import '../constant/colors.dart';
import '../constant/icons.dart';
import '../constant/routes.dart';
import 'custom_icon.dart';
import 'package:get/get.dart';

class CustomBottomSheet extends StatefulWidget {
  const CustomBottomSheet({super.key});

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      selectedLabelStyle: TextStyle(
        color: colorScheme.secondary,
      ),
      unselectedLabelStyle: TextStyle(color: colorScheme.primary),
      selectedItemColor: colorScheme.primary,
      backgroundColor: colorScheme.secondary,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: CustomIcon(
            AppIcons.JOB,
            color: cLight,
          ),
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
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
        switch (index) {
          case 0:
            Get.toNamed(MyRoutes.JOBS);
            break;
          case 1:
            Get.toNamed(MyRoutes.RESUME);
            break;
          case 2:
            Get.toNamed(MyRoutes.SETTINGS);
            break;
        }
      },
    );
  }
}
