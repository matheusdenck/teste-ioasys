import 'package:flutter/material.dart';

abstract class AppColors {
  Color get textFieldColor;
  Color get buttonColor;
}

class AppColorsDefault implements AppColors {
  @override
  Color get textFieldColor => Color(0XFFF5F5F5);
  @override
  Color get buttonColor => Color(0xFFE01E69);
}
