import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vedas_college/login_screen.dart';

class SplashScreen extends StatefulWidget {
  static const routes = "/splashScreen";
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isPasswordVisible = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2),() async {
      Navigator.of(context)
          .pushReplacementNamed(LoginScreen.routes);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            children: [
              Image.asset(
                "assets/images/logo.jpg",
                height: 200,
                width: 100,
              ),
            ]
          ),
        ),
      ),
    );
  }
}