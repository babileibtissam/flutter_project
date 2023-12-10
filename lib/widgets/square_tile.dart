import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  final String imagePath;
  const SquareTile({
    Key? key,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      width: 105,
      decoration: BoxDecoration(
          border: Border.all(color: Color.fromARGB(255, 151, 151, 151)),
          borderRadius: BorderRadius.circular(8)),
      child: Image.asset(
        imagePath,
        height: 25,
      ),
    );
  }
}
