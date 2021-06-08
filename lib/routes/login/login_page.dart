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
      body: CustomScrollView(
        slivers: [
          AppBarWidget(),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
            content: Container(
                width: 20,
                height: 50,
                child: CircularProgressIndicator(
                  strokeWidth: 4,
                  color: Colors.pinkAccent,
                )),
          ),
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
