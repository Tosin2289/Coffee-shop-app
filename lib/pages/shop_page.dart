import 'package:coffea_shop_app/componets/coffee_tile.dart';
import 'package:coffea_shop_app/models/coffee.dart';
import 'package:coffea_shop_app/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Shop extends StatefulWidget {
  const Shop({Key? key}) : super(key: key);

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  void addtocart(Coffee coffee) {
    Provider.of<CoffeeShop>(context, listen: false).addItemToCart(coffee);
    final snackBar = SnackBar(
      behavior: SnackBarBehavior.fixed,
      content: Text("Successfully added to cart"),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(builder: ((context, value, child) {
      return SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Text(
                "How would You like Your Coffee",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 25,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: value.coffeeShop.length,
                  itemBuilder: ((context, index) {
                    Coffee eachcoffee = value.coffeeShop[index];
                    return CoffeeTile(
                      coffee: eachcoffee,
                      icon: Icon(Icons.add),
                      onPressed: (() => addtocart(eachcoffee)),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      );
    }));
  }
}
