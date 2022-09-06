import 'package:flutter/material.dart';
import 'package:login_screen/pages/login.dart';
import 'package:login_screen/pages/register.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  routes: {
  Login.id : (context) => Login(),
 Register.id : (context) => Register(),
 
  },

  initialRoute: Login.id
  
    );
  }
}
