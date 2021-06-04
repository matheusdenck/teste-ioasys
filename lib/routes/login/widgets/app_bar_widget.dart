import 'package:flutter/material.dart';
import 'package:teste_ioasys/routes/theme/app_theme.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      expandedHeight: 233.5,
      collapsedHeight: 136,
      backgroundColor: Colors.white,
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          height: 233.5,
          child: Stack(
            children: [
              Container(
                width: double.maxFinite,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.lerp(
                        Radius.elliptical(200, 50), Radius.circular(50), 0.3)!,
                    bottomRight: Radius.lerp(
                        Radius.elliptical(200, 50), Radius.circular(50), 0.3)!,
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
      ),
    );
  }
}
