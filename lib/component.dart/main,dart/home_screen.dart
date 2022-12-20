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
  drawer: Drawer(
    child: Column(children: [
      UserAccountsDrawerHeader(
      
    ]),
  ),
  appBar: AppBar(
    backgroundColor: Colors.green,
    title: Text("Home",style: TextStyle(color: Colors.black,fontSize: 15),),
    actions: [
      Row(children: [
        Stack(
          children: [
            Container(
              height: 20,
              width: 20,
              child: Text("8",style: TextStyle(fontSize: 16,color: Color.fromARGB(225, 0, 0, 0)),),
              padding: EdgeInsets.only(left: 5),
              decoration: BoxDecoration(
              
                color: Color.fromARGB(211, 164, 255, 193),
               shape:BoxShape.circle ),
            ),
          IconButton(onPressed: (){
            
          }, icon: Icon(Icons.add_shopping_cart)),
        ]),
        Padding(
          padding: const EdgeInsets.only(right: 11),
          child: Text("\$ 13",style: TextStyle(fontSize: 18),),
        )
      ],),
    ],),
    
);
  }
  }