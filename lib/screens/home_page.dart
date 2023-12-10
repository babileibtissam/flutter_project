import 'package:flutter/material.dart';
import 'package:flutter_application/screens/login_page.dart';
import 'package:flutter_application/screens/register_page.dart';
import 'package:flutter_application/widgets/buttons.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                'Welcome ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 80,
            ),
            //login button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: MyButton(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                text: 'Login',
              ),
            ),

            SizedBox(height: 20),
            // register button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: MyButton(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterPage()),
                  );
                },
                text: 'Register',
              ),
            )
          ],
        ),
      ),
    );
  }
}
