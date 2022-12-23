import 'package:flutter/cupertino.dart';

class Cart with ChangeNotifier{
  List SelectedProducts=[

  ];
  add(Product){
    SelectedProducts.add(Product); 
    notifyListeners();
  }
} 