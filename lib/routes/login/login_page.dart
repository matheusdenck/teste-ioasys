import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_ioasys/repositories/login_authentication.dart';
import 'package:teste_ioasys/repositories/config.dart';
import 'package:teste_ioasys/routes/login/widgets/app_bar_widget.dart';
import 'package:teste_ioasys/routes/theme/app_theme.dart';
import 'widgets/text_field_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: CustomScrollView(
        slivers: [
          AppBarWidget(),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SizedBox(
                  height: 16.5,
                ),
                TextFieldWidget(
                  label: 'E-mail',
                  controller: emailController,
                  eye: false,
                ),
                TextFieldWidget(
                  label: 'Senha',
                  controller: passController,
                  isPassword: true,
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
                      onPressed: () => loginRequest(
                          email: emailController.text,
                          password: passController.text),
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

  void loginRequest({String? email, String? password}) async {
    if (email != null && password != null) {
      final login = await LoginAuthentication.login(email, password);
      if (login.statusCode < 205) {
        final headers = login.headers;
        Authenticator.client = headers['client'];
        Authenticator.uid = headers['uid'];
        Authenticator.accessToken = headers['access-token'];
        Get.offAndToNamed('/home');
      } else {
        showDialog(
          context: context,
          builder: (_) => AlertDialog(
              backgroundColor: Colors.transparent,
              elevation: 0,
              content: Center(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      height: 72,
                      width: 72,
                      child: CircularProgressIndicator(
                        strokeWidth: 3,
                        color: AppTheme.colors.loadingCircle,
                      ),
                    ),
                    SizedBox(
                      height: 47,
                      width: 47,
                      child: CircularProgressIndicator(
                        strokeWidth: 3,
                        color: AppTheme.colors.loadingCircle,
                      ),
                    ),
                  ],
                ),
              )),
        );
      }
    } else {
      displayError('Email ou senha inválido.');
    }
  }

  void displayError(String message) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(content: Text(message)),
    );
  }
}
