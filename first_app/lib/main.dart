import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
          body: GradienContainer(
        Color.fromARGB(255, 21, 34, 132),
        Colors.blue,
      )),
    ),
  );
}
