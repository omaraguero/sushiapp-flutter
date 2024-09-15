import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sushiapp/components/button.dart';
import 'package:sushiapp/theme/colors.dart';

import '../models/food.dart';
import '../models/shop.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  //remove from cart
  void removeFromCart(Food food, BuildContext context) {
    //get access to shop
    final shop = context.read<Shop>();

    //remove from cart
    shop.removeFromCart(food);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(
        builder: (context, value, child) => Scaffold(
          backgroundColor: primaryColor,
          appBar: AppBar(
            title: const Text("My Cart"),
            elevation: 0,
            backgroundColor: primaryColor,
          ),
          body: Column(
            children: [
              Expanded(
                child: value.cart.isEmpty
                    ? Center(
                  child: Text(
                    'Your cart is empty',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                )
                    : ListView.builder(
                  itemCount: value.cart.length,
                  itemBuilder: (context, index) {
                    //get food from cart
                    final Food food = value.cart[index];

                    //get food name
                    final String foodName = food.name;

                    //get food price
                    final String foodPrice = food.price;

                    //return list title
                    return Container(
                      decoration: BoxDecoration(color: secondaryColor, borderRadius: BorderRadius.circular(8)),
                      margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
                      child: ListTile(
                        title: Text(
                          foodName,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(foodPrice,
                            style: TextStyle(color: Colors.grey[200])),
                        trailing: IconButton(
                          icon: Icon(
                            Icons.delete,
                            color: Colors.grey[300],
                          ),
                          onPressed: () => removeFromCart(food, context),
                        ),
                      ),
                    );
                  },
                ),
              ),

              //pay button
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: MyButton(text: "Pay Now", onTap: (){}),
              )
            ],
          ),
        ));
  }
}