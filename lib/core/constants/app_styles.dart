import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neural_trainer/core/constants/app_colors.dart';
import 'package:neural_trainer/core/dimensions/dimensions.dart';

class Styles {
  static TextStyle buttonStyle = GoogleFonts.rubik(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
    fontSize: getScreenHeight(14),
    letterSpacing: 0.2,
  );

  static TextStyle whiteItalicStyle = GoogleFonts.rubik(
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.w700,
    fontSize: getScreenHeight(20),
    letterSpacing: 0.2,
    color: AppColors.whiteColor,
  );

  static TextStyle greenItalicStyle = GoogleFonts.rubik(
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.w700,
    fontSize: getScreenHeight(40),
    letterSpacing: 0.2,
    color: AppColors.primaryColor,
  );

  static TextStyle whiteSubHeadingStyle = GoogleFonts.rubik(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w400,
    fontSize: getScreenHeight(16),
    letterSpacing: 0.2,
    color: AppColors.whiteColor,
  );
}
