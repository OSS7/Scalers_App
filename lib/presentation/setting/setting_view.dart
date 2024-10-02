import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scalers_test/core/widgets/custom_bottom_sheet.dart';

class SettingView extends StatefulWidget {
  const SettingView({super.key});

  @override
  _SettingViewState createState() => _SettingViewState();
}

class _SettingViewState extends State<SettingView> {
  bool _isDarkMode = Get.isDarkMode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomBottomSheet(),
      body: Center(
        child: InkWell(
          onTap: () {
            setState(() {
              _isDarkMode = !_isDarkMode;
              Get.changeThemeMode(
                  _isDarkMode ? ThemeMode.dark : ThemeMode.light);
            });
          },
          child: Icon(
            _isDarkMode ? Icons.wb_sunny : Icons.nights_stay,
            size: 100,
          ),
        ),
      ),
    );
  }
}
