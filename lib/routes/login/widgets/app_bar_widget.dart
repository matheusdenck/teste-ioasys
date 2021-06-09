import 'package:flutter/material.dart';
import 'package:teste_ioasys/routes/theme/app_theme.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool keyboard = MediaQuery.of(context).viewInsets.bottom == 0;

    return SliverAppBar(
      expandedHeight: !keyboard ? 136 : 233.5,
      pinned: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      flexibleSpace: FlexibleSpaceBarSettings(
        minExtent: 136,
        toolbarOpacity: 0,
        currentExtent: 136,
        maxExtent: 233.5,
        child: Stack(
          children: [
            Container(
              width: double.maxFinite,
              child: Image.asset(
                'assets/images/background_login.png',
                fit: BoxFit.fill,
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
                  keyboard
                      ? Padding(
                          padding: const EdgeInsets.only(top: 16),
                          child: Text(
                            'Seja bem vindo ao empresas!',
                            style: AppTheme.textStyle.appBarFont,
                          ),
                        )
                      : Container(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
