import 'package:flutter/material.dart';
import 'package:food/data_base.dart';

import 'package:food/tools/button.dart';
import 'package:food/tools/login_titles.dart';
import 'package:food/tools/logo.dart';
import 'package:food/tools/text_form.dart';
import 'package:food/tools/title.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _SignUpState();
  }
}

class _SignUpState extends State<SignUp> {
  TextEditingController userName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 80),
        child: ListView(
          children: [
            MyLogo(),
            MyTitle(title: 'Sign up'),
            space(),
            MyLoginTitle(title: "UserName"),
            userNameTextField(),
            MyLoginTitle(title: "Email"),
            emailTextField(),
            MyLoginTitle(title: "Password"),
            passwordTextField(),
            space(),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: MyButton(
                  myOnPressed: signUp_test,
                  buttonChildren: const [
                    Text(
                      "Sign Up",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                  buttonColor: buttonColor),
            ),
            space(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "have an account ? ",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                TextButton(
                  child: Text(
                    "  Login ",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: buttonColor,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed('login');
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void signUp_test() {
    if (userName.text.contains(" ") == false &&
        userName.text.contains("\$") == false &&
        email.text.contains("@") == true &&
        email.text.contains(".com") == true &&
        email.text.length > 8 &&
        email.text.contains(" ") == false &&
        password.text.length > 8) {
      info.add(
        {
          "userName": "${userName.text}",
          "password": "${password.text}",
          "email": "${email.text}"
        },
      );
      setState(() {
        info = info;
      });
      Navigator.of(context).pushReplacementNamed('login');
      print(info);
    }
  }

  Padding passwordTextField() {
    return Padding(
        padding:
            const EdgeInsets.only(left: 15.0, top: 10, bottom: 15, right: 10),
        child: MyTextForm(
          myIcon: Icons.vpn_key_rounded,
          hintText: "Enter New password",
          myController: password,
        ));
  }

  Padding passwordTitle() {
    return const Padding(
      padding: EdgeInsets.only(left: 15, top: 10),
      child: Text("Password",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
    );
  }

  Padding userNameTextField() {
    return Padding(
        padding: const EdgeInsets.only(left: 15.0, top: 10, right: 10),
        child: MyTextForm(
          myIcon: Icons.person,
          hintText: 'Enter New UserName',
          myController: userName,
        ));
  }

  Padding emailTextField() {
    return Padding(
        padding: const EdgeInsets.only(left: 15.0, top: 10, right: 10),
        child: MyTextForm(
          myIcon: Icons.email,
          hintText: 'Enter New email',
          myController: email,
        ));
  }

  Padding userNameTitl() {
    return const Padding(
      padding: const EdgeInsets.only(left: 15.0, top: 20),
      child: Text(
        "UserName",
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
      ),
    );
  }

  Padding emailTitl() {
    return const Padding(
      padding: const EdgeInsets.only(left: 15.0, top: 10),
      child: Text(
        "Email",
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
      ),
    );
  }

  SizedBox space() {
    return const SizedBox(
      height: 30,
    );
  }

  Padding subTitle() {
    return const Padding(
      padding: EdgeInsets.only(
        left: 15.0,
      ),
      child: Text(
        "login to using the app",
        style: TextStyle(
          fontSize: 15,
          color: Color.fromARGB(141, 0, 0, 0),
        ),
      ),
    );
  }

  Padding title() {
    return const Padding(
      padding: EdgeInsets.fromLTRB(15, 20, 5, 5),
      child: Text(
        "Sign up",
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
