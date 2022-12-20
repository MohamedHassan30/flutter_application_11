import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/component.dart/login_component.dart';
import 'package:flutter_application_1/login,dart/register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child :Column(children: [
        SizedBox(height: 200,),
        MyTextField(hintText: "Enter Your Email", textInputType: TextInputType.emailAddress, obscureText: false),
       SizedBox(height: 20,),
       MyTextField(hintText: "Enter Your Password", textInputType: TextInputType.visiblePassword, obscureText: true),
       SizedBox(height: 50,),
       ElevatedButton(onPressed: (){}, child: Text("Sign in",
       style: TextStyle(fontSize: 18),
       
       ),
       style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.green,),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),),
        padding: MaterialStateProperty.all(EdgeInsets.all(8),),
       ),),
       SizedBox(height: 30,),
       Row(
        children: [
          Text("Do not have any account ?",style: TextStyle(fontSize: 18),),
          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> RegisterScreen()));
          }, child: Text("Sign Up",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold, color: Colors.green),)),
        ],
       ),

      ]),
      ),
      
    );
  }
}