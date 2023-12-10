import 'package:flutter/material.dart';
import 'package:flutter_application/screens/login_page.dart';
import 'package:flutter_application/screens/resetPassword_page.dart';

import '../widgets/buttons.dart';

class PasswordChanged extends StatelessWidget {
  const PasswordChanged({Key? key}) : super(key: key);

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
                builder: (BuildContext context) => ResetPasswordPage(),
              ),
            ),
          ),
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 90,
                ),
                const Icon(
                  Icons.verified,
                  color: Color.fromARGB(255, 61, 172, 65),
                  size: 100,
                ),
                const SizedBox(
                  height: 30,
                ),
                //  text
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0.0),
                  child: Text(
                    'Password Changed!',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0.0),
                      child: Text(
                        'Your password has been changed successfully.',
                        style: TextStyle(
                          color: Color.fromARGB(255, 85, 85, 85),
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: MyButton(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                      text: 'Back to Login'),
                ),
              ],
            ),
          ),
        ));
  }
}
