import 'package:flutter/material.dart';
import 'package:teste_ioasys/repositories/config.dart';
import 'package:teste_ioasys/routes/theme/app_theme.dart';

class EnterpriseWidget extends StatelessWidget {
  final String photoUrl, name;

  const EnterpriseWidget({Key? key, required this.photoUrl, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
            Authenticator.baseUrl + photoUrl,
          ),
        ),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Stack(
        children: [
          Center(
            child: Text(
              name,
              style: AppTheme.textStyle.enterpriseFont,
            ),
          ),
        ],
      ),
    );
  }
}
