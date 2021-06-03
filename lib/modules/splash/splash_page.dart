import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void initializeApp() async {
    try {
      await Future.delayed(Duration(seconds: 2));
      Navigator.pushNamed(context, '/login');
    } catch (e) {}
  }

  @override
  void initState() {
    initializeApp();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/background.png',
            width: double.maxFinite,
            height: double.maxFinite,
          ),
          Center(
            child: Container(
              width: 370,
              height: 90,
              child: Image.asset(
                'assets/images/logo_ioasys.png',
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
