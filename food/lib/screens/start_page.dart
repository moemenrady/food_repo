import 'package:flutter/material.dart';
import 'package:food/data_base.dart';

import 'package:food/tools/logo.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return StartPageState();
  }
}

class StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: appBackgroundColor,
        body: SafeArea(
          child: Center(
            child: SizedBox(
              width: 350,
              child: ListView(
                children: [
                  SizedBox(
                    height: 80,
                  ),
                  MyLogo(),
                  space(),
                  photo(),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: const Color.fromARGB(29, 158, 158, 158)),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(20),
                      hoverColor: const Color.fromARGB(57, 255, 255, 255),
                      onTap: () {
                        Navigator.of(context).pushReplacementNamed("login");
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Get Your Morning Food Online   ',
                            style: TextStyle(
                                color: buttonColor,
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                          ),
                          Container(
                            height: 21,
                            width: 22,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: buttonColor),
                            child: const Icon(
                              Icons.arrow_forward,
                              color: Color.fromARGB(224, 255, 255, 255),
                              size: 15,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }

  Stack photo() {
    return Stack(
      children: [
        Image.asset(
          "images/delivery.jpeg",
          height: 400,
        ),
        Positioned(
          top: 128.5,
          left: 55.2,
          child: Text(
            "4food",
            style: TextStyle(
              color: Colors.white,
              fontSize: 7,
              fontWeight: FontWeight.w500,
            ),
          ),
        )
      ],
    );
  }

  SizedBox space() {
    return const SizedBox(
      height: 80,
    );
  }
}
