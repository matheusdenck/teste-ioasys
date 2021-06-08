import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_ioasys/routes/theme/app_theme.dart';

class DescriptionAppBarWidget extends PreferredSize {
  final String label;
  DescriptionAppBarWidget({Key? key, required this.label})
      : super(
          preferredSize: Size.fromHeight(72),
          child: SafeArea(
            child: ListTile(
              title: Container(
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
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Get.back();
                },
              ),
            ),
          ),
        );
}
