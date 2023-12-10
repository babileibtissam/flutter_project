import 'package:flutter/material.dart';
import 'package:flutter_application/screens/OTPverification_page.dart';
import 'package:flutter_application/screens/passwordChanged_page.dart';

import '../widgets/buttons.dart';
import '../widgets/text_field.dart';

class ResetPasswordPage extends StatelessWidget {
  final newPasswordController = TextEditingController();
  final cPasswordController = TextEditingController();
  ResetPasswordPage({Key? key}) : super(key: key);

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
              builder: (BuildContext context) => OTPverification(),
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
                  'Create new password',
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
                  'Your new password must be unique from those previously used.',
                  style: TextStyle(
                    color: Color.fromARGB(255, 85, 85, 85),
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              //Password text field
              MyTextField(
                suffixIcon: Icons.remove_red_eye_outlined,
                controller: newPasswordController,
                hintText: 'New Password',
                obscureText: true,
              ),
              const SizedBox(
                height: 10,
              ),
              //Confirm Password text field
              MyTextField(
                suffixIcon: Icons.remove_red_eye_outlined,
                controller: cPasswordController,
                hintText: 'Confirm Password',
                obscureText: true,
              ),

              const SizedBox(
                height: 30,
              ),

              // Reset button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: MyButton(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PasswordChanged()),
                      );
                    },
                    text: 'Reset Password'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
