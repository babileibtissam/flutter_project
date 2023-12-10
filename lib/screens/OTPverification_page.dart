import 'package:flutter/material.dart';
import 'package:flutter_application/screens/forgotPassword_page.dart';
import 'package:flutter_application/screens/resetPassword_page.dart';
import 'package:pinput/pinput.dart';
import '../widgets/buttons.dart';

class OTPverification extends StatefulWidget {
  OTPverification({Key? key}) : super(key: key);

  @override
  State<OTPverification> createState() => _OTPverificationState();
}

class _OTPverificationState extends State<OTPverification> {
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
              builder: (BuildContext context) => ForgotPasswordPage(),
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
                  'OTP Verification?',
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
                  'Enter the verification code we just sent on your email address.',
                  style: TextStyle(
                    color: Color.fromARGB(255, 85, 85, 85),
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              // Pinput
              Pinput(),
              const SizedBox(
                height: 40,
              ),

              // verify button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: MyButton(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ResetPasswordPage()),
                      );
                    },
                    text: 'Verify'),
              ),
              const SizedBox(
                height: 300,
              ),

              // text
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Didn’t received code?'),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'Resend',
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
