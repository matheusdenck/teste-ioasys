import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_ioasys/repositories/config.dart';
import 'package:teste_ioasys/routes/theme/app_theme.dart';

class EnterpriseWidget extends StatefulWidget {
  final String photoUrl, name;

  const EnterpriseWidget({
    Key? key,
    required this.photoUrl,
    required this.name,
  }) : super(key: key);

  @override
  _EnterpriseWidgetState createState() => _EnterpriseWidgetState();
}

class _EnterpriseWidgetState extends State<EnterpriseWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
            Authenticator.baseUrl + widget.photoUrl,
          ),
        ),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Stack(
        children: [
          Center(
            child: Text(
              widget.name,
              style: AppTheme.textStyle.enterpriseFont,
            ),
          ),
        ],
      ),
    );
  }
}
