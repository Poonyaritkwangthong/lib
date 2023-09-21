import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  // list champion for
  List<Shoe> ShoeShop = [
    Shoe(
        name: 'Manjiro Sano',
        detail: 'Mikey',
        description:'',
        imagePath: 'lib/images/mikey.jpg'),
    Shoe(
        name: 'Ryuguji Ken',
        detail: 'Draken',
        description: '',
        imagePath: 'lib/images/darken.jpg'),
    Shoe(
        name: 'Keisuke Baji',
        detail: 'Edward',
        description: '',
        imagePath: 'lib/images/baji.webp'),
    Shoe(
        name: 'Takashi Mitsuya',
        detail: 'Taka jung',
        description: '',
        imagePath: 'lib/images/mitsuya.webp'),
  ];
  // list of items in user cart
  List<Shoe> userCart = [];

  // get list of trick
  List<Shoe> getShoeList() {
    return ShoeShop;
  }

  // add items to champion
  void addItemToCrat(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from champion
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
