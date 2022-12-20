import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
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
                "Sign in to Continue",
                style: TextStyle(
                    color: Colors.green,
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
                    backgroundColor: Colors.green,
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )
                  ),
                  onPressed: () {
                    print("Sign in Clicked");
                  },
                  child: const Center(
                  child: Text(
                    "Sign in",
                  ),)

                // InkWell(
                //   onTap: (){
                //     print("Sign in Clicked");
                //   },
                //   child: Container(
                //     width: 300,
                //     height: 50,
                //     decoration: const BoxDecoration(
                //       color: Colors.green,
                //       borderRadius: BorderRadius.all(
                //         Radius.circular(10),
                //       )
                //     ),
                //     child: const Center(
                //       child: Text(
                //         "Sign in",
                //         style: TextStyle(color: Colors.white),
                //       ),
                //     ),
                //   ),
                // )

            ,
              )],
          ),
        ),
      ),
    );
  }
}