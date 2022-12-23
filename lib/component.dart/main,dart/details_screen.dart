import 'package:flutter/cupertino.dart';

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/component.dart/main,dart/home_screen.dart';

class DetailsScreen extends StatefulWidget {
   DetailsScreen({super.key , required this.product});
 Item product;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}
  
class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
  appBar: AppBar(
    backgroundColor: Colors.green,
    title: Text("Details Screen",style: TextStyle(color: Colors.black,fontSize: 15),),
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
    
   body: Column(children: [
    Container(
      child: Image(image: AssetImage(widget.product.imagePath), height: 200, width: double.infinity,fit: BoxFit.cover,),
      
    ),
    SizedBox(height: 7,),
     Text('\$ ${widget.product.Price}'), 
     Padding(
       padding: const EdgeInsets.all(10.0),
       child: Row(

         children: [
           Container(
            decoration: BoxDecoration(
              
              borderRadius: BorderRadius.circular(4),
              color: Colors.red,
            ),
            child: Text('New'), 
           ),
          Icon(Icons.star,color: Colors.yellow,),
Icon(Icons.star,color: Colors.yellow,),        
Icon(Icons.star,color: Colors.yellow,),      
Icon(Icons.star,color: Colors.yellow,),
Icon(Icons.star,color: Colors.yellow,),  
SizedBox(
  width: 70,
),
Row(
  children: [
    Icon(Icons.edit_location), 
    Text('Flower Shop') ,
  ],
),
         ],
       ),
     ),
     Padding(
       padding: const EdgeInsets.all(10),   
       child: Align(
  alignment: Alignment.topLeft,
        child: Text('Details :')),
     ),
     Padding(
       padding: const EdgeInsets.all(10.0),
       child: Text('A Flower sometimes is known as bloom or blossom and it is a good thing in nature', style: TextStyle(fontSize: 15),),
     )
   ],),
    );
  }}