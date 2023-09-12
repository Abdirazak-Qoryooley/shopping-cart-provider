import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:short_cart_app/model/coffee.dart';

class Coffeeshop extends ChangeNotifier {
  // coffee for sale list
  final List<coffee> _shop = [
    coffee('cod-coffee', '4.5', 'images/cold-coffee.png'),
    coffee('espresso', '4', 'images/espresso.png'),
    coffee('iced', '3.5', 'images/iced.png'),
    coffee('latter', '2.5', 'images/latte.png'),
  ];

  // user cart
  List<coffee> _usercart = [];

// get coffee list
  List<coffee> get coffeeshop => _shop;

// get user cart
  List<coffee> get usercart => _usercart;

// add item to cart
  void addItemToCart(coffee coffee) {
    _usercart.add(coffee);
    notifyListeners();
  }

// remove item to cart
  void removeItemFromCart(coffee coffee) {
    _usercart.remove(coffee);
    notifyListeners();
  }
}
