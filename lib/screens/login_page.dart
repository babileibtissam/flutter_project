import 'package:flutter/material.dart';
import 'package:flutter_application/screens/register_page.dart';
import 'package:flutter_application/widgets/buttons.dart';
import 'package:flutter_application/widgets/square_tile.dart';
import 'package:flutter_application/widgets/text_field.dart';

import 'forgotPassword_page.dart';
import 'home_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  // text controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //back button
      appBar: AppBar(
        backgroundColor: Color.fromARGB(1, 254, 254, 254),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (BuildContext context) => const HomePage(),
            ),
          ),
        ),
      ),

      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Welcome text
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Text(
                  'Welcome back! Glad to see you, Again!',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              // Email text field
              MyTextField(
                suffixIcon: Icons.email_outlined,
                controller: emailController,
                hintText: 'Enter your Email',
                obscureText: false,
              ),
              const SizedBox(
                height: 20,
              ),
              //Password text field
              MyTextField(
                suffixIcon: Icons.remove_red_eye_outlined,
                controller: passwordController,
                hintText: 'Enter your Password',
                obscureText: true,
              ),
              const SizedBox(
                height: 10,
              ),
              // forgot password text
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ForgotPasswordPage()),
                        );
                      },
                      child: const Text(
                        'Forgot password?',
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // login button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: MyButton(
                  onTap: () {},
                  text: 'Login',
                ),
              ),
              const SizedBox(
                height: 30,
              ),

              // "or login with" line
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: const [
                    Expanded(
                      child: Divider(
                        thickness: 0.3,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      'Or login with',
                      style:
                          TextStyle(color: Color.fromARGB(255, 100, 100, 100)),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.3,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // facebook + google + apple sign in button

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Don’t have an account?'),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegisterPage()),
                      );
                    },
                    child: const Text(
                      ' Register Now',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}
