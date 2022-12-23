import 'package:flutter/cupertino.dart';

import '../component.dart/main,dart/home_screen.dart';

class Cart with ChangeNotifier{
  List SelectedProducts=[

  ];
  double price = 0;
  add( Item Product){
    SelectedProducts.add(Product); 

    price += Product.Price.round(); 
    notifyListeners();   
  }
} 