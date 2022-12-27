import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignupScreen extends StatefulWidget {
  static const routes = "/signupScreen";
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text("Vedas College"),
        ),
        body: Center(
          child: Column(
            children: [
              Image.asset(
                "assets/images/logo.jpg",
                height: 200,
                width: 100,
              ),
              const Text(
                "Sign up to Continue",
                style: TextStyle(
                    color: Color.fromRGBO(26, 47, 89, 50),
                    fontSize: 20,
                    fontWeight: FontWeight.w900),
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: TextFormField(
                  controller: usernameController,
                  maxLines: 1,
                  obscureText: false,
                  inputFormatters: [
                    FilteringTextInputFormatter.deny(RegExp(r'[ ]')),
                    LengthLimitingTextInputFormatter(10)
                  ],
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    label: Text("Username"),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF999999)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: TextFormField(
                  controller: passwordController,
                  maxLines: 1,
                  obscureText: isPasswordVisible,
                  inputFormatters: [
                    FilteringTextInputFormatter.deny(RegExp(r'[ ]')),
                    LengthLimitingTextInputFormatter(10)
                  ],
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    suffix: InkWell(
                      onTap: () {
                        setState(() {
                          isPasswordVisible = !isPasswordVisible;
                        });
                      },
                      child: Icon(isPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off),
                    ),
                    label: const Text("Password"),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF999999)),
                    ),
                  ),
                ),
              ),

              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(26, 47, 89, 50),
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      )
                  ),
                  onPressed: () {
                    print("Sign Up Clicked");
                  },
                  child: const Center(
                    child: Text(
                      "Sign Up",
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}