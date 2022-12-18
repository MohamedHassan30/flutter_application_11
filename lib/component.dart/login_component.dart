import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({super.key,required this.hintText,required this.textInputType, required this.obscureText} );
final TextInputType textInputType;
final String hintText;
final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return  TextFormField(
          keyboardType: textInputType,
          obscureText: obscureText,
          decoration: InputDecoration(
          hintText: hintText,
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