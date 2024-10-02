import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:scalers_test/presentation/home/home_view.dart';
import 'core/config/injectable_cofig.dart';
import 'core/config/route_config.dart' as my_route;
import 'core/constant/colors.dart';

void main() {
  configureDependencies();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

/// A simple [GetMaterialApp] with a light theme and a home view.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: my_route.getPages,
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.light,
      home: const HomeView(),
    );
  }
}