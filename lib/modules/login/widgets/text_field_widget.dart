import 'package:flutter/cupertino.dart';
import 'package:teste_ioasys/modules/theme/app_theme.dart';

class TextFieldWidget extends StatelessWidget {
  final String label;

  TextFieldWidget({
    required this.label,
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
          child: SizedBox(
            height: 48,
            child: CupertinoTextField(
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
