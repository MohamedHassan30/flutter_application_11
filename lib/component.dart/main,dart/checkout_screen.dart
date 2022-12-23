import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/provider/cart.dart';
import 'package:provider/provider.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  
  @override
  Widget build(BuildContext context) {  
    return Scaffold(
    appBar: AppBar(
    backgroundColor: Colors.green,
    title: 
         Text("Details",style: TextStyle(color: Colors.black,fontSize: 15),),   
      
    actions: [
      
       Consumer<Cart>(
        builder: ((context, value, child) {
         return Row(children: [
            Stack(
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
                                Navigator.push(context, MaterialPageRoute(builder: ((context) => CheckoutScreen())));

              }, icon: Icon(Icons.add_shopping_cart)),
            ]),
             
            Padding(
              padding: const EdgeInsets.only(right: 11),
              child: Text("\$ ${value.price}",style: TextStyle(fontSize: 18),),
            )
          ],);
        }),
        

       ),
        
    ],),
    
  
   body: Consumer<Cart>(
    builder: ((context, value, child) {
      return  Column(
       children: [
        ListView.separated(
          itemBuilder: ((context, index) {
          return ListTile(
          subtitle: Text("Test"),
          title: Text("Test"),
          leading: CircleAvatar(
            backgroundImage: AssetImage('${value.SelectedProducts[index].imagePath}')
           
            
          ),
          trailing:IconButton(onPressed: () {
              
            },
            icon: Icon(Icons.remove), 
            ),
         );
        }), separatorBuilder: ((context, index) {
          return SizedBox(
            height: 5,
          );
        }), itemCount: value.SelectedProducts.length,
        )
        
   
       ],
     );
    }),
     


   ), 


    );
  }
}