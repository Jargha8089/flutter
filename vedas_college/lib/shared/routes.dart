import 'package:vedas_college/login_screen.dart';
import 'package:vedas_college/signup_screen.dart';
import 'package:vedas_college/splash_screen.dart';

class Routes {
  static var routes = {
    SplashScreen.routes: (ctx) => const SplashScreen(),
    LoginScreen.routes: (ctx) => const LoginScreen(),
    SignupScreen.routes: (ctx) => const SignupScreen(),
  };
}