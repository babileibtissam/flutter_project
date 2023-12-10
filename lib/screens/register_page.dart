import 'package:flutter/material.dart';
import 'package:flutter_application/screens/login_page.dart';

import '../widgets/buttons.dart';
import '../widgets/square_tile.dart';
import '../widgets/text_field.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({Key? key}) : super(key: key);

  // text controllers
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final cpasswordController = TextEditingController();

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
              builder: (BuildContext context) => LoginPage(),
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
              // username text field
              MyTextField(
                suffixIcon: Icons.abc,
                controller: usernameController,
                hintText: 'Enter your username',
                obscureText: false,
              ),
              const SizedBox(
                height: 10,
              ),
              // Email text field
              MyTextField(
                suffixIcon: Icons.email_outlined,
                controller: emailController,
                hintText: 'Enter your Email',
                obscureText: false,
              ),
              const SizedBox(
                height: 10,
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
              //Confirm Password text field
              MyTextField(
                suffixIcon: Icons.remove_red_eye_outlined,
                controller: cpasswordController,
                hintText: 'Confirm your Password',
                obscureText: true,
              ),

              const SizedBox(
                height: 20,
              ),

              // sign up button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: MyButton(
                  onTap: () {},
                  text: 'Agree and Register',
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
            ],
          ),
        ),
      )),
    );
  }
}
