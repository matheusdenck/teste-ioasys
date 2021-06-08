import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_theme.dart';

abstract class AppTextStyles {
  TextStyle get appBarFont;
  TextStyle get buttonFont;
  TextStyle get textFieldFont;
  TextStyle get enterpriseFont;
  TextStyle get descriptionText;
  TextStyle get descriptionTitle;
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

  @override
  TextStyle get descriptionText => GoogleFonts.rubik(
      fontSize: 18, fontWeight: FontWeight.w300, color: Colors.black);

  @override
  TextStyle get descriptionTitle => GoogleFonts.rubik(
      fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black);
}
