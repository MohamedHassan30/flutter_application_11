import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
          keyboardType: TextInputType.emailAddress,
          obscureText: false,
          decoration: InputDecoration(
          hintText: 'Enter Your Email',
          enabledBorder: OutlineInputBorder(borderSide: 
          Divider.createBorderSide(context),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black)
          ),
          contentPadding: EdgeInsets.all(8),
          filled: true,
        ),)
  }
}