import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTextStyles {
  TextStyle get appBarFont;
  TextStyle get buttonFont;
}

class AppTextStylesDefault implements AppTextStyles {
  @override
  TextStyle get appBarFont => GoogleFonts.rubik(
      fontSize: 20, fontWeight: FontWeight.w400, color: Colors.white);
  @override
  TextStyle get buttonFont => GoogleFonts.rubik(
      fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white);
}
