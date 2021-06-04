import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teste_ioasys/modules/theme/app_theme.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
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
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 16.5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                  ),
                  child:
                      Text('E-mail', style: AppTheme.textStyle.textFieldFont),
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
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                  ),
                  child: Text(
                    'Senha',
                    style: AppTheme.textStyle.textFieldFont,
                  ),
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
                      obscureText: true,
                      decoration: BoxDecoration(
                        color: AppTheme.colors.textFieldColor,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 29.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    height: 48,
                    width: double.maxFinite,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/home');
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              AppTheme.colors.buttonColor)),
                      child:
                          Text('ENTRAR', style: AppTheme.textStyle.buttonFont),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
