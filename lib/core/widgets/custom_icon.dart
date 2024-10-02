import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scalers_test/core/constant/colors.dart';

class CustomIcon extends StatelessWidget {
  final double? size;
  final String icon;
  final Color? color;

  const CustomIcon(
    this.icon, {
    super.key,
    this.size,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      icon,
      height: size ?? 25,
      width: size ?? 30,
      color: color,
    );
  }
}
