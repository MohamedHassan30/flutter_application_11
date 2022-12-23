import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/component.dart/login_component.dart';
import 'package:flutter_application_1/login,dart/login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: EdgeInsets.all(10),
      child: SingleChildScrollView( 
        child: Column(
          children: [
            SizedBox(height: 200,),
            MyTextField(hintText: 'Enter your Username', textInputType: TextInputType.name, obscureText: false),
            SizedBox(
              height: 20,
            ),
            MyTextField(hintText: 'Enter your Email', textInputType: TextInputType.emailAddress, obscureText: false
            ),
            SizedBox(
              height: 20,
            ),
            MyTextField(hintText: 'Enter your Password', textInputType:TextInputType.visiblePassword, obscureText: true),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
            }, child:  Text('Sign up',style: TextStyle( 
              fontSize: 15
            ),
            
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.green),
              padding: MaterialStateProperty.all(EdgeInsets.all(10)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            
              ),
            ),
            ),
          ],
        ),
      ),
      ),
    );
  }
}