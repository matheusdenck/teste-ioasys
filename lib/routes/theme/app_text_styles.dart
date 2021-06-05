import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_theme.dart';

abstract class AppTextStyles {
  TextStyle get appBarFont;
  TextStyle get buttonFont;
  TextStyle get textFieldFont;
  TextStyle get enterpriseFont;
}

class AppTextStylesDefault implements AppTextStyles {
  @override
  TextStyle get appBarFont => GoogleFonts.rubik(
      fontSize: 20, fontWeight: FontWeight.w400, color: Colors.white);
  @override
  TextStyle get buttonFont => GoogleFonts.rubik(
      fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white);
  @override
  TextStyle get textFieldFont => GoogleFonts.rubik(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: AppTheme.colors.textFieldFontColor);
  @override
  TextStyle get enterpriseFont => GoogleFonts.rubik(
      fontSize: 18, fontWeight: FontWeight.w700, color: Colors.white);
}