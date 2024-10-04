import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';
import 'package:first_app/style_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

//custom my own widgets
class GradienContainer extends StatelessWidget {
  //define the class's constructor:use super class's key as constructor's key
  GradienContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        )),
        child: Center(child: DiceRoller()));
  }
}
