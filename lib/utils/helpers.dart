import 'package:flutter/material.dart';

void pushReplacement(BuildContext context, Widget page) {
  Navigator.of(context).pushReplacement(
    MaterialPageRoute(
      builder: (BuildContext context) => page,
    ),
  );
}

void push(BuildContext context, Widget page) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => page),
  );
}
