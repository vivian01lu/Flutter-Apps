import 'package:flutter/material.dart';

class StyleText extends StatelessWidget {
  const StyleText({super.key});
  @override
  Widget build(BuildContext context) {
    return const Text(
      "hello world",
      style: TextStyle(
        color: Colors.white,
        fontSize: 28,
      ),
    );
  }
}
