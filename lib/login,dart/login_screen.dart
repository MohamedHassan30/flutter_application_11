import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        TextFormField(decoration: InputDecoration(
          hintText: 'Enter Your Email',
          enabledBorder: OutlineInputBorder(borderRadius: 
          Divider.createBorderSide(context),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black)
          ),
          contentPadding: EdgeInsets.all(8),
        ),)
      ]),
    );
  }
}