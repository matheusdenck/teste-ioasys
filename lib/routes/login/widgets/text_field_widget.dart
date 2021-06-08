import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teste_ioasys/routes/theme/app_theme.dart';

class TextFieldWidget extends StatefulWidget {
  final String label;
  final TextEditingController controller;
  final bool isPassword;
  bool eye;

  TextFieldWidget({
    required this.label,
    required this.controller,
    this.isPassword = false,
    this.eye = true,
  });

  @override
  _TextFieldWidgetState createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: Text(widget.label, style: AppTheme.textStyle.textFieldFont),
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
              obscureText: widget.eye,
              suffix: widget.isPassword
                  ? IconButton(
                      padding: const EdgeInsets.all(12.0),
                      splashRadius: 24,
                      iconSize: 24,
                      onPressed: () {
                        setState(() => this.widget.eye = !this.widget.eye);
                      },
                      icon: Icon(
                        CupertinoIcons.eye_solid,
                        color: Colors.black54,
                      ),
                    )
                  : Container(),
              controller: widget.controller,
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
