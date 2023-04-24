import 'package:coffea_shop_app/models/coffee.dart';
import 'package:flutter/cupertino.dart';

class CoffeeShop extends ChangeNotifier {
  //coffee for sale
  final List<Coffee> _shop = [
    Coffee(name: 'Black Coffee', prize: '4.30', img: 'assets/img4.png'),
    Coffee(name: 'Late', prize: '4.20', img: 'assets/img3.png'),
    Coffee(name: 'Expresso', prize: '3.50', img: 'assets/img5.png'),
    Coffee(name: 'Iced Coffee', prize: '5.10', img: 'assets/img1.png'),
  ];
//user cart
  List<Coffee> _usercart = [];
//get coffee list
  List<Coffee> get coffeeShop => _shop;
// get user cart
  List<Coffee> get usercart => _usercart;
//add item to cart
  void addItemToCart(Coffee coffee) {
    _usercart.add(coffee);
    notifyListeners();
  }

// remove item from cart
  void removeItemFromCart(Coffee coffee) {
    _usercart.remove(coffee);
    notifyListeners();
  }
}
