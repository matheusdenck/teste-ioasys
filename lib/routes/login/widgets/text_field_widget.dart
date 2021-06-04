import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teste_ioasys/routes/theme/app_theme.dart';

class TextFieldWidget extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final bool isPassword;

  TextFieldWidget({
    required this.label,
    required this.controller,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: Text(label, style: AppTheme.textStyle.textFieldFont),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 8,
          ),
          child: Container(
            height: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
            ),
            child: CupertinoTextField(
              suffix: isPassword
                  ? Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Icon(
                        CupertinoIcons.eye_solid,
                        color: Colors.black54,
                      ),
                    )
                  : Container(),
              obscureText: isPassword,
              controller: controller,
              placeholder: '',
              decoration: BoxDecoration(
                color: AppTheme.colors.textFieldColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
