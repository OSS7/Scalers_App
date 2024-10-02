import 'package:flutter/material.dart';

import '../../core/constant/colors.dart';
import '../../core/constant/icons.dart';
import '../../core/widgets/custom_icon.dart';
import '../jobs/jobs_view.dart';
import '../resume/resume_view.dart';
import '../setting/setting_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    JobsView(),
    ResumeView(),
    SettingView(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: TextStyle(
          color: colorScheme.secondary,
        ),
        unselectedLabelStyle: TextStyle(color: colorScheme.primary),
        selectedItemColor: colorScheme.primary,
        backgroundColor: colorScheme.secondary,
        type: BottomNavigationBarType.shifting,
        onTap: _onItemTapped,
        currentIndex: _currentIndex,
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
      ),
    );
  }
}
