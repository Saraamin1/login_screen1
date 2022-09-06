import 'package:flutter/material.dart';

class TextFieldd extends StatelessWidget {
  TextFieldd (this.hintText, this.obscureText ) ;
String hintText;
bool obscureText;
  @override
  Widget build(BuildContext context) {
return TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: hintText,
                    prefixIcon: Icon(Icons.person),
                  ),
                   obscureText: obscureText,
                );
  }
}