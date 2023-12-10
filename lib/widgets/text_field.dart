import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final Color textColor;
  final IconData? suffixIcon;
  final VoidCallback? changeObscure;

  const MyTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obscureText,
      this.textColor = const Color(0xff8391A1),
      this.suffixIcon,
      this.changeObscure});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      // to hide the password
      obscureText: obscureText,

      decoration: InputDecoration(
        hintStyle: TextStyle(color: textColor),
        suffixIcon: IconButton(
          onPressed: changeObscure,
          icon: Icon(suffixIcon),
          color: textColor,
        ),
        focusColor: textColor,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xff8391A1)),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        fillColor: const Color.fromARGB(255, 235, 235, 235),
        filled: true,
        hintText: hintText,
      ),
    );
  }
}
