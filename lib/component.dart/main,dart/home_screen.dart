import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
return Scaffold(
  appBar: AppBar(
    backgroundColor: Colors.green,
    title: Text("Home",style: TextStyle(color: Colors.black,fontSize: 15),),
    actions: [
      Row(children: [],),
    ],),
    
);
  }
  }