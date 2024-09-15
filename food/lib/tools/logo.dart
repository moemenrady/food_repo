import 'package:flutter/widgets.dart';

// ignore: must_be_immutable
class MyLogo extends StatelessWidget {
  Color grey = const Color.fromARGB(65, 158, 158, 158);

  MyLogo({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(5),
          width: 170,
          decoration: BoxDecoration(
              color: grey, borderRadius: BorderRadius.circular(25)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Image.asset(
              "images/photo.png",
              height: 35,
              width: 30,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
  }
}

// ignore: must_be_immutable
class IconLogo extends StatelessWidget {
  Color grey = const Color.fromARGB(65, 158, 158, 158);

  IconLogo({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(2),
          width: 50,
          decoration: BoxDecoration(
              color: grey, borderRadius: BorderRadius.circular(25)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Image.asset(
              "images/photo.png",
              height: 10,
              width: 30,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
  }
}
