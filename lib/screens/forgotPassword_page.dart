import 'package:flutter/material.dart';
import 'package:flutter_application/screens/OTPverification_page.dart';
import 'package:flutter_application/screens/login_page.dart';
import 'package:flutter_application/widgets/buttons.dart';

import '../widgets/text_field.dart';
import 'home_page.dart';

class ForgotPasswordPage extends StatefulWidget {
  ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final resetEmailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //back button
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(1, 254, 254, 254),
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
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              //  text
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 0.0),
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Text(
                  'Don\'t worry! It occurs. Please enter the email address linked with your account.',
                  style: TextStyle(
                    color: Color.fromARGB(255, 85, 85, 85),
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              // email text field
              MyTextField(
                suffixIcon: Icons.email_outlined,
                controller: resetEmailController,
                hintText: 'Enter your Email',
                obscureText: false,
              ),
              const SizedBox(
                height: 20,
              ),

              // send code button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: MyButton(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OTPverification()),
                      );
                    },
                    text: 'Send Code'),
              ),
              const SizedBox(
                height: 300,
              ),

              // text
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Remember Password?'),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    child: const Text(
                      ' Login',
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
      ),
    );
  }
}
