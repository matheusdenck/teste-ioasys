import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teste_ioasys/modules/theme/app_theme.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget({Key? key})
      : super(
          preferredSize: Size.fromHeight(233.5),
          child: Container(
            height: 233.5,
            child: Stack(
              children: [
                Container(
                  width: double.maxFinite,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.elliptical(300, 60),
                      bottomRight: Radius.elliptical(300, 60),
                    ),
                    child: Image.asset(
                      'assets/images/background.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/symbol.png',
                        width: 40,
                        height: 32,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      Text(
                        'Seja bem vindo ao empresas!',
                        style: AppTheme.textStyle.appBarFont,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
}
