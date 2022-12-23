import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/component.dart/main,dart/details_screen.dart';
import 'package:provider/provider.dart';

import '../../provider/cart.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class Item{
  String imagePath;
  double Price;
  Item({required this.imagePath , required this.Price});    
}
class _HomeScreenState extends State<HomeScreen> {
  List<Item> item=[
    Item(
      imagePath: 'images/37.jpg',
      Price: 17.99
    ),
    Item(
      imagePath: 'images/38.jpg', 
      Price: 10.99
    ),
Item(  
      imagePath: 'images/39.jpg', 
      Price: 19.99
    ),
Item(
      imagePath: 'images/40.jpg',
      Price: 14.99
    ),
Item(
      imagePath: 'images/41.jpg',
      Price: 16.99
    ),
Item(
      imagePath: 'images/42.jpg',
      Price: 19.99
    ),
Item(
      imagePath: 'images/43.jpg',
      Price: 13.99
    ),
Item(
      imagePath: 'images/44.jpg',
      Price: 11.99
    ),


  ];
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
    itemCount: item.length,
    itemBuilder: (context, index) { 
      
      return GestureDetector(
        onTap:(){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen(product: item[index],),),); 
    
        } ,
        child: Stack(children: [GridTile(
           footer: GridTileBar(trailing:  Consumer<Cart>(   
            builder: (context, tastt, child){
              return  IconButton(onPressed: () { 
                tastt.add(item[index]);
              },
            color: Color.fromARGB(255,62,94,70),
            icon: Icon(Icons.add,color: Colors.white,));
            },
          
          ),leading: Text("\$ ${item[index].Price}",style: TextStyle(color: Colors.white),),  
          ),
          
            child: Positioned(
              top: 1,
              bottom: 1,
              right: 0,
              left: 0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image(image: AssetImage(item[index].imagePath),),  ),
            ),
              
            ),
            ],
         
        ),
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
    title: Consumer<Cart>(
      builder: ((context, testt, child ){
        return Text("Home",style: TextStyle(color: Colors.black,fontSize: 15),);  
      })),
    actions: [
      Row(children: [
        Consumer<Cart>(
          builder:(context, value, child) {
            return Stack(
          children: [
            Container(
              height: 20,
              width: 20,
              child: Text("${value.SelectedProducts.length}",style: TextStyle(fontSize: 16,color: Color.fromARGB(225, 0, 0, 0)),),
              padding: EdgeInsets.only(left: 5),
              decoration: BoxDecoration(
              
                color: Color.fromARGB(211, 164, 255, 193),
               shape:BoxShape.circle ),
            ),
          IconButton(onPressed: (){
            
          }, icon: Icon(Icons.add_shopping_cart)),
        ]);
          },
        
        ),
        Padding(
          padding: const EdgeInsets.only(right: 11),
          child: Text("\$ 13",style: TextStyle(fontSize: 18),),
        )
      ],),
    ],),
    
);
  }
  }