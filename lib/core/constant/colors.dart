import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightTheme = ThemeData.light().copyWith(
  scaffoldBackgroundColor: Colors.white,
  colorScheme: const ColorScheme.light().copyWith(
    primary: const Color(0xff6C2F80),
    secondary: const Color(0xffF0EAF2),
  ),
  textTheme: TextTheme(
    headlineLarge: TextStyle(
      color: cBlack,
      fontWeight: FontWeight.bold,
      fontSize: 16,
      fontFamily: GoogleFonts.ibmPlexSansArabic().fontFamily,
    ),
    headlineMedium: TextStyle(
      color: cBlack,
      fontWeight: FontWeight.bold,
      fontSize: 14,
      fontFamily: GoogleFonts.ibmPlexSansArabic().fontFamily,
    ),
    labelSmall: TextStyle(
      color: cLight,
      fontWeight: FontWeight.w700,
      fontSize: 12,
      fontFamily: GoogleFonts.ibmPlexSansArabic().fontFamily,
    ),
    labelMedium: TextStyle(
      color: cLight,
      fontWeight: FontWeight.w700,
      fontSize: 13,
      fontFamily: GoogleFonts.ibmPlexSansArabic().fontFamily,
    ),
    labelLarge: TextStyle(
      color: cLight,
      fontWeight: FontWeight.w700,
      fontSize: 14,
      fontFamily: GoogleFonts.ibmPlexSansArabic().fontFamily,
    ),
    bodyMedium: TextStyle(
      color: cLight,
      fontWeight: FontWeight.normal,
      fontSize: 14,
      fontFamily: GoogleFonts.ibmPlexSansArabic().fontFamily,
    ),
    bodySmall: TextStyle(
      color: cLight,
      fontWeight: FontWeight.normal,
      fontSize: 12,
      fontFamily: GoogleFonts.ibmPlexSansArabic().fontFamily,
    ),
  ),
);
Color cLightPurple = const Color(0xffF0EAF2);
Color cPurple = const Color(0xff6C2F80);
Color cWhite = const Color(0xffFFFFFF);
Color cHighLightWhite = const Color(0xffF8F6F8);
Color cLight = const Color(0xff737074);
Color cMiddleLightWhite = const Color(0xffA09DA1);
Color cBlack = const Color(0xff000000);
Color cGrey = const Color(0xff737074);
Color cRed = const Color(0xffc50404);

// ThemeData darkTheme = ThemeData.dark().copyWith(
//   colorScheme: ColorScheme.dark().copyWith(
//     primary: const Color(0xff6C2F80),
//     secondary: const Color(0xffF0EAF2),
//     background: const Color(0xff000000),
//     surface: const Color(0xff737074),
//   ),
//   textTheme: TextTheme(
//     headlineLarge: TextStyle(
//       color: cBlack,
//       fontWeight: FontWeight.bold,
//       fontSize: 20,
//       fontFamily: GoogleFonts.ibmPlexSansArabic().fontFamily,
//     ),
//   ),
// );
