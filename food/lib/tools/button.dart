import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton(
      {super.key,
      required this.myOnPressed,
      required this.buttonColor,
      required this.buttonChildren});
  final VoidCallback myOnPressed;
  final Color buttonColor;
  final List<Widget> buttonChildren;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        color: buttonColor,
        height: 40,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        onPressed: myOnPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: buttonChildren,
        ));
  }
}
