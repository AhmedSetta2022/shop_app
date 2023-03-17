import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopitems = [
    ["Heart dount", "4.00", "assests/images/donut 2.png", Colors.blue],
    ["Pink dount", "12.00", "assests/images/donut 3.png", Colors.pink],
    ["Donut", "8.40", "assests/images/donut.png", Colors.purple],
    ["Frensh fries", "21.00", "assests/images/french-fries.png", Colors.cyan],
    ["Hamburger", "17.00", "assests/images/hamburger.png", Colors.brown],
    [
      "Roasted chicken",
      "42.00",
      "assests/images/roasted-chicken.png",
      Colors.green
    ],
  ];
  List _cartitems = [];
  get shopitems => _shopitems;
  get cartitems => _cartitems;

  // add items to cart
  void additems(int index) {
    _cartitems.add(_shopitems[index]);
    notifyListeners();
  }

  //remove items from cart
  void removeitemsfromcart(int index) {
    _cartitems.removeAt(index);
    notifyListeners();
  }

  // calcute the price
  String Caclutetotalprice() {
    double totalprice = 0;
    for (int i = 0; i < _cartitems.length; i++) {
      totalprice += double.parse(_cartitems[i][1]);
    }
    return totalprice.toStringAsFixed(2);
  }
}
