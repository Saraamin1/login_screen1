import 'package:flutter/material.dart';
import 'package:login_screen/pages/register.dart';
import 'package:login_screen/pages/textField.dart';
import 'package:login_screen/shapes/topShap.dart';

import '../shapes/bottomShap.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);
  static String id = "Login";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CustomPaint(
            size: Size(200, 200),
            painter: TopShap(),
          ),
          Center(
              child: Padding(
            padding: const EdgeInsets.only(bottom: 60),
            child: Text(
              "Login",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
          )),
          Padding(
            padding: const EdgeInsets.only(right: 100),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 10,
                  )
                ],
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
              child: Stack(children: [
                TextFieldd( "Username", false,),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: TextFieldd("password",true),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 360),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_circle_right_rounded,
                    ),
                    color: Colors.blue,
                    iconSize: 100,
                  ),
                ),
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(400, 10, 0, 0),
            child: TextButton(
                onPressed: () {},
                child: Text(
                  "Forget?",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 410),
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, Register.id);
              },
              child: Text(
                "Register",
                style: TextStyle(
                    color: Colors.orangeAccent,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          CustomPaint(
            size: Size(200, 200),
            painter: ButtomShap(),
          ),
        ],
      ),
    );
  }
}
