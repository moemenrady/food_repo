import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food/data_base.dart';

class MyTextForm extends StatelessWidget {
  const MyTextForm(
      {super.key,
      required this.hintText,
      required this.myController,
      required this.myIcon});
  final IconData myIcon;
  final String hintText;
  final TextEditingController myController;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: myController,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: const Color.fromARGB(89, 212, 129, 5)),
            borderRadius: BorderRadius.circular(30)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          gapPadding: 20,
          borderSide: BorderSide(
            color: buttonColor,
          ),
        ),
        icon: Container(
            decoration: BoxDecoration(
              color: buttonColor,
              borderRadius: BorderRadius.circular(35),
            ),
            height: 29,
            width: 29,
            child: Icon(myIcon)),
        iconColor: const Color.fromARGB(197, 255, 255, 255),
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.grey, fontSize: 10),
        contentPadding: const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
        filled: true,
        fillColor: const Color.fromARGB(36, 158, 158, 158),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide:
                const BorderSide(color: Color.fromARGB(106, 224, 217, 217))),
      ),
    );
  }
}
