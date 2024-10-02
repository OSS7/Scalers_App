import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant/colors.dart';


class CustomSnackBar {
  static showCustomSnackBar(
      {required String title, required String message, Duration? duration}) {
    Get.snackbar(
      title,
      message,
      duration: duration ??
          const Duration(
            seconds: 5,
          ),
      margin: const EdgeInsets.only(
        top: 10,
        left: 10,
        right: 10,
      ),
      colorText: cWhite,
      backgroundColor: cPurple,
      icon: Icon(
        Icons.check_circle,
        color: cWhite,
      ),
    );
  }

  static showCustomErrorSnackBar(
      {required String title,
      required String message,
      Color? color,
      IconData? icon,
      Duration? duration}) {
    Get.snackbar(
      title,
      message,
      titleText: SizedBox(
          height: 26,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(color: cWhite),
          )),
      messageText: Center(
          child: Text(
        message,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 13, color: cWhite),
      )),
      duration: duration ?? const Duration(seconds: 3),
      margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
      colorText: cWhite,
      barBlur: 5,
      backgroundColor: cRed,
      icon: Icon(
        icon ?? Icons.error,
        color: cWhite,
      ),
    );
  }
}
