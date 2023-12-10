import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/utils/helpers.dart';
import 'package:flutter_application/widgets/buttons.dart';
import 'package:flutter_application/widgets/square_tile.dart';
import 'package:flutter_application/widgets/text_field.dart';
import 'package:google_fonts/google_fonts.dart';

import 'forgotPassword_page.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text controllers
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //back button
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(1, 254, 254, 254),
        elevation: 0,
        leadingWidth: 90,
        leading: IconButton(
          icon: Container(
              width: 40,
              height: 50,
              margin: const EdgeInsets.only(left: 30),
              padding: const EdgeInsets.only(left: 5),
              decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFFE8ECF4)),
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              child: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
                size: 20,
              )),
          onPressed: () => pushReplacement(context, const HomePage()),
        ),
      ),

      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Welcome text
                const Text(
                  'Welcome back! Glad to see you, Again!',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 35,
                ),
                // Email text field
                MyTextField(
                  controller: emailController,
                  hintText: 'Enter your Email',
                  obscureText: false,
                ),
                const SizedBox(
                  height: 20,
                ),
                //Password text field
                MyTextField(
                  suffixIcon:
                      isObscure ? Icons.visibility : Icons.visibility_off,
                  controller: passwordController,
                  hintText: 'Enter your Password',
                  obscureText: isObscure,
                  changeObscure: () {
                    setState(() {
                      isObscure = !isObscure;
                    });
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                // forgot password text
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () => push(context, ForgotPasswordPage()),
                      child: const Text(
                        'Forgot password?',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff6A707C)),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 60,
                ),
                // login button
                MyButton(
                  onTap: () {},
                  text: 'Login',
                ),
                const SizedBox(
                  height: 30,
                ),

                // "or login with" line
                const Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.3,
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Text(
                        'Or login with',
                        style: TextStyle(
                            color: Color.fromARGB(255, 100, 100, 100),
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.3,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                // facebook + google + apple sign in button

                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SquareTile(
                      imagePath: "assets/images/facebook.png",
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    SquareTile(
                      imagePath: "assets/images/google.png",
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    SquareTile(
                      imagePath: "assets/images/apple.png",
                    ),
                  ],
                ),
                const SizedBox(
                  height: 60,
                ),
                // don't have account text
                RichText(
                  text: TextSpan(
                    text: 'Don’t have an account?',
                    style: GoogleFonts.urbanist(color: Colors.black),
                    children: <TextSpan>[
                      TextSpan(
                          text: ' Register Now',
                          style: const TextStyle(
                            color: Color(0xff35C2C1),
                            fontWeight: FontWeight.bold,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              //click action
                              log('clicked');
                            }),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
