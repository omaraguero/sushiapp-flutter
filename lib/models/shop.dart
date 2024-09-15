import 'package:flutter/foundation.dart';

import 'food.dart';

class Shop extends ChangeNotifier{
  //food menu
  final List<Food> _foodMenu = [
    // salmon sushi
    Food(
        name: "Salmon Sushi",
        imagePath: "assets/salmon_sushi.png",
        price: "25.00",
        rating: "4.9"),

    //tuna
    Food(
        name: "Tuna",
        imagePath: "assets/tuna.png",
        price: "23.00",
        rating: "4.3"),
  ];

  //costumer cart
  List<Food> _cart = [];


  //getter methods
  List<Food> get foodMenu => _foodMenu;
  List<Food> get cart => _cart;

  //add to cart
  void addToCart(Food foodItem, int quantity) {
    for(int i=0; i<quantity; i++){
       _cart.add(foodItem);
    }
    notifyListeners();
  }



  //remove the cart
  void removeFromCart(Food food){
    _cart.remove(food);
    notifyListeners();
  }

}