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
  body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    childAspectRatio: 3/2,
    crossAxisSpacing: 10,
    mainAxisSpacing: 33,
  ),
  itemCount: 4,
  itemBuilder: (context, index) {
    return GridTile(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(55),
        child: Image(image: NetworkImage("https://alamphoto.com/wp-content/uploads/2017/11/Love-Bouquet-flowers-623x779.jpg"))),
      );
  },     
  ),
 drawer: Drawer(
  child: Column(
    children: [
      UserAccountsDrawerHeader(
        decoration: BoxDecoration(
          image: DecorationImage(image: 
          NetworkImage
          ('https://yt3.ggpht.com/OCuYBblHNQ4ofmiEsGVlzZ8RHvPiG1-yvrtmN3ItS4kKPglGzLtzz9Jg3P55kLPH7zkJ3FAOLP4=s900-c-k-c0x00ffffff-no-rj',),
          fit: BoxFit.cover
        )
        ),
        currentAccountPicture: CircleAvatar(
          radius: 20,
          backgroundImage: NetworkImage('https://s3.us-east-2.amazonaws.com/files.fisher.osu.edu/leadreadtoday/public/styles/image_src/public/2021-03/newnormal_2.jpg?VersionId=WAXs8j2FGuU91EDXt4P1HkBSmm4zB9Xx'),
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