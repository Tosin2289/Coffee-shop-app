import 'package:coffea_shop_app/componets/coffee_tile.dart';
import 'package:coffea_shop_app/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/coffee.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  void removeFromCart(Coffee coffee) {
    Provider.of<CoffeeShop>(context, listen: false).removeItemFromCart(coffee);
  }

  void payNow() {}
  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
        builder: ((context, value, child) => SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Your Cart",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Expanded(
                        child: ListView.builder(
                            itemCount: value.usercart.length,
                            itemBuilder: ((context, index) {
                              Coffee eachcoffee = value.usercart[index];
                              return CoffeeTile(
                                  coffee: eachcoffee,
                                  onPressed: (() => removeFromCart(eachcoffee)),
                                  icon: Icon(Icons.remove));
                            }))),
                    GestureDetector(
                      onTap: payNow,
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(25),
                        decoration: BoxDecoration(
                            color: Colors.brown,
                            borderRadius: BorderRadius.circular(12)),
                        child: Center(
                          child: Text(
                            "Pay Now",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )));
  }
}
