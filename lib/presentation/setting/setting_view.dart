import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// A simple settings view that allows the user to toggle between light and dark mode.
class SettingView extends StatefulWidget {
  const SettingView({super.key});

  @override
  _SettingViewState createState() => _SettingViewState();
}

class _SettingViewState extends State<SettingView> {
  /// Whether the app is currently in dark mode.
  bool _isDarkMode = Get.isDarkMode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
