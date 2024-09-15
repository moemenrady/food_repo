import 'package:flutter/material.dart';
import 'package:food/data_base.dart';

import 'package:food/screens/authenticate/sign_up.dart';

import 'package:food/tools/button.dart';
import 'package:food/tools/login_titles.dart';
import 'package:food/tools/logo.dart';
import 'package:food/tools/text_form.dart';
import 'package:food/tools/title.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<StatefulWidget> createState() {
    return _LoginState();
  }
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 80),
        child: ListView(
          children: [
            MyLogo(),
            MyTitle(
              title: "Login",
            ),
            subTitle(),
            space(),
            MyLoginTitle(title: "Email"),
            space(),
            emailTextField(),
            space(),
            MyLoginTitle(title: "Password"),
            space(),
            passwordTextField(),
            Container(
              alignment: AlignmentDirectional.topEnd,
              child: InkWell(
                onTap: () {},
                child: Text(
                  "Forget Password ?   ",
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                      color: buttonColor),
                ),
              ),
            ),
            space(),
            space(),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: MyButton(
                  myOnPressed: () {
                    int i = 0;
                    for (i; i != info.length; i++) {
                      if (email.text == info[i]["email"] &&
                          password.text == info[i]["password"]) {
                        theUserName = info[i]["userName"];
                        Navigator.of(context).pushReplacementNamed('homePage');
                      } else {
                        print("incorrect password or email");
                      }
                    }
                    if (info.length == 0) {
                      print("there is no user accounts yet");
                    }
                  },
                  buttonChildren: const [
                    Text(
                      "Login",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                  buttonColor: buttonColor),
            ),
            space(),
            space(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account ? ",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                TextButton(
                  child: Text(
                    "Resister ",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: buttonColor,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacement(MaterialPageRoute(builder: (context) {
                      return const SignUp();
                    }));
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Padding passwordTextField() {
    return Padding(
        padding:
            const EdgeInsets.only(left: 15.0, top: 10, bottom: 15, right: 10),
        child: MyTextForm(
          hintText: "  Enter your password",
          myController: password,
          myIcon: Icons.email,
        ));
  }

  Padding passwordTitle() {
    return const Padding(
      padding: EdgeInsets.only(left: 15, top: 10),
      child: Text("Password",
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700)),
    );
  }

  Padding emailTextField() {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, top: 10, right: 10),
      child: MyTextForm(
        hintText: '  Enter your email',
        myController: email,
        myIcon: Icons.vpn_key_rounded,
      ),
    );
  }

  Padding emailTitl() {
    return const Padding(
      padding: const EdgeInsets.only(left: 15.0, top: 20),
      child: Text(
        "Email",
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
      ),
    );
  }

  SizedBox space() {
    return const SizedBox(
      height: 22,
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
          fontSize: 12,
          color: Color.fromARGB(141, 0, 0, 0),
        ),
      ),
    );
  }
}
