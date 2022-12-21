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
  body: Padding(
    padding: const EdgeInsets.only(top: 10),
    child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      childAspectRatio: 3/2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 33,
    ),
    itemCount: 4,
    itemBuilder: (context, index) {
      
      return Stack(children: [GridTile(
        footer: GridTileBar(trailing: IconButton(onPressed: () { },
        color: Color.fromARGB(255,62,94,70),
        icon: Icon(Icons.add),
         ),leading: Text("\$ 13.99"),),
        
          child: Positioned(
            top: -3,
            bottom: -9,
            child: GestureDetector(
              onTap: (() {
                
              }),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(55),
                child: Image(image: AssetImage("images/WhatsApp Image 2021-10-17 at 5.17.50 PM (3).jpeg"))),
            ),
            
          ),
          ),],
       
      );
    },
    
      
    ),
  ),
 drawer: Drawer(
  child: Column(
    children: [
      UserAccountsDrawerHeader(
        decoration: BoxDecoration(
          image: DecorationImage(image: 
          AssetImage
          ('images/WhatsApp Image 2021-10-17 at 5.17.50 PM (3).jpeg'),
          fit: BoxFit.cover
        )
        ),
        currentAccountPicture: CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage('images/WhatsApp Image 2021-10-17 at 5.17.50 PM (3).jpeg'),
        ),
        accountName: Text('Mando'),
         accountEmail: Text('Mando303@gmail.com'),
         ),
         ListTile(title: Text("Home"),leading: Icon(Icons.home),onTap: (){},),
         ListTile(title: Text("My Products"), leading: Icon(Icons.add_shopping_cart),onTap: (){},),
         ListTile(title:Text("About") ,leading: Icon(Icons.help_center),onTap:(){} ,),
         ListTile(title: Text("Logout"),leading: Icon(Icons.exit_to_app),onTap: (){},)
    ],  
  ),
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