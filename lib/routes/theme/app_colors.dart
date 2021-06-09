import 'package:flutter/material.dart';

abstract class AppColors {
  Color get textFieldColor;
  Color get buttonColor;
  Color get textFieldFontColor;
  Color get buttonBackgroundColor;
  Color get backButtonColor;
  Color get loadingCircle;
}

class AppColorsDefault implements AppColors {
  @override
  Color get textFieldColor => Color(0XFFF5F5F5);
  @override
  Color get buttonColor => Color(0xFFE01E69);
  @override
  Color get textFieldFontColor => Color(0xFF666666);
  @override
  Color get buttonBackgroundColor => Color(0XFFF5F5F5);
  @override
  Color get backButtonColor => Color(0XFFE01E69);
  @override
  Color get loadingCircle => Color(0XFFFBDBE7);
}
