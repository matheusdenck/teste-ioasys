import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_ioasys/routes/theme/app_theme.dart';

class DescriptionAppBarWidget extends PreferredSize {
  final String label;
  DescriptionAppBarWidget({Key? key, required this.label})
      : super(
          preferredSize: Size.fromHeight(72),
          child: SafeArea(
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Text(
                      label,
                      style: AppTheme.textStyle.descriptionTitle,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: AppTheme.colors.buttonBackgroundColor),
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: AppTheme.colors.backButtonColor,
                      ),
                      onPressed: () {
                        Get.back();
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
}
